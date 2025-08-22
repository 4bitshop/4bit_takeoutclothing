local savedAppearances = {}

local function saveCurrentFeatures(commandName, values)
    local fullAppearance = exports["4bit_appearance"]:getFullAppearance()

    if not fullAppearance or not fullAppearance.features then
        return false
    end

    if not savedAppearances[commandName] then
        savedAppearances[commandName] = {}
    end

    for _, valueData in ipairs(values) do
        local category = valueData.category
        if category then
            for _, feature in ipairs(fullAppearance.features) do
                if feature.id == category then
                    savedAppearances[commandName][category] = {
                        values = feature.values,
                        featureType = feature.type,
                        valueType = valueData.type
                    }
                    break
                end
            end
        end
    end

    return true
end

local function restoreFeatures(commandName, values)
    if not savedAppearances[commandName] then
        return false
    end

    for _, valueData in ipairs(values) do
        local category = valueData.category
        if category and savedAppearances[commandName][category] then
            local savedFeature = savedAppearances[commandName][category]
            local savedValues = savedFeature.values
            local valueType = savedFeature.valueType

            if valueType == "drawable" then
                exports["4bit_appearance"]:setDrawable(category, savedValues.drawable, savedValues.texture, savedValues.collection or "")
            elseif valueType == "prop" then
                exports["4bit_appearance"]:setProp(category, savedValues.prop, savedValues.texture, savedValues.collection or "")
            elseif valueType == "object" then
                exports["4bit_appearance"]:updateObjectFeature(category, savedValues.index, savedValues.texture, savedValues.colorId, savedValues.opacity)
            end

            savedAppearances[commandName][category] = nil
        end
    end

    local hasFeatures = false
    for _ in pairs(savedAppearances[commandName]) do
        hasFeatures = true
        break
    end
    if not hasFeatures then
        savedAppearances[commandName] = nil
    end

    return true
end

local function playAnimation(animData)
    if not animData or not animData.dict or not animData.clip then
        return
    end

    local playerPed = PlayerPedId()
    RequestAnimDict(animData.dict)
    
    while not HasAnimDictLoaded(animData.dict) do
        Wait(1)
    end

    TaskPlayAnim(playerPed, animData.dict, animData.clip, 8.0, -8.0, animData.duration or 1000, animData.flag or 0, 0, false, false, false)
    
    if animData.duration then
        Wait(animData.duration)
    end
    
    RemoveAnimDict(animData.dict)
end

local function takeOut(data, commandName)
    local playerModel = exports["4bit_appearance"]:getCurrentModel()
    
    local values
    if data.models and data.models[playerModel] then
        values = data.models[playerModel].values
    elseif data.values then
        values = data.values
    else
        print("^1[TakeOut]^7 No values found for command " .. commandName)
        return
    end

    if not values or #values == 0 then
        return
    end

    if data.animation then
        playAnimation(data.animation)
    end

    local hasSavedData = false
    if savedAppearances[commandName] then
        for _, valueData in ipairs(values) do
            if savedAppearances[commandName][valueData.category] then
                hasSavedData = true
                break
            end
        end
    end

    if hasSavedData then
        restoreFeatures(commandName, values)
    else
        if saveCurrentFeatures(commandName, values) then 
            for _, valueData in ipairs(values) do
                local category = valueData.category
                
                if valueData.type == "drawable" then
                    exports["4bit_appearance"]:setDrawable(category, valueData.value, valueData.texture or 0, valueData.collection or "")
                elseif valueData.type == "prop" then
                    exports["4bit_appearance"]:setProp(category, valueData.value, valueData.texture or 0, valueData.collection or "")
                elseif valueData.type == "object" then
                    exports["4bit_appearance"]:updateObjectFeature(category, valueData.value, valueData.texture or 0, valueData.colorId or 0, valueData.opacity or 1.0)
                end
            end
        end
    end
end

for k, v in pairs(PublicSharedTakeOutClothingConfig.Actions) do
    if v.command and v.command ~= "" then
        RegisterCommand(v.command, function()
            takeOut(v, v.command)
        end, false)
    end

    if v.export and v.export ~= "" then
        exports(v.export, function()
            takeOut(v, v.command)
        end)
    end
end

AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then
        for commandName, _ in pairs(savedAppearances) do
            for _, actionConfig in pairs(PublicSharedTakeOutClothingConfig.Actions) do
                if actionConfig.command == commandName then
                    restoreFeatures(commandName, actionConfig.values)
                    break
                end
            end
        end
    end
end)
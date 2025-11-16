local savedFeatures = {}


local function getGender()
    local ped = PlayerPedId()
    local model = GetEntityModel(ped)
    local maleHash = GetHashKey('mp_m_freemode_01')
    local femaleHash = GetHashKey('mp_f_freemode_01')

    if model == femaleHash then
        return 'female'
    elseif model == maleHash then
        return 'male'
    else
        return 'male'
    end
end


local function getFeatureId(featureConfig)
    local gender = getGender()


    if gender == 'female' and featureConfig.idFemale then
        return featureConfig.idFemale
    end

    return featureConfig.id
end


local function saveCurrentFeature(commandName, featureConfig)
    local featureId = getFeatureId(featureConfig)
    local featureType = featureConfig.type or "drawable"


    local currentFeature = exports['4bit_appearance']:getFeature(featureId, featureType)

    if not savedFeatures[commandName] then
        savedFeatures[commandName] = {}
    end


    savedFeatures[commandName][featureId] = {
        id = featureId,
        type = featureType,
        values = currentFeature and currentFeature.values or nil
    }

    return true
end


local function restoreFeature(commandName, featureConfig)
    local featureId = getFeatureId(featureConfig)

    if not savedFeatures[commandName] or not savedFeatures[commandName][featureId] then
        return false
    end

    local savedFeature = savedFeatures[commandName][featureId]

    if savedFeature.values then
        exports["4bit_appearance"]:updateFeature({
            id = savedFeature.id,
            type = savedFeature.type,
            values = savedFeature.values
        })
    end


    savedFeatures[commandName][featureId] = nil


    local hasFeatures = false
    for _ in pairs(savedFeatures[commandName]) do
        hasFeatures = true
        break
    end
    if not hasFeatures then
        savedFeatures[commandName] = nil
    end

    return true
end


local function applyTakeoutFeature(featureConfig)
    local featureId = getFeatureId(featureConfig)
    local featureType = featureConfig.type or "drawable"


    exports["4bit_appearance"]:updateFeature({
        id = featureId,
        type = featureType,
        values = featureConfig.values
    })
end


local function playAnimation(animData)
    if not animData or not animData.dict or not animData.clip then
        return
    end

    local playerPed = PlayerPedId()
    RequestAnimDict(animData.dict)

    local timeout = 0
    while not HasAnimDictLoaded(animData.dict) and timeout < 100 do
        Wait(10)
        timeout = timeout + 1
    end

    if HasAnimDictLoaded(animData.dict) then
        TaskPlayAnim(playerPed, animData.dict, animData.clip, 8.0, -8.0, animData.duration or 1000, animData.flag or 0, 0,
            false, false, false)

        if animData.duration then
            Wait(animData.duration)
        end

        RemoveAnimDict(animData.dict)
    end
end


local function takeOut(data, commandName)
    if not data or not data.features or #data.features == 0 then
        print("No features defined for command: " .. commandName)
        return
    end

    if exports["4bit_appearance"]:isMenuOpen() then
        print("Menu is open")
        return
    end
    
    if data.animation then
        playAnimation(data.animation)
    end

    local hasSavedFeatures = savedFeatures[commandName] ~= nil

    if hasSavedFeatures then
        for _, featureConfig in ipairs(data.features) do
            restoreFeature(commandName, featureConfig)
        end
    else
        for _, featureConfig in ipairs(data.features) do
            saveCurrentFeature(commandName, featureConfig)
            applyTakeoutFeature(featureConfig)
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

local function restoreAllFeatures()
    for commandName, features in pairs(savedFeatures) do
        for _, actionConfig in pairs(PublicSharedTakeOutClothingConfig.Actions) do
            if actionConfig.command == commandName then
                for _, featureConfig in ipairs(actionConfig.features) do
                    restoreFeature(commandName, featureConfig)
                end
            end
        end
    end
end 

AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then
        restoreAllFeatures()
    end
end)

exports["4bit_appearance"]:addHook("onMenuOpen", function()
    restoreAllFeatures()
end)

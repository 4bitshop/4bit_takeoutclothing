PublicSharedTakeOutClothingConfig = {
    Actions = {
        {
            command = "takeoutjacket",
            export = "takeoutjacket",
            features = {
                {
                    id = "jackets",
                    type = "drawable",
                    values = {
                        drawable = 15,  -- Undershirt value for male
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingshirt",
                clip = "try_shirt_negative_d",
                flag = 51,
                duration = 1200,
            }
        },
        {
            command = "takeoutshirt",
            export = "takeoutshirt",
            features = {
                {
                    id = "undershirts",
                    type = "drawable",
                    values = {
                        drawable = 15,  -- Naked torso value
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingshirt",
                clip = "try_shirt_neutral_a",
                flag = 51,
                duration = 1200,
            }
        },
        {
            command = "takeoutpants",
            export = "takeoutpants",
            features = {
                {
                    id = "legs",
                    type = "drawable",
                    values = {
                        drawable = 14,  -- Underwear value (may differ by gender)
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingtrousers",
                clip = "try_trousers_positive_b",
                flag = 51,
                duration = 1500,
            }
        },
        {
            command = "takeoutshoes",
            export = "takeoutshoes",
            features = {
                {
                    id = "shoes",
                    type = "drawable",
                    values = {
                        drawable = 34,  -- Barefoot value
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "mp_clothing@female@shoes",
                clip = "try_shoes_base",
                flag = 51,
                duration = 2000,
            }
        },
        {
            command = "takeoutundershirt",
            export = "takeoutundershirt",
            features = {
                {
                    id = "undershirts",
                    type = "drawable",
                    values = {
                        drawable = 15,  -- Naked torso value
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingshirt",
                clip = "try_shirt_neutral_c",
                flag = 51,
                duration = 1000,
            }
        },
        {
            command = "takeouttie",
            export = "takeouttie",
            features = {
                {
                    id = "accessories",
                    type = "drawable",
                    values = {
                        drawable = 0,  -- No accessory
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingtie",
                clip = "try_tie_positive_b",
                flag = 51,
                duration = 1200,
            }
        },

        {
            command = "takeouthat",
            export = "takeouthat",
            features = {
                {
                    id = "hat",
                    type = "drawable",
                    values = {
                        drawable = 0,  -- No hat
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingtie",
                clip = "check_out_b",
                flag = 51,
                duration = 800,
            }
        },
        {
            command = "takeoutglasses",
            export = "takeoutglasses",
            features = {
                {
                    id = "glasses",
                    type = "drawable",
                    values = {
                        drawable = 0,  -- No glasses
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingspecs",
                clip = "try_glasses_negative_c",
                flag = 51,
                duration = 1000,
            }
        },
        {
            command = "takeoutears",
            export = "takeoutears",
            features = {
                {
                    id = "ears",
                    type = "drawable",
                    values = {
                        drawable = 0,  -- No earring
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingspecs",
                clip = "try_glasses_neutral_c",
                flag = 51,
                duration = 800,
            }
        },
        {
            command = "takeoutwatch",
            export = "takeoutwatch",
            features = {
                {
                    id = "watches",
                    type = "drawable",
                    values = {
                        drawable = 0,  -- No watch
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingspecs",
                clip = "put_on",
                flag = 51,
                duration = 800,
            }
        },
        {
            command = "takeoutbracelet",
            export = "takeoutbracelet",
            features = {
                {
                    id = "bracelets",
                    type = "drawable",
                    values = {
                        drawable = 0,  -- No bracelet
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingspecs",
                clip = "put_on",
                flag = 51,
                duration = 800,
            }
        },

        {
            command = "takeoutaddonglasses",
            export = "takeoutaddonglasses",
            features = {
                {
                    id = "addonglasses",
                    type = "object",
                    values = {
                        index = 0,  -- No addon glasses
                        texture = 0,
                        colorId = 0,
                        opacity = 1.0
                    }
                }
            },
            animation = {
                dict = "clothingspecs",
                clip = "try_glasses_negative_c",
                flag = 1,
                duration = 1000,
            }
        },
        {
            command = "takeoutaddonwrist",
            export = "takeoutaddonwrist",
            features = {
                {
                    id = "AddOn Right Wrist",
                    type = "object",
                    values = {
                        index = 0,  -- No addon wrist
                        texture = 0,
                        colorId = 0,
                        opacity = 1.0
                    }
                }
            },
            animation = {
                dict = "clothingspecs",
                clip = "put_on",
                flag = 1,
                duration = 800,
            }
        },
        
        -- Additional takeout commands for common items
        {
            command = "takeoutmask",
            export = "takeoutmask",
            features = {
                {
                    id = "mask",
                    type = "drawable",
                    values = {
                        drawable = 0,  -- No mask
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "mp_masks@standard_car@ds@",
                clip = "put_on_mask",
                flag = 51,
                duration = 1200,
            }
        },
        {
            command = "takeoutbag",
            export = "takeoutbag",
            features = {
                {
                    id = "bags",
                    type = "drawable",
                    values = {
                        drawable = 0,  -- No bag
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingshirt",
                clip = "try_shirt_positive_d",
                flag = 51,
                duration = 1200,
            }
        },
        {
            command = "takeoutvest",
            export = "takeoutvest",
            features = {
                {
                    id = "vests",
                    type = "drawable",
                    values = {
                        drawable = 0,  -- No vest
                        texture = 0
                    }
                }
            },
            animation = {
                dict = "clothingshirt",
                clip = "try_shirt_positive_d",
                flag = 51,
                duration = 1200,
            }
        },
    }
}

PublicSharedTakeOutClothingConfig = {
    Actions = {
        {
            command = "takeoutjacket",
            export = "takeoutjacket",
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "jackets",
                            value = 15,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "jackets",
                            value = 11,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "undershirts",
                            value = 15,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "undershirts",
                            value = 11,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "legs",
                            value = 14,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "legs",
                            value = 15,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "shoes",
                            value = 1,
                            texture = 0,
                            collection = "Male_Apt01",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "shoes",
                            value = 1,
                            texture = 0,
                            collection = "Female_Apt01",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "undershirts",
                            value = 15,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "undershirts",
                            value = 15,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "accessories",
                            value = 0,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "drawable",
                            category = "accessories",
                            value = 0,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "hats",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "hats",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "glasses",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "glasses",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "ears",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "ears",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "watches",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "watches",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "bracelets",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "prop",
                            category = "bracelets",
                            value = -1,
                            texture = 0,
                            collection = "",
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "object",
                            category = "ADD-ON GLASSES MALE",
                            value = 4,
                            texture = 0,
                            colorId = 0,
                            opacity = 0,
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "object",
                            category = "ADD-ON GLASSES FEMALE",
                            value = 4,
                            texture = 0,
                            colorId = 0,
                            opacity = 0,
                        },
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
            models = {
                ["mp_m_freemode_01"] = {
                    values = {
                        {
                            type = "object",
                            category = "AddOn Right Wrist",
                            value = 4,
                            texture = 0,
                            colorId = 0,
                            opacity = 0,
                        },
                    }
                },
                ["mp_f_freemode_01"] = {
                    values = {
                        {
                            type = "object",
                            category = "AddOn Right Wrist",
                            value = 4,
                            texture = 0,
                            colorId = 0,
                            opacity = 0,
                        },
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
    }
}

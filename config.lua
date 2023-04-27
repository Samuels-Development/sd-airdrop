Config = {}

-- Core Config
Config.CoreName = 'qb-core'

-- Target Config
Config.TargetName = 'qb-target'
Config.TargetIcon = 'fab fa-dropbox'
Config.TargetLabel = 'Open Crate'

-- Police Config
Config.RequiredCops = 0 -- How many cops are required to drop a gun?
Config.PoliceJobs = {"police"} -- All types of police job in server.

-- Other Config
Config.TimeUntilDrop = 3 -- How long does it take to drop a gun? (in minutes)
Config.Cooldown = 10 -- Global Cooldown

-- Objects and models Config
Config.LoadModels = {"w_am_flare", "p_cargo_chute_s", "ex_prop_adv_case_sm", "cuban800", "s_m_m_pilot_02"} -- Models to pre-load.
Config.FlareName = "weapon_flare" -- Name of the flare weapon.
Config.FlareModel = "w_am_flare" -- Model of the flare weapon.
Config.PlaneModel = "cuban800" -- Model of the plane. original plane cuban800
Config.PlanePilotModel = "s_m_m_pilot_02" -- Model of the plane pilot.
Config.ParachuteModel = "p_cargo_chute_s" -- Model of the parachute.
Config.CrateModel = "ex_prop_adv_case_sm" -- Model of the crate

-- Item Drops Config
Config.ItemDrops = {
    ["goldenphone"] = {
        [1] = {name = "weapon_smg", description = "Key", amount = 1},
        [2] = {name = "weapon_assaultsmg", description = "Key", amount = 1},
        [3] = {name = "weapon_assaultrifle", description = "Key", amount = 1},
        [4] = {name = "weapon_carbinerifle", description = "Key", amount = 1},
    },
    ["redphone"] = {
        [1] = {name = "coke_brick", description = "Coke Brick", amount = 5},
    },
    ["greenphone"] = {
        [1] = {name = "weapon_heavypistol", description = "Heavy Pistol", amount = 6},
        [2] = {name = "ifak", description = "iFaks", amount = 20},
    },
}

-- Locale Config
Config.Lang = { 
    ["pilot_contact"] = "You will be contacted soon",
    ["no_cops"] = "There aren't enough cops...",
    ["pilot_dropping_soon"] = "The plane will be in ther air and the crate will be dropping soon.",
    ["pilot_crashed"] = "Fuck! The plane crashed! Delivery has failed!",
    ["crate_dropping"] = "Crate is on its way down.",
    ["item_recieved"] = "You got the goods",
}

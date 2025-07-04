local ADDON_NAME  = "Skillstyles"

local ADDON_ICONS_PATH = "/Skillstyles/icons/"

local ADDON_ICONS = {
    "ability_1handed_001_orange.dds",
    "ability_1handed_001_red.dds",
    "ability_1handed_002_lava.dds",
    "ability_2handed_001_green.dds",
    "ability_2handed_002_blue.dds",
    "ability_2handed_002_red.dds",
    "ability_2handed_003_ice.dds",
    "ability_2handed_004_red.dds",
    "ability_2handed_005_yellow.dds",
    "ability_arcanist_001_blue.dds",
    "ability_arcanist_002_blue.dds",
    "ability_arcanist_013_blue.dds",
    "ability_armor_003_yellow.dds",
    "ability_ava_003_orange.dds",
    "ability_ava_003_shell.dds",
    "ability_ava_006_blue.dds",
    "ability_ava_006_green.dds",
    "ability_ava_revealing_flare_orange.dds",
    "ability_ava_vigor_blue.dds",
    "ability_ava_vigor_green.dds",
    "ability_bow_001_red.dds",
    "ability_bow_001_yellow.dds",
    "ability_bow_002_red.dds",
    "ability_bow_003_ice.dds",
    "ability_bow_003_meteors.dds",
    "ability_destructionstaff_001_blackcore.dds",
    "ability_destructionstaff_001_bluewhite.dds",
    "ability_destructionstaff_002_floral.dds",
    "ability_destructionstaff_002_green.dds",
    "ability_destructionstaff_002_purple.dds",
    "ability_destructionstaff_005_green.dds",
    "ability_destructionstaff_011_purple.dds",
    "ability_destructionstaff_012_purple.dds",
    "ability_dragonknight_001_blue.dds",
    "ability_dragonknight_004_blue.dds",
    "ability_dragonknight_007_blue.dds",
    "ability_dragonknight_015_blue.dds",
    "ability_dragonknight_018_blue.dds",
    "ability_dualwield_001_purple.dds",
    "ability_dualwield_004_mirrormoor.dds",
    "ability_dualwield_005_orange.dds",
    "ability_dualwield_005_red.dds",
    "ability_fightersguild_002_red.dds",
    "ability_fightersguild_003_gold.dds",
    "ability_fightersguild_004_orange.dds",
    "ability_fightersguild_005_darkpurple.dds",
    "ability_fightersguild_005_yellow.dds",
    "ability_mageguild_002_floral.dds",
    "ability_mageguild_002_green.dds",
    "ability_mageguild_004_purple.dds",
    "ability_mageguild_004_yellow.dds",
    "ability_mageguild_005_ice.dds",
    "ability_mageguild_005_orange.dds",
    "ability_necromancer_001_red.dds",
    "ability_necromancer_006_red.dds",
    "ability_necromancer_007_red.dds",
    "ability_nightblade_002_purple.dds",
    "ability_nightblade_003_purple.dds",
    "ability_nightblade_007_purple.dds",
    "ability_nightblade_017_purple.dds",
    "ability_psijic_001_purple.dds",
    "ability_psijic_005_purple.dds",
    "ability_restorationstaff_002_blue.dds",
    "ability_restorationstaff_002_purple.dds",
    "ability_restorationstaff_003_blue.dds",
    "ability_restorationstaff_004_purple.dds",
    "ability_restorationstaff_004_water.dds",
    "ability_sorcerer_daedric_curse_red.dds",
    "ability_sorcerer_lightning_form_red.dds",
    "ability_sorcerer_lightning_prey_redcelestial.dds",
    "ability_sorcerer_thunderclap_red.dds",
    "ability_soulmagic_001_red.dds",
    "ability_templar_backlash_blue.dds",
    "ability_templar_rushed_ceremony_blue.dds",
    "ability_templar_trained_attacker_blue.dds",
    "ability_u26_vampire_01_purple.dds",
    "ability_u26_vampire_05_purple.dds",
    "ability_warden_003_orange.dds",
    "ability_warden_008_orange.dds",
    "ability_warden_015_orange.dds",
    "ability_warden_018_grey.dds",
    "ability_warden_018_polar.dds",
    "ability_werewolf_001_red.dds",
    "ability_werewolf_003_green.dds",
}

-- Function to initialize icons
local function InitializeIcons()
    if AbilityIconsFramework and AbilityIconsFramework.AddCustomIconPack then
        -- Add the custom icon pack
        AbilityIconsFramework.AddCustomIconPack(ADDON_ICONS_PATH, ADDON_ICONS)
    else
        d("MemeIcons: AbilityIconsFramework not found or incompatible!")
    end
end


-- Initialize icons when the addon is loaded
EVENT_MANAGER:RegisterForEvent(ADDON_NAME, EVENT_ADD_ON_LOADED, function(_, addonName)
    if addonName ~= ADDON_NAME then return end
    EVENT_MANAGER:UnregisterForEvent(ADDON_NAME, EVENT_ADD_ON_LOADED)
    InitializeIcons()
end)
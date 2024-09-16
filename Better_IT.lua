--- STEAMODDED HEADER
--- MOD_NAME: Better Italian
--- MOD_ID: Better_IT
--- PREFIX: Better_IT
--- MOD_AUTHOR: [Maca]
--- MOD_DESCRIPTION: Humble community-made version of the Italian Balatro localization. Inspired by the French Community Localization. Content based on the Italian Community's Feedback in the Official Balatro Discord.
--- PRIORITY: -100000
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0812d]
--- VERSION: 1.0

----------------------------------------------
------------MOD CODE -------------------------

    G.F_NO_ACHIEVEMENTS = false

    local MOD_ID = "Better_IT"
    local lang_path = SMODS.Mods[MOD_ID].path.."it.lua"

	SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
	})

      local function apply_sprites()
		--sendDebugMessage("Sprites Maca")
        SMODS.Atlas { key = "Booster", path = { ['it'] = 'boosters.png', }, px = 71, py = 95, prefix_config = { key = false } }
        SMODS.Atlas { key = "Tarot", path = { ['it'] = 'Tarots.png', }, px = 71, py = 95, prefix_config = { key = false } }
        SMODS.Atlas { key = "Voucher", path = { ['it'] = 'Vouchers.png', }, px = 71, py = 95, prefix_config = { key = false } }
        SMODS.Atlas { key = "icons", path = { ['it'] = 'icons.png', }, px = 66, py = 66, prefix_config = { key = false } }
        SMODS.Atlas { key = "Joker", path = { ['it'] = 'Jokers.png', }, px = 71, py = 95, prefix_config = { key = false } }
        SMODS.Atlas { key = "blind_chips", path = { ['it'] = "BlindChips.png", }, px = 34, py = 34, prefix_config = { key = false }, atlas_table = 'animation_atli', frames = 21 }
        SMODS.Atlas { key = "shop_sign", path = { ['it'] = "ShopSignAnimation.png", }, px = 113, py = 57, prefix_config = { key = false }, atlas_table = 'animation_atli', frames = 4 }
    end
	
	--sendDebugMessage("BALATRO ITALIANO GODOOOO!")

------------MOD CODE END----------------------
----------------------------------------------

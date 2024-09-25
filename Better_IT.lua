--- STEAMODDED HEADER
--- MOD_NAME: Better Italian
--- MOD_ID: Better_IT
--- PREFIX: Maca-BIT
--- MOD_AUTHOR: [Maca]
--- MOD_DESCRIPTION: Humble community-made version of the Italian Balatro localization. Inspired by the French Community Localization. Content based on the Italian Community's Feedback in the Official Balatro Discord.
--- PRIORITY: 0
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0812d]
--- VERSION: 1.0

----------------------------------------------
------------MOD CODE -------------------------

    G.F_NO_ACHIEVEMENTS = false

    local MOD_ID = "Better_IT"
    --local lang_path = SMODS.Mods[MOD_ID].path.."it.lua"

	SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
	})

    local function apply_sprites()
		sendDebugMessage("Sprites Mac a XDD")
		
        SMODS.Atlas { key = "Booster", path = { ['it'] = 'boosters.png', }, px = 71, py = 95, prefix_config = { key = false } }
		SMODS.Atlas { key = "Tarot", path = { ['it'] = 'Tarots.png', }, px = 71, py = 95, prefix_config = { key = false } }
		SMODS.Atlas { key = "Planet", path = { ['it'] = 'Tarots.png', }, px = 71, py = 95, prefix_config = { key = false } }
		SMODS.Atlas { key = "Spectral", path = { ['it'] = 'Tarots.png', }, px = 71, py = 95, prefix_config = { key = false } }
		SMODS.Atlas { key = "Voucher", path = { ['it'] = 'Vouchers.png', }, px = 71, py = 95, prefix_config = { key = false } }
		SMODS.Atlas { key = "icons", path = { ['it'] = 'icons.png', }, px = 66, py = 66, prefix_config = { key = false } }
		SMODS.Atlas { key = "Joker", path = { ['it'] = 'Jokers.png', }, px = 71, py = 95, prefix_config = { key = false } }
		SMODS.Atlas { key = "blind_chips", path = { ['it'] = "BlindChips.png", }, px = 34, py = 34, prefix_config = { key = false }, atlas_table = 'ANIMATION_ATLAS', frames = 21 }
		SMODS.Atlas { key = "shop_sign", path = { ['it'] = "ShopSignAnimation.png", }, px = 113, py = 57, prefix_config = { key = false }, atlas_table = 'ANIMATION_ATLAS', frames = 4 }
		--init_localization()
	end

	local function apply_patch()
		init_localization()
		apply_sprites()
		--apply_font()
	end

	if G.LANG.key == "it" then
		apply_patch()
	end
	
	G.set_language_ref = G.set_language
	
function G:set_language()
	self:set_language_ref()

	if self.LANG.key == "it" then
		apply_patch()
	end
	
	sendDebugMessage("Maca_BIT: Balatro Ma Meglio - CARICATA")

end	
------------MOD CODE END----------------------
----------------------------------------------

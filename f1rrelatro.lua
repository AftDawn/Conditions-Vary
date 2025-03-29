--[[ Atlases ]]--

SMODS.Atlas {
	key = "Jokers",
	path = "Jokers.png",
	px = 71,
	py = 95
}

--[[ Jokers ]]--


-- [[]]--
SMODS.Joker {
	key = 'talomega',
	loc_txt = {
		name = 'Talan Omega',
		text = {
            'Copies ability of a random',
			'{C:attention}Joker{} each round'
		}
	},
	config = { extra = { mult = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult } }
	end,
	rarity = 1,
	atlas = 'Jokers',
	pos = { x = 0, y = 0 },
	cost = 2,
	calculate = function(self, card, context)

        local copycard = pseudorandom(talomega,0,1)

        local copiedjoker = G.jokers.cards[copycard]
        SMODS.blueprint_effect (card, copiedjoker, context)
    end
}


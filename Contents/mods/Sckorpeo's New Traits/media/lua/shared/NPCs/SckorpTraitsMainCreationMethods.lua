require('NPCs/MainCreationMethods');

local function initSckorpTraits()
    local growthmarketer = TraitFactory.addTrait("growthmarketing", getText("UI_trait_growthmarketing"), 2, getText("UI_trait_growthmarketingdesc"), false, false);
    growthmarketer:addXPBoost(Perks.Fishing, 2);
    TraitFactory.addTrait("cyborg", getText("UI_trait_cyborg"), 8, getText("UI_trait_cyborgdesc"), false, false);
end

Events.OnGameBoot.Add(initSckorpTraits);

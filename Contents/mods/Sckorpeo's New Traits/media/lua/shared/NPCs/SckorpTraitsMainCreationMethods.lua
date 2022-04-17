require('NPCs/MainCreationMethods');

local function initSckorpTraits()
    local growthmarketer = TraitFactory.addTrait("growthmarketing", getText("UI_trait_growthmarketing"), 2, getText("UI_trait_growthmarketingdesc"), false, false);
    growthmarketer:addXPBoost(Perks.Fishing, 2);
end

Events.OnGameBoot.Add(initSckorpTraits);

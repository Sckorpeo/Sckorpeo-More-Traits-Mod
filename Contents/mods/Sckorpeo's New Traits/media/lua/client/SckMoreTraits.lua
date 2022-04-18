local function tableContains(t, e)
    for _, value in pairs(t) do
        if value == e then
            return true
        end
    end
    return false
end

function QuickWorker(_player)
    local player = _player;
    if player:HasTrait("cyborg") then
        if player:hasTimedActions() == true then
            local actions = player:getCharacterActions();
            local blacklist = { "ISWalkToTimedAction", "ISPathFindAction", "" }
            local action = actions:get(0);
            local type = action:getMetaType();
            local delta = action:getJobDelta();
            --Don't modify the action if it is in the Blacklist or if it has not yet started (is valid)
            print("Sck project triggered");
            print(player:HasTrait("cyborg"));
            print(type);
            print(action);
            print(action:getCurrentTime());
            print(delta);
            if tableContains(blacklist, type) == false and delta > 0 then
                if type == "ISReadABook" then
                    if player:HasTrait("cyborg") then
                        action:setCurrentTime(action:getCurrentTime() + 25);
                    end
                end
            end
        end
    end
end

function MainPlayerUpdate(_player)
    local player = _player;
    QuickWorker(player);
end

Events.OnPlayerUpdate.Add(MainPlayerUpdate);

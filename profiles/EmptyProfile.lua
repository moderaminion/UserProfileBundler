local PROFILE = {}
PROFILE.class = 0
PROFILE.spec = 0
---@type Api
local api = {}

------------------------------------------------------------------------------------------------------------------------
--START OF YOUR CODE
------------------------------------------------------------------------------------------------------------------------

function PROFILE:Init()
    PROFILE.class = api.V.CLASS.Elementalist
    PROFILE.spec = api.V.SPEC.Weaver -- If core then write 0
end

function PROFILE:MyGUI()

end
function PROFILE:MyInfoModal()

end
function PROFILE:MyStuffOutOfRotation()

end
function PROFILE:MySkills()

end
function PROFILE:MyVariables()

end
function PROFILE:MyRotation()

    return false
end
function PROFILE:IsCastingImportantSkill()

    return false
end

------------------------------------------------------------------------------------------------------------------------
--END OF YOUR CODE
------------------------------------------------------------------------------------------------------------------------

PROFILE.class = 0
PROFILE.spec = 0
function PROFILE:LinkAPI(_api) api = _api end
function PROFILE:DoProfile()
    api.V.target = api:GetTarget()
    api:UpdateSlotInfos()
    if(not Player.incombat or api.V.castfix) then
        PROFILE:MyVariables()
        if(api.V.castfix) then api:ResetCache() api.V.castfix = false end
    end
    if(not Player.mounted and Player.incombat and api.V.heal and api.V.autoheal.state and Player.health.percent <= api.V.autoheal.percent) then
        if(api.V.heal.isgroundtargeted) then
            Player:CastSpellNoChecks(0, Player.id)
        else Player:CastSpellNoChecks(0) end
    end
    if(not api:IsRotationExecutable()) then return end
    if(PROFILE:IsCastingImportantSkill()) then return end
    if(PROFILE:MyRotation()) then return end
    return api:CastFix()
end

return PROFILE
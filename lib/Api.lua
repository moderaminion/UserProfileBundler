---@class Api
local API = { }
---@type Vars
API.V = {}
API.I = {}

---@return boolean
function API:SPVP_StopRotation() end
---@return boolean
---@param skill string @skill name
function API:CanCastSingle(skill) end
---Check if skill can be casted (right weapon/in slot, cooldown etc.)
---@return boolean
---@param skills string|string[]
function API:CanCast(skills) end
---Check if in range of target to cast skill. If skill has no range then radius is taken.
---@return boolean
---@param skill string @skill name
function API:InRange(skill) end
---Returns the corresponding slot
---@return number
---@param skill string @skill name
function API:GetSlotBySkill(skill) end
---Returns FULL skill with cooldowns etc.
---@return Skill
---@param skill string @skill name
function API:GetSkillBySlot(skill) end
---Check if player is casting a registered skill beside first weapon slot
---If parameter is provided it will only check that single skill
---@return boolean
---@param skills string|table<string> @skill name @optional
function API:IsCasting(skills) end
---Check if is casting expect the provided skills from parameter
---@return boolean
---@param skill string @skill name|string[]
function API:IsCastingExcept(skills) end
---Check if the players last casted skill is the same as the provided skill. Uses Player.castinfo.
---@return boolean
---@param skill string @skill name
function API:LastCasted(skill) end
---Check if one of the provided skills was last casted. Uses Player.castinfo.
---@return boolean
---@param skills string|string[]
function API:OneOfLastCasted(skills) end
---@return void
---@param conditions boolean
function API:CastAuto(conditions) end
---Check if player has buff (boon or condition)
---@return boolean
---@param id number
---@param onenemy boolean @optional
---@param stacks number @optional
---@param timeleft number @optional in ms
function API:HasBuff(id,onenemy,stacks,timeleft) end
---Check if player has one of those buffs (boon or condition)
---@return boolean
---@param ids number
---@param onenemy boolean @optional
function API:HasOneOfBuffs(ids,onenemy) end
---Returns the buff from enemy or yourself
---@return Buff
---@param id number
---@param onenemy boolean @optional
function API:GetBuff(id,onenemy) end
---@return number
---@param target Player @optional defaults to Player
function API:CountBoons(target) end
---@return number
---@param target Player @optional defaults to Player
function API:CountConditions(target) end
---Locking target to set it as target every 2 seconds
---@return boolean
---@param target Player
function API:LockTarget(target) end
---Release target lock
---@return boolean
function API:UnlockTarget() end
---Returns the Character that is in the middle of a crowd
---@return Position
---@param range number @optional
function API:GetNextFriendlyCrowdPosition(range) end
---Returns the Character that is in the middle of a crowd
---@return Position
---@param player boolean
function API:GetNextHostileCrowdPosition(player) end
---Returns the Character that has most condis on him otherwise just current target
---@return Position
---@param player boolean
function API:GetNextTargetWithMostCondis(player) end
---NOT IMPLEMENTED YET
---@return boolean
---@param target Player
function API:IsResurrecting(target) end
---@return Player
function API:GetClosestTarget() end
---@return Player
---@param friendly boolean
---@param range number
function API:GetClosestDownedTarget(friendly,range) end
---@return Player
function API:GetClosestNpc() end
---Uses the skill to flee to the position with lowest enemy count
---@return void
---@param skill string @skill name
function API:FleeBySkill(skill) end
---@return void
---@param angle number @right side from 1 to 179, left side from -1 to -179
function API:FaceToAngle(angle) end
---@return Position
---@param range number
---@param angle number @right side from 1 to 179, left side from -1 to -179
function API:GetPositionByAngle(range,angle) end
---@return string @N, W, S, E, NW, NE, SW, SE
---@param target Player
---@param swap boolean @if true check by facing of target and not Player
function API:GetTargetDirection(target,swap) end
---@return string @N, W, S, E, NW, NE, SW, SE
---@param radian number
---@param fullRadius boolean @true if (0,360]
function API:TranslateRadToNSWE(radian, fullRadius) end
---@return string @N, W, S, E, NW, NE, SW, SE
---@param degree number
---@param fullRadius boolean @true if (0,360]
function API:TranslateDegToNSWE(degree, fullRadius) end
---@return string @N, W, S, E, NW, NE, SW, SE
---@param target Player
function API:GetHeadingDirection(target) end
---@return boolean
---@param target Player
---@param projectiles boolean @true: normal blocks, false: projectile destroy and reflect
function API:IsCastingBlock(target, projectiles) end
---Checks if target is casting heal slot
---@return boolean
---@param target Player
function API:IsCastingHeal(target) end
---@return boolean
---@param target Player
function API:IsCastingInterrupt(target) end
---Checks if Daze, Stun or Fear is applied
---If the player himself is provided then also checks if all weapon slots are on cooldown (knockdowned)
---@return boolean
---@param target Player
function API:IsInterrupted(target) end
---IMPORTANT always use this method instead of Player:GetTarget(). Only this one will work with target fixation.
---@return Player
function API:GetTarget() end
---Checks the state and percent of breakbar (if still blue bar then returns true)
---@return boolean
function API:HasDefianceBar() end
---TODO: quickness not checked till now
---@return number
---@param skill string @skill name
function API:GetCastingTime(skill) end
---Checks if skill just finished (casting bar)
---@return boolean
---@param skill string @skill name
function API:JustCasted(skill) end
---Cast skill normally
---@return boolean
---@param skill string @skill name
---@param target Player @only optional when skill doesn't need target
---@param nolog boolean @optional
function API:Cast(skill,target,nolog) end
---Shortform, same as API:Cast but does the check API:CanCast implicit
---Providing 4 parameters: <boolean,string,Player,boolean>. This will allow to make further checks with arg1 which has to return boolean
---Providing 3 parameters: <string,Player,boolean>
---@return boolean
function API:CheckCast(arg1,arg2,arg3,arg4) end
---Cast skill with precondition (last) and postcondition (next).
---If nil is passed for last then last won't be checked.
---Reminder: Watchout for transformations. If a transformation skill should be casted after transformation ended your rotation won't proceed
---@return boolean
---@param now string @skill name or V.WEAPONSWAP
---@param last string @skill name
---@param next string @skill name or V.WEAPONSWAP
---@param interrupt number @<0 for waiting, >0 for interrupt, ==0 for normal cast (interrupt time on last casted skill) in ms
---@param target Player @only optional when skill doesn't need target
function API:Cast2(now,last,next,interrupt,target) end
---Shortform, same as API:Cast2 but does the check API:CanCast implicit
---Providing 6 parameters: <boolean,string,string,string,number,Player>. This will allow to make further checks with arg1 which has to return boolean
---Providing 5 parameters: <string,string,string,number,Player>
---@return boolean
function API:CheckCast2(arg1,arg2,arg3,arg4,arg5,arg6) end
---Assign V.lastcasttime and V.lastskill
---@return void
---@param skill string @skill name
function API:LogCast(skill) end
---Use V.SMALL V.MEDIUM V.BIG V.HUGE to compare result
---@return number
function API:GetHitBox() end
---Picks up the interactable
---@return void
function API:PickUp() end
---@return boolean
---@param id number
function API:ItemIs(id) end
---Ignores Utilities that are not slotted
---@return boolean
---@param skills string|string[]
function API:AllSkillsReady(skills) end
---Ignores Utilities that are not slotted
---@return boolean
---@param skills string|string[]
function API:OneOfSkillsReady(skills) end
---Gets further skill data (memory, more expensive for many calls compared to API:GetLessSpellInfo)
---@return Skill
---@param skill string @skill name
function API:GetMoreSpellInfo(skill) end
---Gets skilldata from data.txt (cached)
---@return Skill
---@param skill string @skill name
function API:GetLessSpellInfo(skill) end
---From data.txt
---@return string
function API:GetMainHandType() end
---@return number
function API:GetMainHandTypeBySystem() end
---@return number
function API:GetAltMainHandTypeBySystem() end
---From data.txt
---@return string
function API:GetOffHandType() end
---@return number
function API:GetOffHandTypeBySystem() end
---@return number
function API:GetAltOffHandTypeBySystem() end
---Checks if on either weaponset the weapon is available and return boolean and the slot (-1 for false)
---@return boolean, number @multiple assignment local var1,var2 = API:HasWeaponEquipped(GW2.WEAPONTYPE.Sword)
---@param num number
function API:HasWeaponEquipped(num) end
---Deprecated
---@return boolean
function API:CastFix() end
---Same as reset button, resets whole profile to start from beginning
---@return void
function API:ResetCache() end
---@return void
function API:UpdateSlotInfos() end
---@return boolean
---@param name string|number
function API:HasSpec(name) end
---@return boolean
---@param name string|number
function API:HasTrait(name) end
---Checks if player is not downed, alive, target is attackable,
---player is incombat or atleast has target if enabled attacking outofcombat
---@return boolean
function API:IsRotationExecutable() end
---Register skills exlusively by the provided list.
---Bundle skills will be registered implicitly if the main skill providing them is registered (for example, Bombkit)
---If multiple Registers are called you can merge it with second parameter
---@return void
---@param names string[]
---@param mergewithothers boolean
function API:RegisterSkills(names,mergewithothers) end
---Bulk registering of skills
---Usage example: RegisterSkillsIf({profession="Elementalist"},false)
---@return void
---@param conditions table<string,any>
---@param mergewithothers boolean
function API:RegisterSkillsIf(conditions,mergewithothers) end
---Searches through data.txt by condition
---conditions example: {range=1200,profession="Elementalist"}
---@return table<string,Skill>
---@param conditions table<string,any>
function API:GetSkillsIf(conditions) end
---@return boolean
function API:IsInteracting() end
---@param code string @format [&...]
function API:Equip(code)end
---@param code string @format [&...]
---@return table
function API:ParseBuildTemplate(code)end

---@return void
function API:GUIDrawTextArea(...)end
---@return void
function API:GUIDrawTitle(text, underlined, rgb)end
---Only works with API:GUIDrawTextArea
---@return table
function API:GUICompNewLine()end
---Only works with API:GUIDrawTextArea
---@return table
function API:GUICompSeparator()end
---Only works with API:GUIDrawTextArea
---@return table
function API:GUICompBulletText(text)end
---Only works with API:GUIDrawTextArea
---@param text string @Button Text
---@param code string @format [&...]
---@return table
function API:GUICompTemplate(text,code)end
---Only works with API:GUIDrawTextArea
---@return table
function API:GUICompColorText(text, color)end
---@return void
function API:GUIDrawStateBox(text, sameline, args)end
---Searches Image in profiles folder from Addon
---@return void
function API:GUIImage(name, button, width, height)end
---Searches Image in SkillManager/iconcache
---@return void
function API:GUIImage2(name, button, width, height)end
---Searches Image in GW2Minion/Icons
---@return void
function API:GUIImage3(name, button, width, height)end

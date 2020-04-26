---@class Player @Can be a monster,normal player,npc
local PLAYER = {}
PLAYER.power = 0
PLAYER.health = { current = 0, max = 0, percent = 0 }
PLAYER.endurance = 0
---@type Position
PLAYER.pos = {}
PLAYER.distance = 0
---3 if moving
PLAYER.movementstate = 1
PLAYER.profession = 0
PLAYER.level = 0
PLAYER.incombat = false
PLAYER.isplayer = false
PLAYER.ispet = false
PLAYER.lastskillid = 0
PLAYER.skillid = 0
PLAYER.slot = 0
PLAYER.duration = 0
PLAYER.downed = false
PLAYER.alive = false
PLAYER.dead = false
PLAYER.isaggro = false

---@class Position
local POSITION = {}
POSITION.x = 0
POSITION.y = 0
POSITION.z = 0

---@class Buff
local BUFF = {}
BUFF.stacks = 0
BUFF.timeleft = 0
BUFF.maxduration = 0
BUFF.id = 0
BUFF.contentid = 0
BUFF.active = 1
BUFF.description = ""
BUFF.name = ""

---@class Skill @Most of data taken from Player:GetSpellInfoByID(number skillid)
local SKILL = {}
SKILL.type = ""
SKILL.weapontype = ""
SKILL.range = 0
SKILL.radius = 0
SKILL.slot = 0
SKILL.ammo = 0
SKILL.cancast = true
SKILL.casttime = 0

---@class RGB
local RGB = { r=255, g=255, b=255 }
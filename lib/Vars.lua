---@class Vars
local VARS = {
    lastskill = {},
    lastlastskill = {},
    lastlasttarget = {},
    nextskill = {},
    lastcasttime = 0,
    skills = {},
	manuallyswap = false,
	onlyattackwhenfacing = false,
    stopwhendownedclose = false,
    items = {},
    targetlock = { entity = nil, lock = false },
    attackoutofcombat = false,
    autoheal = { state = false, percent = 60 },
    stophealth = { state = false, percent = 40 },
    target = {},
    invulnerable = false,
    castfix = false,
    spvp = false,
    latency = 0,

    WEAPON = 0,
    UTIL = 1,
    ELITE = 2,
    FUNCTION = 3,
    TRAIT = 4,
    ITEM = 5,
    HEAL = 6,
    SMALL = 48,
    MEDIUM = 140,
    BIG = 200,
    HUGE = 400,
    WEAPONSWAP = { type = "WEAPONSWAP", name = "Weaponswap", skillid = 0, cooldown = 0 },
    STOMP = { type = "STOMP", name = "Stomp", skillid = 1097 },

    CLASS = {
        Guardian = 1, [1] = "Guardian",
        Warrior = 2, [2] = "Warrior",
        Engineer = 3, [3] = "Engineer",
        Ranger = 4, [4] = "Ranger",
        Thief = 5, [5] = "Thief",
        Elementalist = 6, [6] = "Elementalist",
        Mesmer = 7, [7] = "Mesmer",
        Necromancer = 8, [8] = "Necromancer",
        Revenant = 9, [9] = "Revenant",
    },

    SPEC = {
        Dragonhunter = 27, [27] = "Dragonhunter",
        Firebrand = 56, [56] = "Firebrand",
        Berserker = 18, [18] = "Berserker",
        Spellbreaker = 61, [61] = "Spellbreaker",
        Scrapper = 43, [43] = "Scrapper",
        Holosmith = 57, [57] = "Holosmith",
        Druid = 5,   [5] = "Druid",
        Soulbeast = 55, [55] = "Soulbeast",
        Daredevil = 7,   [7] = "Daredevil",
        Deadeye = 58, [58] = "Deadeye",
        Tempest = 48, [48] = "Tempest",
        Weaver = 56, [56] = "Weaver",
        Chronomancer = 40, [40] = "Chronomancer",
        Mirage = 59, [59] = "Mirage",
        Reaper = 34, [34] = "Reaper",
        Scourge = 60, [60] = "Scourge",
        Renegade = 63, [63] = "Renegade",
    },

    heal = {},
    util1 = {},
    util2 = {},
    util3 = {},
    elite = {},
    weapon1 = {},
    weapon2 = {},
    weapon3 = {},
    weapon4 = {},
    weapon5 = {},
    special = {},
    f1 = {},
    f2 = {},
    f3 = {},
    f4 = {},
    f5 = {},

    buffs = {
        conditions = {
            Blinded = 720,
            Crippled = 721,
            Chilled = 722,
            Poison = 723,
            Immobilized = 727,
            Bleeding = 736,
            Burning = 737,
            Vulnerability = 738,
            Weakness = 742,
            Downed = 770,
            Fear = 791,
            Confusion = 861,
            Daze = 833,
            Stun = 872,
            Petrified1 = 15090,
            Agony = 15773,
            Petrified2 = 16963,
            Torment = 19426,
            Slow = 26766,
            Taunt = 27705,
            Petrified3 = 30863,
        },
        boons = {
            Protection = 717,
            Regeneration = 718,
            Swiftness = 719,
            Fury = 725,
            Vigor = 726,
            Might = 740,
            Aegis = 743,
            Invulnerability = 757,
            Resurrection = 848,
            Determined1 = 762,
            Determined2 = 785,
            Determined3 = 11528,
            Determined4 = 11641,
            Retaliation = 873,
            Revealed = 890,
            Stability = 1122,
            Quickness = 1187,
            Superspeed = 5974,
            Stealth1 = 13017,
            Stealth2 = 26142,
            Resistance = 26980,
            Alacrity = 30328,
            LeaderOfThePactI = 33843,
            LeaderOfThePactII = 32675,
            LeaderOfThePactIII = 33611,
            ProtectiveShielding = 35675,
            ElementsOfRage = 42086,
            Overheat = 41037,
            Berserk = 29502,
            SadisticSearing = 43626,
            PlagueSending = 46832,
            MasterfulConcentration = 33719,
            Quickdraw = 29703,
            PhotonForge = 43708,
            Distortion = 10243,
            Rockguard = 34256,
            Blur = 10335,
            Echo = 29664,
            Timeanchored = 30136,
            PeakPerformance = 46853,
            HarmoniousConduit = 31353,
            FireAttunement = 5585,
            WaterAttunement = 5586,
            AirAttunement = 5575,
            EarthAttunement = 5580,
            MirageCloak = 40408,
            FanaticalResilence = 38226,
            ToughHide = 29065,
            DestructionImmunity = 36143,
            RighteousIndignation = 903,
            EmbraceTheDarkness = 28001,
            LegendaryDemonStance = 27928,
            LegendaryRenegadeStance = 44272,
            LegendaryDwarvenStance = 27205,
            LegendaryCentaurStance = 27972,
            LegendaryAssassinStance = 27890,
            LegendaryAssassinStance = 26596,
            ImpossibleOdds = 27581,
            AshesOfTheJust = 41957,
            EternalOasis = 44871,
            UnbrokenLines = 43194,
            PerfectWeave = 45267,
            WeaveSelf = 42951,
            Riposte = 10279, --mesmer
            TimeBlock = 30134,
            BoundingDodger = 33162,
            WeakeningStrikes = 34081,
            PrimordialStance = 42086,
            AttackOfOpportunity = 46724,
            OneWolfPack = 44139,
        }
    },
}
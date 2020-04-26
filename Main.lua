local ADDONNAME = "UserProfileBundler"
local CREATOR = "Modera"
local ADDON = {}
ADDON.tick = 0
function ADDON.ModuleInitHandler() ADDON:Load() end
RegisterEventHandler("Module.Initalize",ADDON.ModuleInitHandler,ADDONNAME)

function ADDON:Load()
    if (not table.valid(MPB_Public)) then
        if (TimeSince(ADDON.tick) > 5000) then
            d([[[]]..ADDONNAME..[[] - Install ProfileBundler first]])
            ADDON.tick = Now()
            ADDON:Load()
        end
        return
    end
    local path = GetLuaModsPath()..[[/]]..ADDONNAME..[[/profiles/]]
    if (FolderExists(path)) then
        local profiles = FolderList(path)
        for k,profile in pairs(profiles) do
            if (profile ~= "EmptyProfile.lua") then
                -- Read profile from my addon
                local infile = io.open(path..profile, "r")
                local instr = infile:read("*a")
                infile:close()

                -- Copy profile to ProfileBundler
                local mpbPath = GetLuaModsPath()..[[/ProfileBundler/profiles/]]
                local outfile = io.open(mpbPath ..CREATOR..profile, "w")
                outfile:write(instr)
                outfile:close()
            end
        end
        -- Let our profiles appear in ProfileBundler dropdown
        MPB_Public:RefreshList()
        d([[[]]..ADDONNAME..[[] - Profiles copied to ProfileBundler]])
    end
end
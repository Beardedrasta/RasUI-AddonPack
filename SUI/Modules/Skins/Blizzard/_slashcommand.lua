-- 1. Pick HELLOWORLD as the unique identifier.
-- 2. Pick /hiw and /hellow as slash commands (/hi and /hello are actual emotes)
SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/hiw', '/hellow'; -- 3.
function SlashCmdList.HELLOWORLD(msg, editbox) -- 4.
 print("Hello, World!");
end


SLASH_RASDISPLAY1, SLASH_RASDISPLAY2 = '/ruis', '/ruishow'
function SlashCmdList.RASDISPLAY(msg, editbox)
    for i, v in pairs({
        MiniMapClose:GetRegions()
    })do
        v:Show()
    end
end

SLASH_RASHIDE1, SLASH_RASHIDE2= '/ruih', '/ruihide'
function SlashCmdList.RASHIDE(msg, editbox)
    for i, v in pairs({
        MiniMapClose:GetRegions()
    })do
        v:Hide()
    end
end
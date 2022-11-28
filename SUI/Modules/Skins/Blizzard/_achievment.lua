local Module = SUI:NewModule("Skins.Achievment");

function Module:OnEnable()
  if (SUI:Color()) then
    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(self, event, name)
      if name == "Blizzard_AchievementUI" then
        for i, v in pairs({ 
          AchievementFrameMetalBorderRight,
          AchievementFrameMetalBorderBottomRight,
          AchievementFrameMetalBorderBottomLeft,
          AchievementFrameMetalBorderBottom,
          AchievementFrameMetalBorderLeft,
          AchievementFrameMetalBorderTopRight,
          AchievementFrameMetalBorderTopLeft,
          AchievementFrameMetalBorderTop,
          AchievementFrameCategories.ScrollBar.Track.Thumb.Middle,
          AchievementFrameCategories.ScrollBar.Track.Thumb.Begin,
          AchievementFrameCategories.ScrollBar.Track.Thumb.End,
          AchievementFrameAchievements.ScrollBar.Track.Thumb.Middle,
          AchievementFrameAchievements.ScrollBar.Track.Thumb.Begin,
          AchievementFrameAchievements.ScrollBar.Track.Thumb.End,
          AchievementFrameStats.ScrollBar.Track.Thumb.Middle,
          AchievementFrameStats.ScrollBar.Track.Thumb.Begin,
          AchievementFrameStats.ScrollBar.Track.Thumb.End,
        }) do
            v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          AchievementFrameTab1.Middle,
          AchievementFrameTab1.Right,
          AchievementFrameTab1.Left,
          AchievementFrameTab2.Middle,
          AchievementFrameTab2.Right,
          AchievementFrameTab2.Left,
          AchievementFrameTab3.Middle,
          AchievementFrameTab3.Right,
          AchievementFrameTab3.Left,
        }) do
          v:SetAlpha(.6)
        end

        for i, v in pairs({
          AchievementFrameTab1.MiddleActive,
          AchievementFrameTab1.RightActive,
          AchievementFrameTab1.LeftActive,
          AchievementFrameTab2.MiddleActive,
          AchievementFrameTab2.RightActive,
          AchievementFrameTab2.LeftActive,
          AchievementFrameTab3.MiddleActive,
          AchievementFrameTab3.RightActive,
          AchievementFrameTab3.LeftActive,
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          AchievementFrameCategoriesBG,
          AchievementFrameWaterMark,
          AchievementFrameSummary.Background,
        }) do
          v:Hide()

          for _, obj in pairs{
            AchievementFrameStatsBG:GetRegions()
          } do
            if obj:GetObjectType() == 'Texture' then
              obj:Hide()
            end
          end
        end
      end
    end)
  end
end
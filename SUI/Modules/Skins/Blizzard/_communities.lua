local Module = SUI:NewModule("Skins.Communities");

function Module:OnEnable()
  if (SUI:Color()) then
    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(self, event, name)
      if name == "Blizzard_Communities" then
        for i, v in pairs({
          CommunitiesFrame.NineSlice.TopEdge,
          CommunitiesFrame.NineSlice.RightEdge,
          CommunitiesFrame.NineSlice.BottomEdge,
          CommunitiesFrame.NineSlice.LeftEdge,
          CommunitiesFrame.NineSlice.TopRightCorner,
          CommunitiesFrame.NineSlice.TopLeftCorner,
          CommunitiesFrame.NineSlice.BottomLeftCorner,
          CommunitiesFrame.NineSlice.BottomRightCorner,
          CommunitiesFrame.GuildMemberDetailFrame.Border.TopEdge,
          CommunitiesFrame.GuildMemberDetailFrame.Border.RightEdge,
          CommunitiesFrame.GuildMemberDetailFrame.Border.BottomEdge,
          CommunitiesFrame.GuildMemberDetailFrame.Border.LeftEdge,
          CommunitiesFrame.GuildMemberDetailFrame.Border.TopRightCorner,
          CommunitiesFrame.GuildMemberDetailFrame.Border.TopLeftCorner,
          CommunitiesFrame.GuildMemberDetailFrame.Border.BottomLeftCorner,
          CommunitiesFrame.GuildMemberDetailFrame.Border.BottomRightCorner,
          ClubFinderCommunityAndGuildFinderFrame.InsetFrame.Bg,
          ClubFinderGuildFinderFrame.InsetFrame.Bg,


         }) do
            v:SetVertexColor(unpack(SUI:Color(0.15)))
        end
        for i, v in pairs({
          CommunitiesFrame.TitleBg,
          CommunitiesFrameInset.Bg,

          }) do
            v:SetVertexColor(unpack(SUI:Color(0.15)))
        end
        for i, v in pairs({
          CommunitiesFrameInset.NineSlice.TopEdge,
          CommunitiesFrameInset.NineSlice.RightEdge,
          CommunitiesFrameInset.NineSlice.BottomEdge,
          CommunitiesFrameInset.NineSlice.LeftEdge,
          CommunitiesFrameInset.NineSlice.TopRightCorner,
          CommunitiesFrameInset.NineSlice.TopLeftCorner,
          CommunitiesFrameInset.NineSlice.BottomLeftCorner,
          CommunitiesFrameInset.NineSlice.BottomRightCorner,
          CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.TopEdge,
          CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.RightEdge,
          CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.BottomEdge,
          CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.LeftEdge,
          CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.TopRightCorner,
          CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.TopLeftCorner,
          CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.BottomLeftCorner,
          CommunitiesFrameCommunitiesList.InsetFrame.NineSlice.BottomRightCorner,
          CommunitiesFrame.ChatEditBox.Left,
          CommunitiesFrame.ChatEditBox.Mid,
          CommunitiesFrame.ChatEditBox.Right,
          CommunitiesFrame.Chat.InsetFrame.NineSlice.TopEdge,
          CommunitiesFrame.Chat.InsetFrame.NineSlice.RightEdge,
          CommunitiesFrame.Chat.InsetFrame.NineSlice.BottomEdge,
          CommunitiesFrame.Chat.InsetFrame.NineSlice.LeftEdge,
          CommunitiesFrame.Chat.InsetFrame.NineSlice.TopRightCorner,
          CommunitiesFrame.Chat.InsetFrame.NineSlice.TopLeftCorner,
          CommunitiesFrame.Chat.InsetFrame.NineSlice.BottomLeftCorner,
          CommunitiesFrame.Chat.InsetFrame.NineSlice.BottomRightCorner,
          CommunitiesFrame.MemberList.InsetFrame.NineSlice.TopEdge,
          CommunitiesFrame.MemberList.InsetFrame.NineSlice.RightEdge,
          CommunitiesFrame.MemberList.InsetFrame.NineSlice.BottomEdge,
          CommunitiesFrame.MemberList.InsetFrame.NineSlice.LeftEdge,
          CommunitiesFrame.MemberList.InsetFrame.NineSlice.TopRightCorner,
          CommunitiesFrame.MemberList.InsetFrame.NineSlice.TopLeftCorner,
          CommunitiesFrame.MemberList.InsetFrame.NineSlice.BottomLeftCorner,
          CommunitiesFrame.MemberList.InsetFrame.NineSlice.BottomRightCorner, }) do
            v:SetVertexColor(.3, .3, .3)
        end
        for i, v in pairs({
          CommunitiesFrameCommunitiesList.TopFiligree,
          CommunitiesFrameCommunitiesList.BottomFiligree,
          CommunitiesFrameCommunitiesList.Bg}) do
            v:SetVertexColor(.5, .5, .5)
        end
        for i, v in pairs({
          CommunitiesFrame.Chat.MessageFrame.ScrollBar.thumbTexture,
          CommunitiesFrame.CommunitiesControlFrame.GuildRecruitmentButton.Middle,
          CommunitiesFrame.CommunitiesControlFrame.GuildRecruitmentButton.Left,
          CommunitiesFrame.CommunitiesControlFrame.GuildRecruitmentButton.Right,
          CommunitiesFrame.GuildBenefitsFrame.Rewards.ScrollBar.Track.Thumb.Begin,
          CommunitiesFrame.GuildBenefitsFrame.Rewards.ScrollBar.Track.Thumb.Middle,
          CommunitiesFrame.GuildBenefitsFrame.Rewards.ScrollBar.Track.Thumb.End,
          ClubFinderGuildFinderFrame.OptionsList.Search:GetRegions(),
          ClubFinderCommunityAndGuildFinderFrame.CommunityCards.ScrollBar.Track.Thumb.Begin,
          ClubFinderCommunityAndGuildFinderFrame.CommunityCards.ScrollBar.Track.Thumb.Middle,
          ClubFinderCommunityAndGuildFinderFrame.CommunityCards.ScrollBar.Track.Thumb.End,
          CommunitiesFrame.MemberList.ScrollBar.Track.Thumb.Begin,
          CommunitiesFrame.MemberList.ScrollBar.Track.Thumb.Middle,
          CommunitiesFrame.MemberList.ScrollBar.Track.Thumb.End,
          CommunitiesFrameCommunitiesList.ScrollBar.Track.Thumb.Begin,
          CommunitiesFrameCommunitiesList.ScrollBar.Track.Thumb.Middle,
          CommunitiesFrameCommunitiesList.ScrollBar.Track.Thumb.End,
        
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          CommunitiesSettingsDialog.BG.TopEdge,
          CommunitiesSettingsDialog.BG.TopLeftCorner,
          CommunitiesSettingsDialog.BG.TopRightCorner,
          CommunitiesSettingsDialog.BG.BottomEdge,
          CommunitiesSettingsDialog.BG.LeftEdge,
          CommunitiesSettingsDialog.BG.RightEdge,
          CommunitiesSettingsDialog.BG.BottomLeftCorner,
          CommunitiesSettingsDialog.BG.BottomRightCorner,
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          ClubFinderGuildFinderFrame.GuildCards.ThirdCard.RequestJoin:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          ClubFinderGuildFinderFrame.GuildCards.SecondCard.RequestJoin:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          ClubFinderGuildFinderFrame.GuildCards.FirstCard.RequestJoin:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          ClubFinderGuildFinderFrame.OptionsList.Search:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          CommunitiesFrame.CommunitiesControlFrame.CommunitiesSettingsButton:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          ClubFinderCommunityAndGuildFinderFrame.OptionsList.Search:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          CommunitiesSettingsDialog.Cancel:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          CommunitiesSettingsDialog.Delete:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          CommunitiesSettingsDialog.Accept:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          CommunitiesSettingsDialog.ChangeAvatarButton:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({
          CommunitiesFrame.InviteButton:GetRegions(),
        }) do
          v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs ({
          CommunitiesFrame.Bg,
        }) do
          v:SetAlpha(.6)
        end
      end
    end)
  end
end
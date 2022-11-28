local Module = SUI:NewModule("Skins.Friendlist");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in pairs({
      FriendsFrame.NineSlice.TopEdge,
      FriendsFrame.NineSlice.TopEdge,
      FriendsFrame.NineSlice.TopRightCorner,
      FriendsFrame.NineSlice.RightEdge,
      FriendsFrame.NineSlice.BottomRightCorner,
      FriendsFrame.NineSlice.BottomEdge,
      FriendsFrame.NineSlice.BottomLeftCorner,
      FriendsFrame.NineSlice.LeftEdge,
      FriendsFrame.NineSlice.TopLeftCorner,
      FriendsFriendsFrame.Border.TopEdge,
      FriendsFriendsFrame.Border.RightEdge,
      FriendsFriendsFrame.Border.BottomEdge,
      FriendsFriendsFrame.Border.LeftEdge,
      FriendsFriendsFrame.Border.TopRightCorner,
      FriendsFriendsFrame.Border.TopLeftCorner,
      FriendsFriendsFrame.Border.BottomLeftCorner,
      FriendsFriendsFrame.Border.BottomRightCorner, }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
    for i, v in pairs({
      FriendsFrame.TitleBg,
      FriendsFrameInset.NineSlice.TopEdge,
      FriendsFrameInset.NineSlice.TopEdge,
      FriendsFrameInset.NineSlice.TopRightCorner,
      FriendsFrameInset.NineSlice.RightEdge,
      FriendsFrameInset.NineSlice.BottomRightCorner,
      FriendsFrameInset.NineSlice.BottomEdge,
      FriendsFrameInset.NineSlice.BottomLeftCorner,
      FriendsFrameInset.NineSlice.LeftEdge,
      FriendsFrameInset.NineSlice.TopLeftCorner }) do
        v:SetVertexColor(unpack(SUI:Color()))
    end
    for i, v in pairs({
      FriendsListFrame.ScrollBar.Track.Thumb.Middle,
      FriendsListFrame.ScrollBar.Track.Thumb.Begin,
      FriendsListFrame.ScrollBar.Track.Thumb.End,
      FriendsTabHeaderTab1.LeftActive,
      FriendsTabHeaderTab1.RightActive,
      FriendsTabHeaderTab1.MiddleActive,
      FriendsTabHeaderTab2.LeftActive,
      FriendsTabHeaderTab2.RightActive,
      FriendsTabHeaderTab2.MiddleActive,
      FriendsTabHeaderTab3.LeftActive,
      FriendsTabHeaderTab3.RightActive,
      FriendsTabHeaderTab3.MiddleActive,
      FriendsFrameTab1.LeftActive,
      FriendsFrameTab1.RightActive,
      FriendsFrameTab1.MiddleActive,
      FriendsFrameTab2.LeftActive,
      FriendsFrameTab2.RightActive,
      FriendsFrameTab2.MiddleActive,
      FriendsFrameTab3.LeftActive,
      FriendsFrameTab3.RightActive,
      FriendsFrameTab3.MiddleActive,
      FriendsFrameTab4.LeftActive,
      FriendsFrameTab4.RightActive,
      FriendsFrameTab4.MiddleActive,
      RaidFrameRaidInfoButton.Middle,
      RaidFrameRaidInfoButton.Left,
      RaidFrameRaidInfoButton.Right,
      WhoFrameWhoButton.Middle,
      WhoFrameWhoButton.Left,
      WhoFrameWhoButton.Right,
      WhoFrameAddFriendButton.Middle,
      WhoFrameAddFriendButton.Left,
      WhoFrameAddFriendButton.Right,
      WhoFrameGroupInviteButton.Middle,
      WhoFrameGroupInviteButton.Left,
      WhoFrameGroupInviteButton.Right,
      FriendsFrameAddFriendButton.Middle,
      FriendsFrameAddFriendButton.Left,
      FriendsFrameAddFriendButton.Right,
      FriendsFrameSendMessageButton.Middle,
      FriendsFrameSendMessageButton.Left,
      FriendsFrameSendMessageButton.Right,

    }) do
      v:SetVertexColor(unpack(SUI:Color()))
    end

      for i, v in pairs({
        FriendsFrameBg,
      }) do
        v:SetAlpha(.6)
    end
  end
end
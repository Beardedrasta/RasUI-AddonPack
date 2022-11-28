local Module = SUI:NewModule("Skins.ActionHouse");
local _, class = UnitClass("player");
local Color = {r = 1, g = 1, b = 1}

function Module:OnEnable()
  if (SUI:Color()) then
    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(self, event, name)
      if name == "Blizzard_AuctionHouseUI" then
        local _, class = UnitClass("player");
        Color = RAID_CLASS_COLORS[class];
        for i, v in pairs({ AuctionHouseFrame.NineSlice.TopEdge,
          AuctionHouseFrame.NineSlice.RightEdge,
          AuctionHouseFrame.NineSlice.BottomEdge,
          AuctionHouseFrame.NineSlice.LeftEdge,
          AuctionHouseFrame.NineSlice.TopRightCorner,
          AuctionHouseFrame.NineSlice.TopLeftCorner,
          AuctionHouseFrame.NineSlice.BottomLeftCorner,
          AuctionHouseFrame.NineSlice.BottomRightCorner,
          AuctionHouseFrame.NineSlice.BottomEdge,
          AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.TopEdge,
          AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.RightEdge,
          AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.BottomEdge,
          AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.LeftEdge,
          AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.TopRightCorner,
          AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.TopLeftCorner,
          AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.BottomLeftCorner,
          AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.BottomRightCorner,
          AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice.BottomEdge,
          AuctionHouseFrame.BrowseResultsFrame.ItemList.Background,
          AuctionHouseFrame.BrowseResultsFrame.ItemList.ScrollBar.Track.Thumb.Middle,
          AuctionHouseFrame.BrowseResultsFrame.ItemList.ScrollBar.Track.Thumb.Begin,
          AuctionHouseFrame.BrowseResultsFrame.ItemList.ScrollBar.Track.Thumb.End,
          AuctionHouseFrame.CategoriesList.ScrollBar.Track.Thumb.Middle,
          AuctionHouseFrame.CategoriesList.ScrollBar.Track.Thumb.Begin,
          AuctionHouseFrame.CategoriesList.ScrollBar.Track.Thumb.End,
          AuctionHouseFrameAuctionsFrame.SummaryList.ScrollBar.Track.Thumb.Middle,
          AuctionHouseFrameAuctionsFrame.SummaryList.ScrollBar.Track.Thumb.Begin,
          AuctionHouseFrameAuctionsFrame.SummaryList.ScrollBar.Track.Thumb.End,
          AuctionHouseFrameAuctionsFrame.AllAuctionsList.ScrollBar.Track.Thumb.Middle,
          AuctionHouseFrameAuctionsFrame.AllAuctionsList.ScrollBar.Track.Thumb.Begin,
          AuctionHouseFrameAuctionsFrame.AllAuctionsList.ScrollBar.Track.Thumb.End,
          AuctionHouseFrameBuyTab.MiddleActive,
          AuctionHouseFrameBuyTab.LeftActive,
          AuctionHouseFrameBuyTab.RightActive,
          AuctionHouseFrameSellTab.MiddleActive,
          AuctionHouseFrameSellTab.LeftActive,
          AuctionHouseFrameSellTab.RightActive,
          AuctionHouseFrameAuctionsTab.MiddleActive,
          AuctionHouseFrameAuctionsTab.LeftActive,
          AuctionHouseFrameAuctionsTab.RightActive,
          AuctionHouseFrame.ItemSellList.Background,
          AuctionHouseFrameAuctionsFrameAuctionsTab.MiddleActive,
          AuctionHouseFrameAuctionsFrameAuctionsTab.RightActive,
          AuctionHouseFrameAuctionsFrameAuctionsTab.LeftActive,
          AuctionHouseFrameAuctionsFrameBidsTab.MiddleActive,
          AuctionHouseFrameAuctionsFrameBidsTab.RightActive,
          AuctionHouseFrameAuctionsFrameBidsTab.LeftActive,
          AuctionHouseFrame.SearchBar.SearchButton:GetRegions(),
         }) do
            v:SetVertexColor(Color.r, Color.g, Color.b)
        end

        for i, v in pairs({
          AuctionHouseFrameBg,
          AuctionHouseFrameBuyTab.Middle,
          AuctionHouseFrameBuyTab.Left,
          AuctionHouseFrameBuyTab.Right,
          AuctionHouseFrameSellTab.Middle,
          AuctionHouseFrameSellTab.Left,
          AuctionHouseFrameSellTab.Right,
          AuctionHouseFrameAuctionsTab.Middle,
          AuctionHouseFrameAuctionsTab.Left,
          AuctionHouseFrameAuctionsTab.Right,
          AuctionHouseFrameAuctionsFrameAuctionsTab.Middle,
          AuctionHouseFrameAuctionsFrameAuctionsTab.Right,
          AuctionHouseFrameAuctionsFrameAuctionsTab.Left,
          AuctionHouseFrameAuctionsFrameBidsTab.Middle,
          AuctionHouseFrameAuctionsFrameBidsTab.Right,
          AuctionHouseFrameAuctionsFrameBidsTab.Left,

         }) do
            v:SetAlpha(.6)
        end

        for i, v in pairs({
        AuctionHouseFrame.CommoditiesBuyFrame.BuyDisplay.BuyButton:GetRegions(),
       }) do
          v:SetVertexColor(unpack(SUI:Color(0)))
       end

       for i, v in pairs({
        AuctionHouseFrame.CommoditiesBuyFrame.BackButton:GetRegions(),
       }) do
          v:SetVertexColor(unpack(SUI:Color(0)))
       end

       for i, v in pairs({
        AuctionHouseFrame.ItemSellFrame.QuantityInput.MaxButton:GetRegions(),
       }) do
          v:SetVertexColor(unpack(SUI:Color(0)))
       end

       for i, v in pairs({
        AuctionHouseFrame.ItemSellFrame.PostButton:GetRegions(),
       }) do
          v:SetVertexColor(unpack(SUI:Color(0)))
       end

       for i, v in pairs({
        AuctionHouseFrameAuctionsFrame.CancelAuctionButton:GetRegions(),
       }) do
          v:SetVertexColor(unpack(SUI:Color(0)))
       end
      end
    end)
  end
end
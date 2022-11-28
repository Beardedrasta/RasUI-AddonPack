local Module = SUI:NewModule("Skins.Merchant");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in pairs({ MerchantFrame.NineSlice.TopEdge,
    MerchantFrame.NineSlice.RightEdge,
    MerchantFrame.NineSlice.BottomEdge,
    MerchantFrame.NineSlice.LeftEdge,
    MerchantFrame.NineSlice.TopRightCorner,
    MerchantFrame.NineSlice.TopLeftCorner,
    MerchantFrame.NineSlice.BottomLeftCorner,
    MerchantFrame.NineSlice.BottomRightCorner,
    StackSplitFrame.SingleItemSplitBackground,
    MerchantFrameInset.Bg,
    MerchantFrameTab1.Middle,
    MerchantFrameTab1.Right,
    MerchantFrameTab1.Left,
    MerchantFrameTab1.Text,
    MerchantFrameTab2.Middle,
    MerchantFrameTab2.Right,
    MerchantFrameTab2.Left,
    MerchantFrameTab2.Text,
   }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
    for i, v in pairs({
      MerchantFrameBg,
 }) do
        v:SetAlpha(.6)
    end
  end
end
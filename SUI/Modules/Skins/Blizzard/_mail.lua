local Module = SUI:NewModule("Skins.Mail");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in pairs({
      MailFrame.NineSlice.TopEdge,
      MailFrame.NineSlice.TopRightCorner,
      MailFrame.NineSlice.RightEdge,
      MailFrame.NineSlice.BottomRightCorner,
      MailFrame.NineSlice.BottomEdge,
      MailFrame.NineSlice.BottomLeftCorner,
      MailFrame.NineSlice.LeftEdge,
      MailFrame.NineSlice.TopLeftCorner,
      OpenMailFrame.NineSlice.TopEdge,
      OpenMailFrame.NineSlice.TopRightCorner,
      OpenMailFrame.NineSlice.RightEdge,
      OpenMailFrame.NineSlice.BottomRightCorner,
      OpenMailFrame.NineSlice.BottomEdge,
      OpenMailFrame.NineSlice.BottomLeftCorner,
      OpenMailFrame.NineSlice.LeftEdge,
      OpenMailFrame.NineSlice.TopLeftCorner,
      OpenMailFrameInset.Bg,
      OpenMailScrollFrameScrollBarThumbTexture,
      OpenMailDeleteButton.Middle,
      OpenMailDeleteButton.Left,
      OpenMailDeleteButton.Right,
      OpenMailCancelButton.Middle,
      OpenMailCancelButton.Left,
      OpenMailCancelButton.Right,
      OpenMailReplyButton.Middle,
      OpenMailReplyButton.Right,
      OpenMailReplyButton.Left,
     }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
    for i, v in pairs({
      MailFrameBg,
      OpenMailFrameBg, }) do
        v:SetAlpha(.6)
      end

    for i, v in pairs({ 
      OpenAllMail.Middle,
      OpenAllMail.Left,
      OpenAllMail.Right,
    }) do 
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({
      MailFrameTab1.MiddleActive,
      MailFrameTab1.LeftActive,
      MailFrameTab1.RightActive,
      MailFrameTab2.MiddleActive,
      MailFrameTab2.LeftActive,
      MailFrameTab2.RightActive,
    })do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({
      MailFrameTab1.Middle,
      MailFrameTab1.Left,
      MailFrameTab1.Right,
      MailFrameTab2.Middle,
      MailFrameTab2.Left,
      MailFrameTab2.Right,
    })do
      v:SetAlpha(.6)
    end
  end
end
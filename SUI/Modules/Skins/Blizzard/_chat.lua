local Module = SUI:NewModule("Skins.Chat");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in pairs({ ChatFrame1EditBoxLeft,
    ChatFrame1EditBoxRight,
    ChatFrame1EditBoxMid,
    ChatFrame2EditBoxLeft,
    ChatFrame2EditBoxRight,
    ChatFrame2EditBoxMid,
    ChatFrame3EditBoxLeft,
    ChatFrame3EditBoxRight,
    ChatFrame3EditBoxMid,
    ChatFrame4EditBoxLeft,
    ChatFrame4EditBoxRight,
    ChatFrame4EditBoxMid,
    ChatFrame5EditBoxLeft,
    ChatFrame5EditBoxRight,
    ChatFrame5EditBoxMid,
    ChatFrame6EditBoxLeft,
    ChatFrame6EditBoxRight,
    ChatFrame6EditBoxMid,
    ChatFrame7EditBoxLeft,
    ChatFrame7EditBoxRight,
    ChatFrame7EditBoxMid,
    ChatFrame1EditBoxFocusRight,
    ChatFrame1EditBoxFocusLeft,
    ChatFrame1EditBoxFocusMid,
    ChatFrame2EditBoxFocusRight,
    ChatFrame2EditBoxFocusLeft,
    ChatFrame2EditBoxFocusMid,
    ChatFrame3EditBoxFocusRight,
    ChatFrame3EditBoxFocusLeft,
    ChatFrame3EditBoxFocusMid,
    ChatFrame4EditBoxFocusRight,
    ChatFrame4EditBoxFocusLeft,
    ChatFrame4EditBoxFocusMid,
    ChatFrame5EditBoxFocusRight,
    ChatFrame5EditBoxFocusLeft,
    ChatFrame5EditBoxFocusMid,
    ChatFrame6EditBoxFocusRight,
    ChatFrame6EditBoxFocusLeft,
    ChatFrame6EditBoxFocusMid,
  	}) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
  end
  for i, v in pairs({
  ChatFrame1Tab.Right,
  ChatFrame1Tab.Middle,
  ChatFrame1Tab.Left,
  ChatFrame2Tab.Right,
  ChatFrame2Tab.Middle,
  ChatFrame2Tab.Left,
  ChatFrame3Tab.Right,
  ChatFrame3Tab.Middle,
  ChatFrame3Tab.Left,
  ChatFrame4Tab.Right,
  ChatFrame4Tab.Middle,
  ChatFrame4Tab.Left,
  ChatFrame5Tab.Right,
  ChatFrame5Tab.Middle,
  ChatFrame5Tab.Left, }) do
    v:SetVertexColor(unpack(SUI:Color(0.15)))
  end
  end
end
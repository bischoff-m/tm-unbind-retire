


####################################################################################

Functions to bind buttons

CGameManiaPlanetScriptAPI  void Dialog_BindInput(int ActionIndex, CInputScriptPad@ Device)
CGameManiaPlanetScriptAPI  void Dialog_UnbindInputDevice(CInputScriptPad@ Device)
CGameManiaPlanetScriptAPI  void Dialog_DefaultInputBindings(CInputScriptPad@ Device)
CGameManiaPlanetScriptAPI  void InputBindings_UpdateList(CGameManiaPlanetScriptAPI::EInputsListFilter Filter, CInputScriptPad@ Device)

CGameManiaPlanetScriptAPI  const MwFastBuffer<wstring> InputBindings_ActionNames
CGameManiaPlanetScriptAPI  const MwFastBuffer<wstring> InputBindings_Bindings
CGameManiaPlanetScriptAPI  const uint InputBindings_PlayerInputsCount

CInputScriptManager  wstring GetPadButtonPlaygroundBinding(CInputScriptPad@ Pad, CInputScriptManager::EButton Button)
CInputScriptManager  wstring GetPadButtonCurrentBinding(CInputScriptPad@ Pad, CInputScriptManager::EButton Button)
CInputScriptManager  wstring GetPadButtonBinding(CInputScriptPad@ Pad, CInputScriptManager::EButton Button)
CInputScriptManager  wstring GetActionBinding(CInputScriptPad@ Pad, string ActionMap, string ActionId)


####################################################################################

All printable properties of GetTmApp().InputPort.Script_Pads[i]


[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.ControllerId: 1
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Type: Keyboard
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.ModelName: Tastatur
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.IdleDuration: 868042
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Left: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Right: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Up: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Down: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.A: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.B: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.X: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Y: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.L1: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.R1: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.LeftStickBut: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.RightStickBut: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Menu: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.View: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.LeftStickX: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.LeftStickY: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.RightStickX: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.RightStickY: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.L2: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.R2: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.IdName: #1
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.ControllerId: 2
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Type: Mouse
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.ModelName: Maus
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.IdleDuration: 12430729
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Left: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Right: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Up: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Down: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.A: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.B: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.X: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Y: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.L1: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.R1: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.LeftStickBut: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.RightStickBut: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Menu: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.View: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.LeftStickX: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.LeftStickY: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.RightStickX: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.RightStickY: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.L2: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.R2: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.IdName: #2
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.ControllerId: 200
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Type: XBox
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.ModelName: Stadia Controller
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.IdleDuration: 4443
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Left: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Right: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Up: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Down: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.A: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.B: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.X: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Y: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.L1: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.R1: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.LeftStickBut: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.RightStickBut: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.Menu: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.View: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.LeftStickX: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.LeftStickY: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.RightStickX: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.RightStickY: 0
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.L2: 0.5
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.R2: 0.5
[   ScriptRuntime] [18:46:25] [UnbindRetire]  CInputScriptPad.IdName: #200
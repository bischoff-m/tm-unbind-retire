/**
 * Current state of this plugin
 * 
 * I first tried to write a plugin to easily unbind and rebind the give up button. I did
 * not find a way to unbind/rebind buttons without displaying a dialog. Theoretically, it
 * would be possible to use an external program to trigger a button press event right
 * after the dialog pops up. As this would take some time and I did not find another
 * solution, I stopped trying for now.
 * 
 * Instead, this project can be used as a template by removing all previous code.
 * 
 */
   
const string GIVE_UP_ACTION_NAME = "Give up";
const string RESPAWN_ACTION_NAME = "Respawn";


void Main()
{
#if TMNEXT
    print("Hello world!");

#if DEV
    print("The \"Give up\" button is " + (IsGiveUpBound() ? "" : "not ") + "bound.");
    // DebugPrintBindings();
#endif

#else
    warn("This extension is only compatible with TM2020. It doesn't do anything in other games.");
    UI::ShowNotification("This extension is only compatible with TM2020.", "It doesn't do anything in other games.", vec4(.4, .2, .2, .7));
#endif

}


CTrackMania@ GetTmApp() {
   return cast<CTrackMania>(GetApp());
}

CGameManiaPlanetScriptAPI@ GetManiaPlanetScriptApi() {
    return GetTmApp().ManiaPlanetScriptAPI;
}

uint GetActionIndex(const string &in actionName) {
   auto mpsapi = GetManiaPlanetScriptApi();
   for (uint i = 0; i < mpsapi.InputBindings_ActionNames.Length; i++) {
      // debugPrint("mpsa.InputBindings_ActionNames[i]: " + mpsa.InputBindings_ActionNames[i]);
      if (string(mpsapi.InputBindings_ActionNames[i]) == actionName)
         return i;
   }
   throw("Could not find action index for action name: " + actionName);
   return 0xffffff;
}

bool IsGiveUpBound() {
    MwFastBuffer<wstring> bs = GetManiaPlanetScriptApi().InputBindings_Bindings;
    MwFastBuffer<wstring> as = GetManiaPlanetScriptApi().InputBindings_ActionNames;
    // Prints string of form "Action: Key/Button Binding"
    for (uint i = 0; i < bs.Length; i++) {
        if (as[i] == GIVE_UP_ACTION_NAME)
            return bs[i] != "";
    }
    print("No \"Give up\" action found.");
    return false;
}

void RebindGiveup() {
    MwFastBuffer<wstring> bs = GetManiaPlanetScriptApi().InputBindings_Bindings;
    MwFastBuffer<wstring> as = GetManiaPlanetScriptApi().InputBindings_ActionNames;
    // Prints string of form "Action: Key/Button Binding"
    for (uint i = 0; i < bs.Length; i++) {
        if (as[i] == GIVE_UP_ACTION_NAME) {
            print("  \\$39f" + string(as[i]) + ":" + string(bs[i]) + ":");
            bs[i] = "ENTF";
            print("  \\$39f" + string(as[i]) + ":" + string(bs[i]) + ":");
            print(bs[i].Length);
            print("Unbound");
        }
    }

    auto mpsapi = GetManiaPlanetScriptApi();
    auto pads = GetTmApp().InputPort.Script_Pads;
    for (uint i = 0; i < pads.Length; i++) {
        auto pad = pads[i];
        print("Rebinding device: " + pad.ModelName);
        mpsapi.InputBindings_UpdateList(CGameManiaPlanetScriptAPI::EInputsListFilter::All, pad);
        // mpsapi.Dialog_BindInput(GetActionIndex(GIVE_UP_ACTION_NAME), pad);
    }
}

void UnbindGiveup() {
    MwFastBuffer<wstring> bs = GetManiaPlanetScriptApi().InputBindings_Bindings;
    MwFastBuffer<wstring> as = GetManiaPlanetScriptApi().InputBindings_ActionNames;
    // Prints string of form "Action: Key/Button Binding"
    for (uint i = 0; i < bs.Length; i++) {
        if (as[i] == GIVE_UP_ACTION_NAME) {
            print("  \\$39f Before: " + string(as[i]) + ":" + string(bs[i]) + ":");
            bs[i] = "Nothing...";
            print("  \\$39f After: " + string(as[i]) + ":" + string(bs[i]) + ":");
            print(bs[i].Length);
            print("Unbound");
        }
    }
    
    auto mpsapi = GetManiaPlanetScriptApi();
    auto pads = GetTmApp().InputPort.Script_Pads;
    for (uint i = 0; i < pads.Length; i++) {
        auto pad = pads[i];
        print("Rebinding device: " + pad.ModelName);
        mpsapi.InputBindings_UpdateList(CGameManiaPlanetScriptAPI::EInputsListFilter::All, pad);
        // mpsapi.Dialog_BindInput(GetActionIndex(GIVE_UP_ACTION_NAME), pad);
    }
}

void DebugPrintDevicesProperties() {
    auto devices = GetTmApp().InputPort.ConnectedDevices;
    for (uint i = 0; i < devices.Length; i++) {
        auto device = devices[i];
        if (device.IsUnPlugged)
            continue;
        print("Device Info for: " + device.InstanceName);
        print("CInputDevice.UserData: " + tostring(device.UserData));
        print("CInputDevice.InstanceName: " + tostring(device.InstanceName));
        print("CInputDevice.DeviceModelName: " + tostring(device.DeviceModelName));
        print("CInputDevice.IsDisabled: " + tostring(device.IsDisabled));
        print("CInputDevice.InputNotAvailable: " + tostring(device.InputNotAvailable));
        print("CInputDevice.IsUnPlugged: " + tostring(device.IsUnPlugged));
        print("CInputDevice.MustBePolled: " + tostring(device.MustBePolled));
        print("CInputDevice.CanRumble: " + tostring(device.CanRumble));
        print("CInputDevice.ObjectCount: " + tostring(device.ObjectCount));
        print("CInputDevice.IdName: " + tostring(device.IdName));
    }
}

void DebugPrintBindings() {
    print("\\$29f" + 'Bindings:');
    MwFastBuffer<wstring> bs = GetManiaPlanetScriptApi().InputBindings_Bindings;
    MwFastBuffer<wstring> as = GetManiaPlanetScriptApi().InputBindings_ActionNames;
    // Prints string of form "Action: Key/Button Binding"
    for (uint i = 0; i < bs.Length; i++) {
        print("  \\$39f" + string(as[i]) + ": " + string(bs[i]));
    }
}

void RenderMenu()
{
    if (UI::MenuItem("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Rebind")) {
        print("########################################################################");
        print("");
        print("DEBUG");
        print("");
        print("########################################################################");
        
        print("The \"Give up\" button is " + (IsGiveUpBound() ? "" : "not ") + "bound.");
        RebindGiveup();
        print("The \"Give up\" button is " + (IsGiveUpBound() ? "" : "not ") + "bound.");

        print("DONE");
    }

    if (UI::MenuItem("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Unbind")) {
        print("########################################################################");
        print("");
        print("DEBUG");
        print("");
        print("########################################################################");
        
        print("The \"Give up\" button is " + (IsGiveUpBound() ? "" : "not ") + "bound.");
        UnbindGiveup();
        print("The \"Give up\" button is " + (IsGiveUpBound() ? "" : "not ") + "bound.");

        print("DONE");
    }
}



// TODO
// void UnbindRetireForDevice(Device ...)
// void RebindRetireForDevice(Device ...)
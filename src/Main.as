/**
 * Test to mute all sounds but the music in Trackmania Turbo to be able to record the
 * music.
 * 
 * Plan:
 * - Write plugin to disable all audio sources listed [here](https://turbo.openplanet.dev/Audio)
 * - Record music while driving in game
 * - Either stop here and use this music or...
 * 
 * - Use the audio files extracted using the [Fid explorer](https://openplanet.dev/docs/tutorials/overlay)
 * - Assuming the music is a mix of the extracted audio files:
 * - Write algorithm that figures out the sequence of audio files that is used
 * 
 * 
 */
   
// const string GIVE_UP_ACTION_NAME = "Give up";
// const string RESPAWN_ACTION_NAME = "Respawn";


void Main()
{
#if TMTURBO
    print("Hello world!");

#if DEV
    DebugPrintBindings();
#endif

#else
    warn("This extension is only compatible with Trackmania Turbo. It doesn't do anything in other games.");
    UI::ShowNotification("This extension is only compatible with Trackmania Turbo.", "It doesn't do anything in other games.", vec4(.4, .2, .2, .7));
#endif

}


CTrackMania@ GetTmApp() {
   return cast<CTrackMania>(GetApp());
}

CGameManiaPlanetScriptAPI@ GetManiaPlanetScriptApi() {
    return GetTmApp().ManiaPlanetScriptAPI;
}

// uint GetActionIndex(const string &in actionName) {
//    auto mpsapi = GetManiaPlanetScriptApi();
//    for (uint i = 0; i < mpsapi.InputBindings_ActionNames.Length; i++) {
//       // debugPrint("mpsa.InputBindings_ActionNames[i]: " + mpsa.InputBindings_ActionNames[i]);
//       if (string(mpsapi.InputBindings_ActionNames[i]) == actionName)
//          return i;
//    }
//    throw("Could not find action index for action name: " + actionName);
//    return 0xffffff;
// }

// bool IsGiveUpBound() {
//     MwFastBuffer<wstring> bs = GetManiaPlanetScriptApi().InputBindings_Bindings;
//     MwFastBuffer<wstring> as = GetManiaPlanetScriptApi().InputBindings_ActionNames;
//     // Prints string of form "Action: Key/Button Binding"
//     for (uint i = 0; i < bs.Length; i++) {
//         if (as[i] == GIVE_UP_ACTION_NAME)
//             return bs[i] != "";
//     }
//     print("No \"Give up\" action found.");
//     return false;
// }

// void RebindGiveup() {
//     MwFastBuffer<wstring> bs = GetManiaPlanetScriptApi().InputBindings_Bindings;
//     MwFastBuffer<wstring> as = GetManiaPlanetScriptApi().InputBindings_ActionNames;
//     // Prints string of form "Action: Key/Button Binding"
//     for (uint i = 0; i < bs.Length; i++) {
//         if (as[i] == GIVE_UP_ACTION_NAME) {
//             print("  \\$39f" + string(as[i]) + ":" + string(bs[i]) + ":");
//             bs[i] = "ENTF";
//             print("  \\$39f" + string(as[i]) + ":" + string(bs[i]) + ":");
//             print(bs[i].Length);
//             print("Unbound");
//         }
//     }

//     auto mpsapi = GetManiaPlanetScriptApi();
//     auto pads = GetTmApp().InputPort.Script_Pads;
//     for (uint i = 0; i < pads.Length; i++) {
//         auto pad = pads[i];
//         print("Rebinding device: " + pad.ModelName);
//         mpsapi.InputBindings_UpdateList(CGameManiaPlanetScriptAPI::EInputsListFilter::All, pad);
//         // mpsapi.Dialog_BindInput(GetActionIndex(GIVE_UP_ACTION_NAME), pad);
//     }
// }

// void UnbindGiveup() {
//     MwFastBuffer<wstring> bs = GetManiaPlanetScriptApi().InputBindings_Bindings;
//     MwFastBuffer<wstring> as = GetManiaPlanetScriptApi().InputBindings_ActionNames;
//     // Prints string of form "Action: Key/Button Binding"
//     for (uint i = 0; i < bs.Length; i++) {
//         if (as[i] == GIVE_UP_ACTION_NAME) {
//             print("  \\$39f Before: " + string(as[i]) + ":" + string(bs[i]) + ":");
//             bs[i] = "Nothing...";
//             print("  \\$39f After: " + string(as[i]) + ":" + string(bs[i]) + ":");
//             print(bs[i].Length);
//             print("Unbound");
//         }
//     }
    
//     auto mpsapi = GetManiaPlanetScriptApi();
//     auto pads = GetTmApp().InputPort.Script_Pads;
//     for (uint i = 0; i < pads.Length; i++) {
//         auto pad = pads[i];
//         print("Rebinding device: " + pad.ModelName);
//         mpsapi.InputBindings_UpdateList(CGameManiaPlanetScriptAPI::EInputsListFilter::All, pad);
//         // mpsapi.Dialog_BindInput(GetActionIndex(GIVE_UP_ACTION_NAME), pad);
//     }
// }

// void DebugPrintDevicesProperties() {
//     auto devices = GetTmApp().InputPort.ConnectedDevices;
//     for (uint i = 0; i < devices.Length; i++) {
//         auto device = devices[i];
//         if (device.IsUnPlugged)
//             continue;
//         print("Device Info for: " + device.InstanceName);
//         print("CInputDevice.UserData: " + tostring(device.UserData));
//         print("CInputDevice.InstanceName: " + tostring(device.InstanceName));
//         print("CInputDevice.DeviceModelName: " + tostring(device.DeviceModelName));
//         print("CInputDevice.IsDisabled: " + tostring(device.IsDisabled));
//         print("CInputDevice.InputNotAvailable: " + tostring(device.InputNotAvailable));
//         print("CInputDevice.IsUnPlugged: " + tostring(device.IsUnPlugged));
//         print("CInputDevice.MustBePolled: " + tostring(device.MustBePolled));
//         print("CInputDevice.CanRumble: " + tostring(device.CanRumble));
//         print("CInputDevice.ObjectCount: " + tostring(device.ObjectCount));
//         print("CInputDevice.IdName: " + tostring(device.IdName));
//     }
// }

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
    if (UI::MenuItem("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Test")) {
        print("########################################################################");
        print("");
        print("DEBUG");
        print("");
        print("########################################################################");
        
        // 

        print("DONE");
    }
}

import { App } from "astal/gtk4"
import { Gdk } from "astal/gtk4"
import style from "./scss/main.scss"
import Calendar from "./widget/calendar/Calendar"
import SystemMenuWindow from "./widget/systemMenu/SystemMenuWindow";
import {BrightnessAlert, ChargingAlertSound, VolumeAlert} from "./widget/alerts/Alerts";
import {exec} from "astal/process"
import NotificationPopups from "./widget/notification/NotificationPopups";
import AppLauncher, {AppLauncherWindowName} from "./widget/appLauncher/AppLauncher";
import Screenshot, {ScreenshotWindowName} from "./widget/screenshot/Screenshot";
import Screenshare, {ScreenshareWindowName, updateResponse, updateWindows} from "./widget/screenshare/Screenshare";
import Hyprland from "gi://AstalHyprland"
import {selectedBar, Bar, unpackBarDetails} from "./widget/bar/Bar";
import {readFile} from "astal/file";
import VerticalBar from "./widget/bar/VerticalBar";
import HorizontalBar from "./widget/bar/HorizontalBar";

// const systemMenuWindow = SystemMenuWindow();

App.start({
    css: style,
    main(...args: Array<string>) {
        const hyprland = Hyprland.get_default()
        const mainMonitor = hyprland.monitors.find((monitor) => monitor.id === 0)
        const ratio = mainMonitor?.width && mainMonitor?.height
            ? mainMonitor.width / mainMonitor.height
            : 1

        const barRestored = unpackBarDetails(readFile("./savedBar").trim())

        print(`Screen ratio: ${ratio}`)

        if (!barRestored) {
            if (ratio > 2) {
                selectedBar.set(Bar.LEFT)
            } else {
                selectedBar.set(Bar.TOP)
            }
        }

        VerticalBar()
        HorizontalBar()
        Calendar()
        SystemMenuWindow()
        VolumeAlert()
        BrightnessAlert()
        ChargingAlertSound()
        App.get_monitors().map(NotificationPopups)
        AppLauncher()
        Screenshot()
        Screenshare()


        // SystemMenuWindow.on("key-press-event", (event) => {
        //     const keyval = event.keyval;
        //     const modifier = event.state;
        //
        //     if ((modifier & Gdk.ModifierType.SUPER_MASK) && keyval === Gdk.KEY_Escape) {
        //         App.toggle_window(SystemMenuWindow);
        //     }
        // });
    },
    requestHandler(request: string, res: (response: any) => void) {
        if (request === "theme") {
            exec("sass ./scss/main.scss ./style.css")
            App.apply_css("./style.css")
            res("ags theme applied")
        } else if (request === "appLauncher") {
            App.toggle_window(AppLauncherWindowName)
            res("app launcher toggled")
        } else if (request === "screenshot") {
            App.toggle_window(ScreenshotWindowName)
            res("screenshot toggled")
        } else if (request.startsWith("screenshare")) {
            print(request.startsWith("screenshare"))
            updateWindows(request)
            updateResponse(res)
            App.toggle_window(ScreenshareWindowName)
        } else {
            res("command not found")
        }
    },


})

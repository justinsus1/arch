import { App } from "astal/gtk4"
import appLauncher, {AppLauncherWindow} from "./widget/appLauncher/AppLauncher.tsx"
import style from "./scss/main.scss"
// import Bar from "./widget/Bar"

App.start({
    css: style,
    main(...args: Array<string>) {
        // App.get_monitors().map(Bar)
        appLauncher()
    },
})

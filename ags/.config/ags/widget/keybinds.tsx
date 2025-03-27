import SystemMenuWindow from "./widget/systemMenu/SystemMenuWindow";
import {App, Gdk, Gtk} from "astal/gtk4"

SystemMenuWindow.on("key-press-event", (event) => {
  const keyval = event.keyval;
  const modifier = event.state;

  if ((modifier & Gdk.ModifierType.SUPER_MASK) && keyval === Gdk.KEY_Escape) {
    App.toggle_window(SystemMenuWindow)
  }
});

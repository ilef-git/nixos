{
  config,
  pkgs,
  ...
}: {
  # xdg.configFile."hypr/hyprland.conf".force = true;
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
  };
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    bind = [
      "$mod, F, exec, firefox"
    ];
  };
}

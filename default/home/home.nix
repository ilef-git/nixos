{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./pkgs.nix
    ./hyprland.nix
    ./wofi.nix
  ];
}

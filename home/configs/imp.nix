{ config, pkgs, ... }:

{
  # Nix конфиги
  imports =
    [
      ./wofi/config.nix
    ];

  # Оригинальные конфиги
  xdg.configFile."hypr/hyprland.conf".source = ./hypr/hyprland.conf;
}
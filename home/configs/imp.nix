{ config, pkgs, ... }:

{
  # Nix конфиги
  imports =
    [
      ./hypr/config.nix
      ./wofi/config.nix
      ./waybar/config.nix
    ];
}
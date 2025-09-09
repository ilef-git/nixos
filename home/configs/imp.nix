{ config, pkgs, ... }:

{
  imports =
    [
      ./hypr/config.nix
      ./wofi/config.nix
      ./waybar/config.nix
    ];
}
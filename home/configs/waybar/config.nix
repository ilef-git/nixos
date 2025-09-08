{ config, pkgs, ... }:

{
  xdg.configFile."waybar/config.json".source = ./config.json;
  xdg.configFile."waybar/style.css".source  = ./style.css;
}

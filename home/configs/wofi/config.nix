{ config, pkgs, ... }:

{
  programs.wofi = {
    enable = true;
    settings = {
      allow_markup = true;
      allow_images = true;
      width = 750;
      height = 450;
      style = "${config.xdg.configHome}/wofi/style.css";
    };
  };

  xdg.configFile."wofi/style.css".source = ./style.css;
}
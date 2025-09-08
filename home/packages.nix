{ pkgs, ... }: {
  #Проприетарные пакеты
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    alacritty
    firefox
    git
    kdePackages.dolphin
    vscode
    wofi
  ];
}
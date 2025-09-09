{ pkgs, ... }: {
  #Проприетарные пакеты
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    alacritty
    firefox
    git
    kdePackages.dolphin
    vscode
    waybar
    wofi
    telegram-desktop
    onlyoffice-desktopeditors
  ];
}
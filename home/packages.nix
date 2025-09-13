{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true; #Проприетарные пакеты

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
    steam
    usbutils
  ];
}
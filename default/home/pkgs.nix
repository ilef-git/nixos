{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    fastfetch
    onlyoffice-desktopeditors
    telegram-desktop
  ];
}

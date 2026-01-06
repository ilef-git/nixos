{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    fastfetch
    ptyxis
    wofi
  ];
}

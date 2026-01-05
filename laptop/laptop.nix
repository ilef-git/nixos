{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkMerge {
  networking.hostName = "laptop";

  environment.systemPackages = with pkgs; [
    fastfetch
  ];
}

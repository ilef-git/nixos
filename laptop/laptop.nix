{
  config,
  pkgs,
  lib,
  ...
}: {
  networking.hostName = lib.mkForce "laptop";

  environment.systemPackages = with pkgs; [
    fastfetch
  ];
}

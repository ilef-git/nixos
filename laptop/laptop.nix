{
  config,
  pkgs,
  lib,
  ...
}: {
  networking.hostName = lib.mkForce "laptop";
}

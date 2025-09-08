{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./configs/imp.nix
      ./home.nix
      ./packages.nix
    ];
}

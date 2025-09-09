{ config, lib, pkgs, ... }:

{
  system.stateVersion = "25.05"; # НЕ ТРОГАТЬ!
  
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.kernelModules = [ "i915" ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  time.timeZone = "Europe/Moscow";

  users.users.ilef = {
    isNormalUser = true;
    extraGroups = [ "wheel" "input" "networkmanager" ];
  };

  i18n = {
    defaultLocale = "ru_RU.UTF-8";
  };

  services.openssh.enable = true;

  networking.networkmanager.enable = true;

  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    home-manager
  ];

  # console = {
  #   font = "latarcyrheb-sun32";
  #   keyMap = "ru";
  #   earlySetup = true;
  #   packages = with pkgs; [
  #      kbd
  #    ];
  # };

  # systemd.services."enable-numlock" = {
  #   description = "Enable NumLock on TTYs";
  #   wantedBy = [ "multi-user.target" ];
  #   serviceConfig = {
  #     ExecStart = "${pkgs.kbd}/bin/setleds -D +num";
  #     StandardInput = "tty";
  #   };
  # };
  
 services.xserver.displayManager.gdm.enable = true;

 fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
  ];

}

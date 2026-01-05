{
  config,
  pkgs,
  ...
}: {
  networking.hostName = "laptop";

  environment.systemPackages = with pkgs; [
    fastfetch
  ];
}

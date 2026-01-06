1. nix-shell -p git
2. git clone https://github.com/ilef-git/nixos.git
3. cd ./nixos
4. cp /ets/nixos/hardware-configuration.nix
5. nano flake.nix
    1. rename ```username = "ilef";``` to you name
    2. Ctrl+S Ctrl+X
6. sudo nixos-rebuild switch --flake .#laptop
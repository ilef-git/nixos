1. `nix-shell -p git`
2. `git clone https://github.com/ilef-git/nixos.git`
3. `cd ./nixos`
4. `cp /etc/nixos/hardware-configuration.nix .`
5. `nano flake.nix`
6. заменить `username = "ilef";` на ваше имя
7. `Ctrl+S` → `Ctrl+X`
8. `sudo nixos-rebuild switch --flake .#laptop`
# Клонирование репозитория
nix-shell -p git
git clone https://github.com/ilef-git/nixos.git
cd ./nixos

# Копирование аппаратной конфигурации
cp /etc/nixos/hardware-configuration.nix .

# Редактирование flake.nix
nano flake.nix

# Заменить в файле:
# username = "ilef";
# на ваше имя

# Сохранить изменения (Ctrl+S) и выйти (Ctrl+X)

# Применить конфигурацию
sudo nixos-rebuild switch --flake .#laptop
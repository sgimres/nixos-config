{ config, pkgs, ... }:

{
  system.autoUpgrade = {
    enable = true;
    # :TODO make username dynamic later
    flake = "/home/user/nixos-config";
    flags = [
      "--update-input"
      "nixpkgs" # Tells the server to fetch new updates itself
      "--commit-lock-file" # Saves the new versions locally
    ];
    dates = "02:00";
    allowReboot = false;
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 14d";
  };
}

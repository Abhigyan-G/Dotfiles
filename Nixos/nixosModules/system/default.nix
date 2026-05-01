{ config, pkgs, ... }:
let

in
{
  imports = [
    ./nvidia.nix
    ./tablet.nix
    ./printing.nix
    ./fonts.nix
    ./hardware.nix
    ./services.nix
    ./default-applications.nix
  ];

  gtk.iconCache.enable = true;
  environment.sessionVariables = rec {
    QS_ICON_THEME = "Breeze Dark";
  };

  environment.systemPackages = with pkgs; [
    kdePackages.breeze-icons
    adwaita-icon-theme
    gsettings-qt
  ];

}

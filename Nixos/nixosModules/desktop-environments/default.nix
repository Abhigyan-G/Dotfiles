{ config, pkgs, ... }:
{
  imports = [
    ./niri.nix
  ];

  # Default plasma in installed for fallback
  services.desktopManager.plasma6.enable = true;

  xdg.portal = {
    xdgOpenUsePortal = true;
    enable = true;
    # Add the portal for your compositor, e.g.:
    extraPortals = with pkgs; [
      # xdg-desktop-portal-kde # For KDE
      xdg-desktop-portal
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gnome
    ];
  };

}

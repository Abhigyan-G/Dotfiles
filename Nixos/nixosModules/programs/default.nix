# programs for system config
{ config, pkgs, ... }:
{
  imports = [
    ./nix-ld.nix
  ];

  # virtualisation
  # virtualisation.libvirtd.enable = true;
  # programs.virt-manager.enable = true;

  programs = {
    # niri.enable = true;

    appimage = {
      enable = true;
      binfmt = true;
    };

    steam = {
      enable = true; # Master switch, already covered in installation
      gamescopeSession.enable = true;
      # Other general flags if available can be set here.
      #       extraCompatPackages = [ pkgs.proton-ge-bin ];
    };

    gamescope.enable = true;

    gamemode.enable = true;

    firefox = {
      enable = true;
      languagePacks = [ "en-US" ];
      preferences = {
        # "browser.startup.homepage" = "https://example.com";
        "privacy.resistFingerprinting" = true;
        "widget.use-xdg-desktop-portal.file-picker" = 1;
      };
      policies = {
        DisableTelemetry = true;
      };
      nativeMessagingHosts.packages = [ pkgs.kdePackages.plasma-browser-integration ];
    };

  };

}

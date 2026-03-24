{ config, pkgs, ... }:
let

in
{
  imports = [
    ./media.nix
    ./development.nix
    ./office.nix
    ./home-manager.nix
  ];

  # General Packages
  environment.systemPackages = with pkgs; [
    home-manager # manage home directory

    git

    cheese # laptop camera

    kdePackages.filelight # file hirarchy and size in pie chart
    kdePackages.plasma-browser-integration
    kdePackages.kate # simple text editor
    kdePackages.qtsvg # support for svg icons
    kdePackages.kcalc # calculator
    kdePackages.kalgebra # graphing calculator
    kdePackages.kclock # clock

    # Will use binary version later to avoid compiling
    # (blender.override{ cudaSupport = true; })
    #veikk-linux-driver-gui

    mission-center

    fastfetch
    cava
    cpu-x
    htop
    localsearch

    cool-retro-term

    lf
    starship
    fzf

    peazip
    rar
    unrar

    google-chrome
    brave
    firefox
    librewolf

    wineWowPackages.staging

    osu-lazer-bin

    (heroic.override {
      extraPkgs =
        pkgs': with pkgs'; [
          gamescope
          gamemode
        ];
    })

    lutris
    # (lutris.override {
    #   # List of additional system libraries
    #   extraLibraries = pkgs: [ ];

    #   # List of additional system packages
    #   extraPkgs = pkgs: [ ];
    # })

    # protonup

    wget
  ];

}

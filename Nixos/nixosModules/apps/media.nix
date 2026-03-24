{ config, pkgs, ...}: 
let

in
{
  environment.systemPackages = with pkgs; [
    # Media Players
    haruna
    sayonara
    vlc

    # Audio Filter and Effects
    deepfilternet
    easyeffects
    
    # Downloading Audio/Video
    media-downloader
    ytdownloader
  
    # Video Editor
    kdePackages.kdenlive

    # Sound Editor
    ardour

    # Image Editors
    inkscape-with-extensions
    gimp-with-plugins
    krita

  ];
}
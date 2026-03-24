{ config, pkgs, ...}:
{

  environment.systemPackages = with pkgs; [
    # Game Engine/Framework
    godot
    godot-mono
    raylib

    nixfmt
    nixd

    # CAD and Circuit
    # kicad
    fritzing
    freecad
    logisim-evolution

    # Programing
    lazygit       # Git TUI
    vscode-fhs
    arduino-ide

  ];
}
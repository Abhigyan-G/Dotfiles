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

}

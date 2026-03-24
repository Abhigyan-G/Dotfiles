{ config, inputs, pkgs, lib, ... }:
{
  imports = [ inputs.home-manager.nixosModules.default ];
  environment.systemPackages = [ pkgs.home-manager ];
}
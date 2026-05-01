{
  username,
  name,
  pkgs,
  nixvim,
  ...
}:
{
  imports = [
    # nixvim.homeModules.nixvim
    ./modules
  ];

  # home = {
  #   inherit username;
  #   homeDirectory = "/home/${username}";
  #   stateVersion = "25.11";

  # };
  home.stateVersion = "25.11";

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

}

{
  config,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./keymaps.nix
    ./options.nix
    ./plugins
  ];

  home.packages = with pkgs; [
    wl-clipboard
    nixd
    nixfmt
    tree-sitter

    # Latex
    SDL
    sdl3
    mupdf
    zathura
    texpresso
    texlab
    tex-fmt
    texliveFull

  ];

  programs.nixvim = {
    enable = true;
    clipboard = {
      providers.wl-copy.enable = true;
      register = "unnamedplus";
    };
    # settings = {
    #   cmdheight = 0;
    # };
  };
}

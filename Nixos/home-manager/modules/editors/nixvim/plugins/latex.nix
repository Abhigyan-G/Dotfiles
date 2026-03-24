{
  ...
}:
{

  programs.nixvim.plugins = {
    vimtex = {
      enable = true;
      settings = {
        compiler_method = "latexmk";
        # toc_config = {
        #   split_pos = "vert topleft";
        #   split_width = 40;
        # };
        # view_method = "zathura";
      };
    };
    texpresso.enable = true;

  };

  programs.nixvim.keymaps = [
    {
      key = "<leader>tt";
      action = "<cmd>TeXpresso %<CR>";
      options.desc = "Toggle LaTeX Live TeXpresso";
      options.silent = true;
    }
  ];
}

{ ... }:
{
  imports = [
    ./lsp
    ./ui.nix
    ./telescope.nix
    ./harpoon.nix
    ./latex.nix
  ];

  programs.nixvim.plugins = {
    lz-n.enable = true;

    web-devicons.enable = true;

    which-key = {
      enable = true;
      settings = {
        win = {
          border = "single";
          # height = 150; # Reduce height (default ~20)
          # width = 400; # Reduce width (default ~50)
          # margin = [
          #   2
          #   2
          # ]; # Less screen padding [top/bottom left/right]
        };
      };
    };

    gitsigns = {
      enable = true;
      settings.signs = {
        add.text = "+";
        change.text = "~";
      };
    };

    luasnip = {
      enable = true;
      settings = {
        history = true;
      };
    };

    friendly-snippets = {
      enable = true;
      autoLoad = true;
    };

    markdown-preview = {
      enable = true;

      settings = {
        auto_close = 1;
        theme = "dark";
      };
    };

    bufferline = {
      enable = true;
      settings = {
        options = {
          mode = "buffers";
          themable = true;
          numbers = "ordinal";
          auto_toggle_bufferline = true;
          always_show_bufferline = true;
          buffer_close_icon = "x";
          modified_icon = "● ";
          close_icon = "X";
        };
      };
    };

    nix.enable = true;

    # vimtex.enable = true;

    csvview.enable = true;

    lazygit.enable = true;

    yazi = {
      enable = true;
      settings = {
        enable_mouse_support = true;
        floating_window_scaling_factor = 0.9;
        log_level = "debug";
        open_for_directories = true;
        yazi_floating_window_border = "single";
        yazi_floating_window_winblend = 20;
      };
    };

    godot.enable = true;

  };
}

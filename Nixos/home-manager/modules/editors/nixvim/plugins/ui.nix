{
  ...
}:
{
  programs.nixvim.colorschemes = {
    bamboo.enable = true;
    nord.enable = true;
    onedark.enable = true;
    kanagawa.enable = true;
    nightfox.enable = true;
    tokyonight.enable = true;
    catppuccin.enable = true;
  };

  programs.nixvim.colorscheme = "catppuccin";

  programs.nixvim.plugins = {
    startify = {
      enable = true;
      settings = {
        custom_header = [
          ""
          "     ███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
          "     ████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
          "     ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
          "     ██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
          "     ██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
          "     ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
        ];

        change_to_dir = false;
        use_unicode = true;
        lists = [ { type = "dir"; } ];
        files_number = 30;
        autoExpandWidth = true;
        skiplist = [
          "flake.lock"
        ];
      };
    };

    lualine = {
      enable = true;
      settings.enable_autosnippets = true;
      settings.options = {
        globalstatus = true;
        extensions = [
          "fzf"
          "neo-tree"
        ];
        disabledFiletypes = {
          statusline = [
            "NvimTree"
            "NeoTree"
            "lspsagaoutline"
            "neo-tree"
            "sagaoutline"
          ];
          winbar = [
            "NvimTree"
            "NeoTree"
            "lspsagaoutline"
            "neo-tree"
            "sagaoutline"
          ];
        };
      };
    };

    neo-tree = {
      enable = true;

      settings = {
        window = {
          mappings = {
            # Navigation
            "<CR>" = "open"; # Enter = open file/folder
            "l" = "open"; # Right = open
            "h" = "close_node"; # Left = close
            "H" = "set_root"; # Home = set as root

            # # File actions
            # "c" = "add"; # Create file/dir
            # "d" = "delete"; # Delete
            # "r" = "rename"; # Rename
            # "y" = "copy"; # Copy to clipboard
            # "x" = "cut"; # Cut to clipboard
            # "p" = "paste"; # Paste from clipboard
            #
            # # Git
            # "A" = "add_all"; # Stage all
            # "ga" = "git_add_file"; # Stage file
            # "gr" = "git_unstage_file"; # Unstage
            # "gR" = "git_revert_file"; # Revert
            #
            # Misc
            "." = "toggle_hidden"; # Toggle dotfiles
            "R" = "refresh"; # Refresh tree
            "?" = "show_help"; # Help
            "q" = "close_window"; # Close Neo-tree
          };
        };

        sources = [
          "filesystem"
          "buffers"
          "git_status"
          "document_symbols"
        ];
        add_blank_line_at_top = false;

        filesystem = {
          bind_to_cwd = false;
          follow_current_file = {
            enabled = true;
          };
        };

        default_component_configs = {
          indent = {
            with_expanders = true;
            expander_collapsed = "󰅂";
            expander_expanded = "󰅀";
            expander_highlight = "NeoTreeExpander";
          };
        };
      };
    };

    colorizer = {
      enable = true;
      settings = {
        user_default_options = {
          AARRGGBB = true;
          RGB = true;
          RRGGBB = true;
          RRGGBBAA = true;
          css = true;
          css_fn = true;
          hsl_fn = true;
          mode = "background";
          names = true;
          rgb_fn = true;
          tailwind = true;
        };
      };
    };
  };
}

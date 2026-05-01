{
  config,
  pkgs,
  lib,
  pkgs-unstable,
  ...
}:
{
  imports = [
    ./editors
    ./WM

  ];

  programs.alacritty = {
    enable = true;

    settings = {
      font = {
        size = 20;
      };

      general.import = [
        "~/.config/alacritty/themes/noctalia.toml"
      ];

    };
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ff = "fastfetch";
    };
    sessionVariables = {
    };
    initExtra = ''

      eval "$(starship init bash)"

    '';
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      add_newline = false;
      format = lib.concatStrings [
        "[░▒▓](#a3aed2)"
        "$username"
        "[  ](bg:#a3aed2 fg:#090c0c)"
        "[](bg:#769ff0 fg:#a3aed2)"
        "$directory"
        "[](fg:#769ff0 bg:#394260)"
        "$git_branch"
        "$git_status"
        "[](fg:#394260 bg:#212736)"
        "$nodejs"
        "$rust"
        "$golang"
        "$php"
        "$shell"
        "[](fg:#212736 bg:#1d2230)"
        # "$time"
        "[ ](fg:#1d2230)"
        "\n$character"
      ];
      scan_timeout = 100;
      # character = {
      #   success_symbol = "➜";
      #   error_symbol = "➜";
      # };

      username = {
        format = "[ $user](bg:#a3aed2 fg:#090c0c)";
        show_always = true;
        style_root = "red bold bg:0x9A348E";
        style_user = "yellow bold bg:0x9A348E";
        disabled = false;
      };

      directory = {
        style = "fg:#e3e5e5 bg:#769ff0";
        format = "[ $path ]($style)";
        truncation_length = 3;
        truncation_symbol = "…/";
        substitutions = {
          "Documents" = "󰈙 ";
          "Downloads" = " ";
          "Music" = " ";
          "Pictures" = " ";
        };
      };

      git_branch = {
        symbol = "";
        style = "bg:#394260";
        format = "[[ $symbol $branch ](fg:#769ff0 bg:#394260)]($style)";
      };
      git_status = {
        style = "bg:#394260";
        format = "[[($all_status$ahead_behind )](fg:#769ff0 bg:#394260)]($style)";
      };
      nodejs = {
        symbol = "";
        style = "bg:#212736";
        format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
      };

      rust = {
        symbol = "";
        style = "bg:#212736";
        format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
      };

      golang = {
        symbol = "";
        style = "bg:#212736";
        format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
      };

      php = {
        symbol = "";
        style = "bg:#212736";
        format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
      };

      #End
    };
  };

  home.packages = with pkgs; [
    yazi

  ];
}

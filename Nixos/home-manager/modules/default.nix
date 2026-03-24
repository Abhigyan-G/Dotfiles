{
  config,
  pkgs,
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

  home.packages = with pkgs; [
    yazi
  ];
}

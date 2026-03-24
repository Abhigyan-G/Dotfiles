{
  pkgs,
  ...
}:
{
  imports = [
    ./noctalia.nix
  ];

  services.mako = {
    settings = {
      "actionable=true" = {
        anchor = "top-left";
      };
      actions = true;
      anchor = "top-right";
      # background-color = "#000000";
      # border-color = "#FFFFFF";
      border-radius = 0;
      default-timeout = 4;
      # font = "monospace 10";
      icons = true;
      # ignore-timeout = false;
      layer = "top";
      margin = 10;
      markup = true;
      # height = 100;
      # width = 300;
    };
  };

  # For Nautilus/files to work access usb/phone storage
  services.udiskie = {
    enable = true;
  };

  # programs.alacritty.enable = true; # Super+T in the default setting (terminal)
  # programs.fuzzel.enable = true; # Super+D in the default setting (app launcher)
  # programs.swaylock.enable = true; # Super+Alt+L in the default setting (screen locker)
  # programs.waybar.enable = true; # launch on startup in the default setting (bar)
  # services.mako.enable = true; # notification daemon
  # services.swayidle.enable = true; # idle management daemon
  # services.polkit-gnome.enable = true; # polkit

  # Use config as given
  xdg.configFile."niri/config.kdl".source = ./config.kdl;

}

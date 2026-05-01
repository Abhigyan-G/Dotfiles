{
  config,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  imports = [
    ./noctalia.nix
  ];

  programs.niri = {
    enable = true;
    useNautilus = true;
  };

  xdg.portal.config.niri = {
    "org.freedesktop.impl.portal.FileChooser" = [ "kde" ]; # or "gtk"
  };

  security.polkit.enable = true; # polkit
  services.gnome.gnome-keyring.enable = true; # secret service
  security.pam.services.swaylock = { };

  services.gvfs.enable = true; # For Nautilus to Work: Access Trash Dir
  services.udisks2.enable = true;

  environment.systemPackages = (
    with pkgs;
    [
      kdePackages.qtbase
      kdePackages.qt6ct
      kdePackages.plasma-workspace
      nwg-look
      adw-gtk3

      #For Firefox Theming
      pywal
      pywalfox-native

      nautilus
      # Video/Audio data composition framework tools like "gst-inspect", "gst-launch" ...
      gst_all_1.gstreamer
      # Common plugins like "filesrc" to combine within e.g. gst-launch
      gst_all_1.gst-plugins-base
      # Specialized plugins separated by quality
      gst_all_1.gst-plugins-good
      gst_all_1.gst-plugins-bad
      gst_all_1.gst-plugins-ugly
      # Plugins to reuse ffmpeg to play almost every video format
      gst_all_1.gst-libav
      # Support the Video Audio (Hardware) Acceleration API
      gst_all_1.gst-vaapi

      xwayland-satellite # xwayland support
      kitty
      # alacritty
      fuzzel
      swaylock
      # mako # Remove Mako
      swayidle

    ]
  ); # Remove/Add to toggle unstable packages
  # ++ (with pkgs-unstable; [
  #   noctalia-shell
  #   quickshell
  # ]);

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };
}

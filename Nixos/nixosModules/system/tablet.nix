{ config, pkgs, ...} :
{
  hardware = {
    # Enable OpenTabletDriver
    opentabletdriver = {
      enable = true;
      daemon.enable = true;
    };

    # Required by OpenTabletDriver
    uinput.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;
}

{
  config,
  pkgs,
  ...
}:
{
  # Hardware Config
  hardware = {
    # Bluetooth support
    bluetooth = {
      enable = true;

      settings = {
        General = {
          Enable = "Source,Sink,Media,Socket";
        };
      };
    };

    # For epic games
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        intel-media-driver # For Broadwell (2014) or newer processors. LIBVA_DRIVER_NAME=iHD
        # intel-vaapi-driver # For older processors. LIBVA_DRIVER_NAME=i965
        vpl-gpu-rt
        intel-compute-runtime
      ];
    };

  };

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "iHD"; # Prefer the modern iHD backend
    # VDPAU_DRIVER = "va_gl";      # Only if using libvdpau-va-gl
  };

}

{ config, pkgs, ... }:
{
  # Nvidia Hardware Config
  hardware = {

    nvidia = {
      open = false;

      nvidiaSettings = true;

      prime = {
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
        #amdgpuBusId = "PCI:54:0:0"; # If you have an AMD iGPU
      };

      # very suggested
      modesetting.enable = true;

    };
  };

  #Load Nvidia Drivers
  services.xserver.videoDrivers = [
    "nvidia" # Nvidia
    "modesetting" # Intel
  ];

  environment.systemPackages = with pkgs; [
    vulkan-tools
    vulkan-validation-layers
    vulkan-extension-layer
  ];
}

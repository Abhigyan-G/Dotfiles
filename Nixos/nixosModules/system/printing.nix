{ config, pkgs, ...}:
{
  # Driver Support for Old HP Printer
  hardware.sane = {
    enable = true;
    extraBackends = [ pkgs.hplipWithPlugin ];
  };

  # Enable CUPS to print documents.
  services.printing = {
    enable = true;
    drivers =  [ pkgs.hplipWithPlugin ];
  };

  environment.systemPackages = with pkgs; [
    hplip
  ];
}
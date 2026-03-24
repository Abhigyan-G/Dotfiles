{
  pkgs,
  inputs,
  system,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    # inputs.noctalia.packages.${system}.default

    # For Noctalia
    brightnessctl
    xdg-desktop-portal
    cava
    evolution-data-server
    cliphist
    imagemagick
    wlsunset
    pywal

  ];

}

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    # Note Taking
    rnote
    xournalpp
  
    # PDF Manipulation
    pdfarranger
    tdf

    # Office Suites
    onlyoffice-desktopeditors
    libreoffice-fresh
    calibre

  ];
}
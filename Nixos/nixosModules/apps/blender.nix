{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    # Libs for blender
    git
    gitRepo
    gnupg
    autoconf
    curl
    procps
    gnumake
    util-linux
    gperf
    unzip
    cudatoolkit
    libGLU
    libGL
    xorg.libXi
    xorg.libXmu
    freeglut
    xorg.libXext
    xorg.libX11
    xorg.libXv
    xorg.libXrandr
    zlib
    ncurses5
    stdenv.cc
    binutils

    (blender.override { cudaSupport = true; })
  ];
}

{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./apps # General Apps
    ./system # System Settings
    ./programs # Enabled Programs
    ./desktop-environments  # Desktop Environments
  ];

}

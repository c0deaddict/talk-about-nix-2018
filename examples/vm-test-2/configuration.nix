{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.desktopManager = {
    xfce.enable = true;
    default = "xfce";
  };
  users.users.root.initialPassword = "root";
  services.emacs.enable = true;
}

{ config, pkgs, ... }:

{
  users.users.root.initialPassword = "root";

  environment.etc."hello/world/index.html".text = ''
    <h1>Hello world from ${config.networking.hostName}</h1>
  '';

  services.nginx = {
    enable = true;
    virtualHosts."localhost" = {
      root = "/etc/hello/world";
    };
  };
}

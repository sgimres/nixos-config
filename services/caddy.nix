{ config, pkgs, ... }:

{
  services.caddy = {
    enable = true;
    
    # Define your virtual hosts
    virtualHosts."eth0.top" = {
      extraConfig = ''
        reverse_proxy localhost:3000
      '';
    };
  };

  networking.firewall.allowedTCPPorts = [ 80 443 ];
}

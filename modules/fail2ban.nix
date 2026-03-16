{ config, pkgs, ... }:

{
  services.fail2ban = {
    enable = true;
    maxretry = 5;
    bantime = "24h"; # Ban IPs for one day on the first ban
    bantime-increment = {
      enable = true; # Enable increment of bantime after each violation
      formula = "ban.Time * math.exp(float(ban.Count+1)*banFactor)/math.exp(1*banFactor)";
      multipliers = "1 2 4 8 16 32 64";
      overalljails = true; # Calculate the bantime based on all the violations
    };
  };
}

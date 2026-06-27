{ lib, config, pkgs, ... }:

let
  cfg = config.main-user;
in
{
  options.main-user = {
    enable
      = lib.mkEnableOption "Enable user module";
    userName = lib.mkOption {
      default = "anon-merle-user";
      description = ''
        anon user of merle
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    users.users.${cfg.userName} = {
      isNormalUser = true;
      initialPassword = "password";
      description = "user of merle";
      shell = pkgs.zsh;
      extraGroups = [ "wheel" "networkmanager" "input" ];
    };
  };
}

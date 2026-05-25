# nix/modules/nixos.nix — auto-generated from copypasta.caixa.lisp
# description: "copypasta is a cross-platform library for getting and setting the contents of the OS-level clipboard."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.copypasta;
in {
  options.services.copypasta = {
    enable = lib.mkEnableOption "copypasta";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.copypasta or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}

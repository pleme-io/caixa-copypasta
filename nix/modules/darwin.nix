# nix/modules/darwin.nix — auto-generated from copypasta.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.copypasta; in {
  options.services.copypasta = {
    enable = lib.mkEnableOption "copypasta";
    package = lib.mkOption { type = lib.types.package; default = pkgs.copypasta or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}

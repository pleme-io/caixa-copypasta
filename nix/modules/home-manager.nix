# nix/modules/home-manager.nix — auto-generated from copypasta.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.copypasta; in {
  options.programs.copypasta = {
    enable = lib.mkEnableOption "copypasta";
    package = lib.mkOption { type = lib.types.package; default = pkgs.copypasta or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}

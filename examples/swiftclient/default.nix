{ pkgs ? import <nixpkgs> {} }:

with pkgs;

python3.pkgs.callPackage ./package.nix {}

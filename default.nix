{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  packages = [
    pkgs.lua
    pkgs.lua-language-server
  ];
}

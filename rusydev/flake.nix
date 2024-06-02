# { pkgs ? import <nixpkgs> {} }:
#
# pkgs.mkShell {
#   buildInputs = [
#     pkgs.latest.rustChannels.stable.rust
#     pkgs.latest.rustChannels.stable.rust-src
#   ];
#   RUST_SRC_PATH="${pkgs.latest.rustChannels.stable.rust-src}/lib/rustlib/src/rust/library/";
# }

# FLAKE IT
{
  description = "Basic rust development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.05";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { inherit system; };
    in
    {
      packages.x86_64-linux = {
        rust = pkgs.latest.rustChannels.stable.rust;
        rust-src = pkgs.latest.rustChannels.stable.rust-src;
      };
    };
}

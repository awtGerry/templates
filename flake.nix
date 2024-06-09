{
  description = "Templates";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs, ... }:
  {
    templates = {
      iced = {
        path = ./iced;
        description = "Template to use iced-rs";
      };
      python = {
        path = ./python;
        description = "Template to use python";
      };
      /* rusydev {
        path = ./rusydev;
        description = "Simple rust development environment";
      }; */
    };
  };
}

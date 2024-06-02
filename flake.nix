{
  description = "Templates";

  outputs = { self, ... }:
  {
    templates = {
      iced = {
        path = ./iced;
        description = "Template to use iced-rs";
      };
      rusydev {
        path = ./rusydev;
        description = "Simple rust development environment";
      };
    };
  };
}

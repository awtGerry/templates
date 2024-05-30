{
  description = "Usefull templates";

  outputs = { self, ... }:
  {
    templates = {
      iced = {
        path = ./iced;
        description = "Template to use iced-rs";
      };
    };
  };
}

{ ... }:

{
  services.xremap = {
    enable = true;

    serviceMode = "user";
    userName = "dio";

    withNiri = true;

    watch = true;

    config = {
      modmap = [
        {
          name = "Global";
          remap = {
            CapsLock = "Esc";
            Esc = "CapsLock";
          };
        }
      ];
    };
  };
}

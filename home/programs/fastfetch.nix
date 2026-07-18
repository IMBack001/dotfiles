{ _ }: {
  fastfetch = {
    enable = true;
    settings = {
      # logo = {
      #   source = "nixos_small";
      # };
      display = {
        separator = " ~> ";
      };
      modules = [
        "title"
        "separator"
        "os"
        "kernel"
        "packages"
        "users"
        "shell"
        "terminal"
        "cpu"
        "gpu"
        "memory"
        "disk"
        "poweradapter"
        "version"
        "uptime"
        "break"
        "colors"
      ];
    };
  };

}

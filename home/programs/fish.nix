{ ... }: {
  programs.fish = {
    enable = true;
    shellAliases = {
      btw = "echo I use NixOS btw";
      cd = "z";
      ls = "eza -l --group-directories-first --icons=always";
      lsa = "eza -la --group-directories-first --icons=always";
      lta = "eza -laT --group-directories-first --icons=always";
    };
    interactiveShellInit = ''
      set -g fish_greeting
      fastfetch
    '';
  };
}

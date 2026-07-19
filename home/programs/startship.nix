{ ... }: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    presets = [
      "tokyo-night"
    ];
  };
}

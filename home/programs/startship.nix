{ _ }: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    presets = [
      "jetpack"
    ];
  };
}

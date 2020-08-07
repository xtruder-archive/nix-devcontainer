{ config, pkgs, lib, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    nixFlakes utillinux which hello curl postgresql

    # vscode requirements
    go
    go-tools
    gotools
    golint
    gocode
    gocode-gomod
    gotests
    impl
    reftools
    gopkgs
    go-outline
    go-symbols
    godef
    gogetdoc
    gomodifytags
    delve
    gomove
    gore
    gopls
  ];

  home.file.".config/nix/nix.conf".text = ''
    max-jobs = 8
    sandbox = false
    experimental-features = nix-command flakes
  '';

  programs.bash = {
    enable = true;
    initExtra = ''
      . ~/.profile
    '';
  };

  programs.direnv.enable = true;

  programs.git = {
    enable = true;
    userName = "Jaka Hudoklin";
    userEmail = "jaka@x-truder.net";
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.03";
}
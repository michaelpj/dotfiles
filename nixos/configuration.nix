# Edit this configuration file to define what should be installed on 
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot = {
    loader = {
      # Use the GRUB 2 boot loader.
      grub.enable = true;
      grub.version = 2;
      # Define on which hard drive you want to install Grub.
      grub.device = "/dev/sda";
    };

    # Behave well under virtualbox
    initrd.checkJournalingFS = false;
  };

  networking = {
    hostName = "mpj-nixos";
    hostId = "d354493d";
    wireless.enable = true;
  };

  # Select internationalisation properties.
  i18n = {
    consoleFont = "lat9w-16";
    consoleKeyMap = "uk";
    defaultLocale = "en_GB.UTF-8";
  };

  nixpkgs.config.alloUnfree = true;
  environment.systemPackages = with pkgs; [
    # essentials
    zsh vim git tmux htop ansible
    # build-essentials
    binutils gcc gnumake pkgconfig python ruby
    # utilities
    wget unzip rsync
    # desktop
    thunderbird firefox
  ];


  services = {
    # Enable the OpenSSH daemon.
    openssh.enable = true;

    # Enable CUPS to print documents.
    # printing.enable = true;

    # Enable the X11 windowing system.
    xserver = {
      enable = true;
      layout = "uk";
      xkbOptions = "caps:escape";

      # Enable the XFCE Desktop Environment.
      desktopManager.xterm.enable = false;
      desktopManager.xfce.enable = true;
    };
  };

  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts
      source-code-pro
      source-sans-pro
      source-serif-pro
    ];
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.extraUsers.michael = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = "/var/run/current-system/sw/bin/zsh";
    uid = 1000;
  };

  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false; 

  time.timeZone = "Europe/London";
}

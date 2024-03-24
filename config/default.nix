{...}: {
  # Import all your configuration modules here
  imports = [
    ./autocmd.nix
    ./options.nix
    ./keymaps.nix
    ./plugins
  ];
}

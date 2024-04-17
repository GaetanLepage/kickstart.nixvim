{
  imports = [
    ./telescope.nix
  ];

  plugins = {
    # Detect tabstop and shiftwidth automatically
    sleuth.enable = true;

    # "gc" to comment visual regions/lines
    comment.enable = true;

    # Here is a more advanced example where we pass configuration options to `gitsigns.nvim`.
    gitsigns = {
      enable = true;
      settings.signs = {
        add.text = "+";
        change.text = "~";
        delete.text = "_";
        topdelete.text = "‾";
        changedelete.text = "~";
      };
    };
  };
}

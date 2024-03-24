{
  ######################
  # Basic Autocommands #
  ######################
  # See `:help lua-guide-autocommands`
  #
  # Highlight when yanking (copying) text
  # Try it with `yap` in normal mode
  # See `:help vim.highlight.on_yank()`
  autoCmd = [
    {
      event = "TextYankPost";
      desc = "Highlight when yanking (copying) text";
      callback.__raw = "vim.highlight.on_yank";
      group = "nixvim";
    }
  ];
  autoGroups.nixvim.clear = true;
}

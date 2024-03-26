{
  # Telescope is a fuzzy finder that comes with a lot of different things that it can fuzzy find!
  # It's more than just a "file finder", it can search many different aspects of Neovim, your
  # workspace, LSP, and more!
  #
  # The easiest way to use Telescope, is to start by doing something like:
  #  :Telescope help_tags
  #
  # After running this command, a window will open up and you're able to type in the prompt window.
  # You'll see a list of `help_tags` options and a corresponding preview of the help.
  #
  # Two important keymaps to use while in Telescope are:
  #  - Insert mode: <c-/>
  #  - Normal mode: ?
  #
  # This opens a window that shows you all of the keymaps for the current Telescope picker.
  # This is really useful to discover what Telescope can do as well as how to actually do it!
  plugins.telescope = {
    enable = true;

    # See `:help telescope` and `:help telescope.setup()`
  };
}

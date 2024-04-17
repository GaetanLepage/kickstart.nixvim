{helpers, ...}: {
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

    keymaps = {
      # NOTE: if you don't care about descriptions (i.e. if you are not using the `which-key` plugin),
      # you can simply write str-str mappings:
      # Ex: "<leader>sh" = "help_tags";
      "<leader>sh" = {
        action = "help_tags";
        options.desc = "[S]earch [H]elp";
      };
      "<leader>sk" = {
        action = "keymaps";
        options.desc = "[S]earch [K]eymaps";
      };
      "<leader>sf" = {
        action = "find_files";
        options.desc = "[S]earch [F]iles";
      };
      "<leader>ss" = {
        action = "builtin";
        options.desc = "[S]earch [S]elect Telescope";
      };
      "<leader>sw" = {
        action = "grep_string";
        options.desc = "[S]earch current [W]ord";
      };
      "<leader>sg" = {
        action = "live_grep";
        options.desc = "[S]earch by [G]rep";
      };
      "<leader>sd" = {
        action = "diagnostics";
        options.desc = "[S]earch [D]iagnostics";
      };
      "<leader>sr" = {
        action = "resume";
        options.desc = "[S]earch [R]esume";
      };
      "<leader>s." = {
        action = "oldfiles";
        options.desc = "[S]earch Recent Files ('.' for repeat)";
      };
      "<leader><leader>" = {
        action = "buffers";
        options.desc = "[ ] Find existing buffers";
      };
    };
    # See `:help telescope` and `:help telescope.setup()`
  };
}

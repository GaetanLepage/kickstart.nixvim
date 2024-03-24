{helpers, ...}: {
  # Set <space> as the leader key
  # See `:help mapleader`
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps =
    # This helper function lets us define "default" properties for all the following keymaps
    helpers.keymaps.mkKeymaps {
      mode = "n";
      options.silent = true;
    }
    # Here is the list of keymap declarations
    [
      {
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
      }

      # fix Y behaviour, i.e. make it yank from current position to the end of the line.
      {
        key = "Y";
        action = "y$";
      }

      # Exit terminal mode in the builtin terminal with a shortcut that is a bit easier for people
      # to discover. Otherwise, you normally need to press <C-\><C-n>, which is not what someone
      # will guess without a bit more experience.
      # NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping or just use
      # <C-\><C-n> to exit terminal mode
      {
        mode = "t";
        key = "<Esc><Esc>";
        action = "<C-\\><C-n>";
        options.desc = "Exit terminal mode";
      }

      # TIP: Disable arrow keys in normal mode
      {
        key = "<left>";
        action = "<cmd>echo 'Use h to move!!'<CR>";
      }
      {
        key = "<right>";
        action = "<cmd>echo 'Use l to move!!'<CR>";
      }
      {
        key = "<up>";
        action = "<cmd>echo 'Use k to move!!'<CR>";
      }
      {
        key = "<down>";
        action = "<cmd>echo 'Use j to move!!'<CR>";
      }

      # Keybinds to make split navigation easier.
      # Use CTRL+<hjkl> to switch between windows
      #
      # See `:help wincmd` for a list of all window commands
      {
        key = "<C-h>";
        action = "<C-w><C-h>";
        options.desc = "Move focus to the left window";
      }
      {
        key = "<C-l>";
        action = "<C-w><C-l>";
        options.desc = "Move focus to the right window";
      }
      {
        key = "<C-j>";
        action = "<C-w><C-j>";
        options.desc = "Move focus to the lower window";
      }
      {
        key = "<C-k>";
        action = "<C-w><C-k>";
        options.desc = "Move focus to the upper window";
      }
    ];
}

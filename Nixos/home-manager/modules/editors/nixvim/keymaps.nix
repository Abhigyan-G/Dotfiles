{ ... }:
{
  programs.nixvim.keymaps = [
    {
      action = "<C-\\><C-n>";
      key = "<Esc><Esc>";
      mode = "t";
    }
    # Excape from insert Mode
    {
      action = "<Esc>";
      key = "jk";
      mode = "i";
      options.silent = true;
    }
    {
      action = "<Esc>";
      key = "kj";
      mode = "i";
      options.silent = true;
    }
    # Make windows naigation easier
    {
      action = "<C-w><C-h>";
      key = "<C-h>";
      mode = "n";
      options.silent = true;
    }
    {
      action = "<C-w><C-j>";
      key = "<C-j>";
      mode = "n";
      options.silent = true;
    }
    {
      action = "<C-w><C-k>";
      key = "<C-k>";
      mode = "n";
      options.silent = true;
    }
    {
      action = "<C-w><C-l>";
      key = "<C-l>";
      mode = "n";
      options.silent = true;
    }
    # Buffer bindings
    {
      action = ":bprev<CR>";
      key = "<S-h>";
      mode = "n";
      options.desc = "Prev Buffer";
      options.silent = true;
    }
    {
      action = ":bnext<CR>";
      key = "<S-l>";
      mode = "n";
      options.desc = "Next Buffer";
      options.silent = true;
    }
    {
      action = ":bd<CR>";
      key = "<leader>x";
      mode = "n";
      options.desc = "Close Buffer";
      options.silent = true;
    }
    {
      action = ":LazyGit<CR>";
      key = "<leader>lg";
      mode = "n";
      options.desc = "Open LazyGit";
      options.silent = true;
    }
    {
      action = ":Neotree toggle<CR>";
      key = "<leader>e";
      mode = "n";
      options.desc = "Toggle Neo-tree";
      options.silent = true;
    }
    {
      action = ":Format<CR>";
      key = "<leader>F";
      mode = "n";
      options.desc = "Format";
      options.silent = true;
    }

    # Split creation / deletion (move to new split automatically)
    {
      key = "<leader>sh";
      action = "<cmd>split<bar>wincmd j<CR>";
      mode = "n";
      options.desc = "Horizontal split";
      options.silent = true;
    }
    {
      key = "<leader>sv";
      action = "<cmd>vsplit<bar>wincmd l<CR>";
      mode = "n";
      options.desc = "Vertical split";
      options.silent = true;
    }
    {
      key = "<leader>sx";
      action = "<C-w>q";
      mode = "n";
      options.desc = "Delete split";
      options.silent = true;
    }

    # Split navigation (hjkl style)
    {
      key = "<C-h>";
      action = "<cmd>wincmd h<CR>";
      mode = "n";
      options.desc = "Move left";
      options.silent = true;
    }
    {
      key = "<C-j>";
      action = "<cmd>wincmd j<CR>";
      mode = "n";
      options.desc = "Move down";
      options.silent = true;
    }
    {
      key = "<C-k>";
      action = "<cmd>wincmd k<CR>";
      mode = "n";
      options.desc = "Move up";
      options.silent = true;
    }
    {
      key = "<C-l>";
      action = "<cmd>wincmd l<CR>";
      mode = "n";
      options.desc = "Move right";
      options.silent = true;
    }

    # Resize splits
    {
      key = "<C-Left>";
      action = "<cmd>vertical resize -2<CR>";
      options.desc = "Left resize";
      options.silent = true;
    }
    {
      key = "<C-Right>";
      action = "<cmd>vertical resize +2<CR>";
      options.desc = "Right resize";
      options.silent = true;
    }
    {
      key = "<C-Up>";
      action = "<cmd>resize +2<CR>";
      options.desc = "Up resize";
      options.silent = true;
    }
    {
      key = "<C-Down>";
      action = "<cmd>resize -2<CR>";
      options.desc = "Down resize";
      options.silent = true;
    }

    # Yazi
    {
      key = "<leader>z";
      action = "<cmd>Yazi<CR>";
      mode = "n";
      options.desc = "Yazi";
      options.silent = true;
    }
    # # Harpoon
    # {
    #   key = "<leader>a";
    #   action = "<cmd>lua require('harpoon.mark').add_file()<CR>";
    #   options.desc = "Harpoon add file";
    # }
    # {
    #   key = "<leader>hm";
    #   action = "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>";
    #   options.desc = "Harpoon menu";
    # }
    # {
    #   key = "<M-1>";
    #   action = "<cmd>lua require('harpoon.ui').nav_file(1)<CR>";
    #   options.desc = "Harpoon file 1";
    # }
    # {
    #   key = "<M-2>";
    #   action = "<cmd>lua require('harpoon.ui').nav_file(2)<CR>";
    #   options.desc = "Harpoon file 2";
    # }
    # {
    #   key = "<M-3>";
    #   action = "<cmd>lua require('harpoon.ui').nav_file(3)<CR>";
    #   options.desc = "Harpoon file 3";
    # }
    # {
    #   key = "<M-4>";
    #   action = "<cmd>lua require('harpoon.ui').nav_file(4)<CR>";
    #   options.desc = "Harpoon file 4";
    # }

    # Ctrl+S to save (all modes)
    {
      key = "<C-s>";
      action = "<cmd>w!<CR>";
      mode = [
        "n"
        "i"
        "v"
      ];
      options = {
        silent = true;
        desc = "Save file";
      };
    }

    # Comment
    {
      key = "<C-/>";
      action = "<Esc>gcci";
      mode = [
        "i"
      ];
      options = {
        silent = true;
        remap = true;
        desc = "Comment Current Line";
      };
    }
    {
      key = "<C-/>";
      action = "gcc";
      mode = [
        "n"
      ];
      options = {
        silent = true;
        remap = true;
        desc = "Comment Current Line";
      };
    }
    {
      key = "<C-/>";
      action = "gc";
      mode = [ "v" ];
      options = {
        silent = true;
        remap = true;
        desc = "Comment All Selected Lines";
      };
    }

    # Toggle Word Wrap
    {
      key = "<leader>tw";
      action = "<cmd>set wrap!<CR>";
      mode = [
        "v"
        "n"
      ];
      options = {
        silent = true;
        desc = "Toggle Word Wrap";
      };
    }

    # Increment/Decrement
    {
      mode = "n";
      key = "<C-a>";
      action = "<C-a>";
      options = {
        silent = true;
        remap = true;
        desc = "Increment number under cursor";
      };
    }
    {
      mode = "n";
      key = "<C-x>";
      action = "<C-x>";
      options = {
        silent = true;
        remap = true;
        desc = "Decrement number under cursor";
      };
    }
    {
      mode = "n";
      key = "g<C-a>";
      action = "g<C-a>";
      options = {
        silent = true;
        remap = true;
        desc = "Increment numbers progressively";
      };
    }
    {
      mode = "n";
      key = "g<C-x>";
      action = "g<C-x>";
      options = {
        silent = true;
        remap = true;
        desc = "Decrement numbers progressively";
      };
    }
    {
      key = "<leader>cst";
      action = "<cmd>CsvViewToggle<CR>";
      options.desc = "Toggle CSV View";
      options.silent = true;
    }
  ];
}

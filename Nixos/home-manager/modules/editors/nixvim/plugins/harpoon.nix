{
  ...
}:
{
  programs.nixvim.plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    autoLoad = true;
    settings = {
      menu = {
        width = 120;
        height = 40;
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>ha";
      action = "<cmd>lua require'harpoon':list():add()<CR>";
      options = {
        silent = true;
        desc = "Harpoon Mark Current Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>hr";
      action = "<cmd>lua require'harpoon':list():remove()<CR>";
      options = {
        silent = true;
        desc = "Harpoon UnMark Current Buffer";
      };
    }
    {
      mode = "n";
      key = "<C-e>";
      action = "<cmd>lua require'harpoon'.ui:toggle_quick_menu(require'harpoon':list())<CR>";
      options = {
        silent = true;
        desc = "Harpoon List Marked Buffers";
      };
    }
    {
      mode = "n";
      key = "<leader>hl";
      action = "<cmd>lua require'harpoon'.ui:toggle_quick_menu(require'harpoon':list())<CR>";
      options = {
        silent = true;
        desc = "Harpoon List Marked Buffers";
      };
    }
    {
      mode = "n";
      key = "<leader>1";
      action = "<cmd>lua require'harpoon':list():select(1)<CR>";
      options.desc = "Harpoon To Marked 1";
    }
    {
      mode = "n";
      key = "<leader>2";
      action = "<cmd>lua require'harpoon':list():select(2)<CR>";
      options.desc = "Harpoon To Marked 2";
    }
    {
      mode = "n";
      key = "<leader>3";
      action = "<cmd>lua require'harpoon':list():select(3)<CR>";
      options.desc = "Harpoon To Marked 3";
    }
    {
      mode = "n";
      key = "<leader>4";
      action = "<cmd>lua require'harpoon':list():select(4)<CR>";
      options.desc = "Harpoon To Marked 4";
    }
    {
      mode = "n";
      key = "<leader>5";
      action = "<cmd>lua require'harpoon':list():select(5)<CR>";
      options.desc = "Harpoon To Marked 5";
    }
    {
      mode = "n";
      key = "<leader>6";
      action = "<cmd>lua require'harpoon':list():select(6)<CR>";
      options.desc = "Harpoon To Marked 6";
    }
    {
      mode = "n";
      key = "<leader>7";
      action = "<cmd>lua require'harpoon':list():select(7)<CR>";
      options.desc = "Harpoon To Marked 7";
    }
    {
      mode = "n";
      key = "<leader>8";
      action = "<cmd>lua require'harpoon':list():select(8)<CR>";
      options.desc = "Harpoon To Marked 8";
    }
    {
      mode = "n";
      key = "<leader>9";
      action = "<cmd>lua require'harpoon':list():select(9)<CR>";
      options.desc = "Harpoon To Marked 9";
    }
  ];

}

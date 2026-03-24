{ ... }:
{
  programs.nixvim.diagnostic.settings = {
    virtual_lines.current_line = true;
    virtual_text = false;
  };

  programs.nixvim.plugins = {
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-treesitter.enable = true;
    cmp_luasnip.enable = true;

    # cmp-nvim-ultisnips.enable = true;
    cmp-vimtex.enable = true;
    cmp-latex-symbols.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;

      settings = {
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          # maxViewEntries = 5;
        };

        sources = [
          { name = "luasnip"; }
          # { name = "ultisnips"; }
          { name = "vimtex"; }
          { name = "nvim_lsp"; }
          { name = "nvim_lsp_document_symbol"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "path"; }
          { name = "treesitter"; }
          { name = "buffer"; } # text within current buffer
          { name = "neorg"; }
          {
            name = "latex_symbols";
            # option.strategy = 0;
          }
        ];

        window = {
          completion = {
            border = "rounded";
            # winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
            zindex = 1000;
            # scrolloff = 0;
            col_offset = 20;
            # maxwidth = 30;
            # maxwidth = "50%";
            side_padding = 1;
            max_width = 30;
            scrollbar = true;
          };
          documentation = {
            border = "rounded";
            # winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
            zindex = 1001;
            max_width = 30;
            # maxHeight = "math.floor(40 * (40 / vim.o.lines))";
          };
        };

        mapping = {
          "<S-Tab>" = "cmp.mapping.select_prev_item()";
          "<Tab>" = "cmp.mapping.select_next_item()";

          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";

          "<C-Space>" = "cmp.mapping.complete({})";
          "<C-e>" = "cmp.mapping.close()";

          # "<C-y>" = "cmp.mapping.confirm()";
          "<CR>" = "cmp.mapping.confirm()";

          # "<Tab>" = ''
          #   cmp.mapping(
          #     function(fallback)
          #       if cmp.visible() then
          #         cmp.select_next_item()
          #       elseif require("luasnip").expand_or_locally_jumpable() then
          #         require("luasnip").expand_or_jump()
          #       elseif has_words_before() then
          #         cmp.complete()
          #       else
          #         fallback()
          #       end
          #     end,
          #     { 'i', 's' }
          #   )
          # '';

          # "<S-Tab>" = ''
          #   cmp.mapping(
          #     function(fallback)
          #       if cmp.visible() then
          #         cmp.select_prev_item()
          #       elseif require("luasnip").jumpable(-1) then
          #         require("luasnip").jump(-1)
          #       else
          #         fallback()
          #       end
          #     end,
          #     { 'i', 's' }
          #   )
          # '';
        };

        # formatting = {
        #   fields = [
        #     "kind"
        #     "abbr"
        #     "menu"
        #   ];
        #   format = ''
        #     function(_, vim_item)
        #       local icons = {
        #         Text = "  ",
        #         Method = "  ",
        #         Function = "  ",
        #         Constructor = "  ",
        #         Field = "  ",
        #         Variable = "  ",
        #         Class = "  ",
        #         Interface = "  ",
        #         Module = "  ",
        #         Property = "  ",
        #         Unit = "  ",
        #         Value = "  ",
        #         Enum = "  ",
        #         Keyword = "  ",
        #         Snippet = "  ",
        #         Color = "  ",
        #         File = "  ",
        #         Reference = "  ",
        #         Folder = "  ",
        #         EnumMember = "  ",
        #         Constant = "  ",
        #         Struct = "  ",
        #         Event = "  ",
        #         Operator = "  ",
        #         TypeParameter = "  ",
        #       }

        #       vim_item.menu = vim_item.kind
        #       vim_item.kind = icons[vim_item.kind]
        #       return vim_item
        #     end
        #   '';
        # };
      };
    };

    # # Global diagnostics
    # diagnostic = {
    #   enable = true;
    #   virtualText = true;
    #   underline = true;
    # };
  };

  programs.nixvim.keymaps = [
    {
      key = "<leader>tds";
      action = "<cmd>lua vim.diagnostic.show()<CR>";
      options.desc = "Show Diagnostic";
    }
    {
      key = "<leader>tdh";
      action = "<cmd>lua vim.diagnostic.hide()<CR>";
      options.desc = "Hide Diagnostic";
    }
    {
      key = "<leader>tih";
      action = "<cmd>lua vim.lsp.inlay_hint.enable()<CR>";
      options.desc = "Start Inlay Hints";
    }

  ];
}

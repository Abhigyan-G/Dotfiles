{
  pkgs,
  ...
}:
{
  imports = [
    ./cmp.nix
    ./formatter.nix
    ./treesitter.nix
  ];

  # programs.nixvim.

  programs.nixvim.plugins = {
    comment.enable = true;
    todo-comments.enable = true;

    nvim-autopairs = {
      enable = true;
      settings = {
        check_ts = true; # Treesitter support
        disable_filetype = [
          "TelescopePrompt"
          "spectre_panel"
        ];
        # fast_wrap = {
        #   map = "<M-e>";  # Alt+e for fast wrapping
        #   chars = [ "{" "[" "(" "\"" "'" ];
        #   pattern = string.gsub [[ [%'%"%)%>%]%)%}%,] ]] "%s+" "" ;
        #   end_key = "$";
        # };
      };
    };

    lsp-format = {
      enable = true;
      lspServersToEnable = "all";
    };

    lsp-lines.enable = true;
    lsp-signature.enable = true;
    lspkind = {
      enable = true;
      settings = {
        cmp = {
          enable = true;
          menu = {
            nvim_lsp = "[LSP]";
            nvim_lua = "[api]";
            path = "[path]";
            luasnip = "[snip]";
            buffer = "[buffer]";
            neorg = "[neorg]";
          };
        };
      };
    };
    trouble = {
      enable = true;
      settings = {
        multiline = true;
      };
    };

    lsp = {
      enable = true;
      inlayHints = true;

      keymaps = {
        silent = true;

        lspBuf = {
          "gd" = "definition";
          "gt" = "type_definition";
          "K" = "hover";
          "<leader>ca" = "code_action";
          "<leader>rn" = "rename";
        };
      };

      servers = {
        diagnosticls.enable = true;

        bashls.enable = true;
        clangd.enable = true;
        cssls.enable = true;
        dockerls.enable = true;
        gopls.enable = true;
        html.enable = true;
        jdtls.enable = true;
        jsonls.enable = true;
        lua_ls.enable = true;
        nixd = {
          enable = true;
          filetypes = [
            "nix"
          ];
        };
        nickel_ls.enable = true;
        pyright = {
          enable = true;
          settings = {
            pyright.disableOrganizeImports = true;
          };
        };
        ruff.enable = true;
        terraformls.enable = true;
        yamlls.enable = true;

        ltex.enable = true;
        texlab.enable = true;

      };

    };

    fidget.enable = true;

    # Rust Support (rustup, cargo, clippy etc)
    rustaceanvim = {
      enable = true;
      settings.tools.enable_clippy = true;
    };

    # Java Support
    # jdtls.enable = true;
    # java.enable = true;

    # C Sharp Support
    dotnet.enable = true;
  };

  # autoGroups.lsp_attach_disable_ruff_hover.clear = true;
  # autoCmd = [
  #   {
  #     event = "LspAttach";
  #     group = "lsp_attach_disable_ruff_hover";
  #     callback.__raw = ''
  #       function(args)
  #         local client = vim.lsp.get_client_by_id(args.data.client_id)
  #         if client == nil then
  #           return
  #         end
  #         if client.name == 'ruff' then
  #           -- Disable hover in favor of Pyright
  #           client.server_capabilities.hoverProvider = false
  #         end
  #       end
  #     '';
  #     desc = "LSP: Disable hover capability from Ruff";
  #   }
  # ];
}

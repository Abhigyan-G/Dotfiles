{ pkgs, ... }:
{
  programs.nixvim.plugins = {
    conform-nvim = {
      enable = false;
      autoLoad = true;

      settings = {
        formatters_by_ft = {
          bash = [
            "shellcheck"
            "shellharden"
            "shfmt"
          ];
          cpp = [ "clang_format" ];
          javascript = {
            __unkeyed-1 = "prettierd";
            __unkeyed-2 = "prettier";
            timeout_ms = 2000;
            stop_after_first = true;
          };
          python = [
            "isort"
            "black"
          ];
          nix = [
            "nix_fmt"
          ];
          "_" = [
            "squeeze_blanks"
            "trim_whitespace"
            "trim_newlines"
          ];
          tex = [
            "tex-fmt"
          ];
        };
        format_on_save = # Lua
          ''
            	  function(bufnr)
            	    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            	      return
            	    end

            	    if slow_format_filetypes[vim.bo[bufnr].filetype] then
            	      return
            	    end

            	    local function on_format(err)
            	      if err and err:match("timeout$") then
            		slow_format_filetypes[vim.bo[bufnr].filetype] = true
            	      end
            	    end

            	    return { timeout_ms = 200, lsp_fallback = true }, on_format
            	   end
            	'';
        format_after_save = # Lua
          ''
            	  function(bufnr)
            	    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            	      return
            	    end

            	    if not slow_format_filetypes[vim.bo[bufnr].filetype] then
            	      return
            	    end

            	    return { lsp_fallback = true }
            	  end
            	'';
        log_level = "warn";
        notify_on_error = false;
        notify_no_formatters = false;
      };
    };

    lint = {
      enable = false;
      lintersByFt = {
        text = [ "vale" ];
        markdown = [ "vale" ];
        dockerfile = [ "hadolint" ];
        terraform = [ "tflint" ];
        python = [ "pflake8" ];
        c = [ "clang-tidy" ];
        cpp = [
          "clang-tidy"
          "cpplint"
        ];
        go = [ "golangcilint" ];
        java = [ "checkstyle" ];
      };
    };
    #   none-ls = {
    #     enable = true;
    #     settings = {
    #       cmd = [ "bash -c nvim" ];
    #       debug = true;
    #     };
    #     sources = {
    #       code_actions = {
    #         # statix.enable = true;
    #         gitsigns.enable = true;
    #       };
    #       diagnostics = {
    #         # statix.enable = true;
    #         deadnix.enable = true;
    #         pylint.enable = true;
    #         checkstyle.enable = true;
    #       };
    #       formatting = {
    #         stylua.enable = true;
    #         shfmt = {
    #           enable = true;
    #           settings = ''
    #                  {
    #             extra_args = { "-w", "-i", "4" }
    #                  }
    #           '';
    #         };
    #         nixpkgs_fmt.enable = true;
    #         prettier = {
    #           enable = true;
    #           disableTsServerFormatter = true;
    #           settings = {
    #             extra_filetypes = [
    #               "json"
    #             ];
    #             insert_final_newline = true;
    #           };
    #         };
    #       };
    #       completion = {
    #         luasnip.enable = true;
    #         # spell.enable = true;
    #       };
    #     };
    #   };

    #   lint = {
    #     enable = true;
    #   };

    #   conform-nvim = {
    #     enable = true;
    #     settings.formattersByFt = {
    #       go = [ "gofumpt" ];
    #       lua = [ "stylua" ];
    #       python = [ "ruff_format" "ruff_fix" "isort" "black" ];
    #       javascript = [ "prettierd" ];
    #       typescript = [ "prettierd" ];
    #       nix = [ "nixpkgs_fmt" ];
    #       tf = [ "terraform_fmt" ];
    #       "_" = [ "trim_whitespace" ];
    #     };
    #   };
  };
}

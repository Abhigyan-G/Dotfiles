{ ... }:
{
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;

      nixvimInjections = true;

      settings = {
        highlight.enable = true;
        indent.enable = true;
        autotag.enable = true;
        folding.enable = true;
        ensure_installed = [
          "bash"
          "c"
          "cpp"
          "css"
          "go"
          "html"
          "java"
          "javascript"
          "json"
          "lua"
          "markdown"
          "markdown_inline"
          "python"
          "regex"
          "rust"
          "toml"
          "typescript"
          "vimdoc"
          "yaml"
          "nix"
          "vim"
          # "tex"
        ];
        autoinstall = true;
        nixvimInjections = true;
      };
    };
  };
}

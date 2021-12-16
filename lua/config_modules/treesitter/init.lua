require('nvim-treesitter.configs').setup({
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "beancount", "bibtex", "c", "c_sharp", "clojure", "cmake", "commonlisp", "cpp", "cuda", "d", "dart", "devicetree", "dot", "elixir", "elm", "erlang", "fennel", "fish", "fortran", "fusion", "godot", "glimmer", "ember", "glsl", "gomod", "graphql", "hcl", "heex", "hjson", "http", "jsdoc", "json5", "julia", "kotlin", "ledger", "llvm", "nix", "ocaml", "ocaml_interface", "ocamllex", "perl", "php", "pioasm", "prisma", "pug", "ql", "r", "rst", "ruby", "rust", "scala", "sparql", "supercollider", "surface", "svelte", "swift", "teal", "tlaplus", "tsx", "turtle", "verilog", "vue", "zig", },
  highlight = {
    enable = {
        "comment", "css", "dockerfile", "go", "html", "java", "javascript", "json", "latex", "lua", "make", "python", "regex", "scss", "toml", "typescript",  "yang" },
    additional_vim_regex_highlighting = false,
    disable = { "bash", "haskell", "markdown", "vim", "yaml" }
  },
  indent = {
    enable = true
  },
})

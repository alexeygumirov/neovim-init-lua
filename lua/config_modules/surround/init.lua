require("nvim-surround").setup({
    surrounds = {
        [":"] = {
            add = { "«", "»" },
        },
        ["C"] = {
            add = { "```", "```" },
        }
    }
})

-- map «:» to surround with Guillemets (e.g. ysiw:)
-- vim.g.surround_58="«\r»"
-- -- map «c» to surrounds text with ```sh <some code>``` for code listings (e.g. yssc)
-- vim.g.surround_99="```sh \r ```"
-- -- map «C» to surrounds text with ```{define code type} <some code>``` for code listings (e.g. yssC)
-- vim.g.surround_67="```\1environment: \1 \r ```"

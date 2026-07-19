vim.opt.runtimepath:prepend(vim.fn.getcwd())

require("vimdoc").setup({
    output_dir = "./doc",
    sources = {
        hump = {
            fetcher = "github",
            repo = "vrld/hump",
            branch = "master",
            docs = "docs",
            format = "rst",
            extension = ".rst",
        },

        moses = {
            fetcher = "github",
            repo = "Yonaba/Moses",
            branch = "master",
            docs = "doc",
            format = "markdown",
            extension = ".md",
        },

    },
})

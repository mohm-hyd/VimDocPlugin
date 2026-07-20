local vimdoc = require("vimdoc")

vim.api.nvim_create_user_command(
    "Vimdoc",
    function(opts)
        vimdoc.open({
            source = opts.fargs[1],
            page = opts.fargs[2],
        })
    end,
    {
        nargs = "+",
    }
)

local M = {}

M.config = {
    sources = {}
}

function M.setup(opts)
    M.config = vim.tbl_deep_extend(
        "force",
        M.config,
        opts or {}
    )
end

function M.update()
    vim.cmd("helptags" .. vim.fn.fnameescape(M.config.output_dir))
end

function M.open(query)
    print("Getting the docs for:", query)
    local source_name, page = query:match("^([^.]+)%.(.+)$")
    local source_config = M.config.sources[source_name]
    if not source_config then
        print("Unknown source: " .. source_name)
        return
    end
    local tag = query
    local source = require("vimdoc.source." .. source_config.fetcher)
    local raw = source.fetch(source_config, page)
    local rendered = require("vimdoc.core.render").render(raw, source_config.format, tag)
    require("vimdoc.core.writer").write(M.config.output_dir.."/" .. tag .. ".txt",rendered)
    M.update()
end

return M

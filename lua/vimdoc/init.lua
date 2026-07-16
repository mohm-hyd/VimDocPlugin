local M = {}

function M.open(page)
    print("Getting the docs for:", page)
    M.get(page)
end

function M.get(page)
    local url ="https://love2d.org/wiki/w/rest.php/v1/search/page?q=" .. page.. "&limit=20"
    local result = vim.system({
        "curl",
        "-A",
        "Mozilla/5.0",
        url,
    }):wait()
    print(result.stdout)
    print(vim.inspect(result))
    print(result.sterr)
end

return M

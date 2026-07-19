local M = {}

function M.write(path, lines)
    local file = io.open(path, "w")
    if not file then
        return false
    end
    file:write(table.concat(lines,"\n"))
    file:close()
    return true
end

return M

-- sort-siglas.lua
-- Ordena o arquivo <jobname>.lsg em ordem alfabetica
-- Uso: texlua sort-siglas.lua <jobname>
local jobname = arg and arg[1] or "modelo"
local filename = jobname .. ".lsg"
local f = io.open(filename, "r")
if f then
    local lines = {}
    for line in f:lines() do
        if line ~= "" then
            lines[#lines + 1] = line
        end
    end
    f:close()
    -- Extrai a sigla de dentro de \hbox to\@tempdima {SIGLA\hfil }
    -- Ex: \contentsline {sigla}{\hbox to\@tempdima {VEH\hfil }{...}} -> chave = "VEH"
    local function get_key(line)
        local sigla = line:match("{([^\\}]+)\\hfil")
        return sigla or line
    end
    table.sort(lines, function(a, b) return get_key(a):lower() < get_key(b):lower() end)
    f = io.open(filename, "w")
    for _, line in ipairs(lines) do
        f:write(line .. "\n")
    end
    f:close()
end

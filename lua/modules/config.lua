local globals = vim.g
local DEFAULT_TREE_WIDTH = globals.nvim_tree_width or 30



local defaults = {
    enable = true,
    height_compatible = false,
    treewidth = DEFAULT_TREE_WIDTH;
    cursorline = true,
    signcolumn = true,
    winhighlight = false,
}

local function verify()
    if type(defaults.treewidth) ~= 'number' then
        defaults.treewidth = DEFAULT_TREE_WIDTH
    end
end

local function set(table, key, value)
    defaults[key] = value
end

local function get(table, key)
    return defaults[key]
end

return {
    defaults = defaults,
    get = get,
    set = set,
    verify = verify,
}

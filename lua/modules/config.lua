local globals = vim.g
local DEFAULT_TREE_WIDTH = globals.nvim_tree_width or 30



local defaults = {
    enable = true,
    height_compatible = false,
    width = 0,
    height = 0,
    treewidth = DEFAULT_TREE_WIDTH;
    cursorline = true,
    signcolumn = true,
    winhighlight = false,
}

local function verify()
    if type(defaults.width) ~= 'number' then
        defaults.width = 0
    end

    if type(defaults.height) ~= 'number' then
        defaults.height = 0
    end
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

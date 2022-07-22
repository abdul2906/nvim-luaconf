local colorscheme = "gruvbox"

function setup_colorscheme ()
    vim.o.background = "dark";
    require("gruvbox").setup({
        contrast = "hard"
    })
    vim.cmd("colorscheme gruvbox")
end

local success, _ = pcall(setup_colorscheme)
if not success then
    vim.notify("Failed to setup colorscheme")
    return
end


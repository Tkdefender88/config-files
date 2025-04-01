local set = vim.opt
local autocmd = vim.api.nvim_create_autocmd
local highlight = vim.api.nvim_set_hl

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.swapfile = false
set.smartindent = true

set.nu = true
set.relativenumber = true

set.incsearch = true
set.hlsearch = false

set.wrap = false
set.signcolumn = "yes"
set.isfname:append("@-@")

set.updatetime = 50
set.colorcolumn = "120"
set.termguicolors = true

set.scrolloff = 8

set.list = true

local space = "·"
set.listchars:append {
	tab = "│ ",
	multispace = '￮',
	lead = space,
	trail = space,
	nbsp = space
}

vim.filetype.add({
    extension = {
        jsx = 'javascript',
    },
})

autocmd("InsertEnter", {
	callback = function()
		set.listchars.trail = nil
		highlight(0, "TrailingWhitespace", { link = "Whitespace" })
	end
})

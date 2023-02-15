--os clipboard
-- vim.cmd("set clipboard+=unnamedplus")

vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 8

vim.opt.hlsearch = false
vim.opt.incsearch = true

--remaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser",
  { noremap = true }
)

local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end
--nvim-tree
nmap('<leader>e', "<cmd>NvimTreeToggle<cr>", 'toggle explorer')
nmap('<leader>o', "<cmd>NvimTreeFocus<cr>", 'focus explorer')
--buffers
nmap('<S-l>', "<cmd>bnext<cr>", 'Next buffer tab')
nmap('<S-h>', "<cmd>bprevious<cr>", 'Prev buffer tab')
--windows
nmap('<C-h>', '<C-w>h', 'Move to left split')
nmap('<C-l>', '<C-w>l', 'Move to right split')



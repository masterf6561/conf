vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Go back" })

-- When Highlighted can move up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Take line under and paste on curr line with space
vim.keymap.set("n", "J", "mzJ`z")
-- half page jumping with cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz0")
vim.keymap.set("n", "<C-u>", "<C-u>zz0")
-- search term stays in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--
vim.keymap.set("n", "<C-e>", "<End>")
vim.keymap.set("i", "<C-e>", "<End>")
vim.keymap.set("i", "<C-g>", "<ESC>")
vim.keymap.set("n", "<C-g>", "<ESC>")
vim.keymap.set("n", "<C-b>", "<ESC>^i")
vim.keymap.set("i", "<C-b>", "<ESC>^i")

-- Paste over a word, deleting it, without loosing yanked
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste over, no yank" })

-- Copy to system clipboard
vim.keymap.set("v", "<leader>y", [["+y]], { desc = "Yank selection to clip" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank curr line to clip" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- custom
vim.keymap.set("n", "te", ":tabedit ", { desc = "Tabedit" })
vim.keymap.set("n", "<Tab>", ":tabnext<Return>")
vim.keymap.set("n", "<S-Tab>", ":tabprev<Return>")
vim.keymap.set("n", "rr", ":%s/")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")


vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Esc" })

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Lua Format" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- Replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace current word" })
-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make file executable" })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, { desc = "Source file" })
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

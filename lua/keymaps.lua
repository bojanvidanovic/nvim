function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to the Space key
vim.g.mapleader = ' '

-- File explorer
map("n", "<Leader>e", ":Neotree toggle <CR>", { silent = true })

-- Telescope
map("n", "<Leader>f", '<cmd>lua require(\'telescope.builtin\').find_files()<CR>', { silent = true })
map("n", "<Leader>/", '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>', { silent = true })
map("n", "<Leader>b", '<cmd>lua require(\'telescope.builtin\').buffers()<CR>', { silent = true })

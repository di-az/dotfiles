require("notify").setup({
  background_colour = "#000000",
})

vim.notify = require("notify")

vim.keymap.set("n", "<C-l>", function()
    vim.notify.dismiss()
end)

-- vim.keymap.set("n", "<leader>zz", function()
--     require("zen-mode").toggle()
--     vim.wo.wrap = false
--     ColorMyPencils()
-- end)

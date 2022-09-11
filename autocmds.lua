-- TODO
local cmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local create_command = vim.api.nvim_create_user_command

augroup("autoSave", { clear = true })
cmd({ "TextChanged", "FocusLost", "BufEnter", "WinEnter" }, {
  desc = "URL Highlighting",
  group = "highlighturl",
  pattern = "*",
  callback = vim.api.nvim_buf_call(buf, function () cmd("silent! write") end),
})



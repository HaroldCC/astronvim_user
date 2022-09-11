return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>cj"] = { "<cmd>bd<cr>", desc = "close current buffer" },
    ["<leader>ck"] = { "<cmd>tabclose<cr>", desc = "close current tab" },
    ["<leader>cl"] = { "<c-w>c", desc = "Close current window/split" },

    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    ["<leader>df"] = { "<cmd> DiffviewOpen <cr>", desc = "Open diffview" },
    ["<leader>dd"] = { "<cmd> DiffviewFileHistory %<cr>", desc = "Open current file" },

    ["<leader>wl"] = { "<cmd>vsplit<cr>", desc = "Split window vertically" },
    ["<leader>wo"] = { "<c-w>o", desc = "Maximize window" },
    ["<leader>wc"] = { "<c-w>c", desc = "Close window" },

    ["<leader>fm"] = { "<cmd>lua vim.lsp.buf.formatting()<cr>", desc = "Format" },

    -- find
    ["<leader>fe"] = { "<cmd>Neotree buffers <cr>", desc = "Find Recent files" },
    ["<leader>fE"] = { "<cmd>Telescope oldfiles<cr>", desc = "Find Recent files" },
    ["<M-e>"] = { "<cmd>Telescope oldfiles<cr>", desc = "Find Recent files" },
    ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", desc = "Find commands/keymaps" }, -- keymap is more like commands for me

    ["ge"] = { "<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "Go to next diagnostic/error" },
    ["gr"] = { "<cmd>lua require'telescope.builtin'.lsp_references{}<cr>", desc = "Go to references" },
    ["gd"] = { "<cmd>Telescope lsp_definitions<cr>", desc = "Go to definitions" },
    ["K"] = { "<cmd>Lspsaga hover_doc<cr>", desc = "Hover_Doc" },
    ["<M-k>"] = { "<cmd>Lspsaga code_action<cr>", desc = "Code Action" },
    ["<leader>lf"] = { "<cmd>Lspsaga lsp_finder<cr>", desc = "Lsp finder" }, -- remap to control-enter by hammerspoon
    ["<leader>rn"] = { "<cmd>Lspsaga rename<cr>", desc = "Rename" },

    -- Run
    ["<leader>rr"] = { "<cmd>GoTestFile<cr>", desc = "GoTestFile" },
    ["<leader>rt"] = { "<cmd>GoTest<cr>", desc = "RunAllGoTest: GoTestFile" },

    ["<leader>zo"] = { "zR", desc = "Unfold all" },
    ["<leader>zc"] = { "zM", desc = "Fold all" },

    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", desc = "Find files" },

    -- tree
    ["<C-n>"] = { "<cmd> Neotree toggle <CR>", desc = "toggle nvimtree" },
    ["<leader>e"] = { "<cmd> Neotree focus <CR>", desc = "focus nvimtree" },

    -- Tab
    ["tl"] = { "<cmd> tabnext <CR>", desc = "Tab Next" },
    ["th"] = { "<cmd> tabprevious <CR>", desc = "Tab Previous" },

    -- No
    ["<leader>nl"] = { "<cmd> nohl <CR>", desc = "nohl" },

    -- Show
    ["<leader>ss"] = { "<cmd>AerialToggle<CR>", desc = "Show outline" },
    ["<leader>sg"] = { "<cmd>Neotree git_status<cr>", desc = "Show git status" },

    ["<C-q>"] = { "<cmd>SessionManager load_session<CR>", desc = "Load session" }, -- <!>load_session
    ["<M-m>"] = { '<cmd>lua vim.notify("haha")<CR>' }, -- command+m
    ["<M-M>"] = { '<cmd>lua vim.notify("heihei")<CR>' }, -- command+control+m
    ["<M-P>"] = { "<cmd>Telescope commands<CR>", desc = "Find commands" },
  },
  i = {
    ["<C-q>"] = { "<cmd>SessionManager load_session<CR>", desc = "Load session" }, -- <!>load_session
    ["<M-P>"] = { "<cmd>Telescope commands<CR>", desc = "Find commands" },

    [";;"] = { " := ", desc = "golang: assign value" },
    [";a"] = { " != ", desc = "!=" },
    [";s"] = { " += ", desc = "+=" },
    [";d"] = { " == ", desc = "==" },
  },
  v = {
    ["<leader>dd"] = { "<cmd> DiffviewFileHistory<cr>", desc = "Open current file" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

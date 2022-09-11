local actions = require "telescope.actions"

local M = {
  init = {
    -- ❌ Disable default
    ["goolord/alpha-nvim"] = { disable = true },
    ["declancm/cinnamon.nvim"] = { disable = true },

    -- 👻 Add by me
    ["sindrets/diffview.nvim"] = {
      requires = "nvim-lua/plenary.nvim",
      config = function() require "user.plugin-customise.diffview" end,
    },
    ["ray-x/go.nvim"] = {
      config = function() require("go").setup() end,
    },
    ["ray-x/guihua.lua"] = {},
    -- You can also add new plugins here as well:
    -- Add plugins, the packer syntax without the "use"
    -- { "andweeb/presence.nvim" },
    ["nvim-zh/auto-save.nvim"]={},
    ["kylechui/nvim-surround"] = {
      config = function()
        require("nvim-surround").setup {
          -- Configuration here, or leave empty to use defaults
        }
      end,
    },
    ["stevearc/dressing.nvim"] = {},

    ["kevinhwang91/nvim-ufo"] = {
      requires = "kevinhwang91/promise-async",
      config = function() require "user.plugin-customise.nvim-ufo" end,
    },

    ["glepnir/lspsaga.nvim"] = {
      branch = "main",
    },
    ["anuvyklack/hydra.nvim"] = {
      config = require "user.plugin-customise.hydra",
    },

    ["jbyuki/venn.nvim"] = {},

    ["ray-x/lsp_signature.nvim"] = {},
  },

  -- ⚠️  Overrides default config
  ["lspkind"] = require "user.plugin-customise.lspkind",
  -- All other entries override the require("<key>").setup({...}) call for default plugins
  ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
    -- config variable is the default configuration table for the setup functino call
    local null_ls = require "null-ls"
    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
    }
    -- set up null-ls's on_attach function
    -- NOTE: You can remove this on attach function to disable format on save
    --[[ config.on_attach = function(client) ]]
    --[[   if client.resolved_capabilities.document_formatting then ]]
    --[[     vim.api.nvim_create_autocmd("BufWritePre", { ]]
    --[[       desc = "Auto format before save", ]]
    --[[       pattern = "<buffer>", ]]
    --[[       callback = vim.lsp.buf.formatting_sync, ]]
    --[[     }) ]]
    --[[   end ]]
    --[[ end ]]
    return config -- return final config table to use in require("null-ls").setup(config)
  end,
  treesitter = { -- overrides `require("treesitter").setup(...)`
    ensure_installed = { "lua" },
  },
  -- use mason-lspconfig to configure LSP installations
  ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
    ensure_installed = { "sumneko_lua" },
  },
  -- use mason-tool-installer to configure DAP/Formatters/Linter installation
  ["mason-tool-installer"] = { -- overrides `require("mason-tool-installer").setup(...)`
    ensure_installed = { "prettier", "stylua" },
  },
  ["telescope"] = {
    defaults = {
      mappings = {
        i = {
          ["<esc>"] = actions.close,
        },
      },
    },
  },

  ["cmp"] = require "user.plugin-customise.cmp",

  ["neo-tree"] = require "user.plugin-customise.neo-tree",

  packer = { -- overrides `require("packer").setup(...)`
    compile_path = vim.fn.stdpath "data" .. "/packer_compiled.lua",
  },
}

return M

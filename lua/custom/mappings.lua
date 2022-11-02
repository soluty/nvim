local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}

M.general = {
  i = {
    -- override nvchad default mapping
    ["<C-b>"] = { "<Nop>", "beginning of line" },
    ["<C-e>"] = { "<Nop>", "end of line" },
    ["<C-h>"] = { "<Nop>", "move left" },
    ["<C-l>"] = { "<Nop>", "move right" },
    ["<C-j>"] = { "<Nop>", "move down" },
    ["<C-k>"] = { "<Nop>", "move up" },
    -- my own mappings
    ["<Home>"] = { "<ESC>^i", "beginning of line" },
  },

  n = {
    -- override nvchad default mapping
    ["<leader>n"] = { "<Nop>", "toggle line number" },
    ["<leader>rn"] = { "<Nop>", "toggle relative number" },
    ["<leader>uu"] = { "<Nop>", "update nvchad" },
    ["<C-c>"] = { "<Nop>", "copy whole file" },
    ["<C-h>"] = { "<Nop>", "window left" },
    ["<C-l>"] = { "<Nop>", "window right" },
    ["<C-j>"] = { "<Nop>", "window down" },
    ["<C-k>"] = { "<Nop>", "window up" },
    -- my own mappings
    ["<Home>"] = { "^", "beginning of line" },
  },

  t = {
    ["<C-x>"] = { "<Nop>", "escape terminal mode" },
    ["<Esc>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" },
  },

  x = {
    ["j"] = { '<Nop>', opts = { expr = true } },
    ["k"] = { '<Nop>', opts = { expr = true } },
  },
}

return M

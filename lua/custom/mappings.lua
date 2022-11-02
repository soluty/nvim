local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}

M.general = {
  i = {
    -- override nvchad default mapping
    ["<C-b>"] = { "<Nop>", "" },
    ["<C-e>"] = { "<Nop>", "" },
    ["<C-h>"] = { "<Nop>", "" },
    ["<C-l>"] = { "<Nop>", "" },
    ["<C-j>"] = { "<Nop>", "" },
    ["<C-k>"] = { "<Nop>", "" },
    -- my own mappings
    ["<Home>"] = { "<ESC>^i", "beginning of line" },
  },

  n = {
    -- override nvchad default mapping
    ["<leader>n"] = { "<Nop>", "toggle line number" },
    ["<leader>rn"] = { "<Nop>", "toggle relative number" },
    ["<leader>uu"] = { "<Nop>", "update nvchad" },
    ["<C-c>"] = { "<Nop>", "" },
    ["<C-h>"] = { "<Nop>", "" },
    -- aliyun C-i 有bug, 用C-l 代替光标回退
    ["<C-l>"] = { "<Tab>", "" },
    ["<C-j>"] = { "<Nop>", "" },
    ["<C-k>"] = { "<Nop>", "" },
    -- 因为spacefn的原因 ,是我的leader,所以两个,作为f的repeat
    [",,"] = { ",", "" },
    -- my own mappings
    ["<Home>"] = { "^", "beginning of line" },
  },

  t = {
    ["<C-x>"] = { "<Nop>", "" },
    ["<Esc>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" },
  },

  x = {
    ["j"] = { '<Nop>', opts = { expr = true } },
    ["k"] = { '<Nop>', opts = { expr = true } },
  },
}

M.telescope = {
  n = {
    -- ff fa use nachad default
    ["<leader>fs"] = { "<cmd> Telescope live_grep <CR>", "find string" },
    ["<leader>fw"] = { "<cmd> Telescope grep_string <CR>", "find word" },
    ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    ["<leader>fo"] = { "<Nop>", "" },
    ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "find keymaps" },
    ["<leader>fm"] = { "<cmd> Telescope marks <CR>", "find marks" },
    ["<leader>ft"] = { "<cmd> Telescope builtin <CR>", "find telescope builtin" },
    ["<leader>fr"] = { "<cmd> Telescope register <CR>", "find register" },
    ["<leader>fvc"] = { "<cmd> Telescope command_history <CR>", "command_history" },
    ["<leader>fvs"] = { "<cmd> Telescope search_history <CR>", "search_history" },
    ["<leader>fvo"] = { "<cmd> Telescope vim_options <CR>", "vim_options" },
    ["<leader>tk"] = { "<Nop>", "" },
    ["<leader>cm"] = { "<Nop>", "" },
    -- git search
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
    ["<leader>gb"] = { "<cmd> Telescope git_blame <CR>", "git blame" },
    ["<leader>gf"] = { "<cmd> Telescope git_bcommits <CR>", "git bcommits" },
    ["<leader>gt"] = { "<cmd> Telescope git_stash <CR>", "git stash" },
  },
}

M.lspconfig = {
  n = {

  },
}
return M

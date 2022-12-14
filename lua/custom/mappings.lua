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
    -- 因为spacefn的原因 ,是我的leader
    [",,"] = { ",", "" },
    -- my own mappings
    ["<Home>"] = { "^", "beginning of line" },
    ["<leader>q"] = { "<cmd> wqa <CR>", "" },
    ["<leader>ww"] = { "<C-w><C-w>", "window change" },
    ["<leader>wc"] = { "<cmd> vs <CR>", "window create" },
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
    ["<leader>fr"] = { "<cmd> Telescope registers <CR>", "find register" },
    ["<leader>fvc"] = { "<cmd> Telescope command_history <CR>", "command_history" },
    ["<leader>fvs"] = { "<cmd> Telescope search_history <CR>", "search_history" },
    ["<leader>fvo"] = { "<cmd> Telescope vim_options <CR>", "vim_options" },
    ["<leader>tk"] = { "<Nop>", "" },
    ["<leader>cm"] = { "<Nop>", "" },
    -- git search
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
    ["<leader>gf"] = { "<cmd> Telescope git_bcommits <CR>", "git bcommits" },
    ["<leader>gt"] = { "<cmd> Telescope git_stash <CR>", "git stash" },
  },
}

M.lspconfig = {
  n = {
    -- 查找lsp的符号和调用
    ["<leader>flb"] = { "<cmd> Telescope lsp_document_symbols <CR>", "lsp_document_symbols" },
    ["<leader>flw"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "lsp_dynamic_workspace_symbols" },
    ["<leader>flo"] = { "<cmd> Telescope lsp_outgoing_calls <CR>", "lsp_outgoing_calls" },
    ["<leader>fli"] = { "<cmd> Telescope lsp_incoming_calls <CR>", "lsp_incoming_calls" },
    -- 跳转，和当前光标相关，implementation, definitions, symbols，references
    ["gi"] = { "<cmd> Telescope lsp_implementations <CR>", "lsp_implementations" },
    ["gd"] = { "<cmd> Telescope lsp_definitions <CR>", "lsp_definitions" },
    ["gs"] = { ":Telescope lsp_workspace_symbols query=expand('<cword>') <CR>", "lsp_workspace_symbols" },
    ["gr"] = { "<cmd> Telescope lsp_references <CR>", "lsp_references" },
  },
}

return M

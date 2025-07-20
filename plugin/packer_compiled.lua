-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/metin/.cache/nvim/packer_hererocks/2.1.1744318430/share/lua/5.1/?.lua;/home/metin/.cache/nvim/packer_hererocks/2.1.1744318430/share/lua/5.1/?/init.lua;/home/metin/.cache/nvim/packer_hererocks/2.1.1744318430/lib/luarocks/rocks-5.1/?.lua;/home/metin/.cache/nvim/packer_hererocks/2.1.1744318430/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/metin/.cache/nvim/packer_hererocks/2.1.1744318430/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ShaderHighlight = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/ShaderHighlight",
    url = "https://github.com/kalvinpearce/ShaderHighlight"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["citruszest.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/citruszest.nvim",
    url = "https://github.com/zootedb0t/citruszest.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["flash.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/flash.nvim",
    url = "https://github.com/folke/flash.nvim"
  },
  ["git-conflict.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17git-conflict\frequire\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/git-conflict.nvim",
    url = "https://github.com/akinsho/git-conflict.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-overloads.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/lsp-overloads.nvim",
    url = "https://github.com/Issafalcon/lsp-overloads.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nX\0\0\4\0\4\0\b6\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2B\2\1\0C\0\0\0\25nvim_get_current_win\24nvim_win_get_number\bapi\bvimX\0\0\4\0\4\0\b6\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2B\2\1\0C\0\0\0\25nvim_get_current_win\24nvim_win_get_number\bapi\bvimó\b\1\0\6\0(\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\19\0005\4\17\0003\5\18\0>\5\2\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\3=\3\31\0025\3!\0004\4\3\0003\5 \0>\5\1\4=\4\20\0034\4\0\0=\4\22\0035\4\"\0=\4\24\0035\4#\0=\4\26\0034\4\0\0=\4\28\0034\4\0\0=\4\30\3=\3$\0024\3\0\0=\3%\0024\3\0\0=\3\n\0024\3\0\0=\3&\0024\3\0\0=\3'\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\6\14lualine_y\0\14lualine_z\0\14lualine_x\0\14lualine_c\0\14lualine_b\0\14lualine_a\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\3\0\0\rfilename\17lsp_progress\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\6\14lualine_y\0\14lualine_z\0\14lualine_x\0\14lualine_c\0\14lualine_b\0\14lualine_a\0\0\1\2\0\0\tmode\foptions\1\0\a\rsections\0\ftabline\0\foptions\0\20inactive_winbar\0\22inactive_sections\0\15extensions\0\vwinbar\0\frefresh\1\0\3\ftabline\3è\a\vwinbar\3è\a\15statusline\3è\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\2\vwinbar\0\15statusline\0\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\t\23disabled_filetypes\0\23section_separators\0\25component_separators\0\ntheme\tauto\18icons_enabled\2\frefresh\0\17globalstatus\1\25always_divide_middle\2\17ignore_focus\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["modus-themes.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/modus-themes.nvim",
    url = "https://github.com/miikanissi/modus-themes.nvim"
  },
  ["neovim-tasks"] = {
    config = { "\27LJ\2\nó\1\0\0\5\0\n\0\0226\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0'\4\t\0B\0\4\1K\0\1\0,:Task set_module_param cmake target<cr>\15<leader>ct\30:Task start cmake run<cr>\15<leader>cr$:Task start cmake configure<cr>\15<leader>cc\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/neovim-tasks",
    url = "https://github.com/Shatur/neovim-tasks"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-nyctophilia"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nvim-nyctophilia",
    url = "https://github.com/javiorfo/nvim-nyctophilia"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["nvim-window"] = {
    config = { "\27LJ\2\n¹\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nchars\1\0\4\14normal_hl\vNormal\vborder\vsingle\fhint_hl\tBold\nchars\0\1\27\0\0\6a\6b\6c\6d\6e\6f\6g\6h\6i\6j\6k\6l\6m\6n\6o\6p\6q\6r\6s\6t\6u\6v\6w\6x\6y\6z\nsetup\16nvim-window\frequire\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/nvim-window",
    url = "https://github.com/yorickpeterse/nvim-window"
  },
  ["oil.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["oldworld.nvim"] = {
    config = { "\27LJ\2\nÔ\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0024\3\0\0=\3\n\2B\0\2\1K\0\1\0\17integrations\vstyles\1\0\2\vstyles\0\17integrations\0\14functions\1\0\2\vitalic\2\tbold\2\rbooleans\1\0\2\14functions\0\rbooleans\0\1\0\2\vitalic\2\tbold\2\nsetup\roldworld\frequire\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/oldworld.nvim",
    url = "https://github.com/dgox16/oldworld.nvim"
  },
  ["oxocarbon.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/oxocarbon.nvim",
    url = "https://github.com/nyoom-engineering/oxocarbon.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["paragon.vim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/paragon.vim",
    url = "https://github.com/seandewar/paragon.vim"
  },
  playground = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["transparent.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/transparent.nvim",
    url = "https://github.com/xiyaowong/transparent.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n[\0\0\5\0\6\0\b6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0\28<cmd>:TroubleToggle<cr>\15<leader>gt\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vi-viz"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vi-viz",
    url = "https://github.com/olambo/vi-viz"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-highlighter"] = {
    config = { "\27LJ\2\nÍ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0­\1\t\t\t   let HiErase = '<leader>he'\n\t\t\t   let HiClear = '<leader>hc'\n\t\t\t   let HiFind  = '<leader>hf'\n\t\t\t   let HiSetSL = '<leader>hh'\n\t\t\t   let HiSet   = '<leader>hs'\n\t\t\t\bcmd\bvim\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-highlighter",
    url = "https://github.com/azabiong/vim-highlighter"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-indent-object",
    url = "https://github.com/michaeljsmith/vim-indent-object"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-textobj-function"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-textobj-function",
    url = "https://github.com/kana/vim-textobj-function"
  },
  ["vim-textobj-indent"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-textobj-indent",
    url = "https://github.com/kana/vim-textobj-indent"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\nP\0\0\5\0\6\0\b6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0\17:ZenMode<cr>\15<leader>zz\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/metin/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: oldworld.nvim
time([[Config for oldworld.nvim]], true)
try_loadstring("\27LJ\2\nÔ\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0024\3\0\0=\3\n\2B\0\2\1K\0\1\0\17integrations\vstyles\1\0\2\vstyles\0\17integrations\0\14functions\1\0\2\vitalic\2\tbold\2\rbooleans\1\0\2\14functions\0\rbooleans\0\1\0\2\vitalic\2\tbold\2\nsetup\roldworld\frequire\0", "config", "oldworld.nvim")
time([[Config for oldworld.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nX\0\0\4\0\4\0\b6\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2B\2\1\0C\0\0\0\25nvim_get_current_win\24nvim_win_get_number\bapi\bvimX\0\0\4\0\4\0\b6\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2B\2\1\0C\0\0\0\25nvim_get_current_win\24nvim_win_get_number\bapi\bvimó\b\1\0\6\0(\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\19\0005\4\17\0003\5\18\0>\5\2\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\3=\3\31\0025\3!\0004\4\3\0003\5 \0>\5\1\4=\4\20\0034\4\0\0=\4\22\0035\4\"\0=\4\24\0035\4#\0=\4\26\0034\4\0\0=\4\28\0034\4\0\0=\4\30\3=\3$\0024\3\0\0=\3%\0024\3\0\0=\3\n\0024\3\0\0=\3&\0024\3\0\0=\3'\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\6\14lualine_y\0\14lualine_z\0\14lualine_x\0\14lualine_c\0\14lualine_b\0\14lualine_a\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\3\0\0\rfilename\17lsp_progress\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\6\14lualine_y\0\14lualine_z\0\14lualine_x\0\14lualine_c\0\14lualine_b\0\14lualine_a\0\0\1\2\0\0\tmode\foptions\1\0\a\rsections\0\ftabline\0\foptions\0\20inactive_winbar\0\22inactive_sections\0\15extensions\0\vwinbar\0\frefresh\1\0\3\ftabline\3è\a\vwinbar\3è\a\15statusline\3è\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\2\vwinbar\0\15statusline\0\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\t\23disabled_filetypes\0\23section_separators\0\25component_separators\0\ntheme\tauto\18icons_enabled\2\frefresh\0\17globalstatus\1\25always_divide_middle\2\17ignore_focus\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: neovim-tasks
time([[Config for neovim-tasks]], true)
try_loadstring("\27LJ\2\nó\1\0\0\5\0\n\0\0226\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0'\4\t\0B\0\4\1K\0\1\0,:Task set_module_param cmake target<cr>\15<leader>ct\30:Task start cmake run<cr>\15<leader>cr$:Task start cmake configure<cr>\15<leader>cc\6n\bset\vkeymap\bvim\0", "config", "neovim-tasks")
time([[Config for neovim-tasks]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\nP\0\0\5\0\6\0\b6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0\17:ZenMode<cr>\15<leader>zz\6n\bset\vkeymap\bvim\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n[\0\0\5\0\6\0\b6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0\28<cmd>:TroubleToggle<cr>\15<leader>gt\6n\bset\vkeymap\bvim\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: nvim-window
time([[Config for nvim-window]], true)
try_loadstring("\27LJ\2\n¹\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nchars\1\0\4\14normal_hl\vNormal\vborder\vsingle\fhint_hl\tBold\nchars\0\1\27\0\0\6a\6b\6c\6d\6e\6f\6g\6h\6i\6j\6k\6l\6m\6n\6o\6p\6q\6r\6s\6t\6u\6v\6w\6x\6y\6z\nsetup\16nvim-window\frequire\0", "config", "nvim-window")
time([[Config for nvim-window]], false)
-- Config for: vim-highlighter
time([[Config for vim-highlighter]], true)
try_loadstring("\27LJ\2\nÍ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0­\1\t\t\t   let HiErase = '<leader>he'\n\t\t\t   let HiClear = '<leader>hc'\n\t\t\t   let HiFind  = '<leader>hf'\n\t\t\t   let HiSetSL = '<leader>hh'\n\t\t\t   let HiSet   = '<leader>hs'\n\t\t\t\bcmd\bvim\0", "config", "vim-highlighter")
time([[Config for vim-highlighter]], false)
-- Config for: git-conflict.nvim
time([[Config for git-conflict.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17git-conflict\frequire\0", "config", "git-conflict.nvim")
time([[Config for git-conflict.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

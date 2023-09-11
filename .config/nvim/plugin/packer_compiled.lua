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
local package_path_str = "/Users/tt/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/tt/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/tt/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/tt/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/tt/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�8\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0034\4\0\0=\4\a\0035\4\b\0=\4\t\3=\3\n\2B\0\2\1K\0\1\0\vconfig\vfooter\1\3\0\0\5\26メメント・モリ\vcenter\vheader\1\0\0\1$\0\0�\1                                                                                                                                                                                                        �\1                                                                                                                                                                                                        �\1                                                                                                     .~?JYYJ7^                                                                                          �\1                                                                                                    ?#@@@@@@@@B?.                                                                                       �\1                                                                                              .     Y@@@G??JP&@@#~                                                                                      �\1                                                                ^7JYYJ!.                 .~JPBBBP7.  7B@@G?^ :Y&@B                                                                                      �\1                                                              :5&@@@@@@G:             .!5#@@@@@@@@J    ^?P##BGP&@Y   ^77~:.                                                                             �\1                                                              ~&@@@@@@@@G~          ^Y#@@@@@@@@@@&7        .^!!!^   J@@@@&#GP55Y?!~^.                                                                   �\1                                                               ?&@@@@@@@@@P7^:..:~JG@@@@@@@@#GP5?^ 7PPJ     .:^:    J&@@@@@@@@@@@@@@#PJ~.                                                               �\1                                                                :Y&@@@@@@&@@@&&&&@@@@@@@&P?~.     7@@@@PJYPB&@@@Y    :!JYPB#&@@@@@@@@@@@&5~                                                             �\1                                                                  ~G@@@@@G!JP#&&&&&&#PJ~..7YY7.  :#@@PG#&&&&BGPY~           !@@@@&?JP#@@@@@5.                                                           �\1                                                                    ?&@@@@Y   .:::::.    ?@@@@7  Y@@Y  ..... ^?7^       .^.  B@@@G   .~5&@@@B^                                                          �\1                                                         .           !#@@@@!             J@@@B:  B@B.       ~&@@@J   .!5&@B: Y@@@P      ^G@@@B.                                                         �\1                                                 ^75GBB#####G5J!      :B@@@#.         :. 7@@@~  ^@@J        :&@@@B!!5&@&GJ~  ^@@@P       .#@@@^                                                         �\1                                                :B@@@&BG5YYY5PBP:      :#@@@Y     :7YGB? 7@@P   ?@&^         B@@5G##B5!.     .B@@P       :#@@B.                                                         �\1                                                 ^7?!:       ::         ^#@@@~.!YB@#57:  7@@?   5@G          P@&.  .          J@@B      ^B@@@~                                                          �\1                                                        ~JGBBBY.         ~&@@##@&5!.     ~@@!   5@P:~!77!:   J@&:             :&@#:.:~75&@@#!                                                           �\1                                                     .?B@@5!:           :7&@@@G!.        ^@@!   5@@@@@@@@&7  !@@~              Y@@#&@@@@&B?.          .                                                 �\1                                                   .J#@@Y:           ^?G&@@&@@P          :&@7   ?@#7~^^^!7:  .#@?   .^!JPP!    :&@BYJ?!~:  :^:. .:^!YB#BJ.                                              �\1                                                  ~B@@#~         :75B@@@#Y^^&@@!          B@?   .#&7YPGBB##G. 5@P^YB&@&#BG!     Y@B        Y#&##&@@@@@@@G:                                              �\1                                                 ~&@@@7     :!JPB&@@@@G7.   !@@B          P@Y    G@#PYYY5PGY. ^@@&#Y~:...^~:    .B@?   ~#Y.  ^!??JJ?7!~^.                                               �\1                                                 :5PP?.     ?#&@@@@@5^       5@@!         ?@P    !7^^~~.       P@5  ^75B&@@B:    ~@#.  .Y@#Y!.                                                          �\1                                                            !G&@@@#?         :&@G         ^@B   ~YB&@@@#:      :&#Y#@@#G5YJ~      J@Y    :JB@@B5JJJ!                                                    �\1                                                             :~77!:           Y@&^         G@!?#@&BGPGPJ.       Y@@P!:             G@~      ^JG&@@@@!                                                   �\1                                                                              :&@7         ~@@@P!:              :!:                :P?         .^77~.                                                   �\1                                                                               G@?          5G^                   ....:...                                                                              �\1                                                                               ^Y^                    :^!?J5PGB#&&&&&&&&&#BBGG5J!^                                                                      �\1                                                                                                 ^7YG#&@@&&#BBGPPPPGGB#&@@@@@@@@@#J.                                                                    �\1                                                                                             :7P#&&B5J7~^:.           .:^!JP&@@@@&P:                                                                    �\1                                                                                           !P&#P?^.                         :7YYJ!.                                                                     �\1                                                                                         .P@P!.                                                                                                         �\1                                                                                          ~^                                                                                                            �\1                                                                                                                                                                                                        �\1                                                                                                                                                                                                        �\1                                                                                                                                                                                                        \1\0\1\ntheme\nhyper\nsetup\14dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/tt/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

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

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({ 'rose-pine/neovim', as = 'rose-pine',
  	config = function()
	  vim.cmd('colorscheme rose-pine')
  end})

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
  use('mbbill/undotree')
  use('theprimeagen/harpoon')
  use('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optiona		l

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional
	  },
  }
  use ('lewis6991/gitsigns.nvim') -- OPTIONAL: for git status
  use ('romgrk/barbar.nvim')
  use ('mattn/emmet-vim')
  use({
	  "iamcco/markdown-preview.nvim",
	  run = function() vim.fn["mkdp#util#install"]() end,
  })
  use {
	  'glepnir/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
		  require('dashboard').setup {
			  theme = 'hyper',
			  config = {
				  header = {'                                                                                                                                                                                                        ',
'                                                                                                                                                                                                        ',
'                                                                                                     .~?JYYJ7^                                                                                          ',
'                                                                                                    ?#@@@@@@@@B?.                                                                                       ',
'                                                                                              .     Y@@@G??JP&@@#~                                                                                      ',
'                                                                ^7JYYJ!.                 .~JPBBBP7.  7B@@G?^ :Y&@B                                                                                      ',
'                                                              :5&@@@@@@G:             .!5#@@@@@@@@J    ^?P##BGP&@Y   ^77~:.                                                                             ',
'                                                              ~&@@@@@@@@G~          ^Y#@@@@@@@@@@&7        .^!!!^   J@@@@&#GP55Y?!~^.                                                                   ',
'                                                               ?&@@@@@@@@@P7^:..:~JG@@@@@@@@#GP5?^ 7PPJ     .:^:    J&@@@@@@@@@@@@@@#PJ~.                                                               ',
'                                                                :Y&@@@@@@&@@@&&&&@@@@@@@&P?~.     7@@@@PJYPB&@@@Y    :!JYPB#&@@@@@@@@@@@&5~                                                             ',
'                                                                  ~G@@@@@G!JP#&&&&&&#PJ~..7YY7.  :#@@PG#&&&&BGPY~           !@@@@&?JP#@@@@@5.                                                           ',
'                                                                    ?&@@@@Y   .:::::.    ?@@@@7  Y@@Y  ..... ^?7^       .^.  B@@@G   .~5&@@@B^                                                          ',
'                                                         .           !#@@@@!             J@@@B:  B@B.       ~&@@@J   .!5&@B: Y@@@P      ^G@@@B.                                                         ',
'                                                 ^75GBB#####G5J!      :B@@@#.         :. 7@@@~  ^@@J        :&@@@B!!5&@&GJ~  ^@@@P       .#@@@^                                                         ',
'                                                :B@@@&BG5YYY5PBP:      :#@@@Y     :7YGB? 7@@P   ?@&^         B@@5G##B5!.     .B@@P       :#@@B.                                                         ',
'                                                 ^7?!:       ::         ^#@@@~.!YB@#57:  7@@?   5@G          P@&.  .          J@@B      ^B@@@~                                                          ',
'                                                        ~JGBBBY.         ~&@@##@&5!.     ~@@!   5@P:~!77!:   J@&:             :&@#:.:~75&@@#!                                                           ',
'                                                     .?B@@5!:           :7&@@@G!.        ^@@!   5@@@@@@@@&7  !@@~              Y@@#&@@@@&B?.          .                                                 ',
'                                                   .J#@@Y:           ^?G&@@&@@P          :&@7   ?@#7~^^^!7:  .#@?   .^!JPP!    :&@BYJ?!~:  :^:. .:^!YB#BJ.                                              ',
'                                                  ~B@@#~         :75B@@@#Y^^&@@!          B@?   .#&7YPGBB##G. 5@P^YB&@&#BG!     Y@B        Y#&##&@@@@@@@G:                                              ',
'                                                 ~&@@@7     :!JPB&@@@@G7.   !@@B          P@Y    G@#PYYY5PGY. ^@@&#Y~:...^~:    .B@?   ~#Y.  ^!??JJ?7!~^.                                               ',
'                                                 :5PP?.     ?#&@@@@@5^       5@@!         ?@P    !7^^~~.       P@5  ^75B&@@B:    ~@#.  .Y@#Y!.                                                          ',
'                                                            !G&@@@#?         :&@G         ^@B   ~YB&@@@#:      :&#Y#@@#G5YJ~      J@Y    :JB@@B5JJJ!                                                    ',
'                                                             :~77!:           Y@&^         G@!?#@&BGPGPJ.       Y@@P!:             G@~      ^JG&@@@@!                                                   ',
'                                                                              :&@7         ~@@@P!:              :!:                :P?         .^77~.                                                   ',
'                                                                               G@?          5G^                   ....:...                                                                              ',
'                                                                               ^Y^                    :^!?J5PGB#&&&&&&&&&#BBGG5J!^                                                                      ',
'                                                                                                 ^7YG#&@@&&#BBGPPPPGGB#&@@@@@@@@@#J.                                                                    ',
'                                                                                             :7P#&&B5J7~^:.           .:^!JP&@@@@&P:                                                                    ',
'                                                                                           !P&#P?^.                         :7YYJ!.                                                                     ',
'                                                                                         .P@P!.                                                                                                         ',
'                                                                                          ~^                                                                                                            ',
'                                                                                                                                                                                                        ',
'                                                                                                                                                                                                        ',
'                                                                                                                                                                                                        '}, --your header
				  center = {},
				  footer = {'','メメント・モリ'}  --your footer
			  }
		  }
	  end,
	  requires = {'nvim-tree/nvim-web-devicons'}
  }
  end)

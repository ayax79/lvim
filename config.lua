-- Since I use nushell by default, explicitly set the shell to zsh so that things like 
-- rust codelens actions do not break
vim.cmd("set shell=/bin/zsh")
-- for some reason this wasn't being picked up correctly in lua/user/lsp/init.lua
-- I should fix at some point, but this seems to work
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
reload "user.plugins"
reload "user.options"
reload "user.keymaps"
reload "user.autocommands"
reload "user.lsp"
reload "user.neoscroll"
reload "user.harpoon"
reload "user.cybu"
reload "user.surround"
reload "user.bookmark"
reload "user.todo-comments"
reload "user.jaq"
reload "user.lab"
reload "user.git"
reload "user.zen-mode"
reload "user.inlay-hints"
reload "user.whichkey"
reload "user.telescope"
reload "user.dial"
reload "user.numb"
reload "user.treesitter"
reload "user.neogit"
reload "user.colorizer"
reload "user.lualine"
reload "user.fidget"

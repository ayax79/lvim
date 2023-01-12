if lvim.colorscheme == "darkplus" then
	lvim.builtin.treesitter.rainbow = {
		enable = true,
		extended_mode = false,
		colors = {
			"DodgerBlue",
			"Orchid",
			"Gold",
		},
		disable = { "html" },
	}
end

-- if you don't want all the parsers change this to a table of the ones you want                                                                                                                                ││                                                                                                                                                                                                                │
lvim.builtin.treesitter.ensure_installed = {
  "java",
}

-- lvim.builtin.treesitter.ensure_installed = "all"

lvim.builtin.treesitter.textobjects = {
	select = {
		enable = true,
		-- Automatically jump forward to textobj, similar to targets.vim
		lookahead = true,
		keymaps = {
			-- You can use the capture groups defined in textobjects.scm
			["af"] = "@function.outer",
			["if"] = "@function.inner",
			["at"] = "@class.outer",
			["it"] = "@class.inner",
			["ac"] = "@call.outer",
			["ic"] = "@call.inner",
			["aa"] = "@parameter.outer",
			["ia"] = "@parameter.inner",
			["al"] = "@loop.outer",
			["il"] = "@loop.inner",
			["ai"] = "@conditional.outer",
			["ii"] = "@conditional.inner",
			["a/"] = "@comment.outer",
			["i/"] = "@comment.inner",
			["ab"] = "@block.outer",
			["ib"] = "@block.inner",
			["as"] = "@statement.outer",
			["is"] = "@scopename.inner",
			["aA"] = "@attribute.outer",
			["iA"] = "@attribute.inner",
			["aF"] = "@frame.outer",
			["iF"] = "@frame.inner",
		},
	},
}

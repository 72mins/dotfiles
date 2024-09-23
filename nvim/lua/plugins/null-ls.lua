return {
	"jose-elias-alvarez/null-ls.nvim",
	ft = { "python" },
	opts = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.mdformat,
				null_ls.builtins.formatting.prettier.with({
					filetypes = {
						"javascript",
						"typescript",
						"json",
						"css",
						"scss",
						"html",
						"javascriptreact",
						"typescriptreact",
					},
				}),
				null_ls.builtins.code_actions.eslint_d.with({
					diagnostics_format = "[eslint] #{m}\n(#{c})",
				}),
				null_ls.builtins.diagnostics.fish,
			},
		})
	end,
}

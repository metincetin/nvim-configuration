-- note: diagnostics are not exclusive to lsp servers
-- so these can be global keybindings
vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')


local telescope = require("telescope.builtin")
vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP actions',
	callback = function(event)
		local opts = { buffer = event.buf }

		-- these will be buffer-local keybindings
		-- because they only work if you have an active language server
		--
		local telescope = require("telescope.builtin")


		vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
		vim.keymap.set('n', 'gd', telescope.lsp_definitions, opts)
		vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
		vim.keymap.set('n', 'gi', telescope.lsp_implementations, opts)
		vim.keymap.set('n', 'gO', telescope.lsp_type_definitions, opts)
		vim.keymap.set('n', 'go', '<cmd>ClangdSwitchSourceHeader<cr>')
		vim.keymap.set('n', 'gr', telescope.lsp_references, opts)
		vim.keymap.set('n', 'gt', telescope.lsp_dynamic_workspace_symbols, opts)
		vim.keymap.set('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
		vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
		vim.keymap.set({ 'n', 'x' }, 'g=', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
		vim.keymap.set('n', 'g.', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
		vim.keymap.set("n", "<leader>glc", "<cmd>GitConflictListQf<CR>")
		vim.keymap.set("n", "<C-k>", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled() ,{0}) end)



		local client = vim.lsp.get_client_by_id(event.data.client_id)

		-- ls-overloads
		  --- Guard against servers without the signatureHelper capability
		  if client.server_capabilities.signatureHelpProvider then
			require('lsp-overloads').setup(client, { })
		  end
	end
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_setup = function(server)
	require('lspconfig')[server].setup({
		capabilities = lsp_capabilities,
	})
end

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {},
	handlers = {
		default_setup,
	},
})

local cmp = require('cmp')

cmp.setup({
	sources = {
		{ name = "luasnip" },
		-- { name = "buffer" },
		{ name = "path" },
		{ name = 'nvim_lsp' },
	},
	completion = {
		completeopt = "menu,menuone,preview,noinsert",
	},
	formatting = {
		format = function(entry, vim_item)
			vim_item.menu = entry:get_completion_item().detail
			return vim_item
		end
	};
	mapping = cmp.mapping.preset.insert({
		-- Enter key confirms completion item
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<tab>'] = cmp.mapping.confirm({ select = true }),
		-- Ctrl + space triggers completion menu
		['<C-Space>'] = cmp.mapping.complete(),
	}),
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})

cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{
			name = 'cmdline',
			option = {
				ignore_cmds = { 'Man', '!' }
			}
		}
	})
})

local lsp = require('lsp-zero').preset({
  name = 'recommended',
})

-- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v1.x/doc/md/api-reference.md

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls',
  'rust_analyzer',
})


local cmp = require('cmp')

lsp.setup_nvim_cmp({
  -- Select or Insert
  select_behavior = cmp.SelectBehavior.Select,

  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),

    -- ThePrimagen copy pasta
    -- Select = true means Automatically accept first selected item.
    ['<C-y>'] = cmp.mapping.confirm({select = true}),
  })
})


-- configures lua language server specifically for neovim
lsp.nvim_workspace()

lsp.setup()

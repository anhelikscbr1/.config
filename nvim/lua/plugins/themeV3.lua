return {
  'sainnhe/sonokai',
  lazy = false,
  priority = 1000,
  config = function()
    --  Available values:   `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`,
    --'espresso'`
    vim.g.sonokai_enable_italic = false
    vim.g.sonokai_style = 'atlantis'
    vim.cmd.colorscheme('sonokai')
  end,
}

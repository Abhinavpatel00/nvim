return {
  'chrisgrieser/nvim-lsp-endhints',
  event = 'LspAttach',
  opts = { -- move the setup options here
    icons = {
      type = '󰜁 ',
      parameter = '󰏪 ',
      offspec = ' ', -- hint kind not defined in official LSP spec
      unknown = ' ', -- hint kind is nil
    },
    label = {
      padding = 1,
      marginLeft = 0,
      bracketedParameters = true,
    },
    autoEnableHints = true,
  },
}

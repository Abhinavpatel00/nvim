return {
  "unisonweb/unison",
  branch = "trunk",
  config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/editor-support/vim")
      require("lazy.core.loader").packadd(plugin.dir .. "/editor-support/vim")

      -- Fetch latest commit using Git
      local latest_commit = vim.fn.system("git log -n 1 --format=%H " .. plugin.dir)
      print("Latest commit hash: " .. latest_commit)
  end,
  init = function(plugin)
      require("lazy.core.loader").ftdetect(plugin.dir .. "/editor-support/vim")
  end,
}


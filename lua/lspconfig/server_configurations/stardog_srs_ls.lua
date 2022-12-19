local util = require 'lspconfig.util'

local bin_name = 'srs-language-server'
local full_path = util.find_bin_path(bin_name)
local cmd = { 'node', full_path, '--stdio' }

return {
  default_config = {
    cmd = util.adapt_command_windows(cmd),
    filetypes = { 'turtle', 'ttl' },
    root_dir = function(fname)
      return util.find_git_ancestor(fname)
    end,
  },
  docs = {
    description = [[
https://github.com/stardog-union/stardog-language-servers/tree/master/packages/srs-language-server
A server providing language intelligence (diagnostics, hover tooltips, etc.) for Stardog Rules Syntax (SRS) via the Language Server Protocol.
installable via npm install -g srs-language-server or yarn global add srs-language-server.
requires node.
]],
  },
}
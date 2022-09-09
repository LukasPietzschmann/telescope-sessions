local has_telescope, telescope = pcall(require, 'telescope')
local has_sessions = pcall(require, 'sessions')
local TelescopeSessions = require('telescope._extensions.telescope-sessions.main')

if not has_telescope then
	error('This plugin requires telescope.nvim (https://github.com/nvim-telescope/telescope.nvim)')
end

if not has_sessions then
	error('This plugin requires sessions.nvim (https://github.com/LukasPietzschmann/sessions.nvim)')
end
return telescope.register_extension {
	setup = function(ext_config, config)
	end,
	exports = {
		search_sessions = TelescopeSessions.search_sessions
	},
}

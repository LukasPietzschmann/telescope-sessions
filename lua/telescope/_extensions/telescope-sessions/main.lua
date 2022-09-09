local M = {}

local sessions = require'sessions'
local base_path = sessions.config.session_base_path

local actions = require'telescope.actions'
local action_state = require'telescope.actions.state'
local themes = require'telescope.themes'

M.search_sessions = function ()
	local opts = {
		prompt_title = 'Sessions',
		cwd = base_path,
		attach_mappings = function(prompt_bufnr, _)
			actions.select_default:replace(function()
				actions.close(prompt_bufnr)
				local selection = action_state.get_selected_entry()
				sessions.load(selection[1])
			end)
			return true
		end,
	}
	local theme_opts = themes.get_dropdown()
	local find_files_conf = vim.tbl_deep_extend("force", opts, theme_opts, {
		previewer = false,
		disable_devicons = true,
	})
	require('telescope.builtin').find_files(find_files_conf)
end

return M

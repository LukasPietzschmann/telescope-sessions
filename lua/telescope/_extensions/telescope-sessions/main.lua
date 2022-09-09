local M = {}

local pickers = require 'telescope.pickers'
local finders = require 'telescope.finders'
local conf = require('telescope.config').values
local actions = require 'telescope.actions'
local action_state = require 'telescope.actions.state'

M.search_sessions = function ()
	local colors = function(opts)
		opts = opts or {}
		pickers.new(opts, {
			prompt_title = 'Sessions',
			finder = finders.new_table {
				results = { 'red', 'green', 'blue' }
			},
			sorter = conf.generic_sorter(opts),
			attach_mappings = function(prompt_bufnr, _)
				actions.select_default:replace(function()
					actions.close(prompt_bufnr)
					local selection = action_state.get_selected_entry()
					print(selection[1])
				end)
				return true
			end,
		}):find()
	end
	colors(require('telescope.themes').get_dropdown{})
end

return M

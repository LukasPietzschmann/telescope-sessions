# telescope-sessions
telescope-sessions extends [sessions.nvim](https://github.com/LukasPietzschmann/sessions.nvim) through telescope.nvim.

## Usage
You can show the picker from neovim's cmd-line by executing
```viml
:Telescope telescope-sessions search_sessions
```

Or straight from the plugin's path with lua
```viml
:lua require('telescope-sessions').search_session()
```

## Installation
Install with your favorite Neovim package manager. Just make sure that you also install [sessions.nvim](https://github.com/LukasPietzschmann/sessions.nvim)!

Example with packer.nvim:
```lua
use {
  'LukasPietzschmann/telescope-sessions',
  requires = { 'LukasPietzschmann/sessions.nvim' }
}
```

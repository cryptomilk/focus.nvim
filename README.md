[![GitHub stars](https://img.shields.io/github/stars/beauwilliams/focus.nvim.svg?style=social&label=Star&maxAge=2592000)](https://GitHub.com/beauwilliams/focus.nvim/stargazers/)
[![Requires](https://img.shields.io/badge/requires-nvim%200.5%2B-9cf?logo=neovim)](https://neovim.io//)
[![GitHub contributors](https://img.shields.io/github/contributors/beauwilliams/focus.nvim.svg)](https://GitHub.com/beauwilliams/focus.nvim/graphs/contributors/)
[![GitHub issues](https://img.shields.io/github/issues/beauwilliams/focus.nvim.svg)](https://GitHub.com/beauwilliams/focus.nvim/issues/)
[![GitHub issues-closed](https://img.shields.io/github/issues-closed/beauwilliams/focus.nvim.svg)](https://GitHub.com/beauwilliams/focus.nvim/issues?q=is%3Aissue+is%3Aclosed)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)



# Auto-resizing Focused Splits/Windows for Neovim

🔋 Batteries Included. No configuration neccessary

👌 Maximises Current Split/Window Automatically When Cursor Moves Based On Golden Ratio

⚙️  Set Focus Auto-Cursorline/SignColumn & Active/Inactive Win-Highlight + Disable

🙌 Compatible with NvimTree, NerdTree, CHADTree, Telescope, FZF & QuickFix (QF default to 10, rest won't resize)

# Demo

![screencast](https://i.ibb.co/0tsKww4/focusop.gif)

*note: for reference this screencast features dimensions set to 120\*40 (W\*H)*

## Installation
#### [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'beauwilliams/focus.nvim'
```
#### [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use 'beauwilliams/focus.nvim'
```

## Vim Commands

| _Command_      | _Description_ |
| -------------- | ------------- |
| `:DisableFocus` |  Disable the plugin per session. Splits will be normalised back to defaults and then spaced evenly. |
| `:EnableFocus` |  Enable the plugin per session. Splits will be resized back to your configs or defaults if not set. |
| `:ToggleFocus` |  Toggle focus on and off again. |

## Configuration

Place some version of this in your configuration file, e.g. `init.lua`, etc.

**NOTE:** If for example your screen resolution is *1024x768* --> i.e on the smaller side, you may notice that focus by default can maximise a window *too much*. That is, the window will sort of 'crush' some of your other splits due to the limited screen real estate. This is not an issue with focus, but an issue with minimal screen real estate. In this case, you can simply reduce the width/height of focus by following the below instructions to set them.


**Enable/Disable Focus**
```lua
local focus = require('focus')
-- Completely disable this plugin
-- Default: true
focus.enable = false
```

**Set Focus Tree Width**
```lua
local focus = require('focus')
-- Sets the width of directory tree buffers such as NerdTree, NvimTree and CHADTree
-- Default: vim.g.nvim_tree_width or 30
focus.treewidth = 20
```

**Set Focus Auto Cursorline**
```lua
local focus = require('focus')
-- Default: true
focus.cursorline = false
```

**Set Focus Auto Sign Column**
```lua
local focus = require('focus')
-- Default: true
focus.signcolumn = false
```

**Set Focus Window Highlighting**
```lua
local focus = require('focus')
-- Default: false
focus.winhighlight = true

-- By default, the highlight groups are setup as such:
--   hi default link FocusedWindow VertSplit
--   hi default link UnfocusedWindow Normal
-- To change them, you can link them to a different highlight group, see `:h hi-default` for more info.
vim.cmd('hi link UnfocusedWindow CursorLine')
vim.cmd('hi link FocusedWindow VisualNOS')
```


## Planned Improvements 😼

- [x] Refactoring
- [ ] Adding `:h filetype` support as we go
- [x] Decide default width as per feedback (I like 120)
- [x] Perhaps some other configs, maybe height?

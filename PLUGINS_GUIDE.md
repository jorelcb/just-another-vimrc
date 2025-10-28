# Vim Plugins and Keybindings Guide

## Plugin Installation

After editing vimrc, run in Vim:
```
:PlugInstall
```

To update plugins:
```
:PlugUpdate
```

---

## Installed Plugins

### Appearance & UI

#### 1. **vim-airline** + **vim-airline-themes**
Modern and attractive status bar with useful information.
- Shows current mode, file, git branch, file type
- Integrated tabs/buffers

#### 2. **gruvbox**
Retro color scheme with excellent contrast.

#### 3. **NERDTree**
Tree-style file explorer sidebar.

**Keybindings:**
- `Ctrl+n` - Toggle NERDTree
- `<leader>nf` - Find current file in NERDTree
- Inside NERDTree:
  - `m` - Menu (create, delete, move files)
  - `i` - Open in horizontal split
  - `s` - Open in vertical split
  - `t` - Open in new tab

#### 4. **vim-devicons**
Beautiful icons for files and folders.

---

### Navigation & Search

#### 5. **FZF** (Fuzzy Finder)
Ultra-fast file and content search.

**Keybindings:**
- `<leader>ff` - Find files (Files)
- `<leader>fg` - Find git files (GFiles)
- `<leader>fb` - Find open buffers
- `<leader>fl` - Find lines in files
- `<leader>ft` - Find tags
- `<leader>fc` - Find commits

#### 6. **Tagbar**
Functions/classes/variables navigator.

**Keybindings:**
- `F8` - Toggle Tagbar

#### 7. **EasyMotion**
Jump quickly to any visible location.

**Keybindings:**
- `<leader>s` - Jump to character
- `<leader>j` - Jump downward
- `<leader>k` - Jump upward

---

### Git

#### 8. **vim-fugitive**
Git commands integrated in Vim.

**Keybindings:**
- `<leader>gs` - Git status
- `<leader>gc` - Git commit
- `<leader>gp` - Git push
- `<leader>gl` - Git log
- `<leader>gd` - Git diff

#### 9. **vim-gitgutter**
Shows git changes in the left margin.

**Keybindings:**
- `<leader>hp` - Preview hunk (view change)
- `<leader>hs` - Stage hunk
- `<leader>hu` - Undo hunk

---

### Code Editing

#### 10. **vim-surround**
Change/add/remove quotes, parentheses, etc.

**Usage:**
- `cs"'` - Change double quotes to single quotes
- `ds"` - Delete quotes
- `ysiw"` - Surround word with quotes
- `yss)` - Surround line with parentheses

#### 11. **vim-commentary**
Comment code easily.

**Keybindings:**
- `gcc` - Comment/uncomment line
- `gc` (visual mode) - Comment selection
- `gcap` - Comment paragraph

#### 12. **auto-pairs**
Automatically closes parentheses, brackets, quotes.

#### 13. **vim-multiple-cursors** (Disabled by default)
Multi-cursor editing.

**Keybindings:**
- `Ctrl+n` - Select word (repeat for more matches)
- `Ctrl+p` - Deselect last
- `Ctrl+x` - Skip match

**Note:** Disabled by default due to conflict with NERDTree's `Ctrl+n`

---

### Autocompletion & LSP

#### 14. **CoC.nvim** (Conquer of Completion)
VSCode-like intelligent autocompletion with LSP support.

**Keybindings:**
- `Tab` - Next suggestion
- `Shift+Tab` - Previous suggestion
- `Enter` - Confirm
- `Ctrl+Space` - Trigger completion
- `gd` - Go to definition
- `gy` - Go to type definition
- `gi` - Go to implementation
- `gr` - View references
- `K` - Show documentation
- `<leader>rn` - Rename symbol

**CoC Configuration (optional):**
```vim
:CocInstall coc-json coc-tsserver coc-python coc-go coc-rust-analyzer
```

---

### Linting & Formatting

#### 15. **ALE** (Asynchronous Lint Engine)
Automatic linting and formatting.
- Formats automatically on save
- Shows errors in real-time

---

### Language Support

#### 16. **vim-javascript** / **vim-jsx-pretty**
Enhanced syntax for JavaScript and React.

#### 17. **typescript-vim**
TypeScript support.

#### 18. **vim-go**
Complete toolset for Go.

#### 19. **rust.vim**
Rust support.

#### 20. **python-syntax**
Enhanced Python syntax.

---

### Utilities

#### 21. **undotree**
Visualize change history.

**Keybindings:**
- `<leader>u` - Toggle Undotree

#### 22. **vim-tmux-navigator**
Seamless navigation between Vim and Tmux.

---

## General Custom Keybindings

### Leader Key
- `<leader>` = `Space`
- `<localleader>` = `,`

### File Operations
- `<leader>w` - Save
- `<leader>q` - Quit
- `<leader>x` - Save and quit
- `<leader>h` - Clear search highlight

### Window Navigation
- `Ctrl+h/j/k/l` - Move between windows

### Buffers
- `<leader>bn` - Next buffer
- `<leader>bp` - Previous buffer
- `<leader>bd` - Close buffer
- `<leader>bl` - List buffers

### Tabs
- `<leader>tn` - New tab
- `<leader>tc` - Close tab
- `<leader>to` - Close other tabs

### Visual Editing
- `J/K` (visual mode) - Move lines up/down
- `</>` (visual mode) - Indent and maintain selection

---

## Recommended Post-Installation

### 1. Install Powerline fonts (for icons in airline)
```bash
# macOS
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Then configure your terminal to use "Hack Nerd Font"
```

### 2. Install external tools

```bash
# FZF (if vim-plug didn't install it)
brew install fzf

# ripgrep (fast search)
brew install ripgrep

# ctags (for tagbar)
brew install universal-ctags

# Linters and formatters
npm install -g eslint prettier
pip install flake8 black isort pylint
brew install gopls  # Go
rustup component add rustfmt rust-analyzer  # Rust
```

### 3. Configure CoC for your languages

Inside Vim:
```vim
:CocInstall coc-json coc-tsserver coc-eslint coc-prettier coc-python coc-go coc-rust-analyzer
```

---

## Recommended Workflow

1. Open Vim in project directory
2. `<leader>ff` to quickly find files
3. `Ctrl+n` to open NERDTree when needed for navigation
4. Use `gd` to go to definitions
5. `<leader>gs` to view Git status
6. `F8` to view file structure (Tagbar)

---

## Troubleshooting

### Icons don't display properly
Install a Nerd Font and configure it in your terminal.

### CoC doesn't work
You need Node.js installed:
```bash
brew install node
```

### Vim feels slow
Disable plugins you don't use by commenting lines in vimrc.

---

## Plugin Details & Behavior

### Invasiveness Levels

Plugins that **change Vim's default behavior**:

#### 🔴🔴🔴🔴🔴 Highly Invasive
- **auto-pairs**: Auto-closes brackets, quotes, changes backspace behavior
  - Writing `(` inserts `()`
  - Backspace in `(|)` deletes both
  - Can interfere with macros

#### 🔴🔴🔴🔴⚪ Very Invasive
- **CoC.nvim**: Changes Tab, Enter, K behavior
  - Tab navigates completions
  - Enter confirms
  - K shows documentation
  - Runs Node.js process in background

#### 🔴🔴🔴⚪⚪ Moderately Invasive
- **ALE**: Formats code on save
  - `:w` triggers auto-formatting
  - Shows real-time errors
  - May slow down on large files

#### 🔴🔴⚪⚪⚪ Slightly Invasive
- **indentpython.vim**: Changes Python auto-indent
  - Only affects `.py` files
  - Follows PEP 8

#### 🔴⚪⚪⚪⚪ Non-invasive
- **vim-surround**: Only adds new commands (cs, ds, ys)
- **vim-commentary**: Only adds new commands (gc, gcc)
- **vim-repeat**: Improves `.` without changing behavior
- **EasyMotion**: Only works with specific keybindings

---

## Native Vim Alternatives

### Instead of auto-pairs:
- `%` - Jump between matching brackets
- `ci"` - Change inside quotes
- `da(` - Delete including parentheses

### Instead of multiple-cursors:
- `.` - Repeat last change
- `cgn` - Change next match (after `/search`)
- `:s/find/replace/g` - Substitute in line
- `qa...q` then `@a` - Record and replay macro

### Instead of CoC autocompletion:
- `Ctrl+n` - Next word in buffer
- `Ctrl+p` - Previous word
- `Ctrl+x Ctrl+f` - File path completion
- `Ctrl+x Ctrl+l` - Line completion

---

## Customization Examples

### Disable auto-format on save
```vim
" In vimrc (~line 169)
let g:ale_fix_on_save = 0
```

### Change NERDTree keybinding
```vim
" In vimrc (~line 249)
nnoremap <leader>e :NERDTreeToggle<CR>  " Space+e instead of Ctrl+n
```

### Disable CoC auto-popup
```vim
" Comment out the Tab mapping
" inoremap <silent><expr> <TAB> ...

" Keep only manual trigger
inoremap <silent><expr> <c-space> coc#refresh()
```

---

## Resources

- **vim-plug**: https://github.com/junegunn/vim-plug
- **CoC**: https://github.com/neoclide/coc.nvim
- **Nerd Fonts**: https://www.nerdfonts.com/
- **Vim Tips**: https://vim.fandom.com/wiki/Vim_Tips_Wiki

---

## Language-Specific Settings

### Python (4 spaces)
```vim
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
```

### JavaScript/TypeScript (2 spaces)
```vim
autocmd FileType javascript,typescript setlocal tabstop=2 shiftwidth=2 expandtab
```

### Go (tabs)
```vim
autocmd FileType go setlocal tabstop=4 shiftwidth=4 noexpandtab
```

---

## Quick Reference Card

### Most Used Keybindings

```
FILE OPERATIONS          NAVIGATION              GIT
<Space>w - Save         Ctrl+n - NERDTree       <Space>gs - Status
<Space>q - Quit         <Space>ff - Find files  <Space>gc - Commit
<Space>x - Save & quit  F8 - Tagbar            <Space>gd - Diff

EDITING                 CODE INTELLIGENCE       WINDOWS
gcc - Comment line      Tab - Next completion   Ctrl+h/j/k/l - Navigate
cs"' - Change quotes    gd - Go to definition
ds" - Delete quotes     K - Documentation
```

---

**Enjoy your optimized Vim setup! 🚀**

For the Spanish version, see [PLUGINS_GUIA.md](PLUGINS_GUIA.md)

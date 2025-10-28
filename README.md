# 🚀 Vim Configuration - Optimized Setup

<div align="center">

![Vim](https://img.shields.io/badge/VIM-%2311AB00.svg?style=for-the-badge&logo=vim&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)
![Maintained](https://img.shields.io/badge/Maintained-Yes-green.svg?style=for-the-badge)

**A modern, well-documented Vim configuration with popular plugins for enhanced productivity**

[Features](#-features) • [Installation](#-installation) • [Plugins](#-plugins) • [Keybindings](#%EF%B8%8F-keybindings) • [Customization](#-customization)

[🇪🇸 Versión en Español](README_ES.md) • [📚 Detailed Plugin Guide](PLUGINS_GUIDE.md)

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Screenshots](#-screenshots)
- [Requirements](#-requirements)
- [Installation](#-installation)
- [Plugins](#-plugins)
- [Keybindings](#%EF%B8%8F-keybindings)
- [Customization](#-customization)
- [Troubleshooting](#-troubleshooting)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🎯 Overview

This Vim configuration provides a powerful, modern development environment while maintaining the traditional Vim experience. It includes carefully selected plugins for file navigation, Git integration, syntax highlighting, and intelligent code completion.

### Philosophy

- **Non-invasive**: Respects traditional Vim workflows
- **Well-documented**: Every setting is explained
- **Modular**: Easy to enable/disable plugins
- **Performance-focused**: Lazy loading and optimized settings

---

## ✨ Features

- 🎨 **Beautiful UI** - Gruvbox theme with Airline status bar
- 📁 **File Navigation** - NERDTree sidebar and FZF fuzzy finder
- 🔍 **Smart Search** - Fast file and content search with ripgrep integration
- 🎯 **Code Intelligence** - LSP-powered autocompletion via CoC.nvim
- 🔧 **Auto-formatting** - Format on save with ALE
- 📝 **Git Integration** - Fugitive and GitGutter for Git workflows
- 🌈 **Syntax Highlighting** - Enhanced support for JS, TS, Python, Go, Rust
- ⚡ **Fast** - Optimized for performance with lazy loading
- 🎹 **Intuitive Keybindings** - Spacebar as leader key

---

## 📸 Screenshots

```
┌─────────────────────────────────────────────────────────────┐
│ NORMAL  ~/.vim/vimrc                              80% ☰ 1:1 │ ← Airline
├──────────┬──────────────────────────────────────────────────┤
│▾ .vim/   │  1  " Vim Configuration                          │
│  ▾ plugged│  2  set number                                   │
│    ale    │  3  set relativenumber                           │
│    fzf    │  4                                               │
│  autoload │  5  " Leader key = Space                         │
│  vimrc    │  6  let mapleader = " "                          │
│  README.md│  7                                               │
│           │  8  " Fast file search: <Space>ff                │
└──────────┴──────────────────────────────────────────────────┘
  NERDTree           Main Editor Area
```

---

## 📦 Requirements

### Mandatory

- **Vim 9.0+** (or Neovim 0.5+)
- **Git** - For vim-plug and plugins
- **Node.js 14+** - For CoC.nvim

### Optional (Recommended)

```bash
# macOS
brew install fzf ripgrep universal-ctags

# Ubuntu/Debian
sudo apt install fzf ripgrep universal-ctags

# Arch Linux
sudo pacman -S fzf ripgrep universal-ctags
```

### Fonts (for icons)

```bash
# macOS
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Then configure your terminal to use "Hack Nerd Font"
```

---

## 🚀 Installation

### Quick Install (Automatic)

```bash
# Backup existing config
mv ~/.vim ~/.vim.backup 2>/dev/null
mv ~/.vimrc ~/.vimrc.backup 2>/dev/null

# Clone this repo
git clone https://github.com/yourusername/vim-config.git ~/.vim

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins
vim +PlugInstall +qall

# Install CoC extensions
vim -c 'CocInstall -sync coc-json coc-tsserver coc-python coc-go|q'
```

### Manual Installation

1. **Install vim-plug**
   ```bash
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

2. **Copy vimrc**
   ```bash
   cp vimrc ~/.vim/vimrc
   # Or symlink: ln -s ~/.vim/vimrc ~/.vimrc
   ```

3. **Open Vim and install plugins**
   ```vim
   :PlugInstall
   ```

4. **Install language servers (optional)**
   ```vim
   :CocInstall coc-json coc-tsserver coc-python coc-go coc-rust-analyzer
   ```

---

## 🔌 Plugins

### Appearance & UI

| Plugin | Description | Keybinding |
|--------|-------------|------------|
| [vim-airline](https://github.com/vim-airline/vim-airline) | Elegant status bar | Auto |
| [gruvbox](https://github.com/morhetz/gruvbox) | Retro color scheme | Auto |
| [vim-devicons](https://github.com/ryanoasis/vim-devicons) | File icons | Auto |
| [nerdtree](https://github.com/preservim/nerdtree) | File explorer sidebar | `Ctrl+n` |

### Navigation & Search

| Plugin | Description | Keybinding |
|--------|-------------|------------|
| [fzf.vim](https://github.com/junegunn/fzf.vim) | Fuzzy file finder | `<Space>ff` |
| [tagbar](https://github.com/preservim/tagbar) | Code structure viewer | `F8` |
| [vim-easymotion](https://github.com/easymotion/vim-easymotion) | Fast cursor movement | `<Space>s` |

### Git Integration

| Plugin | Description | Keybinding |
|--------|-------------|------------|
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git commands in Vim | `<Space>gs` |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | Show git diff in gutter | Auto |

### Code Editing

| Plugin | Description | Keybinding |
|--------|-------------|------------|
| [vim-surround](https://github.com/tpope/vim-surround) | Manipulate brackets/quotes | `cs"'` |
| [vim-commentary](https://github.com/tpope/vim-commentary) | Toggle comments | `gcc` |
| [auto-pairs](https://github.com/jiangmiao/auto-pairs) | Auto-close brackets | Auto |

### Intelligence & Completion

| Plugin | Description | Keybinding |
|--------|-------------|------------|
| [coc.nvim](https://github.com/neoclide/coc.nvim) | LSP-based completion | `Tab` |
| [ale](https://github.com/dense-analysis/ale) | Async linting/fixing | Auto |

### Language Support

| Plugin | Languages |
|--------|-----------|
| [vim-javascript](https://github.com/pangloss/vim-javascript) | JavaScript |
| [vim-jsx-pretty](https://github.com/maxmellon/vim-jsx-pretty) | React/JSX |
| [typescript-vim](https://github.com/leafgarland/typescript-vim) | TypeScript |
| [vim-go](https://github.com/fatih/vim-go) | Go |
| [rust.vim](https://github.com/rust-lang/rust.vim) | Rust |
| [python-syntax](https://github.com/vim-python/python-syntax) | Python |

---

## ⌨️ Keybindings

### Leader Key

The leader key is set to **Space** for easy access.

```vim
let mapleader = " "
```

### File Operations

| Key | Action |
|-----|--------|
| `<Space>w` | Save file |
| `<Space>q` | Quit |
| `<Space>x` | Save and quit |
| `<Space>h` | Clear search highlight |

### Window Navigation

| Key | Action |
|-----|--------|
| `Ctrl+h` | Move to left window |
| `Ctrl+j` | Move to bottom window |
| `Ctrl+k` | Move to top window |
| `Ctrl+l` | Move to right window |

### Buffer Management

| Key | Action |
|-----|--------|
| `<Space>bn` | Next buffer |
| `<Space>bp` | Previous buffer |
| `<Space>bd` | Delete buffer |
| `<Space>bl` | List buffers |

### File Navigation

| Key | Action |
|-----|--------|
| `Ctrl+n` | Toggle NERDTree |
| `<Space>nf` | Find current file in NERDTree |
| `<Space>ff` | Fuzzy find files |
| `<Space>fg` | Fuzzy find git files |
| `<Space>fb` | Fuzzy find buffers |
| `<Space>fl` | Fuzzy find lines |
| `F8` | Toggle Tagbar |

### Git

| Key | Action |
|-----|--------|
| `<Space>gs` | Git status |
| `<Space>gc` | Git commit |
| `<Space>gp` | Git push |
| `<Space>gl` | Git log |
| `<Space>gd` | Git diff |
| `<Space>hp` | Preview git hunk |
| `<Space>hs` | Stage git hunk |
| `<Space>hu` | Undo git hunk |

### Code Editing

| Key | Action |
|-----|--------|
| `gcc` | Toggle comment line |
| `gc` (visual) | Toggle comment selection |
| `cs"'` | Change surrounding " to ' |
| `ds"` | Delete surrounding " |
| `ysiw"` | Add surrounding " around word |

### Code Intelligence (CoC)

| Key | Action |
|-----|--------|
| `Tab` | Next completion |
| `Shift+Tab` | Previous completion |
| `Enter` | Confirm completion |
| `Ctrl+Space` | Trigger completion |
| `gd` | Go to definition |
| `gy` | Go to type definition |
| `gi` | Go to implementation |
| `gr` | Show references |
| `K` | Show documentation |
| `<Space>rn` | Rename symbol |

### Movement

| Key | Action |
|-----|--------|
| `<Space>s` + char | EasyMotion jump to char |
| `<Space>j` | EasyMotion jump down |
| `<Space>k` | EasyMotion jump up |

---

## 🎨 Customization

### Disable Mouse Support

If you prefer traditional Vim (no mouse):

```vim
set mouse=                    " Already disabled by default
```

### Disable Invasive Plugins

Comment out plugins you don't want in `vimrc`:

```vim
" Disable auto-pairs
" Plug 'jiangmiao/auto-pairs'

" Disable CoC (use native completion)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
```

Then run `:PlugClean` in Vim.

### Change Color Scheme

```vim
" Options: gruvbox, solarized, molokai, dracula
colorscheme gruvbox
set background=dark          " or 'light'
```

### Adjust Indentation

```vim
set tabstop=2                 " Tab size (default: 4)
set shiftwidth=2              " Indent size (default: 4)
set expandtab                 " Use spaces (noexpandtab for tabs)
```

### Disable Format on Save

```vim
" In ALE section (~line 169)
let g:ale_fix_on_save = 0     " Change from 1 to 0
```

### Change Leader Key

```vim
let mapleader = ","           " Use comma instead of space
```

---

## 🔧 Troubleshooting

### Icons not showing

**Problem**: Squares or missing icons in NERDTree

**Solution**: Install a Nerd Font and configure your terminal
```bash
brew install --cask font-hack-nerd-font
# Set terminal font to "Hack Nerd Font"
```

### CoC not working

**Problem**: `[coc.nvim] CoC server process not initialized`

**Solution**: Install Node.js
```bash
# macOS
brew install node

# Ubuntu
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
```

### FZF not found

**Problem**: `:Files` command not working

**Solution**: Install FZF
```bash
brew install fzf    # macOS
sudo apt install fzf  # Ubuntu
```

### Slow startup

**Problem**: Vim takes long to start

**Solution**: Disable language servers you don't need
```vim
:CocUninstall coc-go  # If you don't use Go
```

### ALE formatting wrong

**Problem**: Code formatted incorrectly

**Solution**: Configure formatter for your language
```vim
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'python': ['black'],
\}
```

---

## 📚 Learning Resources

### Vim Basics
- [OpenVim Tutorial](https://www.openvim.com/)
- [Vim Adventures (Game)](https://vim-adventures.com/)
- `:help user-manual` - Built-in manual

### Plugin Documentation
- `:help nerdtree` - NERDTree help
- `:help fzf-vim` - FZF help
- `:help coc-nvim` - CoC help

### Cheat Sheets
- [Vim Cheat Sheet](https://vim.rtorr.com/)
- [Vim Surround Examples](https://github.com/tpope/vim-surround#examples)

---

## 🤝 Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing`)
5. Open a Pull Request

### Guidelines

- Document new plugins in README
- Add comments for non-obvious settings
- Test with clean Vim installation
- Update keybinding table if needed

---

## 📝 Notes

### Disabled by Default

Some plugins are commented out to maintain traditional Vim behavior:

- `vim-multiple-cursors` - Conflicts with NERDTree `Ctrl+n`

To enable, uncomment in `vimrc` and run `:PlugInstall`.

### Language-Specific Settings

Auto-indent is configured per language:
- Python: 4 spaces
- JavaScript/TypeScript: 2 spaces
- Go: tabs (no expansion)

---

## 🙏 Acknowledgments

- [vim-plug](https://github.com/junegunn/vim-plug) - Minimalist plugin manager
- [Gruvbox](https://github.com/morhetz/gruvbox) - Beautiful color scheme
- All plugin authors for their amazing work

---

## 📄 License

MIT License - Feel free to use and modify!

---

## 🌟 Star History

If you find this configuration useful, please star the repository!

---

<div align="center">

**Made with ❤️ for the Vim community**

[⬆ Back to Top](#-vim-configuration---optimized-setup)

</div>

# 🚀 Configuración de Vim - Setup Optimizado

<div align="center">

![Vim](https://img.shields.io/badge/VIM-%2311AB00.svg?style=for-the-badge&logo=vim&logoColor=white)
![Licencia](https://img.shields.io/badge/licencia-MIT-blue.svg?style=for-the-badge)
![Mantenido](https://img.shields.io/badge/Mantenido-S%C3%AD-green.svg?style=for-the-badge)

**Una configuración moderna y bien documentada de Vim con plugins populares para mejorar la productividad**

[Características](#-características) • [Instalación](#-instalación) • [Plugins](#-plugins) • [Atajos](#%EF%B8%8F-atajos-de-teclado) • [Personalización](#-personalización)

[🇬🇧 English Version](README.md)

</div>

---

## 📋 Tabla de Contenidos

- [Resumen](#-resumen)
- [Características](#-características)
- [Capturas](#-capturas)
- [Requisitos](#-requisitos)
- [Instalación](#-instalación)
- [Plugins](#-plugins)
- [Atajos de Teclado](#%EF%B8%8F-atajos-de-teclado)
- [Personalización](#-personalización)
- [Solución de Problemas](#-solución-de-problemas)
- [Contribuir](#-contribuir)
- [Licencia](#-licencia)

---

## 🎯 Resumen

Esta configuración de Vim proporciona un entorno de desarrollo moderno y potente mientras mantiene la experiencia tradicional de Vim. Incluye plugins cuidadosamente seleccionados para navegación de archivos, integración con Git, resaltado de sintaxis y autocompletado inteligente.

### Filosofía

- **No invasivo**: Respeta los flujos de trabajo tradicionales de Vim
- **Bien documentado**: Cada configuración está explicada
- **Modular**: Fácil de activar/desactivar plugins
- **Enfocado en rendimiento**: Carga lazy y configuraciones optimizadas

---

## ✨ Características

- 🎨 **UI Hermosa** - Tema Gruvbox con barra de estado Airline
- 📁 **Navegación de Archivos** - Barra lateral NERDTree y buscador fuzzy FZF
- 🔍 **Búsqueda Inteligente** - Búsqueda rápida de archivos y contenido con ripgrep
- 🎯 **Inteligencia de Código** - Autocompletado con LSP vía CoC.nvim
- 🔧 **Auto-formateo** - Formatear al guardar con ALE
- 📝 **Integración Git** - Fugitive y GitGutter para workflows de Git
- 🌈 **Resaltado de Sintaxis** - Soporte mejorado para JS, TS, Python, Go, Rust
- ⚡ **Rápido** - Optimizado para rendimiento con lazy loading
- 🎹 **Atajos Intuitivos** - Barra espaciadora como tecla leader

---

## 📸 Capturas

```
┌─────────────────────────────────────────────────────────────┐
│ NORMAL  ~/.vim/vimrc                              80% ☰ 1:1 │ ← Airline
├──────────┬──────────────────────────────────────────────────┤
│▾ .vim/   │  1  " Configuración de Vim                       │
│  ▾ plugged│  2  set number                                   │
│    ale    │  3  set relativenumber                           │
│    fzf    │  4                                               │
│  autoload │  5  " Tecla Leader = Espacio                     │
│  vimrc    │  6  let mapleader = " "                          │
│  README.md│  7                                               │
│           │  8  " Búsqueda rápida: <Espacio>ff               │
└──────────┴──────────────────────────────────────────────────┘
  NERDTree           Área Principal del Editor
```

---

## 📦 Requisitos

### Obligatorios

- **Vim 9.0+** (o Neovim 0.5+)
- **Git** - Para vim-plug y plugins
- **Node.js 14+** - Para CoC.nvim

### Opcionales (Recomendados)

```bash
# macOS
brew install fzf ripgrep universal-ctags

# Ubuntu/Debian
sudo apt install fzf ripgrep universal-ctags

# Arch Linux
sudo pacman -S fzf ripgrep universal-ctags
```

### Fuentes (para iconos)

```bash
# macOS
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Luego configura tu terminal para usar "Hack Nerd Font"
```

---

## 🚀 Instalación

### Instalación Rápida (Automática)

```bash
# Respaldar configuración existente
mv ~/.vim ~/.vim.backup 2>/dev/null
mv ~/.vimrc ~/.vimrc.backup 2>/dev/null

# Clonar este repositorio
git clone https://github.com/tuusuario/vim-config.git ~/.vim

# Instalar vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Instalar plugins
vim +PlugInstall +qall

# Instalar extensiones CoC
vim -c 'CocInstall -sync coc-json coc-tsserver coc-python coc-go|q'
```

### Instalación Manual

1. **Instalar vim-plug**
   ```bash
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

2. **Copiar vimrc**
   ```bash
   cp vimrc ~/.vim/vimrc
   # O crear symlink: ln -s ~/.vim/vimrc ~/.vimrc
   ```

3. **Abrir Vim e instalar plugins**
   ```vim
   :PlugInstall
   ```

4. **Instalar servidores de lenguaje (opcional)**
   ```vim
   :CocInstall coc-json coc-tsserver coc-python coc-go coc-rust-analyzer
   ```

---

## 🔌 Plugins

### Apariencia y UI

| Plugin | Descripción | Atajo |
|--------|-------------|-------|
| [vim-airline](https://github.com/vim-airline/vim-airline) | Barra de estado elegante | Auto |
| [gruvbox](https://github.com/morhetz/gruvbox) | Esquema de colores retro | Auto |
| [vim-devicons](https://github.com/ryanoasis/vim-devicons) | Iconos de archivos | Auto |
| [nerdtree](https://github.com/preservim/nerdtree) | Explorador de archivos lateral | `Ctrl+n` |

### Navegación y Búsqueda

| Plugin | Descripción | Atajo |
|--------|-------------|-------|
| [fzf.vim](https://github.com/junegunn/fzf.vim) | Buscador fuzzy de archivos | `<Espacio>ff` |
| [tagbar](https://github.com/preservim/tagbar) | Visualizador de estructura de código | `F8` |
| [vim-easymotion](https://github.com/easymotion/vim-easymotion) | Movimiento rápido del cursor | `<Espacio>s` |

### Integración Git

| Plugin | Descripción | Atajo |
|--------|-------------|-------|
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Comandos Git en Vim | `<Espacio>gs` |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | Mostrar diff de git en el margen | Auto |

### Edición de Código

| Plugin | Descripción | Atajo |
|--------|-------------|-------|
| [vim-surround](https://github.com/tpope/vim-surround) | Manipular corchetes/comillas | `cs"'` |
| [vim-commentary](https://github.com/tpope/vim-commentary) | Alternar comentarios | `gcc` |
| [auto-pairs](https://github.com/jiangmiao/auto-pairs) | Auto-cerrar corchetes | Auto |

### Inteligencia y Completado

| Plugin | Descripción | Atajo |
|--------|-------------|-------|
| [coc.nvim](https://github.com/neoclide/coc.nvim) | Completado basado en LSP | `Tab` |
| [ale](https://github.com/dense-analysis/ale) | Linting/corrección asíncrona | Auto |

### Soporte de Lenguajes

| Plugin | Lenguajes |
|--------|-----------|
| [vim-javascript](https://github.com/pangloss/vim-javascript) | JavaScript |
| [vim-jsx-pretty](https://github.com/maxmellon/vim-jsx-pretty) | React/JSX |
| [typescript-vim](https://github.com/leafgarland/typescript-vim) | TypeScript |
| [vim-go](https://github.com/fatih/vim-go) | Go |
| [rust.vim](https://github.com/rust-lang/rust.vim) | Rust |
| [python-syntax](https://github.com/vim-python/python-syntax) | Python |

---

## ⌨️ Atajos de Teclado

### Tecla Leader

La tecla leader está configurada como **Espacio** para fácil acceso.

```vim
let mapleader = " "
```

### Operaciones de Archivo

| Tecla | Acción |
|-------|--------|
| `<Espacio>w` | Guardar archivo |
| `<Espacio>q` | Salir |
| `<Espacio>x` | Guardar y salir |
| `<Espacio>h` | Limpiar resaltado de búsqueda |

### Navegación de Ventanas

| Tecla | Acción |
|-------|--------|
| `Ctrl+h` | Ir a ventana izquierda |
| `Ctrl+j` | Ir a ventana inferior |
| `Ctrl+k` | Ir a ventana superior |
| `Ctrl+l` | Ir a ventana derecha |

### Gestión de Buffers

| Tecla | Acción |
|-------|--------|
| `<Espacio>bn` | Siguiente buffer |
| `<Espacio>bp` | Buffer anterior |
| `<Espacio>bd` | Eliminar buffer |
| `<Espacio>bl` | Listar buffers |

### Navegación de Archivos

| Tecla | Acción |
|-------|--------|
| `Ctrl+n` | Alternar NERDTree |
| `<Espacio>nf` | Encontrar archivo actual en NERDTree |
| `<Espacio>ff` | Búsqueda fuzzy de archivos |
| `<Espacio>fg` | Búsqueda fuzzy de archivos git |
| `<Espacio>fb` | Búsqueda fuzzy de buffers |
| `<Espacio>fl` | Búsqueda fuzzy de líneas |
| `F8` | Alternar Tagbar |

### Git

| Tecla | Acción |
|-------|--------|
| `<Espacio>gs` | Git status |
| `<Espacio>gc` | Git commit |
| `<Espacio>gp` | Git push |
| `<Espacio>gl` | Git log |
| `<Espacio>gd` | Git diff |
| `<Espacio>hp` | Previsualizar hunk de git |
| `<Espacio>hs` | Preparar hunk de git |
| `<Espacio>hu` | Deshacer hunk de git |

### Edición de Código

| Tecla | Acción |
|-------|--------|
| `gcc` | Alternar comentario de línea |
| `gc` (visual) | Alternar comentario de selección |
| `cs"'` | Cambiar " por ' envolvente |
| `ds"` | Eliminar " envolvente |
| `ysiw"` | Agregar " alrededor de palabra |

### Inteligencia de Código (CoC)

| Tecla | Acción |
|-------|--------|
| `Tab` | Siguiente completado |
| `Shift+Tab` | Completado anterior |
| `Enter` | Confirmar completado |
| `Ctrl+Espacio` | Activar completado |
| `gd` | Ir a definición |
| `gy` | Ir a definición de tipo |
| `gi` | Ir a implementación |
| `gr` | Mostrar referencias |
| `K` | Mostrar documentación |
| `<Espacio>rn` | Renombrar símbolo |

### Movimiento

| Tecla | Acción |
|-------|--------|
| `<Espacio>s` + carácter | Salto EasyMotion a carácter |
| `<Espacio>j` | Salto EasyMotion hacia abajo |
| `<Espacio>k` | Salto EasyMotion hacia arriba |

---

## 🎨 Personalización

### Desactivar Soporte de Mouse

Si prefieres Vim tradicional (sin mouse):

```vim
set mouse=                    " Ya desactivado por defecto
```

### Desactivar Plugins Invasivos

Comenta los plugins que no quieres en `vimrc`:

```vim
" Desactivar auto-pairs
" Plug 'jiangmiao/auto-pairs'

" Desactivar CoC (usar completado nativo)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
```

Luego ejecuta `:PlugClean` en Vim.

### Cambiar Esquema de Colores

```vim
" Opciones: gruvbox, solarized, molokai, dracula
colorscheme gruvbox
set background=dark          " o 'light'
```

### Ajustar Indentación

```vim
set tabstop=2                 " Tamaño de tab (por defecto: 4)
set shiftwidth=2              " Tamaño de indentación (por defecto: 4)
set expandtab                 " Usar espacios (noexpandtab para tabs)
```

### Desactivar Formateo al Guardar

```vim
" En sección ALE (~línea 169)
let g:ale_fix_on_save = 0     " Cambiar de 1 a 0
```

### Cambiar Tecla Leader

```vim
let mapleader = ","           " Usar coma en vez de espacio
```

---

## 🔧 Solución de Problemas

### Los iconos no se muestran

**Problema**: Cuadrados o iconos faltantes en NERDTree

**Solución**: Instala una Nerd Font y configura tu terminal
```bash
brew install --cask font-hack-nerd-font
# Configura la fuente de la terminal a "Hack Nerd Font"
```

### CoC no funciona

**Problema**: `[coc.nvim] CoC server process not initialized`

**Solución**: Instala Node.js
```bash
# macOS
brew install node

# Ubuntu
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
```

### FZF no encontrado

**Problema**: El comando `:Files` no funciona

**Solución**: Instala FZF
```bash
brew install fzf    # macOS
sudo apt install fzf  # Ubuntu
```

### Inicio lento

**Problema**: Vim tarda mucho en iniciar

**Solución**: Desactiva servidores de lenguaje que no necesites
```vim
:CocUninstall coc-go  # Si no usas Go
```

### ALE formatea incorrectamente

**Problema**: Código formateado incorrectamente

**Solución**: Configura el formateador para tu lenguaje
```vim
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'python': ['black'],
\}
```

---

## 📚 Recursos de Aprendizaje

### Fundamentos de Vim
- [OpenVim Tutorial](https://www.openvim.com/)
- [Vim Adventures (Juego)](https://vim-adventures.com/)
- `:help user-manual` - Manual integrado

### Documentación de Plugins
- `:help nerdtree` - Ayuda de NERDTree
- `:help fzf-vim` - Ayuda de FZF
- `:help coc-nvim` - Ayuda de CoC

### Hojas de Referencia
- [Vim Cheat Sheet](https://vim.rtorr.com/)
- [Ejemplos de Vim Surround](https://github.com/tpope/vim-surround#examples)

---

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! Por favor:

1. Haz fork del repositorio
2. Crea una rama de feature (`git checkout -b feature/increible`)
3. Haz commit de tus cambios (`git commit -m 'Agregar feature increíble'`)
4. Haz push a la rama (`git push origin feature/increible`)
5. Abre un Pull Request

### Guías

- Documenta nuevos plugins en README
- Agrega comentarios para configuraciones no obvias
- Prueba con instalación limpia de Vim
- Actualiza tabla de atajos si es necesario

---

## 📝 Notas

### Desactivados por Defecto

Algunos plugins están comentados para mantener el comportamiento tradicional de Vim:

- `vim-multiple-cursors` - Conflicto con NERDTree `Ctrl+n`

Para activar, descomenta en `vimrc` y ejecuta `:PlugInstall`.

### Configuraciones Específicas por Lenguaje

Auto-indent está configurado por lenguaje:
- Python: 4 espacios
- JavaScript/TypeScript: 2 espacios
- Go: tabs (sin expansión)

---

## 🙏 Agradecimientos

- [vim-plug](https://github.com/junegunn/vim-plug) - Gestor de plugins minimalista
- [Gruvbox](https://github.com/morhetz/gruvbox) - Hermoso esquema de colores
- Todos los autores de plugins por su increíble trabajo

---

## 📄 Licencia

Licencia MIT - ¡Siéntete libre de usar y modificar!

---

## 🌟 Historial de Estrellas

Si encuentras útil esta configuración, ¡por favor dale estrella al repositorio!

---

<div align="center">

**Hecho con ❤️ para la comunidad Vim**

[⬆ Volver Arriba](#-configuración-de-vim---setup-optimizado)

</div>

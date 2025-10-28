# Guía de Plugins y Atajos de Vim

[🇬🇧 English Version](PLUGINS_GUIDE.md)

## Instalación de Plugins

Después de editar el vimrc, ejecuta en Vim:
```
:PlugInstall
```

Para actualizar plugins:
```
:PlugUpdate
```

## Plugins Instalados

### Apariencia y UI

#### 1. **vim-airline** + **vim-airline-themes**
Barra de estado moderna y atractiva con información útil.
- Muestra modo actual, archivo, branch de git, tipo de archivo
- Tabs/buffers integrados

#### 2. **gruvbox**
Tema de colores retro con excelente contraste.

#### 3. **NERDTree**
Explorador de archivos en árbol lateral.

**Atajos:**
- `Ctrl+n` - Toggle NERDTree
- `<leader>nf` - Encontrar archivo actual en NERDTree
- Dentro de NERDTree:
  - `m` - Menú (crear, borrar, mover archivos)
  - `i` - Abrir en split horizontal
  - `s` - Abrir en split vertical
  - `t` - Abrir en nuevo tab

#### 4. **vim-devicons**
Iconos bonitos para archivos y carpetas.

---

### Navegación y Búsqueda

#### 5. **FZF** (Fuzzy Finder)
Buscador ultra rápido de archivos y contenido.

**Atajos:**
- `<leader>ff` - Buscar archivos (Files)
- `<leader>fg` - Buscar archivos git (GFiles)
- `<leader>fb` - Buscar buffers abiertos
- `<leader>fl` - Buscar líneas en archivos
- `<leader>ft` - Buscar tags
- `<leader>fc` - Buscar commits

#### 6. **Tagbar**
Navegador de funciones/clases/variables.

**Atajos:**
- `F8` - Toggle Tagbar

#### 7. **EasyMotion**
Saltar rápidamente a cualquier parte visible.

**Atajos:**
- `<leader>s` - Saltar a carácter
- `<leader>j` - Saltar hacia abajo
- `<leader>k` - Saltar hacia arriba

---

### Git

#### 8. **vim-fugitive**
Comandos Git integrados en Vim.

**Atajos:**
- `<leader>gs` - Git status
- `<leader>gc` - Git commit
- `<leader>gp` - Git push
- `<leader>gl` - Git log
- `<leader>gd` - Git diff

#### 9. **vim-gitgutter**
Muestra cambios de git en el margen izquierdo.

**Atajos:**
- `<leader>hp` - Preview hunk (ver cambio)
- `<leader>hs` - Stage hunk
- `<leader>hu` - Undo hunk

---

### Edición

#### 10. **vim-surround**
Cambiar/agregar/eliminar comillas, paréntesis, etc.

**Uso:**
- `cs"'` - Cambiar comillas dobles por simples
- `ds"` - Eliminar comillas
- `ysiw"` - Rodear palabra con comillas
- `yss)` - Rodear línea con paréntesis

#### 11. **vim-commentary**
Comentar código fácilmente.

**Atajos:**
- `gcc` - Comentar/descomentar línea
- `gc` (visual mode) - Comentar selección
- `gcap` - Comentar párrafo

#### 12. **auto-pairs**
Cierra automáticamente paréntesis, corchetes, comillas.

#### 13. **vim-multiple-cursors**
Edición con múltiples cursores.

**Atajos:**
- `Ctrl+n` - Seleccionar palabra (repetir para más coincidencias)
- `Ctrl+p` - Deseleccionar última
- `Ctrl+x` - Saltar coincidencia

---

### Autocompletado y LSP

#### 14. **CoC.nvim** (Conquer of Completion)
Autocompletado inteligente tipo VSCode con soporte LSP.

**Atajos:**
- `Tab` - Siguiente sugerencia
- `Shift+Tab` - Sugerencia anterior
- `Enter` - Confirmar
- `Ctrl+Space` - Activar completado
- `gd` - Ir a definición
- `gy` - Ir a type definition
- `gi` - Ir a implementación
- `gr` - Ver referencias
- `K` - Mostrar documentación
- `<leader>rn` - Renombrar símbolo

**Configuración CoC (opcional):**
```vim
:CocInstall coc-json coc-tsserver coc-python coc-go coc-rust-analyzer
```

---

### Linting y Formateo

#### 15. **ALE** (Asynchronous Lint Engine)
Linting y formateo automático.
- Formatea automáticamente al guardar
- Muestra errores en tiempo real

---

### Soporte de Lenguajes

#### 16. **vim-javascript** / **vim-jsx-pretty**
Sintaxis mejorada para JavaScript y React.

#### 17. **typescript-vim**
Soporte para TypeScript.

#### 18. **vim-go**
Herramientas completas para Go.

#### 19. **rust.vim**
Soporte para Rust.

#### 20. **python-syntax**
Sintaxis mejorada para Python.

---

### Utilidades

#### 21. **undotree**
Visualizar historial de cambios.

**Atajos:**
- `<leader>u` - Toggle Undotree

#### 22. **vim-tmux-navigator**
Navegación fluida entre Vim y Tmux.

---

## Atajos Personalizados Generales

### Leader Key
- `<leader>` = `Espacio`
- `<localleader>` = `,`

### Archivo
- `<leader>w` - Guardar
- `<leader>q` - Salir
- `<leader>x` - Guardar y salir
- `<leader>h` - Limpiar resaltado de búsqueda

### Navegación de Ventanas
- `Ctrl+h/j/k/l` - Moverse entre ventanas

### Buffers
- `<leader>bn` - Buffer siguiente
- `<leader>bp` - Buffer anterior
- `<leader>bd` - Cerrar buffer
- `<leader>bl` - Listar buffers

### Tabs
- `<leader>tn` - Nuevo tab
- `<leader>tc` - Cerrar tab
- `<leader>to` - Cerrar otros tabs

### Edición Visual
- `J/K` (modo visual) - Mover líneas arriba/abajo
- `</>` (modo visual) - Indentar y mantener selección

---

## Post-Instalación Recomendada

### 1. Instalar fuentes Powerline (para iconos en airline)
```bash
# macOS
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Luego configura tu terminal para usar "Hack Nerd Font"
```

### 2. Instalar herramientas externas

```bash
# FZF (si no lo instaló vim-plug)
brew install fzf

# ripgrep (búsqueda rápida)
brew install ripgrep

# ctags (para tagbar)
brew install universal-ctags

# Linters y formatters
npm install -g eslint prettier
pip install flake8 black isort pylint
brew install gopls  # Go
rustup component add rustfmt rust-analyzer  # Rust
```

### 3. Configurar CoC para tus lenguajes

Dentro de Vim:
```vim
:CocInstall coc-json coc-tsserver coc-eslint coc-prettier coc-python coc-go coc-rust-analyzer
```

---

## Flujo de Trabajo Recomendado

1. Abrir Vim en directorio del proyecto
2. `<leader>ff` para buscar archivos rápidamente
3. `Ctrl+n` para abrir NERDTree cuando necesites navegar
4. Usa `gd` para ir a definiciones
5. `<leader>gs` para ver estado de Git
6. `F8` para ver estructura del archivo (Tagbar)

---

## Solución de Problemas

### Los iconos no se ven bien
Instala una Nerd Font y configúrala en tu terminal.

### CoC no funciona
Necesitas Node.js instalado:
```bash
brew install node
```

### Vim se siente lento
Desactiva plugins que no uses comentando las líneas en vimrc.

---

## Recursos

- **vim-plug**: https://github.com/junegunn/vim-plug
- **CoC**: https://github.com/neoclide/coc.nvim
- **Nerd Fonts**: https://www.nerdfonts.com/

¡Disfruta de tu Vim optimizado! 🚀

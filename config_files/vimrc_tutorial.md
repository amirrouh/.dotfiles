# 🔮 Modern Vim Configuration

This is a **modern, minimal, and powerful Vim setup** built for developers who want a great experience using Vim as a full-featured code editor — especially for Python and LaTeX.

---

## 🚀 Features

- 📁 File Explorer: NERDTree
- 🧠 LSP + Autocompletion: CoC with Python support
- 🎨 Beautiful Theme: Dracula
- 💡 Status Line: Lightline with icons
- 🔍 Fuzzy Finder: FZF
- 🧮 LaTeX Preview & Docker Syntax Highlighting
- 🧹 Auto-indent, code folding, tab navigation, terminal toggle
- ⌨️ Handy keybindings for fast editing

---

## 📦 Installation

### 1. Clone your `.vimrc` (or copy manually)

Place the config into your `~/.vimrc`.

### 2. Install [vim-plug](https://github.com/junegunn/vim-plug)

Already included in the `.vimrc`. On first run of Vim, it auto-installs:
```vim
:PlugInstall
```

### 3. Install Node & npm for `coc.nvim`

```bash
sudo apt install nodejs npm
```

### 4. Install CoC Python support

Inside Vim:
```vim
:CocInstall coc-pyright
```

---

## ⚙️ Key Plugins

| Plugin                     | Purpose                          |
|---------------------------|----------------------------------|
| `coc.nvim`                | Autocomplete, LSP                |
| `nerdtree`                | File browser                     |
| `lightline.vim`           | Status bar                       |
| `fzf`                     | Fuzzy file finder                |
| `vim-floaterm`            | Floating terminal in Vim         |
| `vim-commentary`          | Toggle code comments             |
| `vim-surround`            | Edit parentheses, quotes easily  |
| `multiple-cursors`        | Multicursor editing              |
| `dracula`                 | Theme                            |

---

## 🧠 Key Mappings

| Keybinding       | Action                              |
|------------------|-------------------------------------|
| `<C-o>`          | Toggle NERDTree                     |
| `<C-P>`          | FZF: Fuzzy open files               |
| `<F5>` (Python)  | Save & run Python file              |
| `<Tab>/<S-Tab>`  | Navigate autocompletion suggestions |
| `<space>`        | Toggle code fold                    |
| `gd/gi/gr/gy`    | CoC: Go to def/ref/impl/type        |
| `<Esc>` in term  | Escape terminal mode                |

---

## 🧪 Python Dev

- Save + Run Python: `<F5>`
- Code folding: use `<space>` on foldable lines
- Python LSP: uses `coc-pyright`

---

## 🎨 Theme

- Default: `dracula`
- Can change to `gruvbox` in `.vimrc` by commenting out:
  ```vim
  colorscheme dracula
  ```
  And enabling:
  ```vim
  colorscheme gruvbox
  ```

---

## ❓ Common Issues

- **Dracula not loading**: Run `:PlugInstall` then restart Vim
- **Autocompletion not showing**: Run `:CocInstall coc-pyright`
- **Missing `npm`**: Install with `sudo apt install npm`

---

## ✨ Screenshot

![screenshot](https://raw.githubusercontent.com/dracula/vim/master/assets/screenshot.png)

---

Enjoy your new **cool-as-hell Vim setup** 😎
---

## 🎮 Detailed Key‑binding Tutorial

Below is a **complete** list of custom key‑bindings defined in your `vimrc`, grouped by context.

### 📁 File & Navigation

| Mode   | Mapping  | Action                                  |
|--------|----------|-----------------------------------------|
| Normal | `<C-o>`  | Toggle **NERDTree** file explorer       |
| Normal | `<C-P>`  | **FZF**: Fuzzy‑find and open files      |
| Normal | `<space>`| Toggle code **fold** under cursor       |
| Insert | `<C-h>`  | Move cursor **Left** without leaving insert mode |
| Insert | `<C-j>`  | Move cursor **Down**                    |
| Insert | `<C-k>`  | Move cursor **Up**                      |
| Insert | `<C-l>`  | Move cursor **Right**                   |
| Terminal | `<Esc>` | Exit terminal‑insert mode *(maps to `<C-\><C-n>`)* |

### 🧠 Completion Popup

| Mode   | Mapping        | Action                         |
|--------|----------------|--------------------------------|
| Insert | `<Tab>`        | Next completion candidate      |
| Insert | `<S-Tab>`      | Previous completion candidate  |

### 🐍 Python‑specific

| Mode             | Mapping | Action                                     |
|------------------|---------|--------------------------------------------|
| Normal/Insert    | `<F5>`  | Save buffer and **run current Python file** using `python3` in a clear terminal |

### 🌐 LSP / CoC.nvim

| Mode   | Mapping | Action                            |
|--------|---------|-----------------------------------|
| Normal | `gd`    | Go to **definition**              |
| Normal | `gy`    | Go to **type definition**         |
| Normal | `gi`    | Go to **implementation**          |
| Normal | `gr`    | List **references**               |

---

### 📝 Tips for Mastery

1. **Muscle‑memory first**: Practice `gd` + `gr` in small projects to feel the LSP power.  
2. **Discover more CoC commands**: Inside Vim run `:CocList commands`.  
3. **Toggle splits quickly**: Use built‑in `Ctrl‑w` motions (`vs`, `hs`, `Ctrl‑w h/j/k/l`) with your split settings (`splitbelow`, `splitright`).  
4. **Terminal tricks**: Open a floating terminal with `:FloatermNew`, then hit `<Esc>` twice to get back to normal mode.  
5. **Fuzzy everything**: Try `:Buffers`, `:History`, `:Lines` once FZF is open to navigate like a pro.

Enjoy hacking with a keyboard‑driven workflow! 🚀

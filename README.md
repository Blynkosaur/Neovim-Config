# Neovim-Config
Neovim btw

![preview](preview.png)

## Installation

### Prerequisites
- Neovim >= 0.8.0 (recommended 0.9+)
- Git

### Setup

1. **Backup your existing Neovim configuration** (if any):
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. **Clone this repository**:
```bash
git clone https://github.com/Blynkosaur/Neovim-Config.git ~/.config/nvim
```

3. **Start Neovim**:
```bash
nvim
```

## Structure

```
.
├── init.lua                 # Main entry point
├── lua/
│   ├── core/
│   │   ├── options.lua      # Editor options and settings
│   │   └── keymaps.lua      # Key mappings
│   └── plugins/
│       └── init.lua         # Plugin configuration
└── README.md
```

## Key Features

### Editor Options
- Line numbers with relative numbering
- 2-space indentation
- Smart case-insensitive search
- Split windows open right/below
- Persistent undo
- System clipboard integration

### Key Mappings
Leader key is `<Space>`

#### General
- `<leader>w` - Save file
- `<leader>q` - Quit
- `<leader>x` - Save and quit
- `<leader>nh` - Clear search highlights

#### Window Management
- `<leader>sv` - Split vertically
- `<leader>sh` - Split horizontally
- `<leader>se` - Make splits equal size
- `<leader>sx` - Close current split
- `<C-h/j/k/l>` - Navigate between splits

#### Tab Management
- `<leader>to` - Open new tab
- `<leader>tx` - Close current tab
- `<leader>tn` - Next tab
- `<leader>tp` - Previous tab

#### Visual Mode
- `J` - Move selected lines down
- `K` - Move selected lines up

## Customization

Feel free to modify the configuration files to suit your needs:
- Edit `lua/core/options.lua` for editor settings
- Edit `lua/core/keymaps.lua` for custom key mappings
- Add plugins in `lua/plugins/init.lua`

## Adding Plugins

To add plugins, you can use a plugin manager like [lazy.nvim](https://github.com/folke/lazy.nvim). 
An example setup is commented out in `lua/plugins/init.lua`.

## License

This configuration is free to use and modify.

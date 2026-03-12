<div align="center">
  <h1>Silentium for Neovim</h1>
  <img alt="Preview" src="./preview.png" />
</div>

Pragmatic, logical, and monochrome theme for Neovim.
Our goal is to increase reading speed and reduce eye strain by highlighting
only what is necessary. Just install without `setup()` and go!

## Customize accent color

Silentium theme has a set of accent colors that fit perfectly into the palette,
just throw any color into `setup()`:

```lua
local silentium = require("silentium")
silentium.setup({ accent = silentium.accents.peach })
```

Or use your own color:

```lua
silentium.setup({ accent = "#E57AA4" })
```

## Customize other colors

```lua
silentium.setup({ dark = "#131313" })
```

Default palette:

```lua
silentium.setup({
	accent = silentium.accents.yellow,
	white = "#E6E6E6",
	light_gray = "#A6A6A6",
	gray = "#737373",
    ghost = "#404040",
	dark_gray = "#282828",
	dark = "#141414",
	diff_add = "#273C29",
	diff_change = "#4D4322",
	diff_delete = "#492523",
	diff_text = "#857131",
})
```

## Random accent color per session

Fresh accent every time you open Neovim

```lua
local silentium = require("silentium")
local accents = vim.tbl_keys(silentium.accents)
local random_accent = accents[math.random(#accents)]

silentium.setup({
  accent = silentium.accents[random_accent]
})
```

## Extras

Extra color configs for other tools can be found in
[GitHub organization](https://github.com/silentium-theme).

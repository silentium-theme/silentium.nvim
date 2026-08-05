local M = {}

--- Accent colors
M.accents = {
	red = "#E85A4F",
	coral = "#FF6B6B",
	rose = "#FF758F",
	pink = "#E57AA4",
	lavender = "#C9A0FF",
	violet = "#A998F0",
	blue = "#5B82C7",
	cyan = "#64B8B4",
	mint = "#7CE0C2",
	green = "#5FB36A",
	lime = "#9ACD5A",
	yellow = "#F6CE4E",
	peach = "#FFB07C",
	orange = "#FF8E29",
}

--- @class Silentium.Colors
M.colors = {
	accent = M.accents.yellow,
	white = "#E6E6E6",
	light_gray = "#A6A6A6",
	gray = "#737373",
	ghost = "#4D4D4D",
	dark_gray = "#282828",
	dark = "#141414",
	diff_add = "#273C29",
	diff_change = "#4D4322",
	diff_delete = "#492523",
	diff_text = "#857131",
}

--- Convenience `vim.api.nvim_set_hl()` wrapper
--- @param name string
--- @param val vim.api.keyset.highlight
local function hl(name, val)
	vim.api.nvim_set_hl(0, name, val)
end

function M.colorscheme()
	-- Only clear highlight groups if another colorscheme was already loaded.
	-- This improves startup time if the colorscheme is loaded in init.lua.
	if vim.g.colors_name then vim.cmd.highlight("clear") end
	vim.g.colors_name = "silentium"

	hl("@constant.html", { fg = M.colors.light_gray })
	hl("@tag", { fg = M.colors.accent })
	hl("@tag.attribute", { fg = M.colors.white })
	hl("@tag.builtin", { fg = M.colors.accent })
	hl("@tag.delimiter", { fg = M.colors.white })
	hl("@variable", { fg = M.colors.white })
	hl("Added", { fg = M.accents.green })
	hl("Changed", { fg = M.accents.yellow })
	hl("Character", { link = "String" })
	hl("ColorColumn", { bg = M.colors.dark_gray })
	hl("Comment", { fg = M.colors.gray })
	hl("Conceal", { fg = M.colors.ghost })
	hl("Constant", { fg = M.colors.white })
	hl("CurSearch", { bg = M.colors.accent, fg = M.colors.dark })
	hl("CursorColumn", { bg = M.colors.dark_gray })
	hl("CursorLine", { bg = M.colors.dark_gray })
	hl("Delimiter", { fg = M.colors.white })
	hl("DiagnosticDeprecated", { strikethrough = true })
	hl("DiagnosticError", { fg = M.accents.red })
	hl("DiagnosticHint", { fg = M.accents.blue })
	hl("DiagnosticInfo", { fg = M.accents.cyan })
	hl("DiagnosticOk", { fg = M.accents.green })
	hl("DiagnosticUnderlineError", { underline = true, sp = M.accents.red })
	hl("DiagnosticUnderlineHint", { underline = true, sp = M.accents.blue })
	hl("DiagnosticUnderlineInfo", { underline = true, sp = M.accents.cyan })
	hl("DiagnosticUnderlineOk", { underline = true, sp = M.accents.green })
	hl("DiagnosticUnderlineWarn", { underline = true, sp = M.accents.yellow })
	hl("DiagnosticWarn", { fg = M.accents.yellow })
	hl("DiffAdd", { bg = M.colors.diff_add })
	hl("DiffChange", { bg = M.colors.diff_change })
	hl("DiffDelete", { bg = M.colors.diff_delete })
	hl("DiffText", { bg = M.colors.diff_text })
	hl("Directory", { fg = M.colors.accent })
	hl("Error", { bg = M.accents.red })
	hl("ErrorMsg", { fg = M.accents.red })
	hl("FloatShadow", { bg = M.colors.gray, blend = 80 })
	hl("FloatShadowThrough", { bg = M.colors.gray, blend = 100 })
	hl("FloatTitle", { link = "NormalFloat" })
	hl("Folded", { bg = M.colors.dark_gray, fg = M.colors.gray })
	hl("Function", { fg = M.colors.white })
	hl("Identifier", { fg = M.colors.white })
	hl("Keyword", { fg = M.colors.accent })
	hl("LineNr", { fg = M.colors.light_gray })
	hl("LineNrBelow", { fg = M.colors.gray })
	hl("MatchParen", { bg = M.colors.dark_gray })
	hl("ModeMsg", { fg = M.colors.accent })
	hl("MoreMsg", { fg = M.colors.accent })
	hl("NonText", { fg = M.colors.ghost })
	hl("Normal", { bg = M.colors.dark, fg = M.colors.white })
	hl("NormalFloat", { bg = M.colors.dark_gray, fg = M.colors.white })
	hl("OkMsg", { fg = M.accents.green })
	hl("Operator", { fg = M.colors.white })
	hl("Pmenu", { bg = M.colors.dark_gray })
	hl("PmenuMatch", { fg = M.colors.accent })
	hl("PmenuMatchSel", { fg = M.colors.dark })
	hl("PmenuSel", { bg = M.colors.accent, fg = M.colors.dark })
	hl("PmenuThumb", { bg = M.colors.gray })
	hl("PreProc", { fg = M.colors.white })
	hl("Question", { fg = M.colors.accent })
	hl("QuickFixLine", { bg = M.colors.dark_gray })
	hl("Removed", { fg = M.accents.red })
	hl("Search", { bg = M.colors.ghost, fg = M.colors.white })
	hl("SignColumn", { fg = M.colors.light_gray })
	hl("Special", { fg = M.colors.white })
	hl("SpecialKey", { fg = M.colors.ghost })
	hl("SpellBad", { undercurl = true, sp = M.accents.red })
	hl("SpellCap", { undercurl = true, sp = M.accents.yellow })
	hl("SpellLocal", { undercurl = true, sp = M.accents.green })
	hl("SpellRare", { undercurl = true, sp = M.accents.blue })
	hl("Statement", { fg = M.colors.accent })
	hl("StatusLine", { bg = M.colors.ghost, fg = M.colors.white })
	hl("StatusLineNC", { bg = M.colors.dark_gray, fg = M.colors.white })
	hl("String", { fg = M.colors.light_gray })
	hl("TabLineSel", { fg = M.colors.white })
	hl("Title", { fg = M.colors.white })
	hl("Todo", { fg = M.colors.white })
	hl("Type", { fg = M.colors.white })
	hl("Visual", { bg = M.colors.dark_gray })
	hl("WarningMsg", { fg = M.accents.yellow })
	hl("WinBar", { bg = M.colors.ghost })
	hl("WinBarNC", { bg = M.colors.dark_gray })
	hl("WinSeparator", { fg = M.colors.gray })

	vim.g.terminal_color_0 = M.colors.dark_gray
	vim.g.terminal_color_1 = M.accents.red
	vim.g.terminal_color_2 = M.accents.green
	vim.g.terminal_color_3 = M.accents.yellow
	vim.g.terminal_color_4 = M.accents.blue
	vim.g.terminal_color_5 = M.accents.pink
	vim.g.terminal_color_6 = M.accents.cyan
	vim.g.terminal_color_7 = M.colors.white
	vim.g.terminal_color_8 = M.colors.gray
	vim.g.terminal_color_9 = "#FF6A6A"
	vim.g.terminal_color_10 = "#7AD48A"
	vim.g.terminal_color_11 = "#FFE07A"
	vim.g.terminal_color_12 = "#7FA2E6"
	vim.g.terminal_color_13 = "#F29BC1"
	vim.g.terminal_color_14 = "#7FD9D4"
	vim.g.terminal_color_15 = "#FFFFFF"
end

--- Configure colorscheme
--- @param colors? Silentium.Colors
function M.setup(colors)
	if colors ~= nil then
		M.colors = vim.tbl_extend("force", M.colors, colors)
	end
end

return M

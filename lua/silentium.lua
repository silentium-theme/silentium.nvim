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

--- @class Colors
M.colors = {
	accent = M.accents.yellow,
	white = "#E6E6E6",
	light_gray = "#A6A6A6",
	gray = "#737373",
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
	vim.o.background = "dark"
	vim.g.colors_name = "silentium"
	vim.cmd.highlight("clear")
	if vim.fn.has("syntax_on") then
		vim.cmd.syntax("reset")
	end

	hl("@constant.html", { fg = M.colors.light_gray })
	hl("@tag", { fg = M.colors.accent })
	hl("@tag.attribute", {})
	hl("@tag.builtin", { fg = M.colors.accent })
	hl("@tag.delimiter", {})
	hl("@variable", {})
	hl("Added", { fg = M.accents.green })
	hl("Changed", { fg = M.accents.yellow })
	hl("Comment", { fg = M.colors.gray })
	hl("Constant", {})
	hl("CursorColumn", { bg = M.colors.dark_gray })
	hl("CursorLine", { bg = M.colors.dark_gray })
	hl("Delimiter", {})
	hl("DiagnosticError", { fg = M.accents.red })
	hl("DiagnosticHint", { fg = M.accents.blue })
	hl("DiagnosticInfo", { fg = M.accents.cyan })
	hl("DiagnosticOk", { fg = M.accents.green })
	hl("DiagnosticWarn", { fg = M.accents.yellow })
	hl("DiffAdd", { bg = M.colors.diff_add })
	hl("DiffChange", { bg = M.colors.diff_change })
	hl("DiffDelete", { bg = M.colors.diff_delete })
	hl("DiffText", { bg = M.colors.diff_text })
	hl("Directory", { fg = M.colors.accent })
	hl("Error", { bg = M.accents.red })
	hl("ErrorMsg", { fg = M.accents.red })
	hl("Folded", { bg = M.colors.dark_gray, fg = M.colors.gray })
	hl("Function", {})
	hl("Identifier", {})
	hl("Keyword", { fg = M.colors.accent })
	hl("LineNr", { fg = M.colors.light_gray })
	hl("LineNrBelow", { fg = M.colors.gray })
	hl("MatchParen", { bg = M.colors.dark_gray })
	hl("ModeMsg", { fg = M.accents.green })
	hl("MoreMsg", { fg = M.accents.blue })
	hl("NonText", { fg = M.colors.dark_gray })
	hl("Normal", { bg = M.colors.dark, fg = M.colors.white })
	hl("NormalFloat", { bg = M.colors.dark_gray, fg = M.colors.white })
	hl("OkMsg", { fg = M.accents.green })
	hl("Operator", {})
	hl("Pmenu", { bg = M.colors.dark_gray })
	hl("PmenuMatch", { fg = M.colors.accent })
	hl("PmenuMatchSel", { fg = M.colors.dark })
	hl("PmenuSel", { bg = M.colors.accent, fg = M.colors.dark })
	hl("PmenuShadow", { bg = M.colors.gray })
	hl("PmenuThumb", { bg = M.colors.gray })
	hl("PreProc", {})
	hl("Question", { fg = M.colors.accent })
	hl("QuickFixLine", { bg = M.colors.dark_gray })
	hl("Removed", { fg = M.accents.red })
	hl("SignColumn", { fg = M.colors.light_gray })
	hl("Special", {})
	hl("SpecialKey", { fg = M.colors.dark_gray })
	hl("SpellBad", { undercurl = true, sp = M.accents.red })
	hl("SpellCap", { undercurl = true, sp = M.accents.yellow })
	hl("SpellLocal", { undercurl = true, sp = M.accents.green })
	hl("SpellRare", { undercurl = true, sp = M.accents.blue })
	hl("Statement", { fg = M.colors.accent })
	hl("StatusLine", { bg = M.colors.accent, fg = M.colors.dark })
	hl("StatusLineNC", { bg = M.colors.accent, fg = M.colors.dark })
	hl("String", { fg = M.colors.light_gray })
	hl("Title", {})
	hl("Todo", {})
	hl("Type", {})
	hl("Visual", { bg = M.colors.dark_gray })
	hl("WarningMsg", { fg = M.accents.yellow })
	hl("WinBar", { bg = M.colors.accent, fg = M.colors.dark })
	hl("WinBarNC", { bg = M.colors.accent, fg = M.colors.dark })
	hl("WinSeparator", { fg = M.colors.gray })
	-- Plugins
	hl("NeoTreeDirectoryIcon", {})
	hl("NeoTreeDirectoryName", {})
	hl("NeoTreeGitAdded", { fg = M.colors.accent })
	hl("NeoTreeGitIgnored", { fg = M.colors.gray })
	hl("NeoTreeGitModified", { fg = M.colors.accent })
	hl("NeoTreeGitUntracked", { fg = M.colors.accent })
end

--- Configure colorscheme
--- @param colors? Colors
function M.setup(colors)
	if colors ~= nil then
		M.colors = vim.tbl_extend("force", M.colors, colors)
	end
end

return M

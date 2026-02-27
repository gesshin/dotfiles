local M = {}

M.base = {
	ThemeBg = { fg = "bg" },
	ThemeFg = { fg = "fg" },
	ThemeLine = { fg = "line" },
	ThemeComment = { fg = "comment" },
	ThemeRed = { fg = "red" },
	ThemeOrange = { fg = "orange" },
	ThemeYellow = { fg = "yellow" },
	ThemeGreen = { fg = "green" },
	ThemeBlue = { fg = "blue" },
	ThemePurple = { fg = "purple" },
	ThemePink = { fg = "pink" },
}

M.blink = {
	BlinkCmpDoc = { bg = "bg" },
	BlinkCmpDocBorder = { fg = "fg" },
	BlinkCmpLabel = { fg = "fg" },
	BlinkCmpLabelDeprecated = { fg = "comment" },
	BlinkCmpLabelDetail = { fg = "fg" },
	BlinkCmpLabelMatch = { fg = "purple" },
	BlinkCmpMenu = { bg = "bg" },
	BlinkCmpMenuBorder = { fg = "fg" },
	BlinkCmpMenuSelection = { bg = "line" },
	BlinkCmpScrollBarGutter = { bg = "bg" },
	BlinkCmpScrollBarThumb = { bg = "comment" },
}

M.diagnostic = {
	DiagnosticSignError = { fg = "red" },
	DiagnosticSignHint = { fg = "blue" },
	DiagnosticSignInfo = { fg = "blue" },
	DiagnosticSignWarn = { fg = "yellow" },
	DiagnosticVirtualTextError = { fg = "red" },
	DiagnosticVirtualTextInfo = { fg = "blue" },
	DiagnosticVirtualTextHint = { fg = "blue" },
	DiagnosticVirtualTextWarn = { fg = "yellow" },
}

M.flash = {
	FlashCurrent = { fg = "bg", bg = "purple" },
	FlashLabel = { fg = "bg", bg = "yellow" },
	FlashMatch = { fg = "bg", bg = "purple" },
	IncSearch = { fg = "bg", bg = "purple" },
	Search = { fg = "bg", bg = "purple" },
}

M.float = {
	FloatBorder = { fg = "fg" },
	NormalFloat = { bg = "bg" },
}

M.git = {
	GitSignsAdd = { fg = "green" },
	GitSignsChange = { fg = "yellow" },
	GitSignsDelete = { fg = "red" },
	GitSignsStagedAdd = { fg = "bg_green" },
	GitSignsStagedChange = { fg = "bg_yellow" },
	GitSignsStagedDelete = { fg = "bg_red" },
}

M.noice = {
	NoiceVirtualText = { fg = "comment" },
}

M.snacks = {
	SnacksDashboardDesc = { fg = "fg" },
	SnacksDashboardFooter = { fg = "fg" },
	SnacksDashboardHeader = { fg = "fg" },
	SnacksDashboardIcon = { fg = "fg" },
	SnacksDashboardKey = { fg = "red" },
	SnacksDashboardTitle = { fg = "red" },
	SnacksIndentScope = { fg = "fg" },
	SnacksPickerGitStatusStaged = { fg = "green" },
	SnacksPickerGitStatusModified = { fg = "yellow" },
	SnacksPickerGitStatusUntracked = { fg = "comment" },
	SnacksPickerListCursorLine = { bg = "line" },
	SnacksPickerMatch = { fg = "purple" },
}

M.which_key = {
	WhichKey = { fg = "purple" },
	WhichKeyBorder = { fg = "comment" },
	WhichKeyDesc = { fg = "fg" },
	WhichKeyGroup = { fg = "fg" },
	WhichKeyIcon = { fg = "purple" },
	WhichKeyNormal = { fg = "fg" },
	WhichKeySeparator = { fg = "comment" },
	WhichKeyTitle = { fg = "purple" },
}

return M

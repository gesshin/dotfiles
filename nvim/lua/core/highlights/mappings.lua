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
	BlinkCmpMenu = { bg = "bg" },
	BlinkCmpMenuSelection = { bg = "line" },
	BlinkCmpMenuBorder = { fg = "fg" },
	BlinkCmpDoc = { bg = "bg" },
	BlinkCmpDocBorder = { fg = "fg" },
	BlinkCmpLabel = { fg = "fg" },
	BlinkCmpLabelDetail = { bg = "bg" },
	BlinkCmpLabelMatch = { fg = "purple" },
	BlinkCmpLabelDeprecated = { fg = "comment" },
	BlinkCmpScrollBarThumb = { bg = "comment" },
}

M.diagnostic = {
	DiagnosticSignError = { fg = "red" },
	DiagnosticSignWarn = { fg = "yellow" },
	DiagnosticSignInfo = { fg = "blue" },
	DiagnosticSignHint = { fg = "blue" },
	DiagnosticVirtualTextError = { fg = "red" },
	DiagnosticVirtualTextWarn = { fg = "yellow" },
	DiagnosticVirtualTextInfo = { fg = "blue" },
	DiagnosticVirtualTextHint = { fg = "blue" },
}

M.flash = {
	Search = { fg = "bg", bg = "purple" },
	IncSearch = { fg = "bg", bg = "red" },
	CurSearch = { fg = "bg", bg = "red" },
	FlashCurrent = { fg = "bg", bg = "purple" },
	FlashMatch = { fg = "bg", bg = "purple" },
	FlashLabel = { fg = "bg", bg = "yellow" },
}

M.float = {
	NormalFloat = { bg = "bg" },
	FloatTitle = { fg = "orange", bg = "bg" },
	FloatBorder = { fg = "fg" },
}

M.git = {
	GitConflictCurrent = { bg = "bg_blue" },
	GitConflictIncoming = { bg = "bg_green" },
	GitConflictCurrentLabel = { bg = "bg_blue" },
	GitConflictIncomingLabel = { bg = "bg_green" },
	GitSignsAdd = { fg = "green" },
	GitSignsChange = { fg = "yellow" },
	GitSignsDelete = { fg = "red" },
	GitSignsStagedAdd = { fg = "bg_green" },
	GitSignsStagedChange = { fg = "bg_yellow" },
	GitSignsStagedDelete = { fg = "bg_red" },
}

M.noice = {
	NoiceCmdlineIconCmdline = { fg = "blue" },
	NoiceCmdlineIconSearch = { fg = "orange" },
	NoiceCmdlinePopupTitleCmdline = { fg = "blue" },
	NoiceCmdlinePopupBorderCmdline = { fg = "blue" },
	NoiceConfirmTitle = { fg = "orange" },
	NoiceConfirmBorder = { fg = "orange" },
	NoiceVirtualText = { fg = "comment" },
}

M.snacks = {
	SnacksDashboardHeader = { fg = "fg" },
	SnacksDashboardTitle = { fg = "red" },
	SnacksDashboardIcon = { fg = "fg" },
	SnacksDashboardDesc = { fg = "fg" },
	SnacksDashboardKey = { fg = "red" },
	SnacksIndentScope = { fg = "fg" },
	SnacksInputIcon = { fg = "blue" },
	SnacksInputTitle = { fg = "blue" },
	SnacksInputBorder = { fg = "blue" },
	SnacksPickerListCursorLine = { bg = "line" },
	SnacksPickerMatch = { fg = "purple" },
	SnacksPickerGitStatusStaged = { fg = "green" },
	SnacksPickerGitStatusModified = { fg = "yellow" },
	SnacksPickerGitStatusUntracked = { fg = "comment" },
}

M.which_key = {
	WhichKeyTitle = { fg = "purple" },
	WhichKeyBorder = { fg = "comment" },
	WhichKey = { fg = "purple" },
	WhichKeySeparator = { fg = "comment" },
	WhichKeyDesc = { fg = "fg" },
	WhichKeyGroup = { fg = "fg" },
}

return M

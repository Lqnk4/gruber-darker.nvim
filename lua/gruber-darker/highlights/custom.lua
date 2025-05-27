local Highlight = require("gruber-darker.highlight")
local c = require("gruber-darker.palette")
local opts = require("gruber-darker.config").get_opts()
local gruber_hl = require("gruber-darker.highlights.colorscheme").highlights

---@type HighlightsProvider
local M = {
	highlights = {},
}

---Set standard Vim highlights
function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end



M.highlights.rustUnsafeKeyword = Highlight.new("rustUnsafeKeyword", { fg = c.red, })




return M

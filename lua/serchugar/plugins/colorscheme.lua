return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("onedark").setup{
            style = "darker",
            transparent = true,
            lualine = {
                transparent = true,
            },
            colors = {
                -- My custom colors
                electricBlue = "#00e8d5",
                dimElectricBlue = "#009f92",
                grey = "#888888",
                red = "#da6363",

                -- From nvchad base46
                white = "#abb2bf",
                darker_black = "#1b1f27",
                black = "#1e222a", --  nvim bg
                black2 = "#252931",
                one_bg = "#282c34", -- real bg of onedark
                one_bg2 = "#353b45",
                one_bg3 = "#373b43",
                grey_fg = "#565c64",
                grey_fg2 = "#6f737b",
                light_grey = "#6f737b",
                baby_pink = "#DE8C92",
                pink = "#ff75a0",
                line = "#31353d", -- for lines like vertsplit
                green = "#98c379",
                vibrant_green = "#7eca9c",
                nord_blue = "#81A1C1",
                blue = "#61afef",
                yellow = "#e7c787",
                sun = "#EBCB8B",
                purple = "#de98fd",
                dark_purple = "#c882e7",
                teal = "#519ABA",
                orange = "#fca2aa",
                cyan = "#a3b8ef",
                statusline_bg = "#22262e",
                lightbg = "#2d3139",
                pmenu_bg = "#61afef",
                folder_bg = "#61afef",

                -- From nvchad base46
                base00 = "#1e222a", --$black
                base01 = "#353b45", --$one_bg
                base02 = "#3e4451", --dark blueish grey
                base03 = "#545862", --dark blueish grey a bit more light
                base04 = "#565c64", --$grey_fg
                base05 = "#abb2bf", --$white
                base06 = "#b6bdca", --A bit more light blueish grey
                base07 = "#c8ccd4", --More light bluesish grey
                base08 = "#da6363", --$red
                base09 = "#d19a66", --Desatured orange
                base0A = "#e5c07b", --Desatured yellowish orange
                base0B = "#98c379", --$green
                base0C = "#56b6c2", --Desatured electric blue
                base0D = "#61afef", --$blue
                base0E = "#c678dd", --Purple
                base0F = "#be5046", --Terracota
            },
            highlights = {
                -- My custom highlights
                LineNr = { fg = "$electricBlue" },
                LineNrAbove = { fg = "$dimElectricBlue" },
                LineNrBelow = { fg = "$dimElectricBlue" },
                NormalFloat = { bg = "none" }, -- was $darker_black
                FloatTitle = { fg = "$white", bg = "none" }, --{ fg = "$white", bg = "$grey" },
                FloatBorder = { fg = "$blue", bg = "none" },  --{ fg = "$blue" },
                ["@boolean"] = { fg = "$base09" },

                -- From nvchad base46
                Added = { fg = "$green" },
                Removed = { fg = "$red" },
                Changed = { fg = "$yellow" },
                MatchWord = { bg = "$grey", fg = "$white" },
                Pmenu = { bg = "$one_bg" },
                PmenuSbar = { bg = "$one_bg" },
                PmenuSel = { bg = "$pmenu_bg", fg = "$black" },
                PmenuThumb = { bg = "$grey" },
                MatchParen = { link = "MatchWord" },
                Comment = { fg = "$light_grey" },
                CursorLineNr = { fg = "$white" },
                NvimInternalError = { fg = "$red" },
                WinSeparator = { fg = "$line" },
                Normal = { fg = "$base05", bg = "none" }, -- bg was: base00
                DevIconDefault = { fg = "$red" },
                Debug = { fg = "$red" },
                Directory = { fg = "$base0D" },
                Error = { fg = "$base00", bg = "$red" },
                ErrorMsg = { fg = "$red", bg = "$base00" },
                Exception = { fg = "$red" },
                FoldColumn = { bg = "none" },
                Folded = { fg = "$light_grey", bg = "$black2" },
                IncSearch = { fg = "$base01", bg = "$base09" },
                Macro = { fg = "$red" },
                ModeMsg = { fg = "$base0B" },
                MoreMsg = { fg = "$base0B" },
                Question = { fg = "$base0D" },
                Search = { fg = "$base01", bg = "$base0A" },
                Substitute = { fg = "$base01", bg = "$base0A" },
                SpecialKey = { fg = "$base03" },
                TooLong = { fg = "$red" },
                Visual = { bg = "$base02" },
                VisualNOS = { fg = "$red" },
                WarningMsg = { fg = "$red" },
                WildMenu = { fg = "$red", bg = "$base0A" },
                Title = { fg = "$base0D" },
                Conceal = { bg = "NONE" },
                Cursor = { fg = "$base00", bg = "$base05" },
                NonText = { fg = "$base03" },
                SignColumn = { fg = "$base03" },
                ColorColumn = { bg = "$black2" },
                CursorColumn = { bg = "$base01" },
                CursorLine = { bg = "$black2" },
                QuickFixLine = { bg = "$base01" },
                healthSuccess = { bg = "$green", fg = "$black" },
                WinBar = { bg = "NONE" },
                WinBarNC = { bg = "NONE" },

                -- All of these highlight groups below should be done in treesiter.lua
                -- From nvchad base46
                ["@variable"] = { fg = "$base05" },
                ["@variable.builtin"] = { fg = "$base09" },
                ["@variable.parameter"] = { fg = "$red" },
                ["@variable.member"] = { fg = "$red" },
                ["@variable.member.key"] = { fg = "$red" },

                ["@module"] = { fg = "$red" },
                ["@module.builtin"] = { fg = "$red" },

                ["@constant"] = { fg = "$base09" },
                ["@constant.builtin"] = { fg = "$base09" },
                ["@constant.macro"] = { fg = "$red" },

                ["@string"] = { fg = "$base0B" },
                ["@string.regex"] = { fg = "$base0C" },
                ["@string.escape"] = { fg = "$base0C" },
                ["@character"] = { fg = "$red" },
                ["@character.special"] = { fg = "$red" },
                ["@number"] = { fg = "$base09" },
                ["@number.float"] = { fg = "$base09" },

                ["@annotation"] = { fg = "$base0F" },
                ["@attribute"] = { fg = "$base0A" },
                ["@error"] = { fg = "$red" },

                ["@keyword.exception"] = { fg = "$red" },
                ["@keyword"] = { fg = "$base0E" },
                ["@keyword.function"] = { fg = "$base0E" },
                ["@keyword.return"] = { fg = "$base0E" },
                ["@keyword.operator"] = { fg = "$base0E" },
                ["@keyword.import"] = { link = "Include" },
                ["@keyword.conditional"] = { fg = "$base0E" },
                ["@keyword.conditional.ternary"] = { fg = "$base0E" },
                ["@keyword.repeat"] = { fg = "$base0A" },
                ["@keyword.storage"] = { fg = "$base0A" },
                ["@keyword.directive.define"] = { fg = "$base0E" },
                ["@keyword.directive"] = { fg = "$base0A" },

                ["@function"] = { fg = "$base0D" },
                ["@function.builtin"] = { fg = "$base0D" },
                ["@function.macro"] = { fg = "$red" },
                ["@function.call"] = { fg = "$base0D" },
                ["@function.method"] = { fg = "$base0D" },
                ["@function.method.call"] = { fg = "$base0D" },
                ["@constructor"] = { fg = "$base0C" },

                ["@operator"] = { fg = "$base05" },
                ["@reference"] = { fg = "$base05" },
                ["@punctuation.bracket"] = { fg = "$base0F" },
                ["@punctuation.delimiter"] = { fg = "$base0F" },
                ["@symbol"] = { fg = "$base0B" },
                ["@tag"] = { fg = "$base0A" },
                ["@tag.attribute"] = { fg = "$red" },
                ["@tag.delimiter"] = { fg = "$base0F" },
                ["@text"] = { fg = "$base05" },
                ["@text.emphasis"] = { fg = "$base09" },
                ["@text.strike"] = { fg = "$base0F", strikethrough = true },
                ["@type.builtin"] = { fg = "$base0A" },
                ["@definition"] = { sp = "$base04", underline = true },

                ["@property"] = { fg = "$red" },

                -- markup
                ["@markup.heading"] = { fg = "$base0D" },
                ["@markup.raw"] = { fg = "$base09" },
                ["@markup.link"] = { fg = "$red" },
                ["@markup.link.url"] = { fg = "$base09", underline = true },
                ["@markup.link.label"] = { fg = "$base0C" },
                ["@markup.list"] = { fg = "$red" },
                ["@markup.strong"] = { bold = true },
                ["@markup.underline"] = { underline = true },
                ["@markup.italic"] = { italic = true },
                ["@markup.strikethrough"] = { strikethrough = true },
                ["@markup.quote"] = { bg = "$black2" },

                ["@comment"] = { fg = "$grey_fg" },
                ["@comment.todo"] = { fg = "$grey", bg = "$white" },
                ["@comment.warning"] = { fg = "$black2", bg = "$base09" },
                ["@comment.note"] = { fg = "$black", bg = "$blue" },
                ["@comment.danger"] = { fg = "$black2", bg = "$red" },

                ["@diff.plus"] = { fg = "$green" },
                ["@diff.minus"] = { fg = "$red" },
                ["@diff.delta"] = { fg = "$light_grey" },
            },
        }
        vim.cmd([[silent! colorscheme onedark]])
    end,
}

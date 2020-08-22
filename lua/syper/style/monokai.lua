local TOKEN = Syper.TOKEN

return {
	background =            {r = 39,  g = 40,  b = 34,  a = 255},
	highlight =             {r = 73,  g = 72,  b = 62,  a = 255},
	linenumber_background = {r = 12,  g = 13,  b = 11,  a = 255},
	linenumber =            {r = 248, g = 248, b = 242, a = 255},
	
	[TOKEN.Identifier]       = {f = {r = 248, g = 248, b = 242, a = 255}},
	[TOKEN.Other]            = {f = {r = 248, g = 248, b = 242, a = 255}},
	[TOKEN.Whitespace]       = {f = {r = 248, g = 248, b = 242, a = 255}},
	[TOKEN.Punctuation]      = {f = {r = 248, g = 248, b = 242, a = 255}},
	[TOKEN.Error]            = {f = {r = 150, g = 0,   b = 80,  a = 255}, b = {r = 30, g = 0, b = 16, a = 255}},
	[TOKEN.Comment]          = {f = {r = 117, g = 113, b = 94,  a = 255}},
	[TOKEN.Keyword]          = {f = {r = 249, g = 38,  b = 114, a = 255}},
	[TOKEN.Keyword_Modifier] = {f = {r = 102, g = 217, b = 239, a = 255}, i = true},
	[TOKEN.Keyword_Constant] = {f = {r = 174, g = 129, b = 255, a = 255}},
	[TOKEN.Operator]         = {f = {r = 249, g = 38,  b = 114, a = 255}},
	[TOKEN.Number]           = {f = {r = 174, g = 129, b = 255, a = 255}},
	[TOKEN.String]           = {f = {r = 230, g = 219, b = 116, a = 255}},
	[TOKEN.String_Escape]    = {f = {r = 174, g = 129, b = 255, a = 255}},
	[TOKEN.Callable]         = {f = {r = 102, g = 217, b = 239, a = 255}},
	[TOKEN.Function]         = {f = {r = 166, g = 226, b = 46,  a = 255}},
	[TOKEN.Argument]         = {f = {r = 255, g = 151, b = 31,  a = 255}},
}

local TOKEN = Syper.TOKEN

return {
	name = "JSON",
	ext = {"json"},
	
	main = {
		-- whitespace
		{"(\n)", TOKEN.Whitespace},
		{"([^%S\n]+)", TOKEN.Whitespace},
		
		-- string
		{"(\")", TOKEN.String, "string"},
		
		-- comment
		{"(%/%/[^\n]*)", TOKEN.Comment},
		
		-- number
		{"(%-?%d*%.%d*[%deE]%-?%d+)", TOKEN.Number},
		{"(%-?%d+[%deE]%-?%d+)", TOKEN.Number},
		{"(%-?%d+%.?%d*)", TOKEN.Number},
		{"(%-?%.%d+)", TOKEN.Error},
		
		-- keyword
		{"(%a+)", TOKEN.Keyword_Constant, list = {"true", "false", "null"}},
		
		-- other
		{"([%[%]{},:])", TOKEN.Punctuation},
		{"(.)", TOKEN.Error},
	},
	
	string = {
		{"(\\[\"\\/bfnrt])", TOKEN.String_Escape},
		{"(\\u%x%x%x%x)", TOKEN.String_Escape},
		{"(\")", TOKEN.String, "main"},
		{"(\n)", TOKEN.Error, "main"},
		{"([^\"\\\n]+)", TOKEN.String},
		{"(\\.?)", TOKEN.Error},
	},
}
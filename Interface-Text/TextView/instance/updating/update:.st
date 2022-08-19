update: aSymbol
	| text |
	aSymbol == partMsg
		ifTrue:
			[text _ self getText.
			self controller text ~= text
				ifTrue:
					[self newText: text.
					self displayView]]

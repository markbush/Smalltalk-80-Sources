printSingleComment: aString on: aStream indent: indent
	"Print the comment string, assuming it has been indented indent tabs.
	Break the string at word breaks, given the widths in the default font, at
	 450 points."

	| readStream word position lineBreak lastChar font wordWidth tabWidth spaceWidth |
	readStream _ ReadStream on: aString.
	font _ TextStyle default defaultFont.
	tabWidth _ TextConstants at: #DefaultTab.
	spaceWidth _ font widthOf: Character space.
	position _ indent * tabWidth.
	lineBreak _ 450.
	[readStream atEnd]
		whileFalse:
			[word _ self nextWordFrom: readStream setCharacter: [:lastChar | lastChar].
			wordWidth _ 0.
			word do: [:char | wordWidth _ wordWidth + (font widthOf: char)].
			position _ position + wordWidth.
			position > lineBreak
				ifTrue:
					[aStream crtab: indent.
					position _ indent * tabWidth + wordWidth + spaceWidth.
					lastChar = Character cr
						ifTrue: [[readStream peekFor: Character tab] whileTrue].
					aStream nextPutAll: word; space]
				ifFalse:
					[aStream nextPutAll: word.
					readStream atEnd
						ifFalse:
							[position _ position + spaceWidth.
							aStream space].
					lastChar = Character cr
						ifTrue:
							[aStream crtab: indent.
							position _ indent * tabWidth.
							[readStream peekFor: Character tab] whileTrue]]]

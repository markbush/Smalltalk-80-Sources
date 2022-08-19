crossedX
	"There is a word that has fallen across the right edge of the composition rectangle.  This signals the need for wrapping which is done to the last space that was encountered, as recorded by the space stop condition."
	line stop: spaceIndex.
	spaceCount > 1
		ifTrue:	["The common case. First back off the space at which we wrap."
				spaceCount _ spaceCount - 1.
				spaceIndex _ spaceIndex - 1.
				["Check to see if any spaces preceding the one at which we wrap.
					Double space after a period, most likely."
				(spaceCount > 1 and: [(text at: spaceIndex) = Space])]
					whileTrue:
						[spaceCount _ spaceCount - 1.
						spaceIndex _ spaceIndex - 1.
						"Account for backing over a run which might
							change width of space."
						font _ self resetFont.
						spaceX _ spaceX - (font widthOf: Space)].
						line paddingWidth: rightMargin - spaceX.
						line internalSpaces: spaceCount]
		ifFalse:	[spaceCount = 1
					ifTrue:	["wrap at space, but no internal spaces"
							line internalSpaces: 0.
							line paddingWidth: rightMargin - spaceX]
					ifFalse:	["Neither internal nor trailing spaces, almost never happen,
								she says confidently."
							lastIndex _ lastIndex - 1.
							[destX <= rightMargin]
							whileFalse:
								[destX _ destX - (font widthOf:
													(text at: lastIndex)).
										"bug --doesn't account for backing over
										 run and changing actual width of
										characters. Also doesn't account for
										backing over a tab.  Happens only
										when no spaces in line, presumably rare."
								lastIndex _ lastIndex - 1].
							spaceX _ destX.
							line paddingWidth: rightMargin - destX.
							lastIndex < line first
								ifTrue:	[line stop: line first]
								ifFalse:	[line stop: lastIndex]]].
	^true

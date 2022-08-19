characterNotInFont
	"All fonts have an illegal character to be used when a character is not within the font's legal range.  When characters out of ranged are encountered in scanning text, then this special character indicates the appropriate behavior.  The character is usually treated as a unary message understood by a subclass of CharacterScanner."

	| illegalAsciiString saveIndex stopCondition |
	saveIndex _ lastIndex.
	illegalAsciiString _ String with: (font maxAscii + 1) asCharacter.
	(self isMemberOf: CompositionScanner) not
	ifTrue: [
	stopCondition _
					self scanCharactersFrom: 1
						to: 1
						in: illegalAsciiString
						rightX: rightMargin
						stopConditions: stopConditions
						displaying: self doesDisplaying]
	ifFalse:	[
	stopCondition _
		self scanCharactersFrom: 1 to: 1
			in: illegalAsciiString
			rightX: rightMargin stopConditions: stopConditions
			displaying: self doesDisplaying].
	lastIndex _ saveIndex + 1.
	stopCondition ~= (stopConditions at: EndOfRun)
		ifTrue:	[^self perform: stopCondition]
		ifFalse: [lastIndex = runStopIndex
					ifTrue:	[^self perform: (stopConditions at: EndOfRun)].
				^false]

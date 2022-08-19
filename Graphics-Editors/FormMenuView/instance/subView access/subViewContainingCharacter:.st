subViewContainingCharacter: aCharacter
	"Answer the receiver's subView that corresponds to the key, aCharacter.
	Answer nil if no subView is selected by aCharacter."

	self subViews reverseDo:
		[:aSubView |
		(aSubView containsKey: aCharacter) ifTrue: [^aSubView]].
	^nil

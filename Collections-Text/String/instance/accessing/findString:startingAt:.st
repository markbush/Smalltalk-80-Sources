findString: subString startingAt: start
	"Answer the index of subString within the receiver, starting at start. If the receiver does not contain subString, answer 0."

	| aCharacter index |
	subString isEmpty ifTrue: [^0].
	aCharacter _ subString first.
	start to: self size - subString size + 1 do:
		[:startIndex |
		(self at: startIndex) = aCharacter ifTrue:
			[index _ 1.
			[(self at: startIndex+index-1) = (subString at: index)] whileTrue:
				[index = subString size ifTrue: [^startIndex].
				index _ index+1]]].
	^0

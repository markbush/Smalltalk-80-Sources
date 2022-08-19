copyBits
	"Perform the movement of bits from one From to another described by the instance variables of the receiver.  Fail if any instance variables are not of the right type (Integer or Form) or if combinationRule is not between 0 and 15 inclusive.  Set the variables and try again (BitBlt|copyBitsAgain).  Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 96>
	combinationRule = Form paint
		ifTrue: [^self paintBits]
		ifFalse:
			[destX _ destX truncated.
			destY _ destY truncated.
			width _ width truncated.
			height _ height truncated.
			sourceX _ sourceX truncated.
			sourceY _ sourceY truncated.
			clipX _ clipX truncated.
			clipY _ clipY truncated.
			clipWidth _ clipWidth truncated.
			clipHeight _ clipHeight truncated.
			^self copyBitsAgain]

< aTime
	"Answer whether aTime is earlier than the receiver."

	hours ~= aTime hours ifTrue: [^hours < aTime hours].
	minutes ~= aTime minutes ifTrue: [^minutes < aTime minutes].
	^seconds < aTime seconds

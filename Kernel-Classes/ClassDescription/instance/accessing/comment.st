comment
	"Answer the receiver's comment."

	| aString |
	aString _ self organization classComment.
	aString size = 0 ifTrue: [^''].
	"get string only of classComment, undoubling quotes"
	^ String readFromString: aString

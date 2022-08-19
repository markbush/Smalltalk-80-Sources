parseMethodComment: aString setPattern: aBlock
	"Answer with the method comment for this string"

	self
		initPattern: aString
		notifying: nil
		return: aBlock.
	currentComment == nil
		ifTrue: [^OrderedCollection new]
		ifFalse: [^currentComment]

isKeyword
	"Answer whether the receiver is a message keyword, i.e., ends with colon."

	self size <= 1 ifTrue: [^false].
	^(self at: self size) = $:

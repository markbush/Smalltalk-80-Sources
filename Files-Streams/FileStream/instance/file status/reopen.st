reopen
	"Set the receiver's file to be open again, setting the position to its previous position.
	Create an error if the file can not be reopened."

	| pos |
	closed ifFalse: [^nil].
	"reopen to previous position"
	pos _ position.
	(self read: page pageNumber) isNil
		ifTrue:
			["that page doesn't exist, so go to last one that does.
			note that setToEnd would be recursive"
			(self read: self file size) isNil
				ifTrue: [^self error: 'cannot reopen or setToEnd'].
			position _ readLimit]
		ifFalse: [position _ pos min: readLimit]

comment: aString
	"Set the receiver's comment to be the argument, aString."

	| aStream |
	aString size = 0
		ifTrue:
			[self organization classComment: aString]
		ifFalse:
			["double internal quotes of the comment string"
			aStream _ WriteStream on: (String new: aString size).
			aStream nextPutAll: self name , ' comment:'; cr.
			aString storeOn: aStream.
			self organization classComment: aStream contents.
	Smalltalk changes commentClass: self]

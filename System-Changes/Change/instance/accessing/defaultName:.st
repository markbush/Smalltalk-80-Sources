defaultName: initialString
	"The default name is the first few characters of the text."
	| text cr |
	text _ WriteStream on: (String new: 50).
	text nextPutAll: initialString.
	cr _ Character cr.
	self text do:
		[:char |
		(char = cr or: [text position >= 40]) ifTrue: [text nextPutAll: ' ...'.  ^text contents].
		text nextPut: char].
	^text contents

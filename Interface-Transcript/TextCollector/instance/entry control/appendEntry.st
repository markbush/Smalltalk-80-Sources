appendEntry
	"Append the text contents of the receiver's WriteStream to its text."
	contents _ contents , self nextEntry asText.
	contents size > self characterLimit
		ifTrue: [contents _
					contents
						copyFrom: contents size - (self characterLimit // 2)
						to: contents size].
	self beginEntry

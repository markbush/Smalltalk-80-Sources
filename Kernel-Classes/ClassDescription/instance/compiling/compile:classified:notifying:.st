compile: code classified: heading notifying: requestor
	"Compile the argument, code, as source code in the context of the receiver and
	install the result in the receiver's method dictionary under the classification
	indicated by the second argument, heading  The third argument,
	requestor, is to be notified if an error occurs. The argument code is either a string or
	an object that converts to a string or a PositionableStream on an object that converts
	to a string."

	| selector |
	selector _
		self compile: code
			notifying: requestor
			trailer: #(0 0 0 )
			ifFail: [^nil].
	(methodDict at: selector)
		putSource: code asString
		class: self
		category: heading
		inFile: 2.
	self organization classify: selector under: heading.
	^selector

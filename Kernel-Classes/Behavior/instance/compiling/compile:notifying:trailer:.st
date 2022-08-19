compile: code notifying: requestor trailer: bytes
	"Compile  the argument, code, as source code in the context of the
	receiver.  Use the default fail code [^nil].  Does not save source code.
	The second argument, requestor, is to be notified if an error occurs. The
	argument code is either a string or an object that converts to a string or a
	PositionableStream on an object that converts to a string. The third argument,
	bytes, is a trailer, that is, an array of three bytes that should be added to the end
	of the compiled method. These point to the location of the source code (on a file)."

	^self compile: code notifying: requestor trailer: bytes ifFail: [^nil]

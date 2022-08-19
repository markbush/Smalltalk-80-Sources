sendMessage
	"The receiver consists of a selector and possibly of arguments that should be
	used to create a message to send to the receiver's model."
	arguments size = 0
		ifTrue: [model perform: selector]
		ifFalse: [model perform: selector withArguments: arguments]

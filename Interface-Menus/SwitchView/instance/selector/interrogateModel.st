interrogateModel
	"Answer the result of sending the receiver's model the message
	created from the receiver's selector and arguments."
	arguments size = 0
		ifTrue: [^model perform: selector]
		ifFalse: [^model perform: selector withArguments: arguments]

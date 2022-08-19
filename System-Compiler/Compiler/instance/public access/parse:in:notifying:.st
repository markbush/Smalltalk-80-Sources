parse: textOrStream in: aClass notifying: req
	"Compile the incoming text and answer with the resulting parse tree."
	self from: textOrStream class: aClass context: nil notifying: req.
	^self translate: sourceStream noPattern: false ifFail: []

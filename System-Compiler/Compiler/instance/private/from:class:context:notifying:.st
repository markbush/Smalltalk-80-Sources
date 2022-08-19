from: textOrStream class: aClass context: aContext notifying: req
	(textOrStream isKindOf: PositionableStream)
		ifTrue: [sourceStream _ textOrStream]
		ifFalse: [sourceStream _ ReadStream on: textOrStream asString].
	class _ aClass.
	context _ aContext.
	requestor _ req

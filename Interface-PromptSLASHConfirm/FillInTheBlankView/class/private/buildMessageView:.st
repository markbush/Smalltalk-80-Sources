buildMessageView: messageString
	|  messageView  |
	messageView _ DisplayTextView new model: messageString asDisplayText.
	messageView borderWidthLeft: 2 right: 2 top: 2 bottom: 0.
	messageView insideColor: Form white.
	messageView controller: NoController new.
	messageView window: (0@0 extent: (messageView window extent max: 200@30)).
	messageView centered.
	^messageView

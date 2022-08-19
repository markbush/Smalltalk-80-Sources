accept
	(self textHasChanged and: [model changeRequestFrom: view])
		ifFalse: [^view flash].
	self controlTerminate.
	(view accept: self text from: self)
		ifTrue: [super accept]
		ifFalse: [view flash].
	self controlInitialize

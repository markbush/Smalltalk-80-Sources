accept
	(model changeRequestFrom: view)
		ifFalse: [^view flash].
	self controlTerminate.
	(view accept: self text from: self)
		ifTrue: [initialText _ paragraph text copy]
		ifFalse: [view flash].
	self controlInitialize

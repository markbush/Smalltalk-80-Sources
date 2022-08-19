writeSpecial1
	| obj |
	specialObjects _
		 "1:" (Array with: nil with: false with: true with: (Smalltalk associationAt: #Processor))
		, "5:" (Array with: Symbol table with: SmallInteger with: String with: Array)
		, "9:" (Array with: (Smalltalk associationAt: #Smalltalk) with: Float
					with: MethodContext with: BlockContext)
		, "13:" (Array with: Point with: LargePositiveInteger with: DisplayBitmap with: Message)
		, "17:" (Array with: CompiledMethod with: #unusedOop18 with: Semaphore with: Character)
		, "21:" (Array with: #doesNotUnderstand: with: #cannotReturn:
					with: #monitor: with: Smalltalk specialSelectors)
		, "25:" (Array with: Character characterTable with: #mustBeBoolean).
	specialObjects size = 26 ifFalse: [self error: 'try again!'].
	specialObjects do:  "create OT entries"
		[:obj |
		self new: obj
			class: obj class
			length: (self sizeInWordsOf: obj)
			trace: nil
			write: [].
		refcts at: (self oopOf: obj) put: OVref "jam refcts of special objects"].
	self trace: #Smalltalk; trace: #Processor "need to get mapped now"

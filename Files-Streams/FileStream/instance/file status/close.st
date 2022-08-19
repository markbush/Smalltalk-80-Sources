close
	"Set the receiver's file status to closed."

	closed
		ifFalse:
			[self writing
				ifTrue: [(rwmode bitAnd: Shorten) = Shorten
							ifTrue: [self shorten]
							ifFalse: [self flush]].
			closed _ true.
			readLimit _ writeLimit _ 0.
			self file close.
			FileDirectory removeExternalReference: self]

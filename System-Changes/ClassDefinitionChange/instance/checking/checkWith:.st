checkWith: aChecker
	| class |
	aChecker changesAt: className add: self.
	aChecker checkSystem ifTrue:
		[class _ Smalltalk at: className ifAbsent: [^self].
		self text = class definition ifFalse:
			[aChecker changesAt: className add: (self class new className: className)]]

checkWith: aChecker
	aChecker changesAt: className add: self.
	type == 'inst vars for' asSymbol ifFalse: [aChecker addDoIt: self]

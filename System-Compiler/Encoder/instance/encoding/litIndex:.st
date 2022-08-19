litIndex: literal
	| p |
	p _ literalStream position.
	p = 64 ifTrue:
		[self notify: 'More than 64 literals referenced.  You must split or otherwise simplify this method'. ^nil].
	literalStream nextPut: literal.
	^p

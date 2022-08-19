sourceFileAndPosition: aBlock
	"Get the source code for this method from information currently in the system."
	| class method fileIndex pos |
	(class _ self classObject) isNil ifTrue: [^nil].
	(class includesSelector: selector) ifFalse: [^nil].
	method _ class compiledMethodAt: selector.
	SourceFiles isNil ifTrue: [^nil].
	(fileIndex _ method fileIndex) > SourceFiles size ifTrue: [^nil].
	"The following code should be in CompiledMethod ..."
	pos _ (method at: method size) bitAnd: 63.
	pos _ pos * 256 + (method at: method size - 1).
	pos _ pos * 256 + (method at: method size - 2).
	pos = 0 ifTrue: [^nil].
	^aBlock value: (SourceFiles at: method fileIndex) value: pos

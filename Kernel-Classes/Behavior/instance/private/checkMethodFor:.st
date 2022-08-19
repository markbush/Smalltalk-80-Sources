checkMethodFor: selector
	"copy method from superclass if necessary.  Answer true if no conflict detected"
	| descr unmoved copyOK local copied conflict |
	local _ methodDict includesKey: selector.
	copied _ (SelectorsOfCopiedMethods at: selector ifAbsent: [Array new]) includes: self.
	conflict _ (SelectorsOfConflictMethods at: selector ifAbsent: [Array new]) includes: self.
	local & copied not & conflict not
		ifTrue: [^true].
	descr _ self superMethodDescriptionAt: selector.
	descr isMethodNotImplemented
		ifTrue: [self removeSelectorUnchecked: selector.  ^true].
	descr isConflictingMethods
		ifTrue: [self compileConflictCodeFor: selector.  ^false].

	conflict ifTrue:  "Not conflicting any more, so remove if it had been."
		[self removeSelectorUnchecked: selector.
		self removeClass: self selector: selector in: SelectorsOfConflictMethods].

	"If this method isnt on the dynamic chain, copy it."
	descr = (self dynamicMethodDescriptionAt: selector) ifFalse:
		[unmoved _ self unmovedVarsFrom: descr whichClass.
		copyOK _ true.  "If method doesnt touch any vars which moved"
		descr method fieldsTouched do:
			[:field | copyOK _ copyOK & (unmoved at: field)].
		copyOK
			ifTrue:  "then can just install that same method"
				[self addSelectorUnchecked: descr selector withMethod: descr method]
			ifFalse:  "otherwise have to recompile it here"
				[self compileUnchecked: descr sourceCode].
		self insertClass: self selector: selector in: SelectorsOfCopiedMethods].
	^true

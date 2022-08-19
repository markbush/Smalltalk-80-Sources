checkChangeSelector: selector
	| descr classes class |
	"The method for selector has been changed or removed.
	 Check all copied versions for the method in question."
	(SelectorsOfCopiedMethods at: selector ifAbsent: [Array new]) do:
		[:class |
		(class inheritsFrom: self) ifTrue:
			[(class checkMethodFor: selector) ifFalse:
				[Transcript cr; show: 'conflicting methods for ' , selector, ' in ', class name]
				]].
	"Remove all versions copied for directed access (eg Point.max) "
	(SelectorsOfDirectedMethods at: selector ifAbsent: [Array new]) do:
		[:class |
		(class inheritsFrom: self) ifTrue:
			[(class compoundSelectorsMatching: selector) do:
				[:sel | class removeSelectorUnchecked: sel].
		self removeClass: class selector: selector in: SelectorsOfDirectedMethods]]

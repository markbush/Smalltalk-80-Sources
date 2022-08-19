compileConflictCodeFor: selector
	| classes |
	classes _ SelectorsOfConflictMethods at: selector ifAbsent: [Array new].
	(classes includes: self name)  "This class already has conflict code for this selector"
		ifTrue: [^self].
	self compile: (self conflictCodeFor: selector)
		classified: 'conflicting inherited methods'
		notifying: nil.
	self insertClass: self selector: selector in: SelectorsOfConflictMethods

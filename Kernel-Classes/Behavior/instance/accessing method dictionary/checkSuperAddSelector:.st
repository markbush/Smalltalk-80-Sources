checkSuperAddSelector: selector
	| local |
	local _ self includesSelector: selector.
	self hasMultipleSuperclasses
		ifFalse:
			[local ifTrue: [^self].
			^ self subclasses do: [:sub | sub checkSuperAddSelector: selector]].
	(self checkMethodFor: selector) ifFalse:  "Copy or note conflict"
		[Transcript cr; show: 'conflicting methods for ' , selector, ' in ', self name].
	local ifTrue: [^self].  "Was local before, so no change below"
	^ self subclasses do: [:sub | sub checkSuperAddSelector: selector]

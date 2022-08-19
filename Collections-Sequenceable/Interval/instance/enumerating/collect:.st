collect: aBlock
	| nextValue i result |
	result _ self species new: self size.
	nextValue _ start.
	i _ 1.
	step < 0
		ifTrue: [[stop <= nextValue]
				whileTrue:
					[result at: i put: (aBlock value: nextValue).
					nextValue _ nextValue + step.
					i _ i + 1]]
		ifFalse: [[stop >= nextValue]
				whileTrue:
					[result at: i put: (aBlock value: nextValue).
					nextValue _ nextValue + step.
					i _ i + 1]].
	^result

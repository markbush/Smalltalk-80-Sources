with: aSequenceableCollection do: aBlock
	"Evaluate aBlock with each of the receiver's elements along with the corresponding
	element from aSequencableCollection."

	| otherCollection |
	self size ~= aSequenceableCollection size ifTrue: [^self errorNoMatch].
	otherCollection _ ReadStream on: aSequenceableCollection.
	self do: [:each | aBlock value: each value: otherCollection next]

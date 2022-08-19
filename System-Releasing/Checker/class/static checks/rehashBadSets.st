rehashBadSets
	"Checker rehashBadSets"

	| badSets checkSet |
	badSets _ Set new.
	checkSet _ [:set |
		(set isKindOf: Dictionary)
			ifTrue: [set keysDo:
				[:x | (set includesKey: x) ifFalse: [badSets add: set]]]
			ifFalse: [set do:
				[:x | (set includes: x) ifFalse: [badSets add: set]]]].

	Set allInstances do: checkSet.
	Set allSubInstancesDo: checkSet.
	badSets do: [:bad | bad rehash].
	Transcript cr; print: badSets size; show: ' bad sets/dictionaries rehashed'.
	^badSets

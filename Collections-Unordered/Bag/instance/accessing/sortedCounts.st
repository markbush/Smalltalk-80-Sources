sortedCounts
	"Answer with a collection of counts with elements, sorted by decreasing count."
	| counts |
	counts _ SortedCollection sortBlock: [:x :y | x >= y].
	contents associationsDo:
		[:assn |
		counts add: (Association key: assn value value: assn key)].
	^ counts

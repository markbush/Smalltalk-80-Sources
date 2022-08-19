list: itemCollection
	"Create the textList corresponding to the items in itemCollection."

	isEmpty _ itemCollection isNil.
	list _ TextList onList:
		(topDelimiter == nil
			ifTrue: [itemCollection]
			ifFalse: [(Array with: topDelimiter) ,
					itemCollection ,
					(Array with: bottomDelimiter)]).
	selection _ 0.
	self positionList

copyReplaceFrom: start to: stop with: replacementCollection
	"Answer a copy of the receiver with replacementCollection's elements
	in place of the receiver's start'th to stop'th elements.
	This does not expect a 1-1 map from replacementCollection to the
	start to stop elements, so it will do an insert or append."

	| newOrderedCollection delta newIndex index mySize startIndex stopIndex |
	"if start is less than 1, ignore stop and assume this is inserting at the front.
	if start greater than self size, ignore stop and assume this is appending.
	otherwise, it is replacing part of me and start and stop have to be within my
	bounds. "
	delta _ 0.
	startIndex _ start.
	stopIndex _ stop.
	start < 1
		ifTrue: [startIndex _ stopIndex _ 0]
		ifFalse: [startIndex > self size
				ifTrue: [startIndex _ stopIndex _ self size + 1]
				ifFalse:
					[(stopIndex < (startIndex - 1) or: [stopIndex > self size])
						ifTrue: [self errorOutOfBounds].
					delta _ stopIndex - startIndex + 1]].
	newOrderedCollection _
		self species new: self size + replacementCollection size - delta.
	1 to: startIndex - 1 do: [:index | newOrderedCollection add: (self at: index)].
	1 to: replacementCollection size do:
		[:index | newOrderedCollection add: (replacementCollection at: index)].
	stopIndex + 1 to: self size do: [:index | newOrderedCollection add: (self at: index)].
	^newOrderedCollection

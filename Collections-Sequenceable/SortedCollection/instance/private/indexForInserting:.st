indexForInserting: newObject
	| index low high |
	low _ firstIndex.
	high _ lastIndex.
	[index _ high + low // 2.
	low > high]
		whileFalse:
			[(sortBlock value: (self basicAt: index) value: newObject)
				ifTrue: [low _ index + 1]
				ifFalse: [high _ index - 1]].
	^low

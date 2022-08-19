remove: oldObject ifAbsent: absentBlock
	| index |
	index _ firstIndex.
	[index <= lastIndex]
		whileTrue:
			[oldObject = (self basicAt: index)
				ifTrue:
					[self removeIndex: index.
					^oldObject]
				ifFalse: [index _ index + 1]].
	^absentBlock value

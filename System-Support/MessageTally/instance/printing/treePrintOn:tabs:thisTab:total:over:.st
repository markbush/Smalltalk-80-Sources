treePrintOn: aStream tabs: tabs thisTab: myTab total: total over: threshold
	| sons sonTab |
	tabs do: [:tab | aStream nextPutAll: tab].
	tabs size > 0 ifTrue: [self printOn: aStream total: total].
	sons _ self sonsOver: threshold.
	sons isEmpty ifFalse:
		[tabs addLast: myTab.
		sons _ sons asSortedCollection.
		(1 to: sons size) do:
			[:i |
			sonTab _ i < sons size ifTrue: ['  |'] ifFalse: ['  '].
			(sons at: i)
				treePrintOn: aStream tabs: tabs thisTab: sonTab total: total over: threshold].
		tabs removeLast]

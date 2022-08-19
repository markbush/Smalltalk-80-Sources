setMode: m
	rwmode = m
		"don't flush if first time or not write mode or continuing write mode"
		ifFalse: [(rwmode == nil or: [(rwmode bitAnd: Write) = 0
					or: [(m bitAnd: Write) = Write]])
					ifTrue: [rwmode _ m]
					ifFalse:
						[self flush.
						rwmode _ m]]

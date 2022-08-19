sendMessage
	arguments size = 0
		ifTrue: [view indicatorOnDuring: [model perform: selector]]
		ifFalse: [view indicatorOnDuring:
					[model perform: selector withArguments: arguments]]

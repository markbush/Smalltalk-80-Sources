keyAtValue: value ifAbsent: exceptionBlock
	"Answer the key whose value equals the argument, value.  If there is none,
	answer the result of evaluating exceptionBlock."

	| theKey |
	1 to: self basicSize do:
		[:index |
		value == (valueArray at: index)
			ifTrue:
				[(theKey _ self basicAt: index) == nil
					ifFalse: [^theKey]]].
	^exceptionBlock value

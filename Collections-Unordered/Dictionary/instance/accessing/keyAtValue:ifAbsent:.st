keyAtValue: value ifAbsent: exceptionBlock
	"Answer the key whose value equals the argument, value.  If there is none,
	answer the result of evaluating exceptionBlock."

	self associationsDo:
		[:association | value == association value ifTrue: [^association key]].
	^exceptionBlock value

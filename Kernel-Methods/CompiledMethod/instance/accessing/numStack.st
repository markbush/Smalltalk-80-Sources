numStack
	"Answer the size of the available stack."

	self isQuick
		ifTrue: [^0] "The method was simply a return of self or instance variable."
		ifFalse: [^self frameSize - self numTemps - self numArgs]

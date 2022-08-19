evaluate: textOrString for: anObject notifying: aController logged: logFlag 	"Compile and execute the supplied text (see message to instance for details).
	If both were successful then, if logFlag is true, log (write) the text onto
	the changes file so that it can be replayed if necessary."
	| val |
	val _ self new
				evaluate: textOrString
				in: nil
				to: anObject
				notifying: aController
				ifFail: [^nil].
	logFlag ifTrue: [Smalltalk logChange: textOrString].
	^val

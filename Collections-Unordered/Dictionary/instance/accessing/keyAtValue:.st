keyAtValue: value
	"Answer the key whose value equals the argument, value.  If there is none,
	cause an error."

	^self keyAtValue: value ifAbsent: [self errorValueNotFound]

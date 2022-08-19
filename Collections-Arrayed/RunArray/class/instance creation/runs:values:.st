runs: newRuns values: newValues
	"Answer a new instance of RunArray with runs and values specified
	by the arguments."

	| instance |
	instance _ self basicNew.
	instance setRuns: newRuns setValues: newValues.
	^instance

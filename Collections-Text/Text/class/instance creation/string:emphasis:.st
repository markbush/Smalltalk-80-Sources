string: aString emphasis: code
	"Answer an instance of me whose characters are those of the argument, aString.
	Use the font whose index into the default TextStyle font array is code."

	^self string: aString runs: (RunArray new: aString size withAll: code)

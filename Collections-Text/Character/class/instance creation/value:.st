value: anInteger
	"Answer the Character whose value is anInteger.
	Characters are unique; they are stored in the class variable CharacterTable."

	^CharacterTable at: anInteger + 1

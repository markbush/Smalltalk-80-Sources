recover: nCharacters
	"Schedule an editable text view on the last n characters of changes."

	| changes |
	changes _ SourceFiles at: 2.
	changes setToEnd; skip: nCharacters negated.
	(Disk file: 'st80.recent') nextPutAll: changes; close; edit

readFromDirectory: aFileStream
	"read file description from SysDir"

	serialNumber _ aFileStream next: 4.
	aFileStream skip: 4.
	leader _ fileDirectory virtualToReal: aFileStream nextWord.
	fileName _ String new: aFileStream next.
	1 to: fileName size do: [:i | fileName at: i put: aFileStream next asCharacter].
	aFileStream padToNextWord

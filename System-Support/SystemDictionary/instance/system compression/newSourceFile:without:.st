newSourceFile: vers without: setOfClasses
	"Make a new source file omitting references to any classes in the set, setOfClasses.

		Smalltalk newSourceFile: Smalltalk versionName without: (Array new).

	Make sure versionName is updated.
	Then rename the image similarly, and delete the old sources and changes."

	| oldFile newFile class |
	oldFile _ SourceFiles at: 1.
	newFile _ Disk file: vers , '.sources'.
	newFile timeStamp.
	Smalltalk classNames do:
		[:className |
		class _ Smalltalk at: className.
		(setOfClasses includes: class)
			ifFalse:
				[class
					fileOutOn: newFile
					moveSource: true
					toFile: 1.
				newFile nextPut: 12 asCharacter]].
	newFile shorten; readOnly.
	SourceFiles at: 1 put: newFile.
	SourceFiles at: 2 put: (Disk file: vers , '.changes').
	(SourceFiles at: 2) shorten; readOnly

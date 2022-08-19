add: aFile
	"Add the file, aFile, to the receiver.   This creates a new version of the file rather than generating an error if a file with the same name exists."

	| old file |
	file _ aFile.
	self versionNumbers
		ifTrue:
			["ignore explicit version and directory will create a next version"
			file _ self initFileName: (file fileName copyUpTo: $!)]
		ifFalse:
			[(self find: file) notNil
				ifTrue:
					["otherwise, if file already exists,
					  rename it to name$, deleting that file first if it exists"
					old _ self initFileName: (file fileName copyWith: $$).
					self remove: old ifAbsentDo: [:f | false].
					self rename: file newName: old fileName.
					file fileName: (file fileName copyUpTo: $$).
					(self find: file) notNil ifTrue: [file error: 'insert/rename ??']]].
	self addNew: file.
	^file

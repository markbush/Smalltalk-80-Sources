renameSystemFiles: newVersion
	"Rename the sources and changes and image files.

		Smalltalk renameSystemFiles: Smalltalk versionName.

	Then rename the relevant .run and .syms files manually."

	| oldFile oldName oldVersion file |
	oldFile _ SourceFiles at: 1.
	oldName _ oldFile name.
	oldVersion _ oldName copyFrom: 1 to: (oldName indexOf: $.)
					- 1.
	(SourceFiles at: 1) close.
	SourceFiles at: 1 put: nil.
	(SourceFiles at: 2) close.
	SourceFiles at: 2 put: nil.
	#('.sources' '.changes' '.im' ) do:
		[:ext | (Disk file: oldVersion , ext) file rename: newVersion , ext].
	1 to: 2 do:
		[:i |
		file _ Disk file: newVersion , (#('.sources' '.changes' ) at: i).
		file readOnly.
		SourceFiles at: i put: file]

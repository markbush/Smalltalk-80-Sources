deleteFile
	"Remove the selected file from its directory."

	| dir localName |
	dir _ FileDirectory directoryFromName: fileName setFileName: [:localName].
	(dir includesKey: localName)
		ifTrue: [(self confirm: 'really remove the selected file?') ifFalse: [^self].
	dir removeKey: localName].
	list remove: fileName.
	self changed: #fileName.

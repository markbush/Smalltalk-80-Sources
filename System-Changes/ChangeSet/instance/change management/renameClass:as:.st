renameClass: class as: newName
	"Include indication that a class has been renamed."

	| value |
	(self atClass: class includes: #rename) ifFalse:
		[self atClass: class add: 'oldName: ', class name. 	"only original name matters"
		self atClass: class add: #rename].
 	"copy changes using new name (metaclass too)"
	(Array with: classChanges with: methodChanges) do:
		[:changes |
		(value _ changes at: class name ifAbsent: [nil]) == nil ifFalse:
			[changes at: newName put: value.
			changes removeKey: class name].
		(value _ changes at: class class name ifAbsent: [nil]) == nil ifFalse:
			[changes at: (newName, ' class') put: value.
			changes removeKey: class class name]]

renameClass: aClass as: newName
	"Rename the class, aClass, to have the title newName."

	| oldref |
	SystemOrganization classify: newName under: aClass category.
	SystemOrganization removeElement: aClass name.
	SystemChanges renameClass: aClass as: newName.
	oldref _ self removeKey: aClass name.
	oldref key: newName.
	(Undeclared includesKey: newName)
		ifTrue: [self at: newName put: aClass]
		ifFalse: [self add: oldref "Preserve old reference"].
	self flushClassNameCache

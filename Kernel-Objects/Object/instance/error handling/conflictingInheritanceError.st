conflictingInheritanceError
	"Browse to the method which called this,
		redefine it appropriately,
		and then restart that calling method. "

	self error: 'Conflicting methods due to multiple inheritance'

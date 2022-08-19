removeEmptyCategories
	"Remove all empty class and method categories.
	Smalltalk removeEmptyCategories "

	SystemOrganization removeEmptyCategories.
	ClassOrganizer allInstancesDo: [:organizer | organizer removeEmptyCategories].

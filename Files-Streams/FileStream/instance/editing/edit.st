edit
	"Create and schedule a FileView of the contents of the receiver.  The label of the view is the name of the receiver."

	FileModel
		open: (FileModel fileStream: self)
		named: self file fullName

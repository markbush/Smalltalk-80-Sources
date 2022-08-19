bitEdit
	"Create and schedule a view located in an area designated by the user that
	contains a view of the receiver magnified by 8@8 that can be modified
	using the Bit Editor.  It also contains a view of the original form."

	BitEditor openOnForm: self

	"Note that using direct messages to BitEditor, fixed locations and scales can be created.	 	That is, also try
		BitEditor openOnForm: self at: <some point>.
		BitEditor openOnForm: self at: <some point> scale: <some point>."

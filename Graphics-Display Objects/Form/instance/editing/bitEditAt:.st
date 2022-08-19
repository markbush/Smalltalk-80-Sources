bitEditAt: magnifiedLocation
	"Create and schedule a view whose top left corner is magnifiedLocation and
	that contains a view of the receiver magnified by 8@8 that can be modified
	using the Bit Editor.  It also contains a view of the original form."

	BitEditor openOnForm: self at: magnifiedLocation

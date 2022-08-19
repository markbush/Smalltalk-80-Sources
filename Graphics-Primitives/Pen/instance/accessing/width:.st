width: anInteger
	"Setting width with this message is not allowed."

	self error: 'Pen widths cannot be reset this way;  use defaultNib: or specify a new source form using sourceForm: '

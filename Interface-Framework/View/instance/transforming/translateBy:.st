translateBy: aPoint
	"Translate the receiver by aPoint. The translation is concatenated with the
	current transformation of the receiver and is applied when View|transform is
	sent. This happens automatically in the process of displaying the receiver."

	self setTransformation: (transformation translateBy: aPoint)

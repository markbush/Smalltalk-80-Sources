digitAt: n put: value
	"Fails. The digits of a small integer can not be modified."

	self error: 'You cant store in a SmallInteger'

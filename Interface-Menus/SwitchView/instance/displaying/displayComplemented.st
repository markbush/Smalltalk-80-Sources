displayComplemented
	"Complement the receiver if its mode is 'normal'."
	complemented
		ifFalse:
			[complemented _ true.
			self highlight]

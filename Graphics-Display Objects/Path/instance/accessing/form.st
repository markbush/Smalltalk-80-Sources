form
	"Answer the receiver's form. If form is nil then a 1 x 1 black form (a
	black dot) is answered."

	| aForm |
	form == nil
		ifTrue:
			[aForm _ Form new extent: 1 @ 1.
			aForm black.
			^aForm]
		ifFalse:
			[^form]

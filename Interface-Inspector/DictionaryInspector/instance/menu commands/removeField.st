removeField

	(self confirm: 'Confirm removal of ', field printString) ifFalse: [^self].
	object removeKey: field.
	field _ nil.
	self changed: #field

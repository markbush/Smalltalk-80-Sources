currentDisplay: form
	"Make the argument, form, be the form representing the current display
	screen.  Create an error if form is not an instance of me."

	form class == self
		ifTrue:
			[form bits class == DisplayBitmap
				ifTrue:
					[Display become: form.
					Display beDisplay]
				ifFalse:
					[self error: 'bitmap should be DisplayBitmap']]
		ifFalse: [self error: 'form should be DisplayForm']

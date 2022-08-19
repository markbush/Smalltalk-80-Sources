currentCursor: aCursor
	"Make the instance of cursor, aCursor, be the current cursor.  Display
	it.  Create an error if the argument is not a Cursor."

	aCursor class == self
		ifTrue:
			[CurrentCursor _ aCursor.
			aCursor beCursor]
		ifFalse: [self error: 'The new cursor must be an instance of class Cursor']

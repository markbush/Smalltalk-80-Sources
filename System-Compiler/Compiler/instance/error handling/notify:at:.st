notify: aString at: position
	Cursor normal show.
	requestor == nil
		ifTrue: [^SyntaxError
					errorInClass: class
					withCode:
						(sourceStream contents
							copyReplaceFrom: position
							to: position - 1
							with: aString)
					errorString: aString]
		ifFalse: [^ requestor insertAndSelect: aString at: (position max: 1)]

findFileOrHole: t1
	| t2 t3 t4 t5 t6 t7 t8 t9 t10 |
	t2 _ self checkNameOfFile: t1.
	t1 fileName: t2.
	t8 _ t2 size.
	self reset.
	t5 _ nil.
	t6 _ Dfmask.
	t7 _ (self fileSize: t1) // 2.
	[dirFile atEnd]
	 whileFalse: [t4 _ dirFile nextWord.
		t3 _ t4 bitAnd: Dfmask - 1.
		t7 > t3 ifTrue: [t9 _ -2]
		 ifFalse: [t4 = t3
			 ifTrue: [t9 _ -2.
				t3 < t6
				 ifTrue: [t6 _ t3.
					t5 _ dirFile position]]
			 ifFalse: [dirFile skip: 10.
				t9 _ -13.
				t8 = dirFile next
				 ifTrue: [t10 _ 1.
					[t10 <= t8 and: [(t2 at: t10) asLowercase
						= dirFile next asCharacter asLowercase]]
						 whileTrue: [t10 _ t10 + 1].
					t10 > t8
						ifTrue:
							[dirFile skip: t9 - t8.
							^true].
					t9 _ t9 - t10]]].
		dirFile skip: t3 * 2 + t9].
	t5 notNil ifTrue: [dirFile position: t5 - 2].
	^false

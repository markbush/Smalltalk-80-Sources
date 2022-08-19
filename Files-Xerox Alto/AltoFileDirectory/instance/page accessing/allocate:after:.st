allocate: nextPage after: address
	| index stop ch m vadr oldCursor |
	index _ nil.
	[true] whileTrue:
		["go around bittable from address to end, and beginning to address.
		we start over again if the table appears full or bitsFile is out of sync"
		(index notNil and: [stop >= totalPages])
		  ifTrue:
			["wrap around to where we started"
			stop _ address.
			index _ 0]
		  ifFalse:
			[index isNil
			  ifFalse: ["disk probably full"
				Smalltalk releaseExternalViews.
				self error: 'YOUR DISK IS FULL (abort or make space and proceed)'].

			self open.
			"index by bits rather than bytes? close enough for now"
			index _ address bitAnd: 8r177770.
			stop _ totalPages].

		bitsFile position: index // 8 + Boffset.
		[index notNil and: [(index _ index + 8) <= stop]] whileTrue:
			[(ch _ bitsFile next) = 8r377
			  ifFalse:
				["check that bitsFile position is correct --
				possibly out of sync with index if  growSmalltalkBy: occurred?"
				bitsFile position ~= (index // 8 + Boffset)
				  ifTrue: [index _ nil]
				  ifFalse:
					[m _ 8r200.
					index - 8 to: index - 1 do:
						[:vadr | (ch bitAnd: m) = 0
						  ifTrue:
							["page appears free. first update DiskDescriptor"
							bitsFile skip: -1.
							bitsFile nextPut: (ch _ ch bitOr: m).

							"then check if page is really free"
							vadr = 0
							  ifFalse: "O.S. boot"
								[nextPage reinitialize.
								nextPage freePage.
								nextPage address: (self virtualToReal: vadr).
								(nextPage doCommand: CCR error: nil) notNil
								  ifTrue: [oldCursor notNil ifTrue: [oldCursor show].
										^vadr]
								  ifFalse: "otherwise, page not really free"
									[oldCursor isNil ifTrue:
										[oldCursor _ Cursor currentCursor.
										Cursor wait show. "this may take a while"]]]].

						"page not free according to bit"
						m _ m bitShift: -1]]]]]

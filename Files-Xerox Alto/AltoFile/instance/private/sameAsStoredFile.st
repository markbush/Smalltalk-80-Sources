sameAsStoredFile
	| page s tname |
	page _ self initPageNumber: 0.
	page binary.
	page address: leader.
	"if any of the following tests fail, File will be reinitialized"
	(((page doCommand: CCR error: nil) notNil and: [page pageNumber = 0])
		and: [s _ page asFileStream: ExternalStream new.
			s skip: 4.
			writeTime = (s next: 4)
				and:
					[s skip: 4.
					tname _ String new: s next.
					1 to: tname size do: [:i | tname at: i put: s next asCharacter].
					fileName sameAs: tname]])
		ifTrue:
			[(lastPageNumber notNil and: [pageAddresses notNil])
				ifTrue:
					[page pageNumber: lastPageNumber.
					page address: (pageAddresses at: lastPageNumber).
					(page doCommand: CCR error: nil) isNil
						ifTrue: ["wrong file or page number" ^false].
					page lastPage ifFalse: ["not last page anymore"
						lastPageNumber _ nil].
					^true].
			^true].
	^false

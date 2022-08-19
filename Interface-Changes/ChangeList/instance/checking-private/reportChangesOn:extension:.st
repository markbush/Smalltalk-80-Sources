reportChangesOn: reportStream extension: extension
	"report conflicts among the changes"
	| aStream contendors oldText |
	aStream _ reportStream.
	changeDict keys asSortedCollection do: [:change |
		contendors _ changeDict at: change.
		contendors size > 1 ifTrue:
			[extension == nil ifFalse:
				[aStream _ Disk file: ((change copyUpTo: $ ) copyWithout: $ ), extension.
				aStream setToEnd].
			aStream cr; nextChunkPut: '"*** conflict: ', change, ' ***"'; cr.
			oldText _ '...'.
			contendors do: [:contendor | oldText _ self writeContendor: contendor on: aStream oldText: oldText].
			extension == nil ifFalse: [aStream close]] ].

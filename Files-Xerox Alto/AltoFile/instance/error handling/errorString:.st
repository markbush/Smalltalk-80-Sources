errorString: status
	"see Alto hardware manual for details on error word format"

	| s |
	status = -1 ifTrue: [^'primitive failure, bad args?'].
	s _ WriteStream on: (String new: 50).
	s nextPutAll: (#('' 'hardware error or sector overflow' 'check error'
					 'disk command specified illegal sector' ) at: 1 + (status bitAnd: 3)).
	1 to: 6 do: [:t | (status allMask: (128 bitShift: 1 - t))
			ifTrue:
				[s nextPut: $ .
				s nextPutAll: (#('seek failed, possible illegal track' 'seek in progress'
								'disk unit not ready' 'hardware late'
								 'hardware not transferring' 'checksum' ) at: t)]].
	s nextPut: $ .
	s nextPutAll: (status storeStringRadix: 8).
	^s contents

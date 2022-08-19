fullPrintOn: aStream cutoff: perCent
	| threshold |
	threshold _ (perCent asFloat / 100 * tally) rounded.
	aStream nextPutAll: '**Tree**'; cr.
	self treePrintOn: aStream
		tabs: OrderedCollection new
		thisTab: ''
		total: tally
		over: threshold.
	aStream nextPut: Character newPage; cr.
	aStream nextPutAll: '**Leaves**'; cr.
	self leavesPrintOn: aStream
		over: threshold.

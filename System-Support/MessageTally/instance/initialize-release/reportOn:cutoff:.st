reportOn: aStream cutoff: perCent
	"Print a report on the stream. perCent should be a number like 2 or 3"
	tally = 0
		ifTrue:
			[aStream nextPutAll: ' - no tallies obtained']
		ifFalse:
			[aStream nextPutAll: ' - '; print: tally; nextPutAll: ' tallies.'; cr; cr.
			self fullPrintOn: aStream cutoff: perCent]

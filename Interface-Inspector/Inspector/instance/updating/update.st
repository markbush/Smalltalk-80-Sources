update
	"Reshow contents, assuming selected value may have changed"
	field ~~ nil ifTrue: [self changed: #text]

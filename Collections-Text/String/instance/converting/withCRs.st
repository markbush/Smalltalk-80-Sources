withCRs
	"substitute CRs for backslashes"
	^ self collect: [:char | char = $\ ifTrue: [Character cr] ifFalse: [char]]

updateRequest
	^ model isUnlocked or:
			[(self confirm: 'Contents have not been saved.  Are you
certain that you want to close?')
				ifTrue: [model unlock. ^true]
				ifFalse: [^false]]

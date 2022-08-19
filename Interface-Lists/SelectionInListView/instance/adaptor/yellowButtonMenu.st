yellowButtonMenu
	menuMsg == nil ifTrue: [^ nil].
	^ model perform: menuMsg

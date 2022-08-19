yellowButtonActivity
	| index menu |
	menu _ view yellowButtonMenu.
	menu == nil
		ifTrue:
			[view flash.
			super controlActivity]
		ifFalse:
			[index _ menu startUpYellowButton.
			index ~= 0
				ifTrue:
					[self controlTerminate.
					model perform: (menu selectorAt: index).
					self controlInitialize]]

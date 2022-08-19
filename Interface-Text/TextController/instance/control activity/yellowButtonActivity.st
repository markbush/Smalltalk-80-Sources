yellowButtonActivity
	| index menu selector |
	menu _ view yellowButtonMenu.
	menu == nil
		ifTrue:
			[view flash.
			super controlActivity]
		ifFalse:
			[index _ menu startUpYellowButton.
			index ~= 0
				ifTrue:
					[selector _ menu selectorAt: index.  "editing to self, rest to model"
					(self localMenuItem: selector)
						ifTrue: [self perform: selector]
						ifFalse: [self controlTerminate.
								selector numArgs = 2
									ifTrue: [model perform: selector with: self text with: self]
									ifFalse: [model perform: selector].
								self controlInitialize]]]

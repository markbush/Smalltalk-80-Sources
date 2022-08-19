scheduleMessageBrowser
	| change |
	selectionIndex > 0 ifTrue:
		[change _ list at: selectionIndex.
		(change isKindOf: MethodDefinitionChange) ifTrue:
			[^BrowserView openListBrowserOn: (Array with: change name) label: 'current definition']].
	^nil

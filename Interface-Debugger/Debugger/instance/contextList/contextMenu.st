contextMenu
	"Debugger flushMenus"
	context == nil ifTrue:
		[^ ActionMenu labels: 'full stack\proceed' withCRs selectors: #(fullStack proceed)].
	ContextMenu == nil ifTrue:
		[ContextMenu _ ActionMenu
			labels: 'full stack\proceed\restart\senders\implementors\messages\step\send' withCRs
			lines: #(3 6)
			selectors: #(fullStack proceed restart browseSenders browseImplementors browseMessages step send)].
	^ ContextMenu

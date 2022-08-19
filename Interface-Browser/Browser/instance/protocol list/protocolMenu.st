protocolMenu
	"Browser flushMenus"
	protocol == nil ifTrue:
		[^ ActionMenu labels: 'add protocol' selectors: #(addProtocol)].
	ProtocolMenu == nil ifTrue:
		[ProtocolMenu _ ActionMenu
			labels: 'file out\print out\spawn\add protocol\rename\remove' withCRs
			lines: #(3)
			selectors: #(fileOutProtocol printOutProtocol spawnProtocol addProtocol renameProtocol removeProtocol)].
	^ ProtocolMenu

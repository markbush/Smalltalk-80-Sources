fileListMenu
	fileName == nil ifTrue: [^nil].
	FileMenu == nil ifTrue:
		[FileMenu _
			ActionMenu
				labels: 'get contents\file in\copy name\rename\remove' withCRs
				lines: #(2 4)
				selectors: #(getFile fileInFile copyName renameFile deleteFile)].
	^ FileMenu
	"Evaluate this when you change this method:
		FileList flushMenus"

cancel
	"Restore the text of the paragraph to be the text saved since initialization or
	the last accept."

	self controlTerminate.
	UndoSelection _ paragraph text.
	view clearInside.
	self changeParagraph: (paragraph text: initialText).
	paragraph displayOn: Display.
	self scrollToTop.
	self controlInitialize

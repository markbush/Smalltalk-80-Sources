openInspectors
	"Further initialization when opening notify view to debug view"

	receiverInspector _ Inspector inspect: nil.
	contextInspector _ ContextInspector inspect: nil.
	self changed: #contextList

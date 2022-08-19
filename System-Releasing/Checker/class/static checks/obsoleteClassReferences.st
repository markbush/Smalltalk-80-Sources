obsoleteClassReferences
	"Answer a collection of all the methods that reference obsolete classes."

	| methods |
	methods _ SortedCollection new.
	self obsoleteAssociations do: [:assoc | methods addAll: (self allCallsOn: assoc)].
	^methods

	"BrowserView
		openListBrowserOn: Smalltalk obsoleteClassReferences
		label: 'References to Obsolete Classes' "

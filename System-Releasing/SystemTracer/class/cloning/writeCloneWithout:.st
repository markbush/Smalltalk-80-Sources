writeCloneWithout: aSet
	"This message creates and runs a SystemTracer without the sets named:
		SystemTracer writeCloneWithout:
			(Set with: AltoFilePage with: AltoFile with: AltoFileDirectory).
	If all goes well, it will produce a file called clone.im which is a valid image file"

	| tracer |
	tracer_ self new.
	tracer doitWithout: aSet.
	tracer == nil
		ifTrue:
			[Smalltalk install.
			ScheduledControllers restore.
			Disk == nil ifFalse: [Disk release]]
	"
	Below are checks for things which might cause the Tracer to run amock:

	Checker rehashBadSets

	Smalltalk obsoleteClasses do: [:class | class obsolete]

	BrowserView
		openListBrowserOn: Smalltalk obsoleteClassReferences
		label: 'References to Obsolete Classes'

	Smalltalk classNames select:
		[:x | (Smalltalk at: x) superclass class ~~ (Smalltalk at: x) 	class superclass]
	"

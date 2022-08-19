doitWithout: classSet
	| time1 time2 ctxt n |
	ctxt _ thisContext sender.
	ctxt push: nil.
	self init: ctxt.
	self initClampedClasses: classSet.
	FileDirectory initializeExternalReferences.
	Smalltalk shutdown.
	"Make sure the system is stable underneath us."
	Transcript show: 'Tracing . . . '.
	time1 _ Time now asSeconds.
	n _ self writeImage: (Array with: Smalltalk).
	time2 _ Time now asSeconds.
	Transcript print: n; show: ' objects, words, '; print: time2 - time1; show: ' sec.'; cr.
	Smalltalk install.
	"Allow things to change again."
	ctxt pop
	"So we can resume"

explain
	"Try to shed some light on what kind of entity the current selection is.
	The selection must be a single token or construct.  Insert the answer
	after the selection.  Call private routines whose names begin with
	'explain'.  They return a String if they recognise the selection, else nil."
	| reply |
	reply _ (Explainer new
		class: model selectedClass
		selector: model selector
		instance: model doItReceiver
		context: model doItContext
		methodText: model text) explain: self selection string for: model.
	reply size = 0 ifTrue:
		[reply _ '"Sorry, I can''t explain that.  Please select a single token, construct, or special character.' ,
			(model isUnlocked ifTrue: ['"'] ifFalse: ['  Also, please cancel or accept."']).
].
	self insertAndSelect: reply at: stopBlock stringIndex

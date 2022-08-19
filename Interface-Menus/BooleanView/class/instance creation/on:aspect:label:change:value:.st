on: model aspect: aspect label: label change: changeSel value: onValue
	"Create a 'pluggable' (see class comment) switchView viewing anObject.
	aspect is sent to read the current boolean value in the model.
		It is also used as the changed: parameter for this view.
	changeSel is sent to inform anObject of new boolean value for the model."
	| view args |
	view _ self new.
	view model: model.
	view selector: aspect; arguments: (args _ Array with: onValue).
	view controller selector: changeSel; arguments: args.
	view label: label asParagraph.
	^view

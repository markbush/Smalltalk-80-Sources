explain: selection for: model
	"Try to shed some light on what kind of entity the current selection is.
	The selection must be a single token or construct.  Insert the answer
	after the selection.  Call private routines whose names begin with
	'explain'.  They return a String if they recognise the selection, else nil."

	| string tiVars cgVars selectors delimitors numbers symbol reply |
	Cursor execute
		showWhile:
			[selection isEmpty
				ifTrue: [reply _ '']
				ifFalse:
					[string _ self explainScan: selection.
					"Remove space, tab, cr"
					"Temps and Instance vars need only test strings that are all letters"
					(string detect: [:char | (char isLetter or: [char isDigit]) not]
						ifNone: [])
						~~ nil
						ifFalse:
							[tiVars _ self explainTemp: string.
							tiVars == nil ifTrue: [tiVars _ self explainInst: string]].
					(tiVars == nil)
						ifTrue: [tiVars _ model explainSpecial: string].
					tiVars == nil
						ifTrue: [tiVars _ '']
						ifFalse: [tiVars _ tiVars , NewLine].
					"Context, Class, Pool, and Global vars, and Selectors need
					only test symbols"
					(Symbol hasInterned: string ifTrue: [:symbol | symbol])
						ifTrue:
							[cgVars _ self explainCtxt: symbol.
							cgVars == nil
								ifTrue:
									[cgVars _ self explainClass: symbol.
									cgVars == nil ifTrue: [cgVars _ self explainGlobal: symbol]].
							"See if it is a Selector (sent here or not)"
							selectors _ self explainMySel: symbol.
							selectors == nil
								ifTrue:
									[selectors _ self explainPartSel: string.
									selectors == nil ifTrue: [selectors _ self explainAnySel: symbol]]]
						ifFalse: [selectors _ self explainPartSel: string].
					cgVars == nil
						ifTrue: [cgVars _ '']
						ifFalse: [cgVars _ cgVars , NewLine].
					selectors == nil
						ifTrue: [selectors _ '']
						ifFalse: [selectors _ selectors , NewLine].
					string size = 1
						ifTrue: ["single special characters"
							delimitors _ self explainChar: string]
						ifFalse: ["matched delimitors"
							delimitors _ self explainDelimitor: string].
					numbers _ self explainNumber: string.
					numbers == nil ifTrue: [numbers _ ''].
					delimitors == nil ifTrue: [delimitors _ ''].
					reply _ tiVars , cgVars , selectors , delimitors , numbers]].
	reply size = 0 ifTrue:
		[^ '"Sorry, I can''t explain that.  Please select a single token, construct, or special character."'].
	^ reply

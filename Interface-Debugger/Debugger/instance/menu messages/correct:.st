correct: aNotifierController
	"Attempt to correct the spelling of the not-understood message and resend."
	| oldSelector oldFirst oldArgs selectors guess score bestScore |
	processHandle topContext selector == #doesNotUnderstand:
		ifFalse: [^ aNotifierController view flash].
	oldSelector _ (processHandle topContext tempAt: 1) selector.
	oldFirst _ oldSelector first.
	oldArgs _ oldSelector numArgs.
	selectors _ processHandle topContext receiver class allSelectors select:
			[:sel | sel first = oldFirst and: [sel numArgs = oldArgs]].
	bestScore _ 0.
	selectors do:
		[:sel |
		(score _ sel spellAgainst: oldSelector) > bestScore ifTrue:
			[bestScore _ score. guess _ sel]].
	(self confirm: 'retry with selector:
	', guess) ifFalse: [^ aNotifierController view flash].
	processHandle topContext tempAt: 1 put:
		(Message selector: guess arguments: (processHandle topContext tempAt: 1) arguments).
	^ self proceed

checkOrganizations
	"Check for organization/messagedict inconsistencies.  Print the result in the
	System Transcript.

	Smalltalk checkOrganizations.
	Smalltalk allClassesDo:
			[:cl | cl removeSelector: #DoIt; removeSelector: #DoItIn:]. "

	| className class cat sel set |
	Smalltalk classNames do:
		[:className |
		(Array with: (Smalltalk at: className) with: (Smalltalk at: className) class) do:
			[:class |
			set _ Set new.
			class organization categories do:
				[:cat | (class organization listAtCategoryNamed: cat) do:
						[:sel |
						(set includes: sel)
							ifTrue: [Transcript show: class name , ' multiple: ' , sel; cr].
						set add: sel]].
			class selectors do:
				[:sel | (set includes: sel)
					ifTrue: [set remove: sel]
					ifFalse: [Transcript show: class name , ' missing: ' , sel; cr]].
				set do: [:sel | Transcript show: class name , ' spurious: ' , sel; cr]]].
	Transcript show: 'Done checking.'; cr

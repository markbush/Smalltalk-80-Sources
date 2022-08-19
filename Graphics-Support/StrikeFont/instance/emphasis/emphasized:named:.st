emphasized: code named: aString
	"Answer a copy of the receiver with emphasis set to code."
	| copy |

	copy _ self copy emphasis: (code + emphasis).
	copy name: aString.
	^copy

	"TextStyle default fontAt: 9
		put: ((TextStyle default fontAt: 1) emphasized: 4 named: 'TimesRoman10i')"

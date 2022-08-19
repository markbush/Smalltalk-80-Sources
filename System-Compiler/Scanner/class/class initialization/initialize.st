initialize
	"Scanner initialize."

	| newTable |
	newTable _ Array new: 256 withAll: #xBinary. "default"
	newTable atAll: #(9 10 12 13 32 ) put: #xDelimiter. "tab lf ff cr space"
	newTable atAll: ($0 asciiValue to: $9 asciiValue) put: #xDigit.
	newTable atAll: ($A asciiValue to: $Z asciiValue) put: #xLetter.
	newTable atAll: ($a asciiValue to: $z asciiValue) put: #xLetter.
	newTable at: 30 put: #doIt.
	newTable at: $" asciiValue put: #xDoubleQuote.
	newTable at: $# asciiValue put: #xLitQuote.
	newTable at: $$ asciiValue put: #xDollar.
	newTable at: $' asciiValue put: #xSingleQuote.
	newTable at: $( asciiValue put: #leftParenthesis.
	newTable at: $) asciiValue put: #rightParenthesis.
	newTable at: $. asciiValue put: #period.
	newTable at: $: asciiValue put: #colon.
	newTable at: $; asciiValue put: #semicolon.
	newTable at: $[ asciiValue put: #leftBracket.
	newTable at: $] asciiValue put: #rightBracket.
	newTable at: $^ asciiValue put: #upArrow.
	newTable at: $_ asciiValue put: #leftArrow.
	newTable at: $| asciiValue put: #verticalBar.
	EndChar _ 30 asCharacter.
	TypeTable _ newTable "bon voyage!"

checkName: fname fixErrors: fixing
	"Check file name for correct length and characters."

	| char len i newName special period |
	fname isEmpty
		ifTrue: [fixing ifTrue: [^'$'].
				 self error: 'empty file name'].

	special _ '.-+$!?'.
	period _ $..
	len _ fname size.

	(len > 39 or: [len = 39 and: [(fname at: len) ~= period]])
		ifTrue: [fixing ifTrue: ["truncate name" len _ 38]
		ifFalse: [self error: 'name too long']].

	newName _ WriteStream on: (String new: len + 1).
	1 to: len do: [:i |
		char _ fname at: i.
		"check characters: alphanumeric or 6 special"
		(char isLetter or: [(special includes: char) or: [char isDigit]])
		 	ifTrue: [newName nextPut: char]
		 	ifFalse: [
				fixing ifTrue: [newName nextPut: $-]
					ifFalse: [self error: ('illegal character ' copyWith: char)]]].

	"make sure last character is period (isn't period when fixing)"
	(fname at: len) = period
		ifTrue: [fixing ifTrue: [newName skip: -1]]
		ifFalse: [fixing ifFalse: [newName nextPut: period]].

	^newName contents

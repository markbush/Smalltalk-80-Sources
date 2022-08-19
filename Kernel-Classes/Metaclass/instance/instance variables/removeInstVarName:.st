removeInstVarName: aString
	"Remove the argument, aString, as one of the receiver's instance variables."


	| newArray newString |
	(self instVarNames includes: aString)
		ifFalse: [self error: aString , ' is not one of my instance variables'].
	newArray _ self instVarNames copyWithout: aString.
	newString _ ''.
	newArray do: [:aString2 | newString _ aString2 , ' ' , newString].
	self instanceVariableNames: newString

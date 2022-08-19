changeFromString: aString
	"Parse the string and make this be the receiver's structure.  Categories or elements not found are not affected.  New elements are ignored."

	| scanner oldElements newElements newCategories newStops currentStop anArray |
	scanner _ Scanner new scanTokens: aString.
	"If nothing was scanned and I had no elements before, then default me"
	(scanner size = 0 and: [elementArray size = 0])
		ifTrue: [^self setDefaultList].

	oldElements _ elementArray asSet.
	newCategories _ Array new: scanner size.
	newStops _ Array new: scanner size.
	currentStop _ 0.
	newElements _ WriteStream on: (Array new: 16).
	1 to: scanner size do:
		[:i |
		anArray _ scanner at: i.
		newCategories at: i put: anArray first asSymbol.
		(anArray copyFrom: 2 to: anArray size) asSortedCollection do:
			[:elem |
			(oldElements remove: elem ifAbsent: [nil]) notNil ifTrue:
				[newElements nextPut: elem.
				currentStop _ currentStop+1]].
		newStops at: i put: currentStop].

	"Ignore extra elements but don't lose any existing elements!"
	oldElements _ oldElements collect:
		[:elem | Array with: (self categoryOfElement: elem) with: elem].
	newElements _ newElements contents.
	categoryArray _ newCategories.
	categoryStops _ newStops.
	elementArray _ newElements.
	oldElements do: [:pair | self classify: pair last under: pair first].

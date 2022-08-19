methodsFor: aString
	"Answer a ClassCategoryReader for accessing the messages in the method
	dictionary category, aString, of the receiver."

	^ClassCategoryReader class: self category: aString asSymbol
	"False methodsFor: 'logical operations' inspect"

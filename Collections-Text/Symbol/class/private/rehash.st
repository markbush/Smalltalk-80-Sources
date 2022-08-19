rehash
	"Rebuild the hash table that holds all the unique Symbols."

	| sym |
	USTable _ USTable collect: [:sym | Array new: 0].
	Symbol allInstancesDo: [:sym | self intern: sym]
	"Symbol rehash"

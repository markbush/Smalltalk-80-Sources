scanTokens: textOrString
	"Answer with an Array which has been tokenized as though the input text
	had appeared between #( and ) in a Smalltalk literal expression."

	self scan: (ReadStream on: textOrString asString).
	self scanLitVec.
	^token

	"Scanner new scanTokens:
			'identifier keyword: 8r31 ''string'' embedded.period key:word: .   '     "

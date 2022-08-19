xBinary
	tokenType _ #binary.
	token _ Symbol internCharacter: self step.
	((typeTable at: hereChar asciiValue) = #xBinary and: [hereChar ~= $-])
		ifTrue: [token _ (token , (String with: self step)) asSymbol]

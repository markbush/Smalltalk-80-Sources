asString

	^(String new: self size) replaceFrom: 1 to: self size withByteArray: self startingAt: 1

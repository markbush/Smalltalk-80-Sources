diskID
	"return user name and disk name installed in O.S.
	login name is stored somewhere else???"

	| f userName diskName len |
	f _ self oldFile: 'Sys.Boot'.
	f text.
	f readOnly.
	f position: 512.
	len _ f next asciiValue.
	userName _ f next: len.
	f padToNextWord.
	len _ f next asciiValue.
	diskName _ f next: len.
	f close.
	^Array with: userName with: diskName

selectTool: aCharacter
	"A new tool has been selected.  It is denoted by aCharacter.  Set the tool."

	"This code is written out in long hand (i.e., rather than dispatching on a
	table of options) so that it is obvious what is happening."

	aCharacter =  SingleCopyKey	ifTrue: [^#singleCopy].
	aCharacter =  RepeatCopyKey	ifTrue: [^#repeatCopy].
	aCharacter =  LineKey			ifTrue: [^#line].
	aCharacter =  CurveKey			ifTrue: [^#curve].
	aCharacter =  BlockKey			ifTrue: [^#block].
	aCharacter =  SelectKey			ifTrue: [^#newSourceForm].
	aCharacter =  OverKey			ifTrue: [^#overMode].
	aCharacter =  UnderKey			ifTrue: [^#underMode].
	aCharacter =  ReverseKey		ifTrue: [^#reverseMode].
	aCharacter =  EraseKey			ifTrue: [^#eraseMode].
	aCharacter =  ChangeGridsKey	ifTrue: [^#changeGridding].
	aCharacter =  TogglexGridKey	ifTrue: [^#togglexGridding].
	aCharacter =  ToggleyGridKey	ifTrue: [^#toggleyGridding].
	aCharacter =  BitEditKey			ifTrue: [^#magnify].
	aCharacter =  WhiteKey			ifTrue: [^#colorWhite].
	aCharacter =  LightGrayKey		ifTrue: [^#colorLightGray].
	aCharacter =  GrayKey			ifTrue: [^#colorGray].
	aCharacter =  DarkGrayKey		ifTrue: [^#colorDarkGray].
	aCharacter =  BlackKey			ifTrue: [^#colorBlack].
	aCharacter =  OutKey			ifTrue: [^#fileOutForm].
	aCharacter =  InKey				ifTrue: [^#fileInForm].
	^ #singleCopy

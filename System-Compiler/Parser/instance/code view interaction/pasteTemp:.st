pasteTemp: name
	| editor |
	editor _ self editor.
	(lastTempMark > 0 and: [(editor text at: lastTempMark) = $|])
		ifTrue:		"Paste in before vertical bar"
			[editor selectAt: lastTempMark.
			self replaceEditSelectionWith: name , ' '.
			lastTempMark _ lastTempMark + name size + 1]
		ifFalse:		"No temp declarations yet; have to insert whole line"
			[editor selectAt: lastTempMark+1.
			self replaceEditSelectionWith: (String with: Character cr) , '	| ' , name , ' | '.
			lastTempMark _ lastTempMark + name size + 6]

printAllMessagesOn: aFileStream
	"Smalltalks printAllMessagesOn: (Disk file: 'smalltalk.allMessages')."

	| class selectorStream |
	selectorStream _ WriteStream on: (String new: 100).
	SystemOrganization categories do:
		[:sysCat |
		Transcript show: sysCat; cr.
		"form feed between categories of classes"
		aFileStream nextPut: 12 asCharacter; cr; nextPutAll: sysCat.
		(SystemOrganization listAtCategoryNamed: sysCat) do:
			[:className |
			class _ self at: className.
			aFileStream crtab: 1; nextPutAll: className.
			class organization categories do:
				[:classCat |
				aFileStream crtab: 2; nextPutAll: classCat; crtab: 3.
				selectorStream reset.
				(class organization listAtCategoryNamed: classCat) do:
					[:selector |
					(selectorStream position + selector size) > 70
						ifTrue:
							[aFileStream nextPutAll: selectorStream contents.
							aFileStream crtab: 4.
							selectorStream reset].
					selectorStream space; nextPutAll: selector.
					aFileStream nextPutAll: selectorStream contents.]].
			aFileStream crtab: 1; nextPutAll: class class name.
			class class organization categories
			  do:
				[:classCat |
				aFileStream crtab: 2; nextPutAll: classCat; crtab: 3.
				selectorStream reset.
				(class class organization listAtCategoryNamed: classCat) do:
					[:selector |
					(selectorStream position + selector size) > 70
						ifTrue:
							[aFileStream nextPutAll: selectorStream contents.
							aFileStream crtab: 4.
							selectorStream reset].
					selectorStream space; nextPutAll: selector.
					aFileStream nextPutAll: selectorStream contents.]].
			]
		].
	aFileStream close.

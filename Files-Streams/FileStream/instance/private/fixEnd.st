fixEnd
	(self writing and: [position > page dataEnd])
		ifTrue: ["fix the end of page" page dataEnd: (readLimit _ position)]

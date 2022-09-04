do: aBlock 
	| files |
	files _ (self fileNames collect: [ : aFileName | self initFileName: aFileName  ]).
	(ReadStream on:files) do: aBlock

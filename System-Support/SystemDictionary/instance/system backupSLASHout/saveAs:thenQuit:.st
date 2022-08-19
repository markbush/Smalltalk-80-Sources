saveAs: imagePrefix thenQuit: quitIfTrue
	"Copy the changes file to the new name if necessary, then create a matching image file.  Answer true if the image file was just created."

	Disk == nil
		ifFalse:
			[(imagePrefix sameAs: 'snapshot')
					ifFalse: [self copyChangesTo: imagePrefix, '.changes']].
	^self snapshotAs: imagePrefix thenQuit: quitIfTrue

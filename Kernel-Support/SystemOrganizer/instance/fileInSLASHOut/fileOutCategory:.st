fileOutCategory: category
	| aFileStream |
	aFileStream _ Disk file: (category , '.st.') asFileName.
	self fileOutCategory: category on: aFileStream.
	aFileStream shorten; close

setFileStream: aStream

	aStream release.		"close, since later a new file stream will be created"
	fileName _ aStream file fullName

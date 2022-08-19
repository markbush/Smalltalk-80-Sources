computeBoundingBox
	^center - radius + form offset extent: form extent + (radius * 2) asPoint

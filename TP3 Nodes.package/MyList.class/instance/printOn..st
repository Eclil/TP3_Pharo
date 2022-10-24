printing
printOn: aStream

	|node|
	node := begin.

	aStream nextPut: $(.
	(node = nil)
	ifTrue:[aStream nextPut: $)];
	
	ifFalse:[
	aStream nextPutAll: node value asString.
	
	[node nNode = nil]
	whileFalse:[node := node nNode.
		aStream nextPut: $,;
		nextPutAll: node value asString.].
		
	aStream nextPut: $).].
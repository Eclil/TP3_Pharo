accessing
value: aValue nNode: aNode

	| Node |
	
	Node := MyNode new.
	Node value = aValue.
	Node nNode = aNode.
	
	^Node
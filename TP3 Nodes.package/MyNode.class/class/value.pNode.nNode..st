accessing
value: aValue pNode: aNode nNode: otherNode

	| Node |
	
	Node := MyNode new.
	Node value: aValue.
	Node pNode: aNode.
	Node nNode: otherNode.
	
	^Node
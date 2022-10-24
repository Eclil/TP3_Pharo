accessing
value: aValue pNode: aNode

	| Node |
	
	Node := MyNode new.
	Node value: aValue.
	Node pNode: aNode.
	
	^Node
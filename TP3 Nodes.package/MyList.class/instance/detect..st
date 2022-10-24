accessing
detect: block

	| node result |
	node := begin.
	[node isNil]
		whileFalse: [ 
			(block value: node value)
			ifTrue: [ result := node value.
				node := nil.];
			ifFalse: [node := node nNode]].
		
	^ result 
	
	
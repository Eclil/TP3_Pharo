accessing
do: block

	| node |
	node := begin.
	[ node isNil ] 
		whileFalse: [ 
	 		block value: node value.
			node := node nNode ]
	
	
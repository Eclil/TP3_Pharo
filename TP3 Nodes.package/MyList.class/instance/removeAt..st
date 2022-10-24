accessing
removeAt: anInt
	
	|node prev next|
	
	(begin = nil)
	ifTrue:[^Error new signal: 'MyList is already empty'].
	
	(anInt <= 0)
	ifTrue:[^Error new signal: 'a MyList does not allow 0 or any negative integer as indice'].
	
	(anInt > size)
	ifTrue:[^Error new signal: 'indice is greater than MyList size'].
	
	size := size - 1.
	node := begin.
	1 to: (anInt-1) do:[:i|node := node nNode].
	
	prev := node pNode.
	next := node nNode.
	
	(prev = nil)
	ifTrue:[
		(next = nil)
		ifTrue: [begin := nil. end := nil]
		ifFalse: [begin := next. next pNode: nil] 
		];
	
	ifFalse:[
		(next = nil)
		ifTrue: [end := prev. prev nNode: nil.]
		ifFalse: [prev nNode: next. next pNode: prev] 
		].
	

	
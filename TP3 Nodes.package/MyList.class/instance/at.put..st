accessing
at: anInt put: aValue
	
	|node|
	
	(anInt <= 0)
	ifTrue:[^Error new signal: 'a MyList does not allow 0 or any negative integer as indice'].
	
	(anInt > size)
	ifTrue:[^Error new signal: 'Indice above the MyList size'].
	
	node := begin.
	1 to: (anInt-1) do:[:i|node := node nNode].

	node value: aValue
	
	
	
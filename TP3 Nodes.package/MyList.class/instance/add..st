accessing
add: aValue
	
	|newnode|
	
	newnode := MyNode value: aValue.
	
	(size == 0)
	ifTrue:[begin := newnode. end := newnode].
	
	(size == 1)
	ifTrue:[end := newnode.
		end pNode: begin.
		begin nNode: end].

	(size >= 2)
	ifTrue: [ end nNode: newnode.
	newnode pNode: end.
	end := newnode].
	
	size := size + 1.
	
	
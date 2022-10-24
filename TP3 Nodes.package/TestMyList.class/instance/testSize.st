tests
testSize

	|aList|
	
	aList := MyList new.
	self assert: aList size equals: 0.
	
	aList add: 5.
	self assert: aList size equals: 1.
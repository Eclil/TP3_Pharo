tests
testEmpty

	|aList|
	
	aList := MyList new.
	self assert: aList isEmpty.
	
	aList add: 1.
	self assert: aList isEmpty equals: false.
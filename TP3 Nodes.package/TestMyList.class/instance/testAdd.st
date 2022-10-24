tests
testAdd

	|aList|
	
	aList := MyList new.
	self assert: aList asString equals: '()'.
	self assert: aList size equals: 0.
	
	aList add: 'hello'.
	self assert: aList asString equals: '(hello)'.
	self assert: aList size equals: 1.
	
	aList add: 'world'.
	self assert: aList size equals: 2.
	self assert: aList asString equals: '(hello,world)'.
	
	aList add: '<3'.
	self assert: aList size equals: 3.
	self assert: aList asString equals: '(hello,world,<3)'.

accessing
collect: block

	| result |
	result :=  MyList new.
	self do: [ :each |
		result add: (block value: each) ].
	^ result
	
	
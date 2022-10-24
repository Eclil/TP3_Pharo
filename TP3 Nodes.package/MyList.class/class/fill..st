accessing
fill: aCollectionOfValues
	
	|list|
	
	list := MyList new.
	aCollectionOfValues do: [ :each | list add: each ].
	
	^list.
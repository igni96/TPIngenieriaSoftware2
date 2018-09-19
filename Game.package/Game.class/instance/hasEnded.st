accesing
hasEnded
	players do:[:each |
		(each position>=(board numberOfSpaces ))
		ifTrue: [ ^true ]. 
		
		].
	
^false.
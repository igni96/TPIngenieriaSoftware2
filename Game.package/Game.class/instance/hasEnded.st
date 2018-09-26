accesing
hasEnded
	players
		do: [ :each | 
			each position >= numberOfTiles
				ifTrue: [ 
					stateOfGame :=GameEnded new.
					^ true.
					] ].
	^ false
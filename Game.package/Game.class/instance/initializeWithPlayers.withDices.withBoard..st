initialization
initializeWithPlayers: aPlayersArray withDices: aDiceArray withBoard: aBoard 
	players:=aPlayersArray.
	dices:=aDiceArray.
	numberOfTiles:=aBoard.
	turn:=1.
	stateOfGame:=GamePlaying new.
	
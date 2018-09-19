tests
testBoardIsCreated
|board|
board:=Board withNumberOfSpaces: 52.
self assert: board numberOfSpaces equals: 52.
Class {
	#name : #ToDoItemTest,
	#superclass : #TestCase,
	#instVars : [
		'toDoItem1',
		'toDoItem2'
	],
	#category : #'TP4-Ej1-ToDoList-Tests'
}

{ #category : #running }
ToDoItemTest >> setUp [
	toDoItem1 := ToDoItem name: 'Estudiar OO2'.
	toDoItem2 := ToDoItem name: 'Estudiar CyPLP'.
]

{ #category : #tests }
ToDoItemTest >> testAddComment [
	| comment1 comment2 comment3 comment4 |
	self assert: toDoItem1 comments isEmpty.
	comment1 := 'Parcial 12/06'.
	comment2 := 'TP6 subido'.
	comment3 := 'Refactoring aprobado'.
	comment4 := 'Este no se agrega'.
	toDoItem1 addComment: comment1.
	self assert: (toDoItem1 comments includes: comment1).
	toDoItem1 start.
	toDoItem1 addComment: comment2.
	self assert: (toDoItem1 comments includes: comment2).
	toDoItem1 togglePause.
	toDoItem1 addComment: comment3.
	self assert: (toDoItem1 comments includes: comment3).
	toDoItem1 finish.
	toDoItem1 addComment: comment4.
	self deny: (toDoItem1 comments includes: comment4)
]

{ #category : #tests }
ToDoItemTest >> testFinish [
	| toDoItemPaused |
	toDoItemPaused := ToDoItem name: 'Mandar mail adscripcion'.
	toDoItemPaused start.
	toDoItemPaused togglePause.
	toDoItemPaused finish.
	toDoItem1 start.
	toDoItem1 finish.
	self deny: toDoItemPaused endTime isNil.
	self deny: toDoItem1 endTime isNil.
	self assert: toDoItem2 endTime isNil.
]

{ #category : #tests }
ToDoItemTest >> testStart [
	toDoItem1 start.
	self assert: toDoItem1 startTime isNil equals: false.
	self assert: toDoItem2 startTime isNil equals: true
]

{ #category : #tests }
ToDoItemTest >> testTogglePause [
	self should: [ toDoItem1 togglePause ] raise: Error.
	toDoItem1 start.
	self shouldnt: [ toDoItem1 togglePause ] raise: Error.
	toDoItem1 togglePause.
	self shouldnt: [ toDoItem1 togglePause ] raise: Error.
	toDoItem1 finish.
	self should: [ toDoItem1 togglePause ] raise: Error
]

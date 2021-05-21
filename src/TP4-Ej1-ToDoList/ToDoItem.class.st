Class {
	#name : #ToDoItem,
	#superclass : #Object,
	#instVars : [
		'state',
		'name',
		'startTime',
		'endTime',
		'comments'
	],
	#category : #'TP4-Ej1-ToDoList'
}

{ #category : #accessing }
ToDoItem class >> name: aName [
	^(self new) name: aName
]

{ #category : #adding }
ToDoItem >> addComment: aComment [
	state addComment
	ifTrue: [ self comments add: aComment ]
]

{ #category : #accessing }
ToDoItem >> comments [
	^ comments
]

{ #category : #accessing }
ToDoItem >> endTime [
	^ endTime 
]

{ #category : #accessing }
ToDoItem >> endTime: aDate [
	endTime := aDate
]

{ #category : #initialization }
ToDoItem >> finish [
	state finish: self
]

{ #category : #accessing }
ToDoItem >> name: aName [
	name := aName.
	state := Pending new.
	comments := OrderedCollection new
]

{ #category : #accessing }
ToDoItem >> start [ 
	state start: self
]

{ #category : #accessing }
ToDoItem >> startTime [ 
	^ startTime 
]

{ #category : #accessing }
ToDoItem >> startTime: aDate [
	startTime := aDate
]

{ #category : #accessing }
ToDoItem >> state: aState [
	state := aState
]

{ #category : #behavior }
ToDoItem >> togglePause [
	state togglePause: self
]

{ #category : #acccessing }
ToDoItem >> workedTime [
	state workedTime: self
]

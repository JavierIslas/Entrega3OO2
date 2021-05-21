Class {
	#name : #State,
	#superclass : #Object,
	#category : #'TP4-Ej1-ToDoList'
}

{ #category : #adding }
State >> addComment [
	^true 
]

{ #category : #behavior }
State >> finish: aToDoItem [
	^ self subclassResponsibility 
]

{ #category : #accessing }
State >> start: aToDoItem [
	^ self subclassResponsibility 
]

{ #category : #behavior }
State >> togglePause: aToDoItem [
	^ self subclassResponsibility 
]

{ #category : #acccessing }
State >> workedTime: aToDoItem [ 
	^ self subclassResponsibility 
]

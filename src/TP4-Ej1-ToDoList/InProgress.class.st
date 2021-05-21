Class {
	#name : #InProgress,
	#superclass : #State,
	#category : #'TP4-Ej1-ToDoList'
}

{ #category : #behavior }
InProgress >> finish: aToDoItem [
	aToDoItem state: Finished new.
	aToDoItem endTime: DateAndTime now.
]

{ #category : #accessing }
InProgress >> start: aToDoItem [
	^ self
]

{ #category : #behavior }
InProgress >> togglePause: aToDoItem [ 
	aToDoItem state: (Paused new)
]

{ #category : #acccessing }
InProgress >> workedTime: aToDoItem [
	^ DateAndTime now - aToDoItem startTime
]

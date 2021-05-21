Class {
	#name : #Finished,
	#superclass : #State,
	#category : #'TP4-Ej1-ToDoList'
}

{ #category : #adding }
Finished >> addComment [ 
	^false
]

{ #category : #behavior }
Finished >> finish: aToDoItem [
	^ self
]

{ #category : #accessing }
Finished >> start: aToDoItem [
	^ self
]

{ #category : #behavior }
Finished >> togglePause: aToDoItem [ 
	self error: 'Accion invalida. Tarea terminada'
]

{ #category : #acccessing }
Finished >> workedTime: aToDoItem [ 
	^ (aToDoItem endTime - aToDoItem startTime)
]

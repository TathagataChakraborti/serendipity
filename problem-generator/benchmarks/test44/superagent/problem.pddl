(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM5 )
		( AT_MK2_ROOM2 )
		( AT_COMMX_ROOM7 )
		( AT_ROBOT_ROOM2 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM11 )
		)
	)
	(:metric minimize (total-cost))

)

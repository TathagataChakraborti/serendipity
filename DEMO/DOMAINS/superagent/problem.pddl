(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( HAS_MEDKIT_ROBOT )
		( HAS_ROBOT_MK2 )
		( AT_MK1_ROOM2 )
		( AT_COMMX_ROOM5 )
		( AT_ROBOT_ROOM3 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM1 )
		)
	)
	(:metric minimize (total-cost))

)

(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM5 )
		( AT_MK2_ROOM3 )
		( AT_COMMX_ROOM2 )
		( AT_ROBOT_ROOM12 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM10 )
		)
	)
	(:metric minimize (total-cost))

)

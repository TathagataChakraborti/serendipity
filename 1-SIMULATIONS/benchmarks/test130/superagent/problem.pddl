(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM2 )
		( AT_MK2_ROOM2 )
		( AT_COMMX_HALL5 )
		( AT_ROBOT_ROOM9 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM4 )
		)
	)
	(:metric minimize (total-cost))

)

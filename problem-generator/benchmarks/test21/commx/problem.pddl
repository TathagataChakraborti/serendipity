(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM9 )
		( AT_MK2_ROOM2 )
		( AT_COMMX_HALL2 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM2 )
		)
	)
	(:metric minimize (total-cost))

)

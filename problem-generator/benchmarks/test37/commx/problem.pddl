(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM2 )
		( AT_MK2_ROOM6 )
		( AT_COMMX_ROOM5 )
	)
	(:goal
		(and 
		CONDUCTED_TRIAGE_COMMX_ROOM6 )
		)
	)
	(:metric minimize (total-cost))

)

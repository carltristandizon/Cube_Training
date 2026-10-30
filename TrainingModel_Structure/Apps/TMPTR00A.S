;;<<Default Template>><<PUBLIC TRANSPORT>><<Default>>;;
RUN PGM=PUBLIC TRANSPORT 

; PT differs from the other modules in that PROCESS PHASE= cannot be specified in
; the script if not used.  In the other modules, specified phases that are unused
; will be ignored.  In PT this condition will cause a fatal error.  Uncomment the 
; PROCESS...ENDPROCESS blocks you wish to use by deleting the leading ;.

;PROCESS PHASE=NODEREAD
; loops over all nodes computes node based scalar and array variables (Optional) 


;ENDPROCESS

;PROCESS PHASE=LINKREAD
; loops over all links Computes link based scalar and array variables (Optional)


;ENDPROCESS

;PROCESS PHASE=DATAPREP
; generates/reads non-transit legs (Optional - Required for PT Network Development)


;ENDPROCESS

;PROCESS PHASE=MATI
; manipulates input and work matrices prior to processing each Origin zone, I (Optional)


;ENDPROCESS

;PROCESS PHASE=SELECTIJ
; allows finer selection of zone pairs, IJ, for Route Evaluation, and the setting 
; or revising of trips for Loading (Optional)


;ENDPROCESS

;PROCESS PHASE=SKIMIJ
; saves and manipulates skims for zone pairs, IJ (Optional - Required for Skimming)
; extracts and saves selected link/line/mode/operator trips to work matrices
; using special SELECTLINK functions


;ENDPROCESS

;PROCESS PHASE=MATO
; allows processing of work matrices prior to them being written to the MATO files 
; at the end of each Origin zone (Optional)


;ENDPROCESS

ENDRUN


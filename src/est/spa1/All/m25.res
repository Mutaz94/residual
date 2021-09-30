Thu Sep 30 03:55:45 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/spa1/All/dat25.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       30 SEP 2021
Days until program expires : 199
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.5.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 template control stream
0DATA CHECKOUT RUN:              NO
 DATA SET LOCATED ON UNIT NO.:    2
 THIS UNIT TO BE REWOUND:        NO
 NO. OF DATA RECS IN DATA SET:      600
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
             - PARAMETER IS NOT ALLOWED FOR THIS MODEL
             * PARAMETER IS NOT SUPPLIED BY PK SUBROUTINE;
               WILL DEFAULT TO ONE IF APPLICABLE
0DATA ITEM INDICES USED BY PRED ARE:
   EVENT ID DATA ITEM IS DATA ITEM NO.:      6
   TIME DATA ITEM IS DATA ITEM NO.:          2
   DOSE AMOUNT DATA ITEM IS DATA ITEM NO.:   4

0PK SUBROUTINE CALLED WITH EVERY EVENT RECORD.
 PK SUBROUTINE NOT CALLED AT NONEVENT (ADDITIONAL OR LAGGED) DOSE TIMES.
0ERROR SUBROUTINE CALLED WITH EVERY EVENT RECORD.
0DATA RECORD ERROR MESSAGE FROM PRED:
0DATA REC         101: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         107: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         113: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         119: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         125: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         131: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         137: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         143: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         149: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         155: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         161: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         167: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         173: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         179: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         185: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         191: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         197: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         201: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         207: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         213: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         219: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         225: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         231: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         237: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         243: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         249: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         255: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         261: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         267: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         273: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         279: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         285: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         291: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         297: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         401: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         407: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         413: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         419: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         425: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         431: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         437: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         443: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         449: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         455: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         461: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         467: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         473: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         479: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         485: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         491: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         497: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         497: MAXIMUM NUMBER OF ERRORS EXCEEDED - NO MORE DATA RECORDS
 WILL BE CHECKED
0RUN TERMINATED BECAUSE OF ERRORS IN DATA RECORDS
 #CPUT: Total CPU Time in Seconds,        0.059
Stop Time:
Thu Sep 30 03:55:47 CDT 2021

Thu Sep 30 07:06:06 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	Two-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/7/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/spa2/SL3/dat76.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK
ET1 = EXP(ETA(1)*THETA(6))
ET2 = EXP(ETA(2)*THETA(7))
ET3 = EXP(ETA(3)*THETA(8))
ET4 = EXP(ETA(4)*THETA(9))
ET5 = EXP(ETA(5)*THETA(10))

CL = 5.0 * THETA(1) * ET1
V2 = 35  * THETA(2) * ET2
Q  = 50  * THETA(3) * ET3
V3 = 50  * THETA(4) * ET4
KA = 0.7 * THETA(5) * ET5
SC = V2
$ERROR
CVERR = 0.05
W = THETA(11)*F*CVERR

Y 	= F + W*ERR(1)

$THETA
(0,1) ; CL
(0,1) ; V2
(0,1) ; Q
(0,1) ; V3
(0,1) ; KA
(0,1) ; IIVCL
(0,1) ; IIVV2
(0,1) ; IIVQ
(0,1) ; IIVV3
(0,1) ; IIVKA
(0,1) ; CVPropErr

$OMEGA  (0.09 FIX)x5
$SIGMA  1 FIX ;        [P]
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
 NO. OF DATA RECS IN DATA SET:      699
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      599
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:  11
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   5
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
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
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

 TWO COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN4)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   5
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   BASIC PK PARAMETER NO.  1: ELIMINATION RATE (K)
   BASIC PK PARAMETER NO.  2: CENTRAL-TO-PERIPH. RATE (K23)
   BASIC PK PARAMETER NO.  3: PERIPH.-TO-CENTRAL RATE (K32)
   BASIC PK PARAMETER NO.  5: ABSORPTION RATE (KA)
 TRANSLATOR WILL CONVERT PARAMETERS
 CL, V2, Q, V3 TO K, K23, K32 (TRANS4)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         PERIPH.      ON         NO         YES        NO         NO
    4         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            6           *           *           *           *
    3            *           *           *           *           *
    4            *           -           -           -           -
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
0DATA REC         100: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         107: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         114: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         121: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         128: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         135: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         142: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         149: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         156: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         163: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         170: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         177: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         184: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         191: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         198: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         200: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         207: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         214: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         221: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         228: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         235: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         242: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         249: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         256: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         263: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         270: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         277: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         284: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         291: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         298: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         300: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         307: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         314: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         321: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         328: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         335: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         342: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         349: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         356: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         363: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         370: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         377: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         384: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         391: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         398: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         500: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         507: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         514: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         521: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         528: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         535: TIME DATA ITEM IS LESS THAN PREVIOUS TIME DATA ITEM
0DATA REC         535: MAXIMUM NUMBER OF ERRORS EXCEEDED - NO MORE DATA RECORDS
 WILL BE CHECKED
0RUN TERMINATED BECAUSE OF ERRORS IN DATA RECORDS
 #CPUT: Total CPU Time in Seconds,        0.067
Stop Time:
Thu Sep 30 07:06:07 CDT 2021
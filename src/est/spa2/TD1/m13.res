Thu Sep 30 07:14:27 CDT 2021
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
$DATA ../../../../data/spa2/TD1/dat13.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
1


 #TBLN:      1
 #METH: First Order Conditional Estimation with Interaction

 ESTIMATION STEP OMITTED:                 NO
 ANALYSIS TYPE:                           POPULATION
 NUMBER OF SADDLE POINT RESET ITERATIONS:      0
 GRADIENT METHOD USED:               NOSLOW
 CONDITIONAL ESTIMATES USED:              YES
 CENTERED ETA:                            NO
 EPS-ETA INTERACTION:                     YES
 LAPLACIAN OBJ. FUNC.:                    NO
 NO. OF FUNCT. EVALS. ALLOWED:            10000
 NO. OF SIG. FIGURES REQUIRED:            2
 INTERMEDIATE PRINTOUT:                   YES
 ESTIMATE OUTPUT TO MSF:                  NO
 ABORT WITH PRED EXIT CODE 1:             NO
 IND. OBJ. FUNC. VALUES SORTED:           NO
 NUMERICAL DERIVATIVE
       FILE REQUEST (NUMDER):               NONE
 MAP (ETAHAT) ESTIMATION METHOD (OPTMAP):   0
 ETA HESSIAN EVALUATION METHOD (ETADER):    0
 INITIAL ETA FOR MAP ESTIMATION (MCETA):    0
 SIGDIGITS FOR MAP ESTIMATION (SIGLO):      100
 GRADIENT SIGDIGITS OF
       FIXED EFFECTS PARAMETERS (SIGL):     100
 NOPRIOR SETTING (NOPRIOR):                 0
 NOCOV SETTING (NOCOV):                     OFF
 DERCONT SETTING (DERCONT):                 OFF
 FINAL ETA RE-EVALUATION (FNLETA):          1
 EXCLUDE NON-INFLUENTIAL (NON-INFL.) ETAS
       IN SHRINKAGE (ETASTYPE):             NO
 NON-INFL. ETA CORRECTION (NONINFETA):      0
 RAW OUTPUT FILE (FILE): m13.ext
 EXCLUDE TITLE (NOTITLE):                   NO
 EXCLUDE COLUMN LABELS (NOLABEL):           NO
 FORMAT FOR ADDITIONAL FILES (FORMAT):      S1PE12.5
 PARAMETER ORDER FOR OUTPUTS (ORDER):       TSOL
 KNUTHSUMOFF:                               0
 INCLUDE LNTWOPI:                           NO
 INCLUDE CONSTANT TERM TO PRIOR (PRIORC):   NO
 INCLUDE CONSTANT TERM TO OMEGA (ETA) (OLNTWOPI):NO
 ADDITIONAL CONVERGENCE TEST (CTYPE=4)?:    NO
 EM OR BAYESIAN METHOD USED:                 NONE


 THE FOLLOWING LABELS ARE EQUIVALENT
 PRED=PREDI
 RES=RESI
 WRES=WRESI
 IWRS=IWRESI
 IPRD=IPREDI
 IRS=IRESI

 MONITORING OF SEARCH:


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2496.87259393421        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3640E+02 -6.7498E+00 -1.2827E+01  2.4419E+01  1.4703E+01  4.2413E+01  7.4574E+00  3.7734E+00  1.3153E+01  2.5678E+01
             1.4222E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2500.53998467293        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:      179
 NPARAMETR:  9.9429E-01  1.1290E+00  1.1213E+00  9.7350E-01  1.1119E+00  9.8768E-01  9.7610E-01  9.9116E-01  9.6671E-01  8.5880E-01
             9.7458E-01
 PARAMETER:  9.4275E-02  2.2138E-01  2.1449E-01  7.3148E-02  2.0607E-01  8.7603E-02  7.5808E-02  9.1117E-02  6.6141E-02 -5.2223E-02
             7.4251E-02
 GRADIENT:   1.1152E+00  1.4935E+01  9.6162E+00  5.3627E+00  9.9701E+00 -2.7269E+00 -7.9383E+00 -1.4224E+01 -7.5616E+00 -1.2125E+01
            -2.3441E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2501.48303985432        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      367
 NPARAMETR:  9.9292E-01  1.1391E+00  1.1834E+00  9.6933E-01  1.1420E+00  1.0019E+00  1.0443E+00  1.2183E+00  9.9234E-01  8.0694E-01
             9.7653E-01
 PARAMETER:  9.2892E-02  2.3022E-01  2.6842E-01  6.8847E-02  2.3276E-01  1.0189E-01  1.4331E-01  2.9749E-01  9.2315E-02 -1.1451E-01
             7.6250E-02
 GRADIENT:  -1.6258E+00  1.4294E+01 -3.1191E-01  4.8481E+00  2.2289E+01  2.8690E+00  4.3515E-01 -6.7963E+00  1.9729E+00 -1.5336E+01
            -2.0055E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2501.57189220948        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      543            RESET HESSIAN, TYPE II
 NPARAMETR:  9.9292E-01  1.1386E+00  1.1847E+00  9.6929E-01  1.1427E+00  9.9486E-01  1.0452E+00  1.2188E+00  9.9164E-01  8.1066E-01
             9.7720E-01
 PARAMETER:  9.2893E-02  2.2977E-01  2.6946E-01  6.8808E-02  2.3339E-01  9.4842E-02  1.4425E-01  2.9790E-01  9.1602E-02 -1.0991E-01
             7.6938E-02
 GRADIENT:   4.4348E+02  1.5482E+02  9.9759E+00  7.8873E+01  7.1746E+01  4.3207E+01  9.3866E+00 -4.9208E+00  1.0179E+01 -1.3202E+01
            -1.7966E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2502.38710251538        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.9292E-01  1.1320E+00  1.1847E+00  9.6929E-01  1.1427E+00  9.9284E-01  1.0387E+00  1.2188E+00  9.8393E-01  8.5894E-01
             9.8529E-01
 PARAMETER:  9.2893E-02  2.2400E-01  2.6945E-01  6.8806E-02  2.3339E-01  9.2819E-02  1.3801E-01  2.9790E-01  8.3800E-02 -5.2058E-02
             8.5181E-02
 GRADIENT:  -1.7497E+00  5.7461E+00 -1.6609E+00 -1.2311E+00  1.7351E+01 -5.9717E-01  1.4503E+00 -4.9046E+00  1.2268E+00 -6.8815E+00
            -8.3224E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2502.48723075721        NO. OF FUNC. EVALS.: 153
 CUMULATIVE NO. OF FUNC. EVALS.:      858             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9317E-01  1.1320E+00  1.1855E+00  9.6953E-01  1.1420E+00  9.9427E-01  1.0250E+00  1.2271E+00  9.7813E-01  8.6512E-01
             9.8503E-01
 PARAMETER:  9.3143E-02  2.2400E-01  2.7013E-01  6.9056E-02  2.3277E-01  9.4256E-02  1.2472E-01  3.0464E-01  7.7891E-02 -4.4890E-02
             8.4913E-02
 GRADIENT:   4.3717E+02  1.4081E+02  8.6977E+00  7.1745E+01  6.3412E+01  4.2396E+01  7.0719E+00 -2.6558E+00  7.5732E+00 -4.6112E+00
            -7.2538E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2502.62247732409        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1045             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9317E-01  1.1320E+00  1.1874E+00  9.6989E-01  1.1416E+00  9.9445E-01  1.0207E+00  1.2447E+00  9.8045E-01  8.7484E-01
             9.8713E-01
 PARAMETER:  9.3143E-02  2.2400E-01  2.7175E-01  6.9431E-02  2.3247E-01  9.4432E-02  1.2053E-01  3.1892E-01  8.0256E-02 -3.3710E-02
             8.7051E-02
 GRADIENT:   4.3535E+02  1.4033E+02  8.2593E+00  7.1450E+01  6.0070E+01  4.2310E+01  6.8822E+00 -1.3146E+00  8.1073E+00 -2.6815E+00
            -4.3531E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2502.63847187634        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:     1185
 NPARAMETR:  9.9317E-01  1.1322E+00  1.1874E+00  9.6989E-01  1.1418E+00  9.9157E-01  1.0194E+00  1.2445E+00  9.7941E-01  8.7868E-01
             9.8785E-01
 PARAMETER:  9.3143E-02  2.2414E-01  2.7175E-01  6.9431E-02  2.3262E-01  9.1530E-02  1.1925E-01  3.1872E-01  7.9196E-02 -2.9329E-02
             8.7777E-02
 GRADIENT:  -1.2510E+00  6.1332E+00 -1.9928E+00 -1.6876E+00  1.1415E+01 -1.0633E+00  7.2604E-03 -3.1341E+00 -8.8796E-02 -3.6572E+00
            -4.6966E+00

0ITERATION NO.:   38    OBJECTIVE VALUE:  -2502.64948995429        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1283
 NPARAMETR:  9.9307E-01  1.1324E+00  1.1871E+00  9.6979E-01  1.1421E+00  9.9281E-01  1.0189E+00  1.2449E+00  9.7929E-01  8.8086E-01
             9.8834E-01
 PARAMETER:  9.3143E-02  2.2414E-01  2.7175E-01  6.9431E-02  2.3262E-01  9.1781E-02  1.1885E-01  3.1872E-01  7.9170E-02 -2.6750E-02
             8.8171E-02
 GRADIENT:   1.1468E+05 -5.1167E+04  4.2237E+04  1.1466E+05 -4.9289E+04 -9.7384E-01  9.6492E+04 -1.8088E+04  1.1466E+05  1.1468E+05
            -5.7355E+04
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.3         2.3         2.3         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1283
 NO. OF SIG. DIGITS IN FINAL EST.:  1.3
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7192E-03 -1.9247E-02 -2.7203E-02  1.0855E-02 -3.4698E-02
 SE:             2.9964E-02  2.1400E-02  1.7095E-02  2.5308E-02  2.2588E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5425E-01  3.6843E-01  1.1155E-01  6.6799E-01  1.2451E-01

 ETASHRINKSD(%)  1.0000E-10  2.8308E+01  4.2729E+01  1.5216E+01  2.4327E+01
 ETASHRINKVR(%)  1.0000E-10  4.8602E+01  6.7200E+01  2.8117E+01  4.2736E+01
 EBVSHRINKSD(%)  3.1992E-01  2.7928E+01  4.6901E+01  1.6398E+01  2.3915E+01
 EBVSHRINKVR(%)  6.3881E-01  4.8056E+01  7.1805E+01  3.0107E+01  4.2111E+01
 RELATIVEINF(%)  9.9344E+01  1.3663E+01  1.4260E+01  2.2050E+01  1.8237E+01
 EPSSHRINKSD(%)  3.0019E+01
 EPSSHRINKVR(%)  5.1027E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2502.6494899542940     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1399.9232501086869     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.56
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     8.88
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2502.649       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  1.13E+00  1.19E+00  9.70E-01  1.14E+00  9.92E-01  1.02E+00  1.24E+00  9.79E-01  8.81E-01  9.88E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  9.00E-02
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.00E-01
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        2.91E+07
 
 TH 2
+        3.09E+03  4.45E+06
 
 TH 3
+        8.95E+06  8.42E+01  5.51E+06
 
 TH 4
+       -3.37E+02  1.16E+07  9.17E+06  3.05E+07
 
 TH 5
+        1.19E+02 -2.48E+02 -3.34E+06 -1.11E+07  8.13E+06
 
 TH 6
+        2.75E+02 -1.08E+02  8.43E+01  2.77E+02 -1.03E+02  2.01E+02
 
 TH 7
+        2.38E+07 -4.09E+02  3.28E+02  1.11E+03 -4.11E+02  2.23E+02  1.95E+07
 
 TH 8
+       -7.32E+06 -2.83E+06 -2.25E+06 -7.49E+06  2.83E+04 -6.83E+01 -2.67E+02  3.65E+06
 
 TH 9
+        2.95E+07  4.75E+03 -3.74E+03 -1.24E+04  4.55E+03  2.76E+02  1.12E+03  3.09E+03  2.99E+07
 
 TH10
+        3.28E+07 -1.92E+01  6.70E+00  1.51E+01 -7.16E+01  3.07E+02  1.24E+03  7.41E+00 -1.37E+04  3.69E+07
 
 TH11
+        2.92E+07  3.82E+03 -3.02E+03 -1.00E+04  3.66E+03 -2.72E+02 -1.09E+03  2.47E+03  1.22E+04 -1.10E+04  2.94E+07
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       34.516
Stop Time:
Thu Sep 30 07:15:03 CDT 2021
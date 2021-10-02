Sat Oct  2 00:37:49 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat59.csv ignore=@
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

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        2 OCT 2021
Days until program expires : 197
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
 NO. OF DATA RECS IN DATA SET:      500
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

 TOT. NO. OF OBS RECS:      400
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
 RAW OUTPUT FILE (FILE): m59.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -405.963113805787        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.3759E+02  5.6280E+01  5.1363E+01  3.2426E+01  1.3768E+02  2.3427E+01 -4.7965E+01 -2.7126E+01 -9.6982E+01 -9.4771E+01
            -2.2632E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1198.14196182918        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0132E+00  8.9508E-01  8.6909E-01  1.1110E+00  8.2443E-01  1.0385E+00  1.1568E+00  9.5850E-01  1.3199E+00  1.2087E+00
             1.8554E+00
 PARAMETER:  1.1310E-01 -1.0837E-02 -4.0307E-02  2.0529E-01 -9.3057E-02  1.3780E-01  2.4564E-01  5.7618E-02  3.7754E-01  2.8953E-01
             7.1813E-01
 GRADIENT:   5.1728E+01  3.6406E+01  1.2871E+01  7.2712E+01 -3.8918E+00  9.9881E+00 -2.7773E+00  5.1525E+00  2.7813E+01  1.2097E+01
            -4.8980E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1216.04657169090        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      199
 NPARAMETR:  1.0108E+00  5.7196E-01  6.5115E-01  1.3411E+00  5.7093E-01  1.0871E+00  1.9411E+00  3.5019E-01  1.0782E+00  8.9216E-01
             1.8877E+00
 PARAMETER:  1.1073E-01 -4.5869E-01 -3.2902E-01  3.9352E-01 -4.6048E-01  1.8348E-01  7.6326E-01 -9.4929E-01  1.7525E-01 -1.4105E-02
             7.3535E-01
 GRADIENT:  -9.7598E+01  5.6412E+01  3.7409E+01  9.3615E+01 -2.7532E+01  4.3430E+00  1.3411E+01 -1.2543E+00 -7.2511E+00 -1.7307E+01
            -4.7452E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1334.35916387991        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      378
 NPARAMETR:  1.1052E+00  3.9409E-01  6.6053E-01  1.4094E+00  5.5001E-01  1.0717E+00  2.2097E+00  1.0000E-02  9.5641E-01  7.9511E-01
             3.1565E+00
 PARAMETER:  1.9999E-01 -8.3119E-01 -3.1471E-01  4.4318E-01 -4.9782E-01  1.6920E-01  8.9285E-01 -4.7356E+00  5.5436E-02 -1.2927E-01
             1.2495E+00
 GRADIENT:   4.2026E+01  2.1415E+01 -5.0809E+00  3.8678E+01  1.3645E+01  1.2768E+01  1.4234E+01  0.0000E+00  4.7643E+00  4.0115E+00
            -1.8315E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1352.74316156099        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      553
 NPARAMETR:  1.0697E+00  3.0529E-01  1.1512E+00  1.5218E+00  8.3620E-01  9.9056E-01  1.1218E+00  2.7947E-01  6.6779E-01  3.7262E-01
             3.6161E+00
 PARAMETER:  1.6739E-01 -1.0865E+00  2.4081E-01  5.1987E-01 -7.8886E-02  9.0511E-02  2.1492E-01 -1.1749E+00 -3.0378E-01 -8.8720E-01
             1.3854E+00
 GRADIENT:  -1.1805E+01  1.8550E-01 -1.6197E+01  1.5613E+01  1.8722E+01 -2.1443E+00 -1.4163E-01  7.3767E-01 -2.5556E+00  2.0198E+00
            -1.2325E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1353.98428721076        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      728
 NPARAMETR:  1.0705E+00  2.2849E-01  1.5399E+00  1.5774E+00  9.2465E-01  9.8593E-01  1.2645E+00  1.5742E-01  6.2542E-01  2.4691E-01
             3.6826E+00
 PARAMETER:  1.6813E-01 -1.3763E+00  5.3169E-01  5.5576E-01  2.1664E-02  8.5826E-02  3.3467E-01 -1.7488E+00 -3.6933E-01 -1.2987E+00
             1.4036E+00
 GRADIENT:  -4.2194E+00  3.4231E-01  4.9125E+00 -4.0508E+00 -7.4956E+00 -1.1386E-01 -6.8021E-02  1.2388E-01 -1.3135E+00  6.6744E-01
            -2.6815E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1354.43895859011        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      903
 NPARAMETR:  1.0697E+00  1.5323E-01  1.3320E+00  1.6122E+00  8.4870E-01  9.8384E-01  1.6634E+00  1.0000E-02  6.3510E-01  1.1482E-01
             3.6864E+00
 PARAMETER:  1.6734E-01 -1.7758E+00  3.8671E-01  5.7761E-01 -6.4050E-02  8.3709E-02  6.0887E-01 -5.9591E+00 -3.5397E-01 -2.0644E+00
             1.4047E+00
 GRADIENT:  -3.7219E+00 -2.1980E-02 -1.2867E+00  1.4128E+00  2.0555E+00 -1.4471E+00 -1.6158E-02  0.0000E+00  6.3974E-01  1.3488E-01
             2.0003E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1354.48458869982        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1087
 NPARAMETR:  1.0705E+00  1.0246E-01  1.3602E+00  1.6421E+00  8.4399E-01  9.8553E-01  2.5467E+00  1.0000E-02  6.2102E-01  1.9394E-02
             3.6899E+00
 PARAMETER:  1.6816E-01 -2.1783E+00  4.0763E-01  5.9599E-01 -6.9612E-02  8.5429E-02  1.0348E+00 -9.2123E+00 -3.7639E-01 -3.8428E+00
             1.4056E+00
 GRADIENT:   3.9035E-01 -4.3853E-02 -2.0845E-01 -1.5975E+00  7.8154E-01 -4.9411E-01  6.6940E-02  0.0000E+00  5.6248E-01  3.7041E-03
             3.7361E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1354.48984403262        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1265
 NPARAMETR:  1.0704E+00  1.0216E-01  1.3599E+00  1.6426E+00  8.4336E-01  9.8691E-01  2.2527E+00  1.0000E-02  6.2010E-01  1.0000E-02
             3.6898E+00
 PARAMETER:  1.6802E-01 -2.1812E+00  4.0739E-01  5.9628E-01 -7.0359E-02  8.6821E-02  9.1211E-01 -9.2123E+00 -3.7787E-01 -4.7098E+00
             1.4056E+00
 GRADIENT:   9.4471E-04 -1.9215E-03 -2.6705E-02 -2.5786E-01  8.2177E-02 -7.2405E-02 -5.0206E-03  0.0000E+00 -4.4733E-02  0.0000E+00
            -4.8740E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1354.49076241446        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     1457             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0706E+00  1.0338E-01  1.3586E+00  1.6411E+00  8.4344E-01  9.8716E-01  2.2966E+00  1.0000E-02  6.2049E-01  1.0000E-02
             3.6899E+00
 PARAMETER:  1.6820E-01 -2.1694E+00  4.0646E-01  5.9538E-01 -7.0272E-02  8.7074E-02  9.3143E-01 -9.2123E+00 -3.7725E-01 -4.7098E+00
             1.4056E+00
 GRADIENT:   5.5144E+01  7.1982E-01  4.8914E-01  7.9142E+01  1.0149E+00  3.3938E+00  1.1435E-01  0.0000E+00  2.0106E+00  0.0000E+00
             1.1351E+01

0ITERATION NO.:   48    OBJECTIVE VALUE:  -1354.49104705837        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1550
 NPARAMETR:  1.0705E+00  1.0369E-01  1.3588E+00  1.6414E+00  8.4328E-01  9.8713E-01  2.2753E+00  1.0000E-02  6.2038E-01  1.0000E-02
             3.6898E+00
 PARAMETER:  1.6814E-01 -2.1663E+00  4.0661E-01  5.9553E-01 -7.0460E-02  8.7043E-02  9.2212E-01 -9.2123E+00 -3.7742E-01 -4.7098E+00
             1.4056E+00
 GRADIENT:   2.4826E-01 -2.2861E-02  8.7059E-03 -8.5299E-01  1.1615E-01  1.0860E-02  1.6911E-03  0.0000E+00  9.5568E-03  0.0000E+00
            -4.9358E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1550
 NO. OF SIG. DIGITS IN FINAL EST.:  2.9
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.6169E-05 -3.4578E-03  8.6048E-05 -1.3222E-02 -1.4520E-05
 SE:             2.8683E-02  3.5852E-03  8.4576E-05  2.2995E-02  1.5743E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9816E-01  3.3480E-01  3.0896E-01  5.6528E-01  9.2651E-01

 ETASHRINKSD(%)  3.9090E+00  8.7989E+01  9.9717E+01  2.2964E+01  9.9473E+01
 ETASHRINKVR(%)  7.6652E+00  9.8557E+01  9.9999E+01  4.0655E+01  9.9997E+01
 EBVSHRINKSD(%)  3.8488E+00  8.7987E+01  9.9664E+01  2.2901E+01  9.9430E+01
 EBVSHRINKVR(%)  7.5494E+00  9.8557E+01  9.9999E+01  4.0557E+01  9.9997E+01
 RELATIVEINF(%)  7.3104E+01  8.5869E-03  4.6562E-05  4.5286E-01  9.4764E-05
 EPSSHRINKSD(%)  1.9547E+01
 EPSSHRINKVR(%)  3.5274E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1354.4910470583727     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -619.34022049463454     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.94
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1354.491       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.07E+00  1.04E-01  1.36E+00  1.64E+00  8.43E-01  9.87E-01  2.28E+00  1.00E-02  6.20E-01  1.00E-02  3.69E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       20.969
Stop Time:
Sat Oct  2 00:38:11 CDT 2021
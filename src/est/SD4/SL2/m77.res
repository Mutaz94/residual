Sat Oct  2 02:57:29 CDT 2021
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
$DATA ../../../../data/SD4/SL2/dat77.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m77.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1677.74849074434        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9227E+02  3.7490E+01  1.9016E+01  7.1721E+01 -4.0729E+01  3.9571E+01  8.5035E-01  3.6778E+00  5.0038E+01  1.8629E+00
            -3.7903E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1688.22024101104        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0169E+00  1.1164E+00  1.0102E+00  9.5169E-01  1.0850E+00  1.0744E+00  1.0518E+00  9.5924E-01  7.1539E-01  1.0031E+00
             1.1649E+00
 PARAMETER:  1.1675E-01  2.1007E-01  1.1018E-01  5.0482E-02  1.8162E-01  1.7174E-01  1.5055E-01  5.8381E-02 -2.3492E-01  1.0308E-01
             2.5263E-01
 GRADIENT:  -2.4714E+01  3.1196E+01  1.1799E+01  3.3613E+01 -1.4778E+01  1.2059E+01 -1.1236E+01  8.9316E-01  9.2780E-02 -1.1698E+00
             2.2636E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1691.45232586191        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      375
 NPARAMETR:  1.0167E+00  9.1709E-01  8.1475E-01  1.0554E+00  8.9291E-01  1.0801E+00  1.4090E+00  7.2045E-01  5.3465E-01  8.2000E-01
             1.0838E+00
 PARAMETER:  1.1656E-01  1.3453E-02 -1.0487E-01  1.5394E-01 -1.3269E-02  1.7708E-01  4.4286E-01 -2.2788E-01 -5.2614E-01 -9.8447E-02
             1.8051E-01
 GRADIENT:  -2.5821E+01  2.7720E+01 -1.0378E+01  5.9673E+01  1.6486E+01  1.3273E+01 -2.2728E+00  2.4170E+00 -1.0713E+01 -2.5497E+00
            -3.9250E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1695.50882106420        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      551
 NPARAMETR:  1.0350E+00  7.9575E-01  5.9695E-01  1.0805E+00  6.8671E-01  1.0405E+00  1.4823E+00  2.1948E-01  5.9887E-01  6.5877E-01
             1.0745E+00
 PARAMETER:  1.3441E-01 -1.2847E-01 -4.1592E-01  1.7746E-01 -2.7585E-01  1.3972E-01  4.9357E-01 -1.4165E+00 -4.1271E-01 -3.1739E-01
             1.7185E-01
 GRADIENT:   4.9022E+00  1.4143E+01  9.7498E+00  1.2126E+01 -1.6285E+01 -1.7825E+00 -1.5878E+00  2.5918E-01  3.6293E-02 -1.0504E+00
            -2.4643E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1696.03246214436        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      726
 NPARAMETR:  1.0315E+00  6.5009E-01  6.2045E-01  1.1535E+00  6.5680E-01  1.0444E+00  1.7394E+00  9.4085E-02  5.7448E-01  6.9141E-01
             1.0776E+00
 PARAMETER:  1.3098E-01 -3.3064E-01 -3.7731E-01  2.4283E-01 -3.2038E-01  1.4345E-01  6.5357E-01 -2.2636E+00 -4.5429E-01 -2.6902E-01
             1.7473E-01
 GRADIENT:   6.3899E-01  8.5038E-01  6.3934E-01  1.1602E+00 -1.6989E+00 -9.8107E-02 -5.2307E-02  5.3145E-02 -7.2677E-03  2.9434E-01
             3.2665E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1696.05223146491        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      884
 NPARAMETR:  1.0317E+00  6.4389E-01  6.2104E-01  1.1561E+00  6.5608E-01  1.0448E+00  1.7535E+00  3.5175E-02  5.7406E-01  6.9371E-01
             1.0770E+00
 PARAMETER:  1.3117E-01 -3.4023E-01 -3.7636E-01  2.4503E-01 -3.2147E-01  1.4386E-01  6.6160E-01 -3.2474E+00 -4.5501E-01 -2.6570E-01
             1.7421E-01
 GRADIENT:   1.2068E+00 -2.4745E-01 -6.7500E-01  7.7703E-02  7.8405E-01  6.3062E-02  1.7891E-01  7.2247E-03  8.1017E-02  8.6247E-02
             1.3165E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1696.05411897020        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1061
 NPARAMETR:  1.0307E+00  6.4502E-01  6.2098E-01  1.1555E+00  6.5618E-01  1.0445E+00  1.7496E+00  1.0877E-02  5.7421E-01  6.9397E-01
             1.0768E+00
 PARAMETER:  1.3024E-01 -3.3847E-01 -3.7645E-01  2.4451E-01 -3.2131E-01  1.4353E-01  6.5940E-01 -4.4211E+00 -4.5477E-01 -2.6533E-01
             1.7401E-01
 GRADIENT:  -7.2992E-01 -8.7212E-02  1.3559E-01 -3.3791E-01 -2.6287E-01 -7.5150E-02  1.2720E-02  7.1188E-04  1.0904E-02  4.3742E-02
             2.0120E-02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1696.05596225883        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1153
 NPARAMETR:  1.0311E+00  6.4621E-01  6.2086E-01  1.1548E+00  6.5652E-01  1.0453E+00  1.7467E+00  1.0000E-02  5.7430E-01  6.9405E-01
             1.0769E+00
 PARAMETER:  1.3063E-01 -3.3663E-01 -3.7665E-01  2.4391E-01 -3.2081E-01  1.4427E-01  6.5772E-01 -5.4055E+00 -4.5460E-01 -2.6521E-01
             1.7407E-01
 GRADIENT:   5.2396E-02 -1.5031E-01  1.7006E-01 -5.4425E-01 -2.8430E-01  2.1949E-01 -3.1785E-02  0.0000E+00 -8.6894E-03  7.3991E-02
             4.4970E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1153
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4371E-03  2.2357E-02 -5.2888E-04 -2.5079E-02  7.6239E-03
 SE:             2.9859E-02  2.2881E-02  2.4461E-04  2.2815E-02  2.1908E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6161E-01  3.2852E-01  3.0605E-02  2.7168E-01  7.2784E-01

 ETASHRINKSD(%)  1.0000E-10  2.3346E+01  9.9181E+01  2.3566E+01  2.6605E+01
 ETASHRINKVR(%)  1.0000E-10  4.1241E+01  9.9993E+01  4.1579E+01  4.6132E+01
 EBVSHRINKSD(%)  4.4007E-01  2.3109E+01  9.9213E+01  2.3377E+01  2.5407E+01
 EBVSHRINKVR(%)  8.7821E-01  4.0877E+01  9.9994E+01  4.1289E+01  4.4360E+01
 RELATIVEINF(%)  9.8700E+01  8.0923E+00  3.7154E-04  8.4106E+00  2.8869E+00
 EPSSHRINKSD(%)  4.2457E+01
 EPSSHRINKVR(%)  6.6888E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1696.0559622588303     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -960.90513569509210     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.18
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1696.056       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  6.46E-01  6.21E-01  1.15E+00  6.57E-01  1.05E+00  1.75E+00  1.00E-02  5.74E-01  6.94E-01  1.08E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.222
Stop Time:
Sat Oct  2 02:57:45 CDT 2021

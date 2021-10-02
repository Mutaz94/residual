Sat Oct  2 03:19:54 CDT 2021
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
$DATA ../../../../data/SD4/SL3/dat50.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m50.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1635.91892043109        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2440E+02 -3.2635E+01 -6.5745E+01  3.1489E+01  7.5060E+01  4.3780E+01  1.0106E+01  1.4838E+01  4.0535E+00  3.5182E+01
            -1.0103E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1655.27876670659        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.9793E-01  1.0414E+00  1.1591E+00  1.0114E+00  1.0495E+00  9.9192E-01  9.4484E-01  9.3089E-01  1.0081E+00  8.2810E-01
             1.3241E+00
 PARAMETER:  9.7931E-02  1.4059E-01  2.4766E-01  1.1135E-01  1.4836E-01  9.1888E-02  4.3265E-02  2.8381E-02  1.0805E-01 -8.8620E-02
             3.8077E-01
 GRADIENT:   6.5723E-02 -2.3162E+01 -3.1727E+01 -3.4765E+00  5.2328E+01  8.4525E-01  9.5278E+00  6.9895E+00 -9.5100E-01  8.0550E+00
             3.2351E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1659.12598641545        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      347
 NPARAMETR:  9.8963E-01  9.0025E-01  1.2365E+00  1.1033E+00  9.7986E-01  9.9387E-01  6.2481E-01  7.1521E-01  9.6763E-01  7.3961E-01
             1.2896E+00
 PARAMETER:  8.9576E-02 -5.0813E-03  3.1225E-01  1.9835E-01  7.9656E-02  9.3852E-02 -3.7030E-01 -2.3517E-01  6.7096E-02 -2.0164E-01
             3.5431E-01
 GRADIENT:  -1.4956E+01  7.5485E+00  7.1766E-01  2.1452E+00 -3.9044E-01  2.0045E+00 -2.8951E+00  6.0368E-01 -1.5578E+01 -7.8061E+00
             1.0415E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1660.65734201830        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      522
 NPARAMETR:  9.9749E-01  9.2464E-01  1.2114E+00  1.0850E+00  9.8958E-01  9.9152E-01  7.0217E-01  3.2997E-01  1.0377E+00  8.4010E-01
             1.2455E+00
 PARAMETER:  9.7482E-02  2.1647E-02  2.9180E-01  1.8162E-01  8.9527E-02  9.1482E-02 -2.5357E-01 -1.0088E+00  1.3698E-01 -7.4240E-02
             3.1954E-01
 GRADIENT:   3.5145E+00 -2.2115E+00 -8.3759E-01 -3.8880E-01  7.5173E-01  1.0162E+00  8.2019E-01  3.5106E-01  3.0289E+00  1.5375E+00
            -3.1092E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1660.94898030296        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      697
 NPARAMETR:  9.9728E-01  1.0786E+00  1.1800E+00  9.8595E-01  1.0387E+00  9.9022E-01  6.2976E-01  8.0673E-02  1.1221E+00  8.5060E-01
             1.2596E+00
 PARAMETER:  9.7280E-02  1.7565E-01  2.6551E-01  8.5850E-02  1.3800E-01  9.0172E-02 -3.6241E-01 -2.4173E+00  2.1519E-01 -6.1812E-02
             3.3083E-01
 GRADIENT:   9.0457E-01 -3.3957E-01 -2.7673E-02  7.3076E-01  8.3896E-01  3.1474E-01  2.3618E-01  2.3666E-02  9.8325E-01 -6.2862E-02
            -1.1108E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1660.96105531568        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      872
 NPARAMETR:  9.9717E-01  1.1245E+00  1.1621E+00  9.5527E-01  1.0506E+00  9.8959E-01  6.1591E-01  4.0637E-02  1.1476E+00  8.5185E-01
             1.2636E+00
 PARAMETER:  9.7168E-02  2.1729E-01  2.5019E-01  5.4239E-02  1.4932E-01  8.9540E-02 -3.8466E-01 -3.1031E+00  2.3770E-01 -6.0340E-02
             3.3398E-01
 GRADIENT:   1.8474E-02 -1.2789E-01 -6.9921E-02 -1.9786E-01  1.9657E-01  1.0185E-02  7.3199E-03  6.2029E-03  6.5606E-03 -7.5528E-03
             1.3371E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1660.96581813037        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1049
 NPARAMETR:  9.9706E-01  1.1041E+00  1.1692E+00  9.6877E-01  1.0446E+00  9.8946E-01  6.1957E-01  1.0000E-02  1.1347E+00  8.5108E-01
             1.2634E+00
 PARAMETER:  9.7055E-02  1.9900E-01  2.5635E-01  6.8275E-02  1.4368E-01  8.9409E-02 -3.7872E-01 -4.6780E+00  2.2637E-01 -6.1248E-02
             3.3379E-01
 GRADIENT:   4.6510E-03  1.2865E-02 -2.0297E-03  3.0195E-02  2.5360E-03 -3.9213E-03 -5.1888E-03  0.0000E+00  1.5077E-02  3.8590E-03
             4.8217E-03

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1660.96581813037        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1071
 NPARAMETR:  9.9706E-01  1.1041E+00  1.1692E+00  9.6877E-01  1.0446E+00  9.8946E-01  6.1957E-01  1.0000E-02  1.1347E+00  8.5108E-01
             1.2634E+00
 PARAMETER:  9.7055E-02  1.9900E-01  2.5635E-01  6.8275E-02  1.4368E-01  8.9409E-02 -3.7872E-01 -4.6780E+00  2.2637E-01 -6.1248E-02
             3.3379E-01
 GRADIENT:   4.6510E-03  1.2865E-02 -2.0297E-03  3.0195E-02  2.5360E-03 -3.9213E-03 -5.1888E-03  0.0000E+00  1.5077E-02  3.8590E-03
             4.8217E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1071
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.7448E-04 -2.1311E-02 -1.1123E-04  2.8659E-03 -2.6638E-02
 SE:             2.9747E-02  1.2959E-02  1.2107E-04  2.6507E-02  2.2853E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9264E-01  1.0006E-01  3.5826E-01  9.1390E-01  2.4377E-01

 ETASHRINKSD(%)  3.4243E-01  5.6587E+01  9.9594E+01  1.1198E+01  2.3439E+01
 ETASHRINKVR(%)  6.8369E-01  8.1153E+01  9.9998E+01  2.1141E+01  4.1384E+01
 EBVSHRINKSD(%)  6.7016E-01  5.7075E+01  9.9572E+01  1.0811E+01  2.3001E+01
 EBVSHRINKVR(%)  1.3358E+00  8.1574E+01  9.9998E+01  2.0454E+01  4.0712E+01
 RELATIVEINF(%)  9.8357E+01  7.7114E-01  3.5578E-04  4.6277E+00  7.4440E+00
 EPSSHRINKSD(%)  3.9163E+01
 EPSSHRINKVR(%)  6.2988E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1660.9658181303728     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -925.81499156663460     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.59
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1660.966       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.97E-01  1.10E+00  1.17E+00  9.69E-01  1.04E+00  9.89E-01  6.20E-01  1.00E-02  1.13E+00  8.51E-01  1.26E+00
 


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
 #CPUT: Total CPU Time in Seconds,       12.628
Stop Time:
Sat Oct  2 03:20:08 CDT 2021

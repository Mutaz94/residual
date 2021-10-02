Fri Oct  1 10:07:54 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat73.csv ignore=@
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
Current Date:        1 OCT 2021
Days until program expires : 198
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m73.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1387.90911142428        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2034E+02  5.9809E+01  5.9955E+01  3.7356E+01  6.3838E+01  7.6396E+01 -4.8964E+01 -1.7113E+01 -1.7356E+01 -4.3134E+01
            -1.3419E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1790.43889811413        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0781E+00  9.9262E-01  1.0376E+00  1.0872E+00  9.8239E-01  8.4295E-01  1.1070E+00  8.8591E-01  1.1278E+00  7.9297E-01
             2.1958E+00
 PARAMETER:  1.7524E-01  9.2596E-02  1.3694E-01  1.8359E-01  8.2232E-02 -7.0842E-02  2.0168E-01 -2.1139E-02  2.2023E-01 -1.3196E-01
             8.8653E-01
 GRADIENT:   3.3336E+02  3.5588E+01  4.5136E+00  7.2369E+01 -1.7031E+00 -1.0753E+01  4.2677E+00  3.7116E+00  1.9034E+01  5.5908E+00
             2.0501E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1798.28683063654        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      162
 NPARAMETR:  1.0639E+00  9.3894E-01  5.3625E-01  1.0800E+00  6.7569E-01  8.8763E-01  1.1590E+00  4.9538E-01  9.2247E-01  3.3414E-01
             2.1759E+00
 PARAMETER:  1.6191E-01  3.6996E-02 -5.2316E-01  1.7698E-01 -2.9202E-01 -1.9201E-02  2.4755E-01 -6.0243E-01  1.9297E-02 -9.9620E-01
             8.7744E-01
 GRADIENT:   2.5010E+02  3.6012E+01 -2.9602E+01  1.2413E+02  5.7456E+01  1.1169E+01 -7.8095E+00  2.9028E+00 -1.5686E+01  1.1318E-01
             1.6608E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1802.10549437408        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      234
 NPARAMETR:  1.0294E+00  8.1200E-01  3.7261E-01  1.0988E+00  5.1036E-01  8.6664E-01  1.2355E+00  3.5460E-01  9.3305E-01  2.8511E-01
             2.0728E+00
 PARAMETER:  1.2900E-01 -1.0826E-01 -8.8723E-01  1.9424E-01 -5.7264E-01 -4.3131E-02  3.1145E-01 -9.3677E-01  3.0700E-02 -1.1549E+00
             8.2891E-01
 GRADIENT:   1.3990E+02  3.0717E+01 -6.4508E+01  1.4166E+02  1.0257E+02  5.4197E+00 -2.4873E+00  1.4410E+00 -1.2768E+01 -9.3122E-01
             5.7680E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1809.89339582209        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      396
 NPARAMETR:  9.6856E-01  6.7697E-01  4.0084E-01  1.1468E+00  4.7638E-01  8.5462E-01  1.4581E+00  1.7495E-01  9.4668E-01  5.1133E-01
             1.9787E+00
 PARAMETER:  6.8055E-02 -2.9013E-01 -8.1419E-01  2.3702E-01 -6.4154E-01 -5.7101E-02  4.7716E-01 -1.6432E+00  4.5201E-02 -5.7073E-01
             7.8244E-01
 GRADIENT:  -1.4618E+02  3.4327E+01 -3.5157E+01  5.2388E+01  3.0601E+01 -1.1976E+01  1.7342E+00  6.8281E-01 -5.5078E-01  2.5320E+00
             5.6661E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1825.75269095398        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      572
 NPARAMETR:  1.0154E+00  3.4802E-01  3.0567E-01  1.1961E+00  3.2585E-01  9.0505E-01  1.8743E+00  1.0000E-02  9.4262E-01  5.7158E-01
             1.8606E+00
 PARAMETER:  1.1527E-01 -9.5550E-01 -1.0852E+00  2.7905E-01 -1.0213E+00  2.3286E-04  7.2823E-01 -8.1530E+00  4.0906E-02 -4.5936E-01
             7.2091E-01
 GRADIENT:   6.1209E+00  5.1491E+00 -5.3060E+00  2.3195E+01 -5.0044E+00  1.6702E+01 -6.1791E+00  0.0000E+00 -5.7139E+00  8.2662E-01
            -9.4083E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1827.26952777848        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      750
 NPARAMETR:  1.0093E+00  3.0542E-01  3.3330E-01  1.2188E+00  3.3767E-01  8.5392E-01  2.3183E+00  1.0000E-02  9.3057E-01  5.6732E-01
             1.8909E+00
 PARAMETER:  1.0930E-01 -1.0861E+00 -9.9873E-01  2.9783E-01 -9.8569E-01 -5.7912E-02  9.4085E-01 -9.2787E+00  2.8039E-02 -4.6683E-01
             7.3708E-01
 GRADIENT:  -3.9119E+00  4.6329E+00  5.9325E+00  1.4220E-01 -1.0981E+01 -2.6844E+00  2.1062E+00  0.0000E+00  4.2424E-01 -1.6470E+00
             5.7796E-01

0ITERATION NO.:   34    OBJECTIVE VALUE:  -1827.40161235471        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  1.0099E+00  2.7841E-01  3.4057E-01  1.2332E+00  3.3925E-01  8.5908E-01  2.4270E+00  1.0000E-02  9.2501E-01  5.8513E-01
             1.8906E+00
 PARAMETER:  1.0984E-01 -1.1787E+00 -9.7714E-01  3.0958E-01 -9.8102E-01 -5.1895E-02  9.8667E-01 -1.0089E+01  2.2052E-02 -4.3592E-01
             7.3688E-01
 GRADIENT:   1.3298E+00  3.7344E-01  4.0910E-01  1.3522E+00 -5.7075E-01  2.4917E-01 -7.1937E-03  0.0000E+00 -9.2382E-02  7.0442E-02
            -3.9933E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      877
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6648E-03  4.6253E-02 -4.1803E-04 -1.9556E-02  2.2745E-02
 SE:             2.9456E-02  1.8627E-02  2.2293E-04  2.7421E-02  1.9517E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5493E-01  1.3024E-02  6.0773E-02  4.7573E-01  2.4385E-01

 ETASHRINKSD(%)  1.3185E+00  3.7598E+01  9.9253E+01  8.1377E+00  3.4616E+01
 ETASHRINKVR(%)  2.6196E+00  6.1060E+01  9.9994E+01  1.5613E+01  5.7250E+01
 EBVSHRINKSD(%)  1.5535E+00  4.4886E+01  9.9124E+01  6.7407E+00  2.9926E+01
 EBVSHRINKVR(%)  3.0829E+00  6.9625E+01  9.9992E+01  1.3027E+01  5.0896E+01
 RELATIVEINF(%)  9.6235E+01  1.1434E+01  5.2392E-04  4.6642E+01  2.9546E+00
 EPSSHRINKSD(%)  3.0521E+01
 EPSSHRINKVR(%)  5.1727E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1827.4016123547128     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -908.46307915004013     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.17
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1827.402       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  2.78E-01  3.41E-01  1.23E+00  3.39E-01  8.59E-01  2.43E+00  1.00E-02  9.25E-01  5.85E-01  1.89E+00
 


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
 #CPUT: Total CPU Time in Seconds,       12.218
Stop Time:
Fri Oct  1 10:08:08 CDT 2021
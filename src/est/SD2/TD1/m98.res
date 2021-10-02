Fri Oct  1 14:34:56 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat98.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m98.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2091.75515950030        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7269E+02 -1.6840E-01 -2.5879E+01  6.1897E+01  4.3421E+01  5.6799E+01 -4.6743E+00  6.6018E+00  1.1421E+01  1.2162E+01
            -1.2814E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2094.84605250318        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  9.6953E-01  1.0380E+00  1.0339E+00  9.8693E-01  9.8951E-01  9.6401E-01  1.0275E+00  9.7920E-01  9.8260E-01  9.5431E-01
             1.0303E+00
 PARAMETER:  6.9057E-02  1.3730E-01  1.3332E-01  8.6845E-02  8.9457E-02  6.3341E-02  1.2716E-01  7.8976E-02  8.2450E-02  5.3235E-02
             1.2988E-01
 GRADIENT:  -7.0312E+00 -4.2062E+00  6.6804E+00 -1.1699E+01 -1.5778E+01  1.6709E+00 -6.2906E+00  2.7558E+00  1.2110E+00  6.1548E+00
             7.7249E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2095.90282417514        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      330
 NPARAMETR:  9.6821E-01  1.0338E+00  9.0064E-01  9.8886E-01  9.3191E-01  9.6009E-01  1.2314E+00  8.4981E-01  9.1012E-01  8.3168E-01
             1.0165E+00
 PARAMETER:  6.7691E-02  1.3325E-01 -4.6445E-03  8.8795E-02  2.9481E-02  5.9267E-02  3.0813E-01 -6.2746E-02  5.8227E-03 -8.4309E-02
             1.1637E-01
 GRADIENT:  -1.1763E+01  4.7504E+00 -7.9845E-02  2.0527E+00  2.6925E+00 -3.8534E-01  5.3839E+00  1.0845E+00 -1.1584E+00 -2.4519E+00
            -1.5871E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2096.55996263902        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      506
 NPARAMETR:  9.7467E-01  1.1911E+00  7.3831E-01  8.8196E-01  9.2960E-01  9.6221E-01  1.0687E+00  4.0531E-01  9.9057E-01  8.7901E-01
             1.0187E+00
 PARAMETER:  7.4349E-02  2.7486E-01 -2.0339E-01 -2.5613E-02  2.6998E-02  6.1474E-02  1.6642E-01 -8.0310E-01  9.0523E-02 -2.8956E-02
             1.1848E-01
 GRADIENT:   2.7516E-01  1.9002E+00 -9.2260E-01  2.2547E+00 -6.4957E-01 -9.2210E-02  1.0785E+00  2.1669E-01  1.4422E-01  1.1655E+00
             4.0113E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2096.59068205868        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      681
 NPARAMETR:  9.7493E-01  1.2444E+00  7.0594E-01  8.4572E-01  9.4122E-01  9.6263E-01  1.0290E+00  2.8416E-01  1.0186E+00  8.7991E-01
             1.0191E+00
 PARAMETER:  7.4606E-02  3.1869E-01 -2.4822E-01 -6.7564E-02  3.9418E-02  6.1917E-02  1.2861E-01 -1.1582E+00  1.1846E-01 -2.7938E-02
             1.1891E-01
 GRADIENT:   1.2765E-02  2.6460E-02 -1.4681E-01 -4.4423E-01  2.5098E-01 -6.4079E-02  1.2936E-01  7.2497E-02 -1.2723E-02 -1.6163E-02
            -1.3675E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2096.63044541998        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      860
 NPARAMETR:  9.7465E-01  1.2144E+00  7.2274E-01  8.6491E-01  9.3638E-01  9.6248E-01  1.0426E+00  7.8113E-02  1.0087E+00  8.9475E-01
             1.0208E+00
 PARAMETER:  7.4325E-02  2.9428E-01 -2.2471E-01 -4.5133E-02  3.4262E-02  6.1755E-02  1.4174E-01 -2.4496E+00  1.0870E-01 -1.1209E-02
             1.2054E-01
 GRADIENT:  -3.9301E-02 -2.8611E-01 -1.9502E-01  2.9772E-02  6.8770E-02 -1.7589E-03  3.2264E-03  4.8440E-03  1.2852E-01  1.6268E-01
             1.3326E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2096.63198546541        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1037
 NPARAMETR:  9.7469E-01  1.2189E+00  7.2054E-01  8.6213E-01  9.3748E-01  9.6254E-01  1.0403E+00  1.0000E-02  1.0103E+00  8.9455E-01
             1.0207E+00
 PARAMETER:  7.4369E-02  2.9793E-01 -2.2776E-01 -4.8349E-02  3.5437E-02  6.1825E-02  1.3953E-01 -4.8448E+00  1.1022E-01 -1.1437E-02
             1.2047E-01
 GRADIENT:   1.5479E-03 -3.8051E-02  3.6346E-03 -2.9595E-02  2.6011E-02  1.4760E-02  2.5539E-03  0.0000E+00 -3.2530E-03 -9.7508E-03
            -1.3082E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2096.63198546541        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1059
 NPARAMETR:  9.7469E-01  1.2189E+00  7.2054E-01  8.6213E-01  9.3748E-01  9.6254E-01  1.0403E+00  1.0000E-02  1.0103E+00  8.9455E-01
             1.0207E+00
 PARAMETER:  7.4369E-02  2.9793E-01 -2.2776E-01 -4.8349E-02  3.5437E-02  6.1825E-02  1.3953E-01 -4.8448E+00  1.1022E-01 -1.1437E-02
             1.2047E-01
 GRADIENT:   1.5479E-03 -3.8051E-02  3.6346E-03 -2.9595E-02  2.6011E-02  1.4760E-02  2.5539E-03  0.0000E+00 -3.2530E-03 -9.7508E-03
            -1.3082E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1059
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.7844E-04 -1.1678E-02 -3.6288E-04  7.6401E-03 -1.9021E-02
 SE:             2.9882E-02  2.2466E-02  1.5626E-04  2.4310E-02  2.2843E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7655E-01  6.0321E-01  2.0217E-02  7.5331E-01  4.0502E-01

 ETASHRINKSD(%)  1.0000E-10  2.4735E+01  9.9477E+01  1.8559E+01  2.3474E+01
 ETASHRINKVR(%)  1.0000E-10  4.3352E+01  9.9997E+01  3.3673E+01  4.1438E+01
 EBVSHRINKSD(%)  3.6200E-01  2.4399E+01  9.9532E+01  1.9295E+01  2.2669E+01
 EBVSHRINKVR(%)  7.2269E-01  4.2845E+01  9.9998E+01  3.4868E+01  4.0199E+01
 RELATIVEINF(%)  9.9010E+01  3.7662E+00  2.6647E-04  4.6444E+00  8.0708E+00
 EPSSHRINKSD(%)  3.3338E+01
 EPSSHRINKVR(%)  5.5561E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2096.6319854654089     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1177.6934522607362     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.61
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2096.632       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.75E-01  1.22E+00  7.21E-01  8.62E-01  9.37E-01  9.63E-01  1.04E+00  1.00E-02  1.01E+00  8.95E-01  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.678
Stop Time:
Fri Oct  1 14:35:13 CDT 2021

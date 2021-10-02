Fri Oct  1 23:21:33 CDT 2021
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
$DATA ../../../../data/SD4/B/dat43.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m43.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1691.69761170218        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4079E+02 -1.4482E+00 -1.2995E+01  3.9934E+01  1.8160E+01  4.0747E+01  1.2765E+01  1.0483E+01  4.8244E+01 -8.6659E-01
             4.0848E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1697.55382600044        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.7367E-01  9.9244E-01  9.5811E-01  1.0241E+00  9.7062E-01  9.3774E-01  9.4136E-01  9.2098E-01  8.1034E-01  1.0458E+00
             9.9027E-01
 PARAMETER:  7.3322E-02  9.2408E-02  5.7208E-02  1.2383E-01  7.0175E-02  3.5716E-02  3.9576E-02  1.7681E-02 -1.1030E-01  1.4480E-01
             9.0220E-02
 GRADIENT:   3.8329E+02  2.4082E+01 -1.5261E+01  8.5761E+01  1.0630E+01  1.7743E+01  2.4954E-01  1.0239E+01  1.2800E+01  8.4853E+00
             3.6616E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1702.44114988783        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      205
 NPARAMETR:  9.6572E-01  1.0097E+00  8.3621E-01  1.0050E+00  9.2135E-01  1.0039E+00  1.0139E+00  5.7679E-01  7.4998E-01  9.8690E-01
             8.9799E-01
 PARAMETER:  6.5124E-02  1.0965E-01 -7.8870E-02  1.0496E-01  1.8089E-02  1.0391E-01  1.1376E-01 -4.5028E-01 -1.8771E-01  8.6811E-02
            -7.5979E-03
 GRADIENT:  -3.9600E+01 -4.7457E+00 -1.6479E+01  5.8533E+00  1.6795E+01 -1.6217E+00 -4.3206E+00  3.7669E+00  6.1475E-01  2.6544E+00
            -2.9082E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1705.92769552971        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      382
 NPARAMETR:  9.9149E-01  7.8167E-01  7.7840E-01  1.1516E+00  7.6529E-01  1.0082E+00  1.3390E+00  1.5153E-01  6.6629E-01  8.7746E-01
             9.0444E-01
 PARAMETER:  9.1450E-02 -1.4632E-01 -1.5051E-01  2.4119E-01 -1.6749E-01  1.0813E-01  3.9194E-01 -1.7870E+00 -3.0603E-01 -3.0728E-02
            -4.4107E-04
 GRADIENT:   1.8262E+01  2.9485E+01  1.7548E+00  4.1510E+01 -1.3548E+01  3.8073E-01  9.6624E-01  2.7477E-01  6.7970E-02  7.5178E-01
            -1.2736E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1708.99001741097        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      557
 NPARAMETR:  9.7455E-01  4.6952E-01  8.6719E-01  1.3270E+00  7.2816E-01  1.0118E+00  1.9532E+00  1.0000E-02  5.9737E-01  9.3395E-01
             9.1784E-01
 PARAMETER:  7.4221E-02 -6.5604E-01 -4.2492E-02  3.8295E-01 -2.1723E-01  1.1172E-01  7.6945E-01 -4.6346E+00 -4.1521E-01  3.1671E-02
             1.4265E-02
 GRADIENT:  -9.2905E+00  8.3973E+00 -1.5720E+01  3.1402E+01  1.5186E+01  3.0022E+00  1.2986E+00  0.0000E+00 -2.9751E+00  3.6771E+00
             4.8748E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1710.48786460145        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      733
 NPARAMETR:  9.7494E-01  2.0448E-01  9.0723E-01  1.4756E+00  6.6838E-01  9.9487E-01  3.0312E+00  1.0000E-02  5.9171E-01  9.3837E-01
             9.0872E-01
 PARAMETER:  7.4619E-02 -1.4873E+00  2.6384E-03  4.8907E-01 -3.0290E-01  9.4852E-02  1.2090E+00 -9.7685E+00 -4.2475E-01  3.6394E-02
             4.2763E-03
 GRADIENT:   4.4034E+00  5.2255E+00  1.4523E+01  2.5090E+01 -2.2697E+01 -1.6649E+00  6.7064E-02  0.0000E+00 -1.5396E+00 -8.1184E-01
            -3.0092E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1710.94255905450        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      910
 NPARAMETR:  9.7170E-01  1.2875E-01  9.2217E-01  1.5125E+00  6.6646E-01  9.9713E-01  3.7944E+00  1.0000E-02  5.8610E-01  9.5106E-01
             9.1483E-01
 PARAMETER:  7.1291E-02 -1.9499E+00  1.8976E-02  5.1376E-01 -3.0578E-01  9.7121E-02  1.4335E+00 -1.2857E+01 -4.3426E-01  4.9818E-02
             1.0988E-02
 GRADIENT:   1.3087E+00  9.8049E-01  9.8549E-01  9.5313E+00 -2.5762E+00  8.8565E-02 -7.4433E-02  0.0000E+00 -2.7832E-01 -2.6697E-02
            -6.9115E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1710.97943741483        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1087
 NPARAMETR:  9.7019E-01  9.9643E-02  9.2421E-01  1.5249E+00  6.6253E-01  9.9563E-01  4.2503E+00  1.0000E-02  5.8198E-01  9.5356E-01
             9.1802E-01
 PARAMETER:  6.9738E-02 -2.2062E+00  2.1184E-02  5.2192E-01 -3.1169E-01  9.5621E-02  1.5470E+00 -1.4600E+01 -4.4132E-01  5.2443E-02
             1.4467E-02
 GRADIENT:  -5.1459E-01 -4.4201E-01 -1.2263E-01  2.0195E+00 -3.0230E-01 -9.6317E-02 -1.0524E+00  0.0000E+00  6.9480E-01  3.3830E-01
             3.6097E-01

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1710.99338662845        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:     1217
 NPARAMETR:  9.7090E-01  9.9904E-02  9.2421E-01  1.5231E+00  6.6243E-01  9.9589E-01  4.2439E+00  1.0000E-02  5.8193E-01  9.5346E-01
             9.1767E-01
 PARAMETER:  7.0466E-02 -2.2035E+00  2.1182E-02  5.2076E-01 -3.1184E-01  9.5884E-02  1.5455E+00 -1.4600E+01 -4.4140E-01  5.2344E-02
             1.4080E-02
 GRADIENT:   1.2194E+00 -1.5229E-01  7.7015E-01 -6.2804E+00 -9.9447E-02  1.3046E-01  1.5458E-01  0.0000E+00  7.5126E-02 -6.5714E-02
            -2.7060E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1217
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.3981E-04  3.4275E-02 -3.5065E-04 -2.6163E-02 -2.9300E-03
 SE:             2.9941E-02  1.5021E-02  2.2539E-04  2.6052E-02  2.5576E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7762E-01  2.2496E-02  1.1977E-01  3.1526E-01  9.0879E-01

 ETASHRINKSD(%)  1.0000E-10  4.9679E+01  9.9245E+01  1.2721E+01  1.4316E+01
 ETASHRINKVR(%)  1.0000E-10  7.4678E+01  9.9994E+01  2.3824E+01  2.6583E+01
 EBVSHRINKSD(%)  3.4371E-01  6.3440E+01  9.9278E+01  7.9875E+00  1.0082E+01
 EBVSHRINKVR(%)  6.8625E-01  8.6634E+01  9.9995E+01  1.5337E+01  1.9148E+01
 RELATIVEINF(%)  9.8984E+01  4.6616E+00  4.4311E-04  2.8285E+01  7.0955E+00
 EPSSHRINKSD(%)  4.3519E+01
 EPSSHRINKVR(%)  6.8099E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1710.9933866284473     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -975.84256006470912     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.49
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1710.993       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.71E-01  9.99E-02  9.24E-01  1.52E+00  6.62E-01  9.96E-01  4.24E+00  1.00E-02  5.82E-01  9.53E-01  9.18E-01
 


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
 #CPUT: Total CPU Time in Seconds,       15.537
Stop Time:
Fri Oct  1 23:21:50 CDT 2021

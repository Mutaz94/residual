Sat Oct  2 01:19:02 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat83.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m83.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   298.769634194328        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4169E+02  1.2088E+02  1.5998E+02 -2.0065E+01  1.0903E+02  3.5013E+01 -3.8647E+01 -7.0507E+01 -1.3192E+02 -1.4622E+02
            -3.4756E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1196.59979432892        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0927E+00  9.4770E-01  8.4181E-01  1.2044E+00  1.0448E+00  8.5244E-01  8.3479E-01  1.0111E+00  8.8461E-01  9.1181E-01
             5.4062E+00
 PARAMETER:  1.8866E-01  4.6288E-02 -7.2201E-02  2.8600E-01  1.4382E-01 -5.9658E-02 -8.0572E-02  1.1105E-01 -2.2610E-02  7.6749E-03
             1.7876E+00
 GRADIENT:   1.3209E+02 -2.4910E+01 -4.0896E+01  1.0590E+01  2.8096E+01 -2.6660E+01  8.1881E+00  8.0655E+00  1.5362E+01  1.3823E+01
             1.7971E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1215.85284536917        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0622E+00  7.7075E-01  5.7201E-01  1.2263E+00  5.9616E-01  9.2144E-01  2.1592E-01  5.5853E-01  1.0561E+00  6.0243E-01
             5.0381E+00
 PARAMETER:  1.6036E-01 -1.6039E-01 -4.5860E-01  3.0404E-01 -4.1724E-01  1.8181E-02 -1.4329E+00 -4.8245E-01  1.5462E-01 -4.0679E-01
             1.7170E+00
 GRADIENT:   5.9768E+01  2.0981E+01  2.5766E+01  2.7752E+01 -4.9069E+01 -2.6454E+00  4.9260E-01  4.3851E+00  2.2008E+01  1.2370E+01
             1.6264E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1242.56940076792        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  9.9206E-01  6.0860E-01  3.8955E-01  1.2081E+00  4.4220E-01  9.6798E-01  1.2393E-01  1.9543E-01  1.0463E+00  4.4393E-01
             3.7963E+00
 PARAMETER:  9.2025E-02 -3.9660E-01 -8.4275E-01  2.8902E-01 -7.1599E-01  6.7460E-02 -1.9880E+00 -1.5325E+00  1.4524E-01 -7.1210E-01
             1.4340E+00
 GRADIENT:  -3.8556E+01  3.7182E+01  3.8403E+01  3.8114E+01 -3.7050E+01  2.8008E+00  6.1865E-03  2.1121E-01  6.5300E+00  4.5401E-01
            -4.8487E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1244.76151985802        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      392
 NPARAMETR:  1.0300E+00  5.8249E-01  3.6816E-01  1.2065E+00  4.2820E-01  9.6597E-01  1.3098E-01  1.5297E-01  1.0019E+00  3.4967E-01
             3.8180E+00
 PARAMETER:  1.2956E-01 -4.4045E-01 -8.9923E-01  2.8776E-01 -7.4817E-01  6.5376E-02 -1.9327E+00 -1.7775E+00  1.0192E-01 -9.5078E-01
             1.4397E+00
 GRADIENT:   2.1204E+01  1.7610E+01  1.4068E+01  1.3728E+01 -1.6640E+01  9.7413E-01 -9.2102E-02  8.8891E-03  5.0594E-01 -2.4505E+00
            -2.5068E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1245.80873951721        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      567
 NPARAMETR:  1.0207E+00  4.1532E-01  3.1752E-01  1.2318E+00  3.5457E-01  9.5749E-01  1.9635E-01  3.1579E-02  9.8342E-01  1.4576E-01
             3.9445E+00
 PARAMETER:  1.2052E-01 -7.7872E-01 -1.0472E+00  3.0850E-01 -9.3685E-01  5.6555E-02 -1.5279E+00 -3.3552E+00  8.3286E-02 -1.8258E+00
             1.4723E+00
 GRADIENT:   4.0860E+00  1.8855E+00 -1.1643E+00 -2.0083E-01  5.0664E+00 -2.1009E+00 -2.9348E-01 -7.3189E-03  9.9386E-01 -1.7096E+00
            -4.4905E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1246.44698834733        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      744
 NPARAMETR:  1.0120E+00  3.0845E-01  3.3317E-01  1.2810E+00  3.4022E-01  9.8287E-01  9.5491E-01  1.0000E-02  9.2825E-01  9.3266E-02
             3.9719E+00
 PARAMETER:  1.1193E-01 -1.0762E+00 -9.9909E-01  3.4766E-01 -9.7816E-01  8.2717E-02  5.3862E-02 -5.0214E+00  2.5544E-02 -2.2723E+00
             1.4792E+00
 GRADIENT:  -1.2658E+01  3.0490E+00  1.0015E+01 -5.9380E+00 -1.1895E+01  7.5258E+00 -3.2273E-02  0.0000E+00 -1.8136E+00 -4.7079E-01
             4.6449E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1246.68945997232        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      919
 NPARAMETR:  1.0172E+00  2.9173E-01  3.2241E-01  1.2836E+00  3.3056E-01  9.6171E-01  1.0589E+00  1.0000E-02  9.4826E-01  8.5666E-02
             3.9386E+00
 PARAMETER:  1.1707E-01 -1.1319E+00 -1.0319E+00  3.4971E-01 -1.0070E+00  6.0961E-02  1.5719E-01 -5.4085E+00  4.6878E-02 -2.3573E+00
             1.4708E+00
 GRADIENT:  -5.0567E-01  2.3993E+00  3.6514E+00  1.0949E+00 -5.4518E+00  1.1264E-01  1.6650E-01  0.0000E+00  8.5528E-02 -4.2741E-01
            -1.3201E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1246.98252021529        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1099
 NPARAMETR:  1.0112E+00  1.7990E-01  3.4129E-01  1.3415E+00  3.2909E-01  9.5417E-01  1.9056E+00  1.0000E-02  9.0952E-01  3.8507E-02
             3.9512E+00
 PARAMETER:  1.1113E-01 -1.6153E+00 -9.7503E-01  3.9378E-01 -1.0114E+00  5.3083E-02  7.4478E-01 -9.5540E+00  5.1615E-03 -3.1569E+00
             1.4740E+00
 GRADIENT:  -1.5252E-01  9.7745E-01  4.0588E+00  3.8193E+00 -6.3025E+00 -3.9089E-01 -1.3008E-01  0.0000E+00 -3.8544E-01 -6.8367E-02
            -1.1257E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1247.07254337017        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1261
 NPARAMETR:  1.0073E+00  1.2485E-01  3.3338E-01  1.3505E+00  3.1889E-01  9.5413E-01  2.8540E+00  1.0000E-02  9.0589E-01  1.9366E-02
             3.9476E+00
 PARAMETER:  1.0728E-01 -1.9807E+00 -9.9847E-01  4.0051E-01 -1.0429E+00  5.3047E-02  1.1487E+00 -1.3052E+01  1.1598E-03 -3.8442E+00
             1.4731E+00
 GRADIENT:  -5.1785E-02  5.7222E-02  1.6725E-01 -8.8092E-02 -2.2500E-01  5.7678E-02  1.8338E-02  0.0000E+00  2.5446E-02 -1.5840E-02
            -7.1918E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1261
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -6.6701E-04 -3.1309E-03  1.3735E-04 -1.7291E-02  1.2705E-04
 SE:             2.8270E-02  4.6438E-03  2.3741E-04  2.4552E-02  6.9308E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8118E-01  5.0018E-01  5.6291E-01  4.8127E-01  8.5455E-01

 ETASHRINKSD(%)  5.2923E+00  8.4443E+01  9.9205E+01  1.7749E+01  9.7678E+01
 ETASHRINKVR(%)  1.0304E+01  9.7580E+01  9.9994E+01  3.2347E+01  9.9946E+01
 EBVSHRINKSD(%)  4.9580E+00  8.4582E+01  9.9180E+01  1.7348E+01  9.7852E+01
 EBVSHRINKVR(%)  9.6702E+00  9.7623E+01  9.9993E+01  3.1686E+01  9.9954E+01
 RELATIVEINF(%)  6.5742E+01  1.6964E-01  2.0221E-04  1.0003E+01  1.0870E-03
 EPSSHRINKSD(%)  2.0390E+01
 EPSSHRINKVR(%)  3.6623E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1247.0725433701721     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -511.92171680643389     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.75
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1247.073       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.25E-01  3.33E-01  1.35E+00  3.19E-01  9.54E-01  2.85E+00  1.00E-02  9.06E-01  1.94E-02  3.95E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.791
Stop Time:
Sat Oct  2 01:19:19 CDT 2021

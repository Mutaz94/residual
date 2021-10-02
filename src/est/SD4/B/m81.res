Fri Oct  1 23:37:05 CDT 2021
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
$DATA ../../../../data/SD4/B/dat81.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m81.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1689.99998192203        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2364E+02 -3.0798E+01 -4.1864E+01  4.8772E+01  6.2533E+01  5.0086E+01  8.3973E-01  2.3615E+00  3.2190E+01  1.2673E+01
            -5.2948E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1697.40469186224        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0545E+00  1.1277E+00  1.0832E+00  9.9449E-01  1.0149E+00  1.1296E+00  1.0237E+00  1.0176E+00  8.7131E-01  9.2687E-01
             1.0299E+00
 PARAMETER:  1.5310E-01  2.2015E-01  1.7994E-01  9.4476E-02  1.1479E-01  2.2186E-01  1.2338E-01  1.1744E-01 -3.7761E-02  2.4055E-02
             1.2949E-01
 GRADIENT:   5.5566E+01  4.3697E+01  1.2447E+01  5.0739E+01 -1.9946E+01  8.9195E+00 -4.6687E+00 -7.0949E+00 -1.1463E-01  3.5180E-01
            -2.7295E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1698.13310425249        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      379
 NPARAMETR:  1.0489E+00  1.1192E+00  1.0943E+00  1.0010E+00  1.0133E+00  1.1277E+00  1.0762E+00  1.1044E+00  8.4412E-01  9.0805E-01
             1.0134E+00
 PARAMETER:  1.4776E-01  2.1257E-01  1.9009E-01  1.0097E-01  1.1325E-01  2.2019E-01  1.7340E-01  1.9931E-01 -6.9466E-02  3.5388E-03
             1.1333E-01
 GRADIENT:   4.6671E+01  4.4736E+01  9.3943E+00  5.2183E+01 -1.8832E+01  8.8289E+00 -1.9056E+00 -5.2266E+00 -1.0700E+00 -2.5436E-01
            -6.1364E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1699.31056134577        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:      569             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0227E+00  1.1174E+00  1.0313E+00  9.7181E-01  1.0377E+00  1.1049E+00  1.0796E+00  1.1028E+00  8.4435E-01  9.0454E-01
             1.0257E+00
 PARAMETER:  1.2249E-01  2.1099E-01  1.3078E-01  7.1406E-02  1.3705E-01  1.9977E-01  1.7658E-01  1.9782E-01 -6.9189E-02 -3.2999E-04
             1.2533E-01
 GRADIENT:   5.5120E+02  8.9018E+01 -1.7753E+01  9.8806E+01  5.1088E+01  1.7337E+02  6.7787E+00 -1.0939E+00  5.7849E+00 -1.9928E+00
             1.2666E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1699.98533587806        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      747
 NPARAMETR:  1.0226E+00  1.1174E+00  1.0524E+00  9.6540E-01  1.0185E+00  1.1008E+00  1.0872E+00  1.1028E+00  8.3825E-01  9.0287E-01
             1.0253E+00
 PARAMETER:  1.2239E-01  2.1097E-01  1.5105E-01  6.4786E-02  1.1834E-01  1.9603E-01  1.8361E-01  1.9781E-01 -7.6433E-02 -2.1724E-03
             1.2499E-01
 GRADIENT:   1.1619E+00 -8.8368E-01  7.5591E-01  2.4993E-01  7.0250E-01  3.5578E-01 -8.4896E-03 -2.9445E+00  1.3520E-01  2.1975E-01
             9.7035E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1699.99299161926        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      923
 NPARAMETR:  1.0220E+00  1.1174E+00  1.0361E+00  9.6418E-01  1.0109E+00  1.0998E+00  1.0909E+00  1.1027E+00  8.3457E-01  8.9172E-01
             1.0247E+00
 PARAMETER:  1.2177E-01  2.1097E-01  1.3542E-01  6.3521E-02  1.1085E-01  1.9515E-01  1.8701E-01  1.9781E-01 -8.0835E-02 -1.4604E-02
             1.2440E-01
 GRADIENT:  -1.7109E-01 -1.4196E+00  1.9011E-02 -1.1592E-01 -5.2356E-02 -4.1984E-02  6.8968E-03 -2.2763E+00 -5.4337E-03 -1.1313E-02
            -3.3313E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1700.00081630451        NO. OF FUNC. EVALS.: 172
 CUMULATIVE NO. OF FUNC. EVALS.:     1095
 NPARAMETR:  1.0232E+00  1.1173E+00  1.0364E+00  9.6419E-01  1.0109E+00  1.1060E+00  1.0907E+00  1.1038E+00  8.3443E-01  8.9144E-01
             1.0247E+00
 PARAMETER:  1.2292E-01  2.1094E-01  1.3571E-01  6.3538E-02  1.1085E-01  2.0077E-01  1.8683E-01  1.9877E-01 -8.1008E-02 -1.4913E-02
             1.2440E-01
 GRADIENT:   2.0000E+00 -1.4645E+00  9.3277E-02 -2.2777E-01 -1.6331E-01  2.2649E+00 -2.0068E-02 -2.2680E+00 -3.7965E-02 -3.5469E-02
            -2.6335E-02

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1700.00113702934        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1154
 NPARAMETR:  1.0234E+00  1.1173E+00  1.0363E+00  9.6419E-01  1.0109E+00  1.1038E+00  1.0908E+00  1.1038E+00  8.3452E-01  8.9151E-01
             1.0247E+00
 PARAMETER:  1.2315E-01  2.1094E-01  1.3566E-01  6.3538E-02  1.1089E-01  1.9876E-01  1.8693E-01  1.9877E-01 -8.0900E-02 -1.4840E-02
             1.2442E-01
 GRADIENT:  -4.2776E-01  1.1135E+05  4.7802E-02  2.3487E+05 -7.9720E-02 -3.1081E-01 -1.7720E-02  1.1806E+05 -1.9114E-02 -2.7943E-02
            -2.5641E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1154
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.3744E-04 -5.5985E-03 -3.1575E-02  8.0825E-05 -3.1567E-02
 SE:             2.9890E-02  2.1647E-02  1.4205E-02  2.2080E-02  2.0953E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8832E-01  7.9593E-01  2.6226E-02  9.9708E-01  1.3193E-01

 ETASHRINKSD(%)  1.0000E-10  2.7478E+01  5.2413E+01  2.6029E+01  2.9805E+01
 ETASHRINKVR(%)  1.0000E-10  4.7406E+01  7.7354E+01  4.5283E+01  5.0726E+01
 EBVSHRINKSD(%)  3.7801E-01  2.7753E+01  5.6819E+01  2.6889E+01  2.7507E+01
 EBVSHRINKVR(%)  7.5460E-01  4.7803E+01  8.1354E+01  4.6548E+01  4.7448E+01
 RELATIVEINF(%)  9.8675E+01  1.6839E+00  1.5664E+00  1.7606E+00  9.0234E+00
 EPSSHRINKSD(%)  4.4316E+01
 EPSSHRINKVR(%)  6.8993E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1700.0011370293421     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -964.85031046560391     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.88
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1700.001       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.12E+00  1.04E+00  9.64E-01  1.01E+00  1.10E+00  1.09E+00  1.10E+00  8.35E-01  8.92E-01  1.02E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       15.885
Stop Time:
Fri Oct  1 23:37:23 CDT 2021

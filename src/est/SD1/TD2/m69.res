Fri Oct  1 05:50:19 CDT 2021
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
$DATA ../../../../data/SD1/TD2/dat69.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m69.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3190.50581806150        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4771E+02  1.0221E+02  6.0320E+01  2.0057E+02  1.4466E+02  4.5165E+01  2.8984E+00 -4.8227E+02 -1.9677E+02 -7.6434E+00
            -6.8887E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3563.40246028134        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      152
 NPARAMETR:  1.1116E+00  9.9733E-01  1.0238E+00  9.2550E-01  9.4258E-01  1.0781E+00  9.8438E-01  1.2600E+00  1.1652E+00  9.9451E-01
             1.2298E+00
 PARAMETER:  2.0578E-01  9.7326E-02  1.2356E-01  2.2579E-02  4.0865E-02  1.7520E-01  8.4257E-02  3.3108E-01  2.5286E-01  9.4492E-02
             3.0684E-01
 GRADIENT:   1.5026E+02 -1.0011E+01 -1.2899E+01 -4.2140E+00 -4.2037E+01  9.8520E+00  3.7609E+00 -1.6513E+01 -2.8242E+01 -1.8806E+00
            -7.2362E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3570.20845139581        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:      343
 NPARAMETR:  1.1117E+00  1.0695E+00  1.1574E+00  8.5593E-01  1.0157E+00  1.0691E+00  9.3498E-01  1.4166E+00  1.2637E+00  1.0477E+00
             1.2368E+00
 PARAMETER:  2.0591E-01  1.6722E-01  2.4620E-01 -5.5571E-02  1.1556E-01  1.6683E-01  3.2769E-02  4.4827E-01  3.3403E-01  1.4658E-01
             3.1251E-01
 GRADIENT:   1.5288E+02 -1.4675E+01  5.3904E+00 -5.3037E+01 -5.2204E+01  6.6648E+00  4.4752E+00 -1.7506E+01 -1.1328E+01 -5.1101E+00
            -4.8126E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3570.82386702739        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:      537
 NPARAMETR:  1.1095E+00  1.0697E+00  1.1573E+00  8.5603E-01  1.0158E+00  1.0516E+00  8.5681E-01  1.4178E+00  1.2640E+00  1.0477E+00
             1.2443E+00
 PARAMETER:  2.0390E-01  1.6734E-01  2.4612E-01 -5.5446E-02  1.1572E-01  1.5033E-01 -5.4543E-02  4.4913E-01  3.3432E-01  1.4661E-01
             3.1861E-01
 GRADIENT:   1.5340E+02 -2.2887E+01  6.3174E+00 -5.3004E+01 -5.2850E+01  9.5650E-01 -5.2757E+00 -1.8024E+01 -9.9773E+00 -8.4378E+00
            -3.9040E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3571.55153184948        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      697
 NPARAMETR:  1.1061E+00  1.0707E+00  1.1185E+00  8.5655E-01  1.0166E+00  1.0266E+00  9.2773E-01  1.4220E+00  1.2665E+00  1.0470E+00
             1.2806E+00
 PARAMETER:  2.0082E-01  1.6828E-01  2.1198E-01 -5.4841E-02  1.1644E-01  1.2627E-01  2.4987E-02  4.5209E-01  3.3624E-01  1.4590E-01
             3.4733E-01
 GRADIENT:   1.5300E+02 -2.0062E+01 -6.8709E+00 -4.9302E+01 -4.0914E+01 -7.6339E+00  5.4439E+00 -1.1077E+01 -8.8672E+00 -4.2818E+00
             2.2472E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3571.80253745235        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  1.1060E+00  1.0707E+00  1.1247E+00  8.5658E-01  1.0166E+00  1.0336E+00  9.1082E-01  1.4222E+00  1.2666E+00  1.0503E+00
             1.2762E+00
 PARAMETER:  2.0075E-01  1.6834E-01  2.1755E-01 -5.4808E-02  1.1648E-01  1.3300E-01  6.5860E-03  4.5224E-01  3.3635E-01  1.4909E-01
             3.4389E-01
 GRADIENT:   1.5103E+02 -2.1213E+01 -4.7955E+00 -4.9527E+01 -4.2895E+01 -4.8938E+00  3.2107E+00 -1.2067E+01 -8.7549E+00 -4.5040E+00
             1.5182E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3572.23698785823        NO. OF FUNC. EVALS.: 147
 CUMULATIVE NO. OF FUNC. EVALS.:     1029
 NPARAMETR:  1.1060E+00  1.0707E+00  1.1247E+00  8.5659E-01  1.0166E+00  1.0352E+00  9.0689E-01  1.4769E+00  1.2667E+00  1.0503E+00
             1.2762E+00
 PARAMETER:  2.0073E-01  1.6836E-01  2.1753E-01 -5.4797E-02  1.1649E-01  1.3455E-01  2.2653E-03  4.8997E-01  3.3638E-01  1.4908E-01
             3.4385E-01
 GRADIENT:   1.5056E+02 -2.1653E+01 -8.4261E+00 -5.0290E+01 -4.4365E+01 -4.2905E+00  3.0950E+00 -9.4934E+00 -7.8744E+00 -4.7748E+00
             1.7810E+01

0ITERATION NO.:   32    OBJECTIVE VALUE:  -3572.32964233133        NO. OF FUNC. EVALS.:  65
 CUMULATIVE NO. OF FUNC. EVALS.:     1094
 NPARAMETR:  1.1059E+00  1.0707E+00  1.1247E+00  8.5659E-01  1.0166E+00  1.0376E+00  9.0378E-01  1.4895E+00  1.2667E+00  1.0503E+00
             1.2763E+00
 PARAMETER:  2.0072E-01  1.6836E-01  2.1753E-01 -5.4797E-02  1.1649E-01  1.3558E-01 -1.1326E-03  4.9843E-01  3.3638E-01  1.4908E-01
             3.4385E-01
 GRADIENT:   1.8417E+04 -3.5461E+01  4.0707E+01 -8.1263E+01  6.2923E+04 -3.8649E+00  3.6679E+04 -2.4258E+02 -4.5653E+01 -5.5152E+00
            -2.1322E+04
 NUMSIGDIG:         2.3         5.7         5.5         5.6         2.3         0.8         2.3         4.4         5.3         6.6
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1094
 NO. OF SIG. DIGITS IN FINAL EST.:  0.8
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -6.7133E-02 -2.6088E-02 -2.0901E-02  4.4463E-02 -1.3292E-02
 SE:             2.9397E-02  2.0807E-02  1.9711E-02  2.7783E-02  2.4501E-02
 N:                     100         100         100         100         100

 P VAL.:         2.2393E-02  2.0992E-01  2.8898E-01  1.0952E-01  5.8747E-01

 ETASHRINKSD(%)  1.5151E+00  3.0294E+01  3.3964E+01  6.9230E+00  1.7919E+01
 ETASHRINKVR(%)  3.0073E+00  5.1411E+01  5.6393E+01  1.3367E+01  3.2628E+01
 EBVSHRINKSD(%)  3.6629E-01  3.0563E+01  3.9537E+01  8.8263E+00  1.7588E+01
 EBVSHRINKVR(%)  7.3125E-01  5.1785E+01  6.3442E+01  1.6873E+01  3.2082E+01
 RELATIVEINF(%)  9.9264E+01  2.4212E+01  2.7622E+01  5.6333E+01  3.1948E+01
 EPSSHRINKSD(%)  2.1332E+01
 EPSSHRINKVR(%)  3.8113E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3572.3296423313336     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1918.2402825629229     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    32.09
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3572.330       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.11E+00  1.07E+00  1.12E+00  8.57E-01  1.02E+00  1.04E+00  9.04E-01  1.49E+00  1.27E+00  1.05E+00  1.28E+00
 


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
 #CPUT: Total CPU Time in Seconds,       32.156
Stop Time:
Fri Oct  1 05:50:53 CDT 2021
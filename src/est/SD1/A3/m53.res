Fri Oct  1 01:18:31 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat53.csv ignore=@
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
 (2E4.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m53.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -854.966449276237        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4833E+02  2.0240E+02  2.6476E+02 -3.5452E+01  3.1727E+02  1.6994E+01 -2.0310E+02 -3.2919E+02 -4.8215E+01 -1.5437E+02
            -5.1766E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2774.35001435370        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.7470E-01  9.3841E-01  8.5687E-01  1.1269E+00  8.1878E-01  1.0258E+00  8.9843E-01  9.6332E-01  8.7102E-01  9.6640E-01
             2.4869E+00
 PARAMETER:  7.4374E-02  3.6432E-02 -5.4471E-02  2.1945E-01 -9.9945E-02  1.2551E-01 -7.1120E-03  6.2628E-02 -3.8087E-02  6.5826E-02
             1.0110E+00
 GRADIENT:   4.9545E+01  6.6843E+01  2.1479E+01  4.4311E+01 -3.1164E+01  5.7661E+00  1.5443E+00  1.0178E+01 -5.7718E+00  1.3569E+00
            -7.6702E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2780.99329473144        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0601E+00  5.9474E-01  5.3309E-01  1.2972E+00  5.1148E-01  1.0396E+00  9.2316E-01  5.5776E-01  1.0177E+00  8.5634E-01
             2.4414E+00
 PARAMETER:  1.5837E-01 -4.1964E-01 -5.2906E-01  3.6025E-01 -5.7044E-01  1.3881E-01  2.0043E-02 -4.8383E-01  1.1755E-01 -5.5093E-02
             9.9255E-01
 GRADIENT:   2.5625E+02  7.3417E+01  3.6606E+01  1.5937E+02  5.5750E+01 -3.0064E+00 -1.5876E+01  1.0174E+01  2.7503E+01  1.6047E+01
            -6.6165E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2789.00024772066        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      336
 NPARAMETR:  1.0778E+00  5.6961E-01  5.0305E-01  1.2805E+00  4.9909E-01  1.0470E+00  9.7183E-01  2.1200E-01  9.6383E-01  7.8501E-01
             2.4901E+00
 PARAMETER:  1.7494E-01 -4.6280E-01 -5.8706E-01  3.4725E-01 -5.9498E-01  1.4596E-01  7.1422E-02 -1.4512E+00  6.3158E-02 -1.4206E-01
             1.0123E+00
 GRADIENT:   1.8968E+02  1.9113E+01  1.7428E+00  6.8780E+01  2.6607E+01 -1.3544E+01 -1.8339E+01  1.0791E+00  1.0270E+01  2.6611E+00
            -3.4989E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2813.38727501042        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      513
 NPARAMETR:  9.7054E-01  3.3253E-01  2.9769E-01  1.3135E+00  2.9626E-01  9.8505E-01  1.4102E+00  4.4257E-02  9.6859E-01  5.2703E-01
             2.6556E+00
 PARAMETER:  7.0099E-02 -1.0010E+00 -1.1117E+00  3.7269E-01 -1.1165E+00  8.4936E-02  4.4373E-01 -3.0177E+00  6.8085E-02 -5.4049E-01
             1.0767E+00
 GRADIENT:  -2.8609E+01 -6.8103E+00  1.1447E+02  1.8284E+02 -1.3869E+02 -2.2156E+01 -2.7552E+00 -4.1308E-02 -4.8930E+01 -1.0496E+01
             1.9869E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2858.11852946006        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      689
 NPARAMETR:  9.7718E-01  2.4378E-01  1.7282E-01  1.0829E+00  2.0987E-01  1.0510E+00  1.4215E+00  1.0000E-02  1.3269E+00  6.2137E-01
             2.2685E+00
 PARAMETER:  7.6920E-02 -1.3115E+00 -1.6555E+00  1.7962E-01 -1.4612E+00  1.4979E-01  4.5168E-01 -6.5517E+00  3.8288E-01 -3.7582E-01
             9.1911E-01
 GRADIENT:   2.4019E+00  2.6192E+00  6.8320E+00  1.5852E+01 -1.0659E+01  2.1586E+00 -7.3925E+00  0.0000E+00 -5.7469E+00  7.6489E+00
            -6.3518E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2859.32220111240        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      864
 NPARAMETR:  9.7419E-01  2.2727E-01  1.5583E-01  1.0390E+00  1.9648E-01  1.0414E+00  1.4843E+00  1.0000E-02  1.4651E+00  6.0303E-01
             2.2546E+00
 PARAMETER:  7.3849E-02 -1.3816E+00 -1.7590E+00  1.3821E-01 -1.5272E+00  1.4052E-01  4.9495E-01 -7.2046E+00  4.8194E-01 -4.0578E-01
             9.1296E-01
 GRADIENT:  -6.2865E-02  3.5128E-02  6.3019E-01 -6.2795E-01 -5.7596E-01 -3.5902E-02  2.1655E-01  0.0000E+00  3.3151E-02  1.9079E-01
            -1.7884E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2859.32220111240        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      886
 NPARAMETR:  9.7419E-01  2.2727E-01  1.5583E-01  1.0390E+00  1.9648E-01  1.0414E+00  1.4843E+00  1.0000E-02  1.4651E+00  6.0303E-01
             2.2546E+00
 PARAMETER:  7.3849E-02 -1.3816E+00 -1.7590E+00  1.3821E-01 -1.5272E+00  1.4052E-01  4.9495E-01 -7.2046E+00  4.8194E-01 -4.0578E-01
             9.1296E-01
 GRADIENT:  -6.2865E-02  3.5128E-02  6.3019E-01 -6.2795E-01 -5.7596E-01 -3.5902E-02  2.1655E-01  0.0000E+00  3.3151E-02  1.9079E-01
            -1.7884E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      886
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5161E-03  1.0004E-02  1.7379E-04 -6.4267E-03  7.7478E-03
 SE:             2.9508E-02  2.5657E-02  3.3315E-04  2.7387E-02  2.5572E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3205E-01  6.9660E-01  6.0192E-01  8.1447E-01  7.6190E-01

 ETASHRINKSD(%)  1.1450E+00  1.4045E+01  9.8884E+01  8.2510E+00  1.4332E+01
 ETASHRINKVR(%)  2.2768E+00  2.6117E+01  9.9988E+01  1.5821E+01  2.6610E+01
 EBVSHRINKSD(%)  1.3607E+00  1.2833E+01  9.9026E+01  5.0034E+00  1.5991E+01
 EBVSHRINKVR(%)  2.7028E+00  2.4019E+01  9.9991E+01  9.7565E+00  2.9426E+01
 RELATIVEINF(%)  9.7272E+01  3.1166E+01  1.1460E-03  6.0166E+01  8.1631E+00
 EPSSHRINKSD(%)  1.9622E+01
 EPSSHRINKVR(%)  3.5393E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2859.3222011123976     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1205.2328413439868     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.77
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2859.322       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.74E-01  2.27E-01  1.56E-01  1.04E+00  1.96E-01  1.04E+00  1.48E+00  1.00E-02  1.47E+00  6.03E-01  2.25E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.832
Stop Time:
Fri Oct  1 01:18:55 CDT 2021
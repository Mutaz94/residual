Wed Sep 29 10:52:32 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/int/All/dat99.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
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
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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
 RAW OUTPUT FILE (FILE): m99.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   56326.9016545758        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   1.3386E+03  9.7129E+02 -1.5181E+03 -2.0111E+03 -3.2251E+03 -1.6986E+03 -1.0943E+05

0ITERATION NO.:    5    OBJECTIVE VALUE:  -507.433236088904        NO. OF FUNC. EVALS.:  54
 CUMULATIVE NO. OF FUNC. EVALS.:       63
 NPARAMETR:  1.4706E+00  2.2720E+00  4.0981E+00  3.5958E+00  4.8184E+00  1.5220E+00  1.2148E+01
 PARAMETER:  4.8566E-01  9.2068E-01  1.5105E+00  1.3798E+00  1.6724E+00  5.2001E-01  2.5972E+00
 GRADIENT:   6.0769E+01  6.8442E+01  5.3734E+01  1.1057E+02  1.6453E+02  1.9994E+01 -1.1633E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -557.022379416583        NO. OF FUNC. EVALS.:  54
 CUMULATIVE NO. OF FUNC. EVALS.:      117
 NPARAMETR:  9.6027E-01  1.3721E+00  1.7708E+01  1.2256E+00  3.5807E+00  5.1843E+00  1.1857E+01
 PARAMETER:  5.9458E-02  4.1633E-01  2.9740E+00  3.0344E-01  1.3756E+00  1.7456E+00  2.5730E+00
 GRADIENT:   5.7064E+01 -1.3318E+01  3.2191E-01 -1.6543E+01  6.3993E+01  8.9278E-01 -1.2449E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -598.063918065995        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      169
 NPARAMETR:  1.0358E+00  1.9812E+00  2.5528E+00  2.1231E+00  3.0898E+00  3.1814E-01  1.4279E+01
 PARAMETER:  1.3515E-01  7.8370E-01  1.0372E+00  8.5290E-01  1.2281E+00 -1.0453E+00  2.7588E+00
 GRADIENT:  -2.6423E+01  6.6167E+01 -1.5918E+01  5.9755E+01  3.4867E+00  7.1368E-01  2.1336E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -617.674589452670        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      221
 NPARAMETR:  1.0497E+00  1.3999E+00  2.4749E+00  1.6177E+00  3.1453E+00  8.8800E-01  1.2996E+01
 PARAMETER:  1.4850E-01  4.3640E-01  1.0062E+00  5.8101E-01  1.2459E+00 -1.8785E-02  2.6646E+00
 GRADIENT:   1.0882E+01 -7.4254E+00 -1.2500E+01 -8.0301E-01  1.3081E+01  7.3353E+00  1.1439E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -621.550184678497        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      272
 NPARAMETR:  1.0179E+00  1.3979E+00  2.6824E+00  1.5833E+00  3.0959E+00  4.3043E-01  1.2242E+01
 PARAMETER:  1.1772E-01  4.3497E-01  1.0867E+00  5.5948E-01  1.2301E+00 -7.4296E-01  2.6048E+00
 GRADIENT:   1.0826E+01 -2.6470E+00  5.2491E+00 -8.1679E+00  7.2168E+00  1.3842E+00  2.2886E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -624.985595154291        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      391
 NPARAMETR:  1.0129E+00  1.5294E+00  2.6951E+00  1.6533E+00  3.3764E+00  1.7329E-01  1.2440E+01
 PARAMETER:  1.1281E-01  5.2486E-01  1.0914E+00  6.0277E-01  1.3168E+00 -1.6528E+00  2.6209E+00
 GRADIENT:  -9.9440E-01 -9.6836E-01  1.4712E-01 -4.0358E-01  1.5314E+00  1.8263E-01 -1.4733E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -625.073476939044        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      506
 NPARAMETR:  1.0156E+00  1.5384E+00  2.6979E+00  1.6559E+00  3.3616E+00  1.7372E-02  1.2464E+01
 PARAMETER:  1.1549E-01  5.3071E-01  1.0925E+00  6.0436E-01  1.3124E+00 -3.9529E+00  2.6229E+00
 GRADIENT:  -4.4678E-02 -8.3204E-02  4.5875E-02  1.0865E-01  2.7377E-02  1.7883E-03  2.8864E-01

0ITERATION NO.:   38    OBJECTIVE VALUE:  -625.074017524690        NO. OF FUNC. EVALS.:  60
 CUMULATIVE NO. OF FUNC. EVALS.:      566
 NPARAMETR:  1.0156E+00  1.5389E+00  2.6975E+00  1.6551E+00  3.3612E+00  1.0000E-02  1.2462E+01
 PARAMETER:  1.1551E-01  5.3109E-01  1.0923E+00  6.0387E-01  1.3123E+00 -4.9582E+00  2.6227E+00
 GRADIENT:   3.3277E-02  1.2900E-02 -1.1374E-02 -3.9450E-02 -1.6368E-02  0.0000E+00 -1.2540E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      566
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7074E-02 -8.9175E-03 -8.3557E-05
 SE:             2.7397E-02  2.9720E-02  9.8610E-05
 N:                     100         100         100

 P VAL.:         5.3316E-01  7.6414E-01  3.9680E-01

 ETASHRINKSD(%)  8.2160E+00  4.3523E-01  9.9670E+01
 ETASHRINKVR(%)  1.5757E+01  8.6856E-01  9.9999E+01
 EBVSHRINKSD(%)  1.1611E+01  1.7650E+00  9.9625E+01
 EBVSHRINKVR(%)  2.1874E+01  3.4989E+00  9.9999E+01
 RELATIVEINF(%)  7.7953E+01  9.5053E+01  1.3803E-03
 EPSSHRINKSD(%)  6.0903E+00
 EPSSHRINKVR(%)  1.1810E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -625.07401752468991     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       1029.0153422437209     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    10.99
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     4.88
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -625.074       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.02E+00  1.54E+00  2.70E+00  1.66E+00  3.36E+00  1.00E-02  1.25E+01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        2.56E+02
 
 TH 2
+       -8.46E+00  1.13E+01
 
 TH 3
+       -2.82E+00 -5.63E-01  9.38E-02
 
 TH 4
+       -2.34E+01 -8.80E-01  1.32E+00  5.23E+01
 
 TH 5
+       -2.26E+00  4.92E+00 -3.10E-01 -1.16E+00  2.38E+00
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -8.61E+00 -5.21E-01  1.05E-01  8.10E-01 -4.02E-02  0.00E+00  5.99E-01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        2.77E+02
 
 TH 2
+       -1.33E+00  3.96E+01
 
 TH 3
+       -1.46E+00 -3.50E+00  1.87E+01
 
 TH 4
+       -6.02E+00 -7.72E-02 -1.08E-01  5.32E+01
 
 TH 5
+        2.42E+00  1.74E-01 -7.53E-02 -7.36E-01  1.65E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -1.10E+01 -2.60E+00  1.90E-01  7.26E-01  3.75E-01  0.00E+00  5.47E+00
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        3.12E+02
 
 TH 2
+        4.65E+01  4.05E+01
 
 TH 3
+       -1.90E+01 -3.07E+00  1.71E+01
 
 TH 4
+        1.41E+01  9.41E-01  9.94E-01  5.66E+01
 
 TH 5
+       -4.71E+00  2.80E+01  3.44E+00  2.22E+00  3.73E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -3.35E+01 -1.55E+01 -5.61E-01  1.10E+01  6.81E+00  0.00E+00  9.63E+01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       15.985
Stop Time:
Wed Sep 29 10:52:50 CDT 2021

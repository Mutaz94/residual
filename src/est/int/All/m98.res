Wed Sep 29 10:52:05 CDT 2021
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
$DATA ../../../../data/int/All/dat98.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   55050.8061060469        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   1.3699E+03  1.1469E+03 -1.3708E+03 -1.2208E+03 -2.5782E+03 -1.5982E+03 -1.0749E+05

0ITERATION NO.:    5    OBJECTIVE VALUE:   14441.0502751689        NO. OF FUNC. EVALS.:  79
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  1.0414E+00  1.0285E+00  1.3233E+00  1.7103E+00  1.9572E+00  1.1877E+00  1.8293E+00
 PARAMETER:  1.4057E-01  1.2813E-01  3.8011E-01  6.3669E-01  7.7151E-01  2.7199E-01  7.0392E-01
 GRADIENT:   2.9741E+02  1.9076E+02 -5.1655E+02 -1.2543E+03  2.8711E+02 -5.3064E+02 -3.1401E+04

0ITERATION NO.:   10    OBJECTIVE VALUE:   1361.91667920542        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      205
 NPARAMETR:  1.8975E+01  6.5833E-01  1.7606E+00  2.7128E+01  1.5808E+00  1.5263E-01  5.0246E+00
 PARAMETER:  3.0431E+00 -3.1805E-01  6.6566E-01  3.4006E+00  5.5795E-01 -1.7798E+00  1.7143E+00
 GRADIENT:   8.3755E+01 -2.8938E+02 -2.9751E+02 -3.8351E+03 -8.3605E+02 -5.8747E+00 -3.9845E+03

0ITERATION NO.:   15    OBJECTIVE VALUE:  -431.309654585072        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      279
 NPARAMETR:  7.1391E-01  7.6457E-01  2.0150E+00  5.1904E-01  2.7132E+00  1.5703E-01  1.3793E+01
 PARAMETER: -2.3700E-01 -1.6844E-01  8.0062E-01 -5.5578E-01  1.0981E+00 -1.7513E+00  2.7242E+00
 GRADIENT:  -7.0817E+01 -1.9334E+02 -8.2872E+01 -1.8241E+01 -1.9289E+02  4.5355E-02  2.3936E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -524.605126302777        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      331
 NPARAMETR:  8.9776E-01  8.6264E-01  2.2712E+00  1.3078E+00  3.7128E+00  1.5800E-01  1.1383E+01
 PARAMETER: -7.8536E-03 -4.7762E-02  9.2030E-01  3.6837E-01  1.4118E+00 -1.7452E+00  2.5321E+00
 GRADIENT:  -1.7852E+01 -6.7428E+01 -2.7966E+01 -6.6409E+01  7.1236E+01  2.8678E-02 -5.7727E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -545.065013364871        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      382
 NPARAMETR:  9.7963E-01  8.6664E-01  2.2872E+00  2.0043E+00  3.4080E+00  1.5757E-01  1.1595E+01
 PARAMETER:  7.9422E-02 -4.3131E-02  9.2732E-01  7.9529E-01  1.3261E+00 -1.7479E+00  2.5505E+00
 GRADIENT:  -1.8748E+01 -8.0650E+01 -1.6199E+00  8.8547E+00  3.2195E+01  2.1063E-01  2.4604E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -546.050531842288        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      434
 NPARAMETR:  1.0754E+00  9.0406E-01  2.3091E+00  1.9929E+00  3.1757E+00  1.5620E-01  1.1433E+01
 PARAMETER:  1.7272E-01 -8.6277E-04  9.3686E-01  7.8957E-01  1.2555E+00 -1.7566E+00  2.5365E+00
 GRADIENT:   2.4945E+01 -8.3348E+01  2.7003E+00 -1.5458E+00  5.1002E+00  2.1186E-01 -1.5417E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -558.125639687802        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      491
 NPARAMETR:  1.1542E+00  1.3148E+00  2.4204E+00  1.9782E+00  2.7363E+00  1.4545E-01  1.1633E+01
 PARAMETER:  2.4341E-01  3.7370E-01  9.8391E-01  7.8218E-01  1.1066E+00 -1.8279E+00  2.5538E+00
 GRADIENT:   5.2255E+01 -2.5530E+00  5.4895E+00 -8.1467E+00 -3.4162E+01  1.7740E-01 -3.9520E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -567.796922574734        NO. OF FUNC. EVALS.:  81
 CUMULATIVE NO. OF FUNC. EVALS.:      572
 NPARAMETR:  1.0268E+00  1.4185E+00  2.4598E+00  2.0897E+00  3.1675E+00  1.4370E-01  1.1992E+01
 PARAMETER:  1.2640E-01  4.4963E-01  1.0001E+00  8.3704E-01  1.2530E+00 -1.8400E+00  2.5842E+00
 GRADIENT:  -1.5105E+01 -6.3587E-01  3.9948E+00  4.4052E+00 -8.0592E+00  1.6571E-01 -1.5825E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -568.427945589542        NO. OF FUNC. EVALS.: 103
 CUMULATIVE NO. OF FUNC. EVALS.:      675
 NPARAMETR:  1.0700E+00  1.4341E+00  2.4285E+00  2.0618E+00  3.2408E+00  8.5300E-02  1.2157E+01
 PARAMETER:  1.6767E-01  4.6051E-01  9.8726E-01  8.2357E-01  1.2758E+00 -2.3616E+00  2.5979E+00
 GRADIENT:   6.9403E+00  1.8011E+01  1.9709E+00  1.4359E+01  4.5759E+01  6.0512E-02  4.5391E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -568.443845627429        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      792
 NPARAMETR:  1.0707E+00  1.4313E+00  2.4337E+00  2.0641E+00  3.2221E+00  3.9571E-02  1.2167E+01
 PARAMETER:  1.6830E-01  4.5859E-01  9.8941E-01  8.2471E-01  1.2700E+00 -3.1297E+00  2.5987E+00
 GRADIENT:   1.8505E-02 -1.1988E-01  9.1917E-02 -1.3414E-02 -4.8149E-01  1.2084E-02  9.6494E-02

0ITERATION NO.:   53    OBJECTIVE VALUE:  -568.454241224829        NO. OF FUNC. EVALS.:  68
 CUMULATIVE NO. OF FUNC. EVALS.:      860
 NPARAMETR:  1.0705E+00  1.4295E+00  2.4346E+00  2.0805E+00  3.2716E+00  1.0000E-02  1.2163E+01
 PARAMETER:  1.6800E-01  4.5912E-01  9.8897E-01  8.2442E-01  1.2725E+00 -4.7656E+00  2.5984E+00
 GRADIENT:  -1.7438E-02  1.1206E-01 -7.7795E-02 -5.1299E-01 -1.4378E+00  0.0000E+00  2.5786E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      860
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2470E-02 -8.7616E-03 -1.0164E-04
 SE:             2.8794E-02  2.9536E-02  1.0216E-04
 N:                     100         100         100

 P VAL.:         6.6496E-01  7.6674E-01  3.1977E-01

 ETASHRINKSD(%)  3.5361E+00  1.0490E+00  9.9658E+01
 ETASHRINKVR(%)  6.9472E+00  2.0870E+00  9.9999E+01
 EBVSHRINKSD(%)  6.8215E+00  1.8912E+00  9.9596E+01
 EBVSHRINKVR(%)  1.3178E+01  3.7467E+00  9.9998E+01
 RELATIVEINF(%)  8.6635E+01  9.4584E+01  1.6023E-03
 EPSSHRINKSD(%)  6.4583E+00
 EPSSHRINKVR(%)  1.2499E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -568.45424122482939     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       1085.6351185435815     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    20.84
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     4.37
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -568.454       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.07E+00  1.43E+00  2.43E+00  2.06E+00  3.23E+00  1.00E-02  1.22E+01
 


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
+        2.10E+02
 
 TH 2
+       -7.17E-01  1.85E+01
 
 TH 3
+        7.36E+00 -8.45E+00  2.89E+01
 
 TH 4
+       -5.53E+01 -5.23E+00  1.55E+00  2.54E+01
 
 TH 5
+       -8.62E+00  5.61E+00 -1.03E+00  2.37E+00  2.79E+00
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -8.78E+00 -1.72E+00  2.48E-02  3.35E+00  1.73E-01  0.00E+00  8.07E-01
 
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
+        1.70E+02
 
 TH 2
+       -8.95E-01  4.94E+01
 
 TH 3
+        1.15E+00 -5.18E+00  2.60E+01
 
 TH 4
+       -1.96E+01  5.19E-01  2.24E+00  2.39E+01
 
 TH 5
+        2.96E+00  1.04E-01 -4.16E-01  2.81E-01  1.74E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -5.86E+00 -3.19E+00 -7.22E-02  1.94E+00  2.67E-01  0.00E+00  5.48E+00
 
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
+        2.02E+02
 
 TH 2
+        6.00E+01  5.04E+01
 
 TH 3
+       -2.62E+00 -7.51E-01  2.38E+01
 
 TH 4
+        3.96E+01  1.01E+01  2.19E+00  3.63E+01
 
 TH 5
+        4.69E+00  2.98E+01  4.55E-01  4.61E+00  4.16E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -7.98E+00 -1.53E+01 -2.67E+00 -2.98E+00  1.06E+01  0.00E+00  1.00E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       25.324
Stop Time:
Wed Sep 29 10:52:32 CDT 2021

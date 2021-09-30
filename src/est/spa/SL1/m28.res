Wed Sep 29 14:58:16 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat28.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m28.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1643.10926374170        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1363E+02 -8.3393E+01 -5.0554E+01 -6.2359E+01  9.4895E+01  4.0075E+01  2.7862E+00  4.1719E+00 -1.2042E+01  2.1976E+01
            -8.6442E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1655.79969123447        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.8945E-01  1.0316E+00  1.1002E+00  1.0745E+00  9.7410E-01  9.4555E-01  9.4543E-01  9.9020E-01  1.0761E+00  8.1241E-01
             1.0571E+00
 PARAMETER:  8.9391E-02  1.3109E-01  1.9552E-01  1.7188E-01  7.3761E-02  4.4016E-02  4.3889E-02  9.0154E-02  1.7332E-01 -1.0775E-01
             1.5548E-01
 GRADIENT:   1.7480E+01  2.0292E+00  1.1324E+00  4.8136E+00  2.1819E+01 -1.1053E+01  5.9287E+00 -5.9056E+00  4.1419E+00 -3.4183E+00
             8.3598E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1656.93108021993        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  9.8976E-01  9.3674E-01  1.1413E+00  1.1467E+00  9.3691E-01  9.7080E-01  8.1052E-01  1.0689E+00  1.0457E+00  7.7941E-01
             1.0528E+00
 PARAMETER:  8.9704E-02  3.4650E-02  2.3214E-01  2.3692E-01  3.4834E-02  7.0361E-02 -1.1008E-01  1.6666E-01  1.4473E-01 -1.4922E-01
             1.5142E-01
 GRADIENT:   1.8735E+01  1.6859E+01  5.8984E+00  2.2802E+01 -2.4711E+00 -1.5397E-01  2.9020E-01 -3.7706E+00  1.5484E+00 -5.6809E+00
             6.2974E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1657.73624967008        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  9.7795E-01  8.0996E-01  1.2798E+00  1.2222E+00  9.4106E-01  9.7543E-01  6.7460E-01  1.2059E+00  9.9579E-01  8.4379E-01
             1.0247E+00
 PARAMETER:  7.7706E-02 -1.1077E-01  3.4669E-01  3.0068E-01  3.9255E-02  7.5122E-02 -2.9364E-01  2.8726E-01  9.5777E-02 -6.9849E-02
             1.2438E-01
 GRADIENT:  -5.2667E+00  1.2718E+01  5.2626E+00  1.3196E+01 -1.4498E+01  2.3296E+00 -2.4646E-02  3.1276E-01 -3.6437E+00  1.7106E+00
            -2.6633E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1658.27081960853        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  9.7832E-01  5.6802E-01  1.3911E+00  1.3735E+00  9.1229E-01  9.6575E-01  4.0512E-01  1.2205E+00  9.1641E-01  8.3353E-01
             1.0329E+00
 PARAMETER:  7.8087E-02 -4.6559E-01  4.3011E-01  4.1736E-01  8.2000E-03  6.5149E-02 -8.0358E-01  2.9922E-01  1.2710E-02 -8.2088E-02
             1.3238E-01
 GRADIENT:   1.5505E+00  4.1372E+00  7.9177E-01  8.8269E+00  8.4900E-01 -7.3909E-01 -7.5174E-02 -7.7713E-01 -1.5708E+00 -1.7300E-01
             2.9767E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1658.40236288810        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      880
 NPARAMETR:  9.7450E-01  3.7930E-01  1.3761E+00  1.4900E+00  8.5148E-01  9.6772E-01  1.8507E-01  1.2008E+00  8.4823E-01  7.9838E-01
             1.0303E+00
 PARAMETER:  7.4174E-02 -8.6944E-01  4.1924E-01  4.9875E-01 -6.0783E-02  6.7193E-02 -1.5870E+00  2.8302E-01 -6.4605E-02 -1.2517E-01
             1.2982E-01
 GRADIENT:  -2.1381E+00  3.1429E+00  1.8733E+00  9.3382E+00 -4.5330E+00  5.4857E-01 -5.3866E-03  6.4697E-02  2.7013E-01  5.1916E-01
            -6.2547E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1658.42223347927        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1056
 NPARAMETR:  9.7377E-01  3.0440E-01  1.3514E+00  1.5346E+00  8.2300E-01  9.6688E-01  1.1089E-01  1.1823E+00  8.1912E-01  7.7738E-01
             1.0312E+00
 PARAMETER:  7.3420E-02 -1.0894E+00  4.0113E-01  5.2826E-01 -9.4801E-02  6.6316E-02 -2.0992E+00  2.6748E-01 -9.9530E-02 -1.5183E-01
             1.3072E-01
 GRADIENT:  -1.4431E+00  2.8538E+00  2.0558E+00  9.5569E+00 -5.3893E+00  4.0989E-01 -1.1483E-03 -1.0815E-01 -4.0506E-01  3.2132E-01
            -4.4856E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1658.46141446279        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1239
 NPARAMETR:  9.7389E-01  2.4739E-01  1.3376E+00  1.5563E+00  8.0897E-01  9.6589E-01  7.3032E-02  1.1782E+00  8.0289E-01  7.6421E-01
             1.0323E+00
 PARAMETER:  7.3539E-02 -1.2968E+00  3.9090E-01  5.4233E-01 -1.1199E-01  6.5296E-02 -2.5169E+00  2.6398E-01 -1.1954E-01 -1.6891E-01
             1.3175E-01
 GRADIENT:   1.2260E+00 -1.2774E+00 -3.3609E+00 -1.7250E+01  7.1800E+00  2.1342E-01  4.3833E-04 -1.7711E-02  1.4801E+00 -3.3294E-01
             6.2728E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1658.48735857901        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1423
 NPARAMETR:  9.7390E-01  2.4955E-01  1.3402E+00  1.5586E+00  8.0740E-01  9.6558E-01  7.6483E-02  1.1794E+00  8.0047E-01  7.6429E-01
             1.0322E+00
 PARAMETER:  7.3549E-02 -1.2881E+00  3.9278E-01  5.4382E-01 -1.1394E-01  6.4972E-02 -2.4707E+00  2.6501E-01 -1.2255E-01 -1.6881E-01
             1.3173E-01
 GRADIENT:   1.0750E+00  1.4026E-01 -1.7866E-01 -9.2745E+00  4.2548E-01  7.8729E-02  1.6618E-04 -4.2512E-02  8.0297E-02  1.4707E-02
            -1.8216E-02

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1658.48735857901        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1445
 NPARAMETR:  9.7390E-01  2.4955E-01  1.3402E+00  1.5586E+00  8.0740E-01  9.6558E-01  7.6483E-02  1.1794E+00  8.0047E-01  7.6429E-01
             1.0322E+00
 PARAMETER:  7.3549E-02 -1.2881E+00  3.9278E-01  5.4382E-01 -1.1394E-01  6.4972E-02 -2.4707E+00  2.6501E-01 -1.2255E-01 -1.6881E-01
             1.3173E-01
 GRADIENT:   1.0750E+00  1.4026E-01 -1.7866E-01 -9.2745E+00  4.2548E-01  7.8729E-02  1.6618E-04 -4.2512E-02  8.0297E-02  1.4707E-02
            -1.8216E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1445
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.6134E-04 -6.3585E-04 -2.6455E-02 -4.0790E-03 -3.1719E-02
 SE:             2.9838E-02  3.6237E-04  1.8945E-02  2.9261E-02  1.9661E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9034E-01  7.9311E-02  1.6259E-01  8.8914E-01  1.0668E-01

 ETASHRINKSD(%)  3.8359E-02  9.8786E+01  3.6532E+01  1.9712E+00  3.4134E+01
 ETASHRINKVR(%)  7.6703E-02  9.9985E+01  5.9718E+01  3.9035E+00  5.6616E+01
 EBVSHRINKSD(%)  4.5274E-01  9.8901E+01  3.8354E+01  2.4622E+00  3.2726E+01
 EBVSHRINKVR(%)  9.0342E-01  9.9988E+01  6.1998E+01  4.8638E+00  5.4742E+01
 RELATIVEINF(%)  9.7511E+01  7.4284E-04  6.7274E+00  8.0876E+00  4.6986E+00
 EPSSHRINKSD(%)  4.4580E+01
 EPSSHRINKVR(%)  6.9286E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1658.4873585790106     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -923.33653201527238     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.29
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.66
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1658.487       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.74E-01  2.50E-01  1.34E+00  1.56E+00  8.07E-01  9.66E-01  7.65E-02  1.18E+00  8.00E-01  7.64E-01  1.03E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.25E+03
 
 TH 2
+       -2.82E+01  3.87E+02
 
 TH 3
+        1.44E+00  8.74E+01  1.75E+02
 
 TH 4
+       -1.04E+01  4.29E+02 -1.70E+01  6.79E+02
 
 TH 5
+        2.73E+00 -3.73E+02 -4.12E+02 -8.31E+01  1.35E+03
 
 TH 6
+        2.75E-01 -2.29E+00  6.15E-01 -2.25E+00 -1.04E+00  2.10E+02
 
 TH 7
+        1.76E-03 -3.09E-01 -3.37E-03 -1.56E-01  1.20E-01 -7.96E-03 -8.47E-02
 
 TH 8
+        3.00E-01  2.81E+00 -3.31E+01 -2.78E+00 -1.34E+01  1.95E-01  1.66E-02  3.89E+01
 
 TH 9
+        2.34E+00 -1.01E+02  5.30E+00 -2.02E-01  3.07E+00 -1.02E+00  3.73E-01 -1.82E-01  2.83E+02
 
 TH10
+        3.02E-01  9.98E+00  2.93E-01 -4.78E-01 -1.08E+02  1.42E-02  8.01E-02  2.01E+01  1.96E+00  9.57E+01
 
 TH11
+       -7.86E+00 -6.43E+00 -4.26E+00 -7.03E+00 -1.25E+01  2.49E+00  3.82E-02  7.57E+00  1.08E+01  1.62E+01  1.99E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       24.005
Stop Time:
Wed Sep 29 14:58:42 CDT 2021

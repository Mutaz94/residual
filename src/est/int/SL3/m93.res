Wed Sep 29 04:55:35 CDT 2021
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
$DATA ../../../../data/int/SL3/dat93.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      980
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

 TOT. NO. OF OBS RECS:      880
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
 RAW OUTPUT FILE (FILE): m93.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -438.962001087038        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5391E+02 -2.8429E+01  3.1099E+02  1.7359E+02  1.7740E+02  5.0089E+01 -6.7632E+01 -2.2595E+02 -2.4729E+01 -9.6064E+00
            -6.3282E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2703.66478962589        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0787E+00  1.2541E+00  7.7167E-01  9.2223E-01  9.5799E-01  9.4747E-01  9.5703E-01  9.9265E-01  8.2948E-01  9.4063E-01
             2.7387E+00
 PARAMETER:  1.7579E-01  3.2644E-01 -1.5920E-01  1.9043E-02  5.7082E-02  4.6036E-02  5.6084E-02  9.2624E-02 -8.6962E-02  3.8796E-02
             1.1075E+00
 GRADIENT:   2.7747E+02  1.0351E+02  1.7084E+01  3.9886E+01 -5.2173E+01 -1.3930E+01  1.7195E+01  8.3282E+00  7.1561E-02 -9.3517E+00
             4.7911E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2707.38977294194        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      240
 NPARAMETR:  1.0871E+00  1.2846E+00  7.4398E-01  9.0554E-01  9.8346E-01  9.9028E-01  7.8370E-01  8.0551E-01  8.1179E-01  1.0901E+00
             2.7550E+00
 PARAMETER:  1.8352E-01  3.5044E-01 -1.9575E-01  7.7921E-04  8.3320E-02  9.0232E-02 -1.4372E-01 -1.1628E-01 -1.0851E-01  1.8626E-01
             1.1134E+00
 GRADIENT:   1.7908E+02  5.2891E+01  1.0212E+01  5.0994E+01 -4.2096E+01 -4.3439E+00  1.4965E+00  3.7712E+00 -5.0824E+00  1.4447E+00
             4.1134E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2720.47022481832        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      416
 NPARAMETR:  1.0099E+00  1.4339E+00  7.2831E-01  7.9385E-01  1.1291E+00  9.5586E-01  6.6432E-01  6.1193E-01  9.3824E-01  1.2058E+00
             2.6953E+00
 PARAMETER:  1.0983E-01  4.6037E-01 -2.1702E-01 -1.3086E-01  2.2140E-01  5.4861E-02 -3.0900E-01 -3.9114E-01  3.6248E-02  2.8713E-01
             1.0915E+00
 GRADIENT:   2.1151E+01  3.7703E+00  5.3439E+00  2.5961E+01 -1.1945E+00 -4.1210E+00 -1.7637E+00 -4.6607E-02  9.5205E-01  5.1090E+00
             7.0342E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2725.82382471483        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      591
 NPARAMETR:  1.0048E+00  1.8538E+00  5.5169E-01  5.2556E-01  1.3991E+00  9.7025E-01  6.0542E-01  6.0636E-01  1.2100E+00  1.3582E+00
             2.6744E+00
 PARAMETER:  1.0481E-01  7.1725E-01 -4.9477E-01 -5.4330E-01  4.3584E-01  6.9799E-02 -4.0183E-01 -4.0028E-01  2.9064E-01  4.0619E-01
             1.0837E+00
 GRADIENT:   9.7487E+00  2.1922E+01  3.3846E+00  1.1028E+01 -7.3479E+00  1.3708E+00  1.0943E+00 -6.8590E-01 -8.4358E-01  3.1457E+00
             5.7830E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2727.92878546111        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      766
 NPARAMETR:  9.9933E-01  2.1711E+00  3.3997E-01  3.1321E-01  1.6367E+00  9.6885E-01  5.6101E-01  9.9052E-01  1.7191E+00  1.4712E+00
             2.6527E+00
 PARAMETER:  9.9333E-02  8.7524E-01 -9.7890E-01 -1.0609E+00  5.9265E-01  6.8359E-02 -4.7802E-01  9.0473E-02  6.4178E-01  4.8607E-01
             1.0756E+00
 GRADIENT:  -2.2608E+00  1.1843E+01 -2.0452E+00  6.5535E+00  2.3346E+00  5.7334E-01  6.8291E-02  4.1712E-01  2.3177E-01  1.1499E+00
            -5.2232E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2728.08809372850        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      942
 NPARAMETR:  1.0000E+00  2.2505E+00  2.8736E-01  2.5281E-01  1.6941E+00  9.6646E-01  5.5303E-01  7.8037E-01  1.9681E+00  1.4892E+00
             2.6488E+00
 PARAMETER:  1.0000E-01  9.1117E-01 -1.1470E+00 -1.2751E+00  6.2716E-01  6.5886E-02 -4.9234E-01 -1.4799E-01  7.7709E-01  4.9821E-01
             1.0741E+00
 GRADIENT:  -2.1387E-01 -2.5159E-01  3.2454E-01 -1.0534E+00 -1.1435E+00 -2.3631E-01 -5.4869E-01  2.3884E-01 -8.6309E-01 -1.2954E-01
            -2.4344E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2728.14833938959        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1119
 NPARAMETR:  1.0001E+00  2.2798E+00  2.6099E-01  2.3286E-01  1.7153E+00  9.6780E-01  5.5299E-01  2.7388E-01  2.1242E+00  1.4970E+00
             2.6526E+00
 PARAMETER:  1.0007E-01  9.2408E-01 -1.2433E+00 -1.3573E+00  6.3956E-01  6.7272E-02 -4.9241E-01 -1.1951E+00  8.5337E-01  5.0346E-01
             1.0756E+00
 GRADIENT:  -1.8257E-01 -1.3215E+00  1.6733E-01 -1.2750E-01 -3.9366E-01  2.0931E-01  3.9938E-01  2.9271E-02  7.1308E-01  9.1652E-02
             2.0278E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2728.17349023470        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1299
 NPARAMETR:  1.0001E+00  2.2754E+00  2.6087E-01  2.3642E-01  1.7112E+00  9.6727E-01  5.5307E-01  5.2542E-02  2.0888E+00  1.4962E+00
             2.6505E+00
 PARAMETER:  1.0013E-01  9.2214E-01 -1.2437E+00 -1.3421E+00  6.3721E-01  6.6719E-02 -4.9227E-01 -2.8461E+00  8.3661E-01  5.0293E-01
             1.0747E+00
 GRADIENT:  -1.3582E-02  1.3218E-01 -7.9971E-02  1.9997E-01  7.2200E-02 -1.2244E-02  2.2429E-02  8.9213E-04  3.1787E-02  3.7473E-03
            -6.7051E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2728.17767358642        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1484             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0004E+00  2.2695E+00  2.6307E-01  2.3832E-01  1.7071E+00  9.6740E-01  5.5287E-01  1.0000E-02  2.0829E+00  1.4953E+00
             2.6499E+00
 PARAMETER:  1.0036E-01  9.1954E-01 -1.2353E+00 -1.3341E+00  6.3480E-01  6.6854E-02 -4.9264E-01 -5.7365E+01  8.3374E-01  5.0229E-01
             1.0745E+00
 GRADIENT:   6.2364E+01  3.3251E+02  6.2304E-01  1.1206E+01  2.6936E+01  6.9350E+00  5.7321E+00  0.0000E+00  3.4957E+00  4.6156E+00
             1.8615E+01

0ITERATION NO.:   47    OBJECTIVE VALUE:  -2728.17767358642        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1542
 NPARAMETR:  1.0004E+00  2.2695E+00  2.6307E-01  2.3832E-01  1.7071E+00  9.6740E-01  5.5287E-01  1.0000E-02  2.0829E+00  1.4953E+00
             2.6499E+00
 PARAMETER:  1.0036E-01  9.1954E-01 -1.2353E+00 -1.3341E+00  6.3480E-01  6.6854E-02 -4.9264E-01 -5.7365E+01  8.3374E-01  5.0229E-01
             1.0745E+00
 GRADIENT:   6.5595E-01 -6.0404E+00 -1.2651E-01 -5.7360E-01 -2.6087E-01  6.5447E-02  2.1295E-02  0.0000E+00  2.1256E-01  1.5193E-01
            -2.9903E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1542
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5991E-03 -2.7162E-02 -2.1075E-05  3.0691E-02 -2.0784E-02
 SE:             2.9410E-02  2.3757E-02  3.6944E-05  1.8238E-02  2.6074E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5664E-01  2.5290E-01  5.6836E-01  9.2415E-02  4.2538E-01

 ETASHRINKSD(%)  1.4742E+00  2.0412E+01  9.9876E+01  3.8900E+01  1.2649E+01
 ETASHRINKVR(%)  2.9266E+00  3.6658E+01  1.0000E+02  6.2667E+01  2.3699E+01
 EBVSHRINKSD(%)  1.6628E+00  1.8895E+01  9.9875E+01  4.3765E+01  1.1044E+01
 EBVSHRINKVR(%)  3.2980E+00  3.4219E+01  1.0000E+02  6.8376E+01  2.0869E+01
 RELATIVEINF(%)  9.6619E+01  9.6567E+00  6.3169E-05  4.3641E+00  3.7888E+01
 EPSSHRINKSD(%)  1.6268E+01
 EPSSHRINKVR(%)  2.9890E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          880
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1617.3318184402240     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2728.1776735864164     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1110.8458551461924     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    40.00
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    12.87
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2728.178       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  2.27E+00  2.63E-01  2.38E-01  1.71E+00  9.67E-01  5.53E-01  1.00E-02  2.08E+00  1.50E+00  2.65E+00
 


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
+        1.15E+03
 
 TH 2
+       -1.84E+01  4.81E+02
 
 TH 3
+        5.51E-01  9.39E+01  3.66E+02
 
 TH 4
+       -3.06E+01  5.23E+02 -3.21E+02  1.58E+03
 
 TH 5
+       -2.59E+00 -5.45E+01 -4.28E+01  1.16E+02  1.35E+02
 
 TH 6
+        4.72E+00 -4.89E+00  1.29E+00 -1.25E+01 -8.89E-01  1.98E+02
 
 TH 7
+        3.25E+00 -1.90E+01 -1.28E+01  1.54E+01 -6.91E+00  1.88E-01  2.89E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        8.06E-02 -5.84E+00 -1.49E+01  5.76E+01  1.39E-01 -5.37E-01  1.22E+01  0.00E+00  1.01E+01
 
 TH10
+        3.15E-01 -4.38E+00  1.88E+01  8.27E+00 -8.38E+00  6.03E-02  5.00E+00  0.00E+00  2.39E+00  5.34E+01
 
 TH11
+       -1.51E+01 -2.05E+01 -5.80E+00 -1.53E+01  1.26E+00  2.85E+00  1.36E+01  0.00E+00  2.03E+00  4.91E+00  1.63E+02
 
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
 #CPUT: Total CPU Time in Seconds,       52.973
Stop Time:
Wed Sep 29 04:56:30 CDT 2021

Fri Oct  1 21:52:36 CDT 2021
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
$DATA ../../../../data/SD3/D/dat29.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m29.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   14519.7519069956        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3652E+02  1.2296E+02 -5.1778E+01  7.9938E+00  2.1665E+02 -1.2440E+03 -6.5034E+02 -4.4366E+01 -1.1606E+03 -3.7114E+02
            -3.0245E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -758.630297834920        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.5749E+00  1.2677E+00  9.4656E-01  1.9115E+00  1.1878E+00  3.1740E+00  2.5754E+00  9.6196E-01  2.5543E+00  1.2369E+00
             1.2648E+01
 PARAMETER:  5.5419E-01  3.3722E-01  4.5074E-02  7.4789E-01  2.7206E-01  1.2550E+00  1.0460E+00  6.1221E-02  1.0378E+00  3.1262E-01
             2.6375E+00
 GRADIENT:   4.0621E+01 -6.7755E+01 -6.9023E+01  6.4694E+01  7.2368E+01  1.2547E+02 -2.6455E+01  2.8115E+00  4.4366E+01  1.5244E+01
             3.7975E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -817.757461251886        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.5312E+00  1.8290E+00  2.1021E+01  2.3361E+00  7.9061E+00  3.3169E+00  6.7893E+00  6.0785E-01  2.9772E+00  4.4505E+00
             1.1289E+01
 PARAMETER:  5.2606E-01  7.0375E-01  3.1455E+00  9.4850E-01  2.1676E+00  1.2990E+00  2.0153E+00 -3.9783E-01  1.1910E+00  1.5930E+00
             2.5238E+00
 GRADIENT:   4.3371E+01  3.4601E+01  3.3577E-02  3.6364E+01 -7.5537E-01  1.2741E+02  6.9595E+01  1.7890E-04  5.3347E+01  1.1829E+00
             3.1525E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -909.979348952689        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.0950E+00  9.0495E-01  6.2712E+00  1.3646E+00  1.5345E+00  2.0197E+00  3.4564E+00  1.1499E+00  1.7556E+00  1.8319E+00
             9.5289E+00
 PARAMETER:  1.9076E-01  1.2254E-04  1.9360E+00  4.1086E-01  5.2821E-01  8.0293E-01  1.3402E+00  2.3967E-01  6.6279E-01  7.0536E-01
             2.3543E+00
 GRADIENT:  -7.0875E+01 -3.8660E+01  2.5373E+00 -3.9026E+01 -2.3122E+01 -6.2106E+00 -2.7972E+01  3.7501E-01  2.1114E+01  4.4418E+01
             2.8928E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -974.688312856893        NO. OF FUNC. EVALS.:  79
 CUMULATIVE NO. OF FUNC. EVALS.:      306
 NPARAMETR:  1.1819E+00  1.5823E+00  2.5048E+00  9.0845E-01  1.6216E+00  2.0936E+00  3.0721E+00  7.4258E-01  1.4240E+00  9.7114E-01
             7.0635E+00
 PARAMETER:  2.6715E-01  5.5887E-01  1.0182E+00  3.9848E-03  5.8343E-01  8.3889E-01  1.2224E+00 -1.9763E-01  4.5343E-01  7.0717E-02
             2.0549E+00
 GRADIENT:   1.9308E+01 -3.7067E+00 -1.5858E+00 -7.4303E+00 -5.1486E+00  1.2059E+01  7.6572E+00  3.2872E-01  1.1762E+01  1.6008E+01
            -3.7621E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -984.844166928522        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      379
 NPARAMETR:  1.1602E+00  1.6576E+00  1.2137E+00  7.5379E-01  1.3521E+00  2.1047E+00  2.9334E+00  1.0000E-02  3.3837E-01  2.5138E-01
             7.2168E+00
 PARAMETER:  2.4863E-01  6.0536E-01  2.9363E-01 -1.8264E-01  4.0169E-01  8.4418E-01  1.1762E+00 -6.1924E+00 -9.8362E-01 -1.2808E+00
             2.0764E+00
 GRADIENT:   8.8835E+00 -6.5763E+00  2.3597E+00 -1.4259E+01 -1.4409E+01  1.8211E+01 -1.0600E-01  0.0000E+00  1.6859E-01  1.4344E+00
            -1.0834E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -985.241863392074        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      450
 NPARAMETR:  1.1521E+00  1.6827E+00  1.4088E+00  7.7914E-01  1.4619E+00  2.0291E+00  2.9878E+00  1.0000E-02  3.1029E-01  2.3337E-01
             7.2427E+00
 PARAMETER:  2.4155E-01  6.2038E-01  4.4274E-01 -1.4956E-01  4.7971E-01  8.0761E-01  1.1945E+00 -6.5186E+00 -1.0703E+00 -1.3551E+00
             2.0800E+00
 GRADIENT:   3.2556E-01 -2.0193E+00 -1.2863E+00 -1.5246E+00  2.0977E+00 -1.4947E+00  2.5241E-01  0.0000E+00 -9.5951E-02  1.1181E+00
             5.8714E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -985.969065716347        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  1.1526E+00  1.6982E+00  1.4103E+00  7.6609E-01  1.4572E+00  2.0515E+00  2.9815E+00  1.0000E-02  1.9077E-01  1.3752E-01
             7.2366E+00
 PARAMETER:  2.4200E-01  6.2959E-01  4.4382E-01 -1.6646E-01  4.7651E-01  8.1859E-01  1.1924E+00 -8.5134E+00 -1.5567E+00 -1.8840E+00
             2.0791E+00
 GRADIENT:   1.6704E+00 -1.0135E+00  4.3234E-02 -2.1122E+00 -1.7685E+00  4.0016E+00  6.5971E-01  0.0000E+00 -9.7191E-02  3.9427E-01
            -3.0223E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -990.486625470267        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:      660
 NPARAMETR:  1.2013E+00  1.8247E+00  1.6640E+00  7.8480E-01  1.5871E+00  2.2238E+00  3.2321E+00  1.0000E-02  9.5418E-02  6.8894E-02
             7.4339E+00
 PARAMETER:  2.8339E-01  7.0144E-01  6.0923E-01 -1.4232E-01  5.6188E-01  8.9923E-01  1.2731E+00 -1.1890E+01 -2.2495E+00 -2.5752E+00
             2.1060E+00
 GRADIENT:  -5.7997E+00 -2.4852E+00 -2.5760E+00 -6.2897E-01  5.9266E+00 -5.4303E+00 -1.1169E+00  0.0000E+00 -3.1584E-02  8.2898E-02
             8.2827E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -990.814833789820        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      835
 NPARAMETR:  1.2155E+00  1.7907E+00  2.0339E+00  8.0963E-01  1.6246E+00  2.2603E+00  3.3373E+00  1.0000E-02  7.5322E-02  5.1855E-02
             7.3934E+00
 PARAMETER:  2.9518E-01  6.8262E-01  8.0994E-01 -1.1118E-01  5.8525E-01  9.1551E-01  1.3052E+00 -1.2797E+01 -2.4860E+00 -2.8593E+00
             2.1006E+00
 GRADIENT:   8.2689E-02 -1.8861E-02 -5.8377E-02  2.2541E-02  5.2094E-02  7.2604E-03  8.9150E-02  0.0000E+00 -3.7297E-02  4.4962E-02
            -8.3362E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -990.842550153920        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      996
 NPARAMETR:  1.2155E+00  1.7903E+00  2.0384E+00  8.0955E-01  1.6246E+00  2.2647E+00  3.3354E+00  1.0000E-02  8.3447E-02  1.5877E-02
             7.3926E+00
 PARAMETER:  2.9515E-01  6.8239E-01  8.1216E-01 -1.1128E-01  5.8524E-01  9.1745E-01  1.3046E+00 -1.2797E+01 -2.3835E+00 -4.0429E+00
             2.1005E+00
 GRADIENT:   1.0722E-01 -6.5998E-02  2.0504E-03 -6.1589E-02 -1.1112E-01  7.0643E-01 -8.7763E-02  0.0000E+00 -4.5103E-02  4.2207E-03
            -8.7113E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -991.007424667386        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1177
 NPARAMETR:  1.2121E+00  1.7844E+00  2.0573E+00  8.2792E-01  1.6227E+00  2.2306E+00  3.3207E+00  1.0000E-02  4.2947E-01  1.0000E-02
             7.3862E+00
 PARAMETER:  2.9232E-01  6.7909E-01  8.2140E-01 -8.8839E-02  5.8407E-01  9.0227E-01  1.3002E+00 -1.2797E+01 -7.4520E-01 -7.0535E+00
             2.0996E+00
 GRADIENT:  -1.1708E+00  1.0442E+00 -2.0898E-01 -3.2492E+00  1.2537E+00 -4.8067E+00 -3.9522E-01  0.0000E+00  1.9764E-01  0.0000E+00
            -2.6291E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -991.344418987724        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1353
 NPARAMETR:  1.2154E+00  1.5814E+00  2.2587E+00  9.2927E-01  1.5743E+00  2.2674E+00  3.6091E+00  1.0000E-02  5.5480E-01  1.0000E-02
             7.3848E+00
 PARAMETER:  2.9506E-01  5.5834E-01  9.1480E-01  2.6647E-02  5.5379E-01  9.1862E-01  1.3835E+00 -1.2797E+01 -4.8915E-01 -7.5293E+00
             2.0994E+00
 GRADIENT:   5.4335E-01  3.6945E-01  1.5255E-01 -1.0038E+00 -1.5593E+00  1.2861E+00  1.3058E+00  0.0000E+00 -7.2816E-02  0.0000E+00
            -6.1554E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -991.359477905046        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1529
 NPARAMETR:  1.2143E+00  1.5596E+00  2.4314E+00  9.4445E-01  1.6034E+00  2.2605E+00  3.6251E+00  1.0000E-02  5.8813E-01  1.0000E-02
             7.3869E+00
 PARAMETER:  2.9414E-01  5.4446E-01  9.8848E-01  4.2843E-02  5.7214E-01  9.1558E-01  1.3879E+00 -1.2797E+01 -4.3081E-01 -7.7152E+00
             2.0997E+00
 GRADIENT:   2.4243E-02 -4.7442E-02  3.1209E-02 -1.1840E-01 -4.6861E-02  1.0202E-01  9.3996E-02  0.0000E+00 -2.6594E-02  0.0000E+00
             1.4320E-02

0ITERATION NO.:   68    OBJECTIVE VALUE:  -991.364249464578        NO. OF FUNC. EVALS.: 105
 CUMULATIVE NO. OF FUNC. EVALS.:     1634
 NPARAMETR:  1.2149E+00  1.5604E+00  2.4289E+00  9.4452E-01  1.6034E+00  2.2709E+00  3.6236E+00  1.0000E-02  5.9323E-01  1.0000E-02
             7.3845E+00
 PARAMETER:  2.9486E-01  5.4442E-01  9.8724E-01  4.3151E-02  5.7227E-01  9.2112E-01  1.3871E+00 -1.2797E+01 -4.2643E-01 -7.7152E+00
             2.0996E+00
 GRADIENT:   3.5342E-02 -3.6810E-02 -2.7407E-03  4.1891E-02  2.3315E-02  1.6567E-01 -5.0262E-02  0.0000E+00 -1.7888E-02  0.0000E+00
             1.2678E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1634
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.2932E-03  1.1179E-02 -6.0080E-06 -3.6116E-02 -1.0390E-06
 SE:             2.8984E-02  2.6560E-02  1.9685E-05  7.9587E-03  8.2151E-05
 N:                     100         100         100         100         100

 P VAL.:         7.7478E-01  6.7383E-01  7.6021E-01  5.6850E-06  9.8991E-01

 ETASHRINKSD(%)  2.8993E+00  1.1022E+01  9.9934E+01  7.3337E+01  9.9725E+01
 ETASHRINKVR(%)  5.7146E+00  2.0829E+01  1.0000E+02  9.2891E+01  9.9999E+01
 EBVSHRINKSD(%)  2.4084E+00  7.6896E+00  9.9905E+01  7.9205E+01  9.9611E+01
 EBVSHRINKVR(%)  4.7587E+00  1.4788E+01  1.0000E+02  9.5675E+01  9.9998E+01
 RELATIVEINF(%)  9.4828E+01  3.4325E+01  1.2654E-05  1.7406E+00  2.1715E-04
 EPSSHRINKSD(%)  1.1082E+01
 EPSSHRINKVR(%)  2.0935E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -991.36424946457782     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       111.36199038102927     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    30.12
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -991.364       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.22E+00  1.56E+00  2.43E+00  9.45E-01  1.60E+00  2.27E+00  3.62E+00  1.00E-02  5.91E-01  1.00E-02  7.39E+00
 


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
 #CPUT: Total CPU Time in Seconds,       30.161
Stop Time:
Fri Oct  1 21:53:08 CDT 2021

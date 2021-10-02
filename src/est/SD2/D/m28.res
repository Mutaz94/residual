Fri Oct  1 15:22:48 CDT 2021
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
$DATA ../../../../data/SD2/D/dat28.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E22.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   11842.7764840295        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.6874E+02 -3.6755E+01 -6.4650E+01 -1.4699E+02  1.9106E+02 -9.3520E+02 -5.3453E+02 -6.9431E+01 -8.9061E+02 -2.2993E+02
            -2.5008E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -737.267372420542        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.5288E+00  1.0821E+00  1.0280E+00  1.7246E+00  1.0982E+00  2.7176E+00  1.3682E+00  9.6285E-01  1.8976E+00  1.0769E+00
             1.3431E+01
 PARAMETER:  5.2447E-01  1.7891E-01  1.2757E-01  6.4501E-01  1.9364E-01  1.0997E+00  4.1350E-01  6.2141E-02  7.4057E-01  1.7408E-01
             2.6975E+00
 GRADIENT:   4.0837E+01 -6.9751E-01 -1.5170E+01 -1.7186E+01 -2.3745E+00  9.9027E+01  2.5747E+00  6.5646E+00  8.9548E+00  5.1046E+00
             3.3027E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -773.447228339218        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.5046E+00  5.5571E-01  2.8492E+00  2.7914E+00  2.4320E+00  2.5251E+00  8.1198E+00  6.5427E-01  1.8673E+00  4.9557E+00
             1.1737E+01
 PARAMETER:  5.0853E-01 -4.8752E-01  1.1470E+00  1.1266E+00  9.8870E-01  1.0263E+00  2.1943E+00 -3.2424E-01  7.2449E-01  1.7005E+00
             2.5627E+00
 GRADIENT:   5.2926E+01  1.8259E+01  3.6806E+00  8.9145E+01 -2.3809E+01  6.7763E+01  2.2378E+01  1.4205E-01  1.3223E+01  1.4850E+01
             2.5206E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -867.678349420899        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.0298E+00  8.7153E-01  4.0593E+00  1.4322E+00  6.0937E+00  1.9608E+00  2.7438E+00  3.2186E+00  2.0154E+00  6.4665E+00
             7.4471E+00
 PARAMETER:  1.2937E-01 -3.7509E-02  1.5010E+00  4.5921E-01  1.9073E+00  7.7335E-01  1.1094E+00  1.2689E+00  8.0081E-01  1.9666E+00
             2.1078E+00
 GRADIENT:  -5.4588E+01 -3.3557E+00  1.2912E+01 -4.1169E+01 -2.4462E+00  7.8983E+00  1.3682E+01 -2.7549E-01 -1.7193E+00 -7.1446E-01
             3.7756E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -888.172318860518        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  9.8354E-01  5.0952E-01  7.0946E-01  1.5303E+00  7.2112E+00  1.7448E+00  2.5330E+00  1.0000E-02  1.6342E+00  7.0708E+00
             6.8017E+00
 PARAMETER:  8.3407E-02 -5.7429E-01 -2.4325E-01  5.2547E-01  2.0756E+00  6.5662E-01  1.0294E+00 -5.3999E+00  5.9116E-01  2.0560E+00
             2.0172E+00
 GRADIENT:  -3.3450E+01  4.1084E+01 -1.4480E+01  3.3905E+01 -1.9576E+01 -1.6928E+01  7.2951E+00  0.0000E+00  8.3924E+00  7.8265E+00
            -9.7675E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -915.889211649357        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  7.6126E-01  1.1912E-01  1.9478E-01  1.2925E+00  1.5870E+01  1.7227E+00  1.2698E+00  1.0000E-02  1.1537E+00  8.7724E+00
             6.9740E+00
 PARAMETER: -1.7278E-01 -2.0276E+00 -1.5359E+00  3.5660E-01  2.8644E+00  6.4390E-01  3.3884E-01 -1.2989E+01  2.4295E-01  2.2716E+00
             2.0422E+00
 GRADIENT:  -4.9227E+01  1.0524E+01 -5.1360E+01  2.5965E+02 -1.4415E+01  6.4232E+00  4.0446E+00  0.0000E+00 -3.2329E+01  3.8573E+01
            -7.9949E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -981.929442759535        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      468
 NPARAMETR:  4.7792E-01  1.0000E-02  4.7488E-02  5.4473E-01  3.2682E+01  1.6351E+00  7.9838E-02  1.0000E-02  8.0272E-01  7.4906E+00
             7.6179E+00
 PARAMETER: -6.3831E-01 -4.6085E+00 -2.9473E+00 -5.0747E-01  3.5868E+00  5.9173E-01 -2.4278E+00 -2.4401E+01 -1.1975E-01  2.1136E+00
             2.1305E+00
 GRADIENT:  -1.2066E+02  0.0000E+00 -1.1778E+02  2.3382E+02  1.4147E-02  1.1824E+01  2.4915E-06  0.0000E+00 -9.7208E+00 -3.0792E-04
             3.1324E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1009.35896079023        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      643
 NPARAMETR:  5.0707E-01  1.0000E-02  3.6559E-02  4.0202E-01  4.4056E+01  1.4222E+00  3.0498E-02  1.0000E-02  7.1102E-01  7.5749E+00
             7.3969E+00
 PARAMETER: -5.7910E-01 -5.1895E+00 -3.2088E+00 -8.1126E-01  3.8855E+00  4.5220E-01 -3.3901E+00 -2.6835E+01 -2.4106E-01  2.1248E+00
             2.1011E+00
 GRADIENT:   4.2552E+00  0.0000E+00 -3.9817E+00  5.6849E+00  2.4082E-02 -2.9152E+00  3.0165E-07  0.0000E+00 -5.4396E+00 -6.3148E-04
            -6.8565E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1009.86342685498        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      828
 NPARAMETR:  4.8929E-01  1.0000E-02  3.3478E-02  3.7625E-01  4.3690E+01  1.4243E+00  1.6699E-02  1.0000E-02  7.3765E-01  8.9684E+00
             7.3674E+00
 PARAMETER: -6.1480E-01 -5.3834E+00 -3.2969E+00 -8.7751E-01  3.8771E+00  4.5367E-01 -3.9924E+00 -2.7732E+01 -2.0429E-01  2.2937E+00
             2.0971E+00
 GRADIENT:   7.1908E-01  0.0000E+00 -7.2323E-01 -3.2155E-01  1.2592E-02  2.0878E-01  1.1050E-07  0.0000E+00 -3.6721E-02 -4.3174E-05
            -2.8369E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1009.87244595772        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:      995
 NPARAMETR:  4.8865E-01  1.0000E-02  3.3400E-02  3.7589E-01  3.7975E+01  1.4231E+00  1.6747E-02  1.0000E-02  7.3785E-01  4.5099E+00
             7.3674E+00
 PARAMETER: -6.1610E-01 -5.3834E+00 -3.2992E+00 -8.7847E-01  3.7369E+00  4.5283E-01 -3.9895E+00 -2.7732E+01 -2.0402E-01  1.6063E+00
             2.0971E+00
 GRADIENT:   7.0307E-02  0.0000E+00 -1.7588E+00  1.3525E+00  1.4377E-02 -3.8135E-02  1.1000E-07  0.0000E+00 -1.3033E-02 -6.9996E-05
            -2.4273E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1009.89366684177        NO. OF FUNC. EVALS.: 173
 CUMULATIVE NO. OF FUNC. EVALS.:     1168             RESET HESSIAN, TYPE I
 NPARAMETR:  4.8889E-01  1.0000E-02  3.3228E-02  3.7389E-01  2.7213E+01  1.4241E+00  1.7533E-02  1.0000E-02  7.3839E-01  1.3254E+01
             7.3715E+00
 PARAMETER: -6.1562E-01 -5.3834E+00 -3.3044E+00 -8.8379E-01  3.4037E+00  4.5353E-01 -3.9437E+00 -2.7732E+01 -2.0328E-01  2.6843E+00
             2.0976E+00
 GRADIENT:   7.6242E+01  0.0000E+00  1.0081E+02  2.7448E+01  3.9408E-02  9.6451E+00  5.9620E-07  0.0000E+00  6.7873E-01  2.4559E-02
             2.1388E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1009.90409903366        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:     1324
 NPARAMETR:  4.8556E-01  1.0000E-02  3.2966E-02  3.7336E-01  2.6058E+01  1.4202E+00  1.5901E-02  1.0000E-02  7.3792E-01  9.3230E+00
             7.3584E+00
 PARAMETER: -6.2246E-01 -5.3834E+00 -3.3123E+00 -8.8521E-01  3.3603E+00  4.5082E-01 -4.0414E+00 -2.7732E+01 -2.0392E-01  2.3325E+00
             2.0958E+00
 GRADIENT:   7.3236E+01  0.0000E+00  9.5129E+01  3.8338E+01  3.3340E-02  8.8024E+00  5.0588E-07  0.0000E+00  2.4873E-01  8.6530E-03
             1.9502E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1009.93284060989        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     1453
 NPARAMETR:  4.8302E-01  1.0000E-02  3.2707E-02  3.7037E-01  2.3262E+01  1.4184E+00  1.5899E-02  1.0000E-02  7.3862E-01  7.6931E+00
             7.3542E+00
 PARAMETER: -6.2771E-01 -5.3834E+00 -3.3202E+00 -8.9324E-01  3.2468E+00  4.4954E-01 -4.0415E+00 -2.7732E+01 -2.0297E-01  2.1403E+00
             2.0953E+00
 GRADIENT:   7.1515E+01  0.0000E+00  1.0043E+02  3.3316E+01  2.3872E-02  8.6375E+00  5.0877E-07  0.0000E+00  5.2700E-01  6.6444E-03
             1.9799E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1009.96089411855        NO. OF FUNC. EVALS.: 128
 CUMULATIVE NO. OF FUNC. EVALS.:     1581
 NPARAMETR:  4.8294E-01  1.0000E-02  3.2420E-02  3.6876E-01  2.1494E+01  1.4187E+00  1.0000E-02  1.0000E-02  7.3811E-01  9.2405E+00
             7.3512E+00
 PARAMETER: -6.2786E-01 -5.3834E+00 -3.3290E+00 -8.9762E-01  3.1678E+00  4.4973E-01 -4.9269E+00 -2.7732E+01 -2.0366E-01  2.3236E+00
             2.0949E+00
 GRADIENT:   7.4681E+01  0.0000E+00  9.6486E+01  3.8372E+01  4.1099E-02  8.9065E+00  0.0000E+00  0.0000E+00  3.0787E-01  1.3429E-02
             1.8603E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1009.98850492082        NO. OF FUNC. EVALS.: 150
 CUMULATIVE NO. OF FUNC. EVALS.:     1731
 NPARAMETR:  4.7983E-01  1.0000E-02  3.2116E-02  3.6561E-01  1.8023E+01  1.4159E+00  1.0000E-02  1.0000E-02  7.3807E-01  5.2085E+00
             7.3583E+00
 PARAMETER: -6.3432E-01 -5.3834E+00 -3.3384E+00 -9.0618E-01  2.9916E+00  4.4779E-01 -4.8709E+00 -2.7732E+01 -2.0372E-01  1.7503E+00
             2.0958E+00
 GRADIENT:   7.1766E+01  0.0000E+00  1.0126E+02  3.4469E+01  2.2555E-02  8.4966E+00  0.0000E+00  0.0000E+00  5.2981E-01  4.0434E-03
             2.0520E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1009.99827850734        NO. OF FUNC. EVALS.: 153
 CUMULATIVE NO. OF FUNC. EVALS.:     1884
 NPARAMETR:  4.7936E-01  1.0000E-02  3.2024E-02  3.6493E-01  1.3116E+01  1.4155E+00  1.0000E-02  1.0000E-02  7.3802E-01  4.9256E+00
             7.3568E+00
 PARAMETER: -6.3531E-01 -5.3834E+00 -3.3413E+00 -9.0805E-01  2.6738E+00  4.4748E-01 -4.8709E+00 -2.7732E+01 -2.0379E-01  1.6944E+00
             2.0956E+00
 GRADIENT:   7.0965E+01  0.0000E+00  1.0221E+02  3.4246E+01  8.2692E-03  8.4054E+00  0.0000E+00  0.0000E+00  5.8442E-01  8.0351E-03
             2.0520E+01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1010.03370421073        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:     1955
 NPARAMETR:  4.8297E-01  1.0000E-02  3.1855E-02  3.6315E-01  1.1614E+01  1.4179E+00  1.0000E-02  1.0000E-02  7.3700E-01  5.3249E+00
             7.3626E+00
 PARAMETER: -6.2779E-01 -5.3834E+00 -3.3466E+00 -9.1294E-01  2.5522E+00  4.4915E-01 -4.8709E+00 -2.7732E+01 -2.0517E-01  1.7724E+00
             2.0964E+00
 GRADIENT:   7.9408E+01  0.0000E+00  1.0151E+02  3.1394E+01 -4.8996E-02  9.1244E+00  0.0000E+00  0.0000E+00  5.1990E-01  2.2656E-02
             1.9985E+01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1010.04140732309        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     2119
 NPARAMETR:  4.8203E-01  1.0000E-02  3.1833E-02  3.6322E-01  1.2779E+01  1.4183E+00  1.0000E-02  1.0000E-02  7.3642E-01  3.1724E+00
             7.3675E+00
 PARAMETER: -6.2975E-01 -5.3834E+00 -3.3472E+00 -9.1274E-01  2.6478E+00  4.4947E-01 -4.8709E+00 -2.7732E+01 -2.0595E-01  1.2545E+00
             2.0971E+00
 GRADIENT:   1.5270E+00  0.0000E+00 -3.9882E+00  2.0798E+00  8.4356E-03  7.9108E-02  0.0000E+00  0.0000E+00 -1.7115E-02  4.5003E-04
            -2.4756E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1010.04797495378        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2294             RESET HESSIAN, TYPE I
 NPARAMETR:  4.8203E-01  1.0000E-02  3.1744E-02  3.6182E-01  1.2798E+01  1.4190E+00  1.0000E-02  1.0000E-02  7.3713E-01  7.3261E-01
             7.3680E+00
 PARAMETER: -6.2975E-01 -5.3834E+00 -3.3500E+00 -9.1660E-01  2.6493E+00  4.4996E-01 -4.8709E+00 -2.7732E+01 -2.0499E-01 -2.1114E-01
             2.0971E+00
 GRADIENT:   7.9226E+01  0.0000E+00  1.0332E+02  2.9227E+01  1.8249E-02  9.5422E+00  0.0000E+00  0.0000E+00  6.1488E-01  3.4386E-05
             2.0972E+01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1010.05426000539        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:     2487
 NPARAMETR:  4.8092E-01  1.0000E-02  3.1691E-02  3.6151E-01  1.2401E+01  1.4177E+00  1.0000E-02  1.0000E-02  7.3677E-01  7.2795E-01
             7.3691E+00
 PARAMETER: -6.3206E-01 -5.3834E+00 -3.3517E+00 -9.1746E-01  2.6177E+00  4.4905E-01 -4.8709E+00 -2.7732E+01 -2.0548E-01 -2.1752E-01
             2.0973E+00
 GRADIENT:   7.0835E-01  0.0000E+00 -1.1842E+00 -1.4130E+00 -1.1936E-02  1.0084E-01  0.0000E+00  0.0000E+00  1.5931E-01  2.4326E-05
             3.9299E-01

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1010.05786570558        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     2681
 NPARAMETR:  4.8050E-01  1.0000E-02  3.1647E-02  3.6112E-01  1.2659E+01  1.4174E+00  1.0000E-02  1.0000E-02  7.3626E-01  7.2809E-01
             7.3683E+00
 PARAMETER: -6.3293E-01 -5.3834E+00 -3.3531E+00 -9.1855E-01  2.6384E+00  4.4882E-01 -4.8709E+00 -2.7732E+01 -2.0617E-01 -2.1733E-01
             2.0972E+00
 GRADIENT:   4.4185E-01  0.0000E+00 -1.0945E+00 -1.4265E+00 -3.3216E-03  7.4591E-02  0.0000E+00  0.0000E+00  5.2129E-02  1.7674E-05
             2.8363E-01

0ITERATION NO.:  101    OBJECTIVE VALUE:  -1010.05786570558        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     2703
 NPARAMETR:  4.8050E-01  1.0000E-02  3.1647E-02  3.6112E-01  1.2659E+01  1.4174E+00  1.0000E-02  1.0000E-02  7.3626E-01  7.2809E-01
             7.3683E+00
 PARAMETER: -6.3293E-01 -5.3834E+00 -3.3531E+00 -9.1855E-01  2.6384E+00  4.4882E-01 -4.8709E+00 -2.7732E+01 -2.0617E-01 -2.1733E-01
             2.0972E+00
 GRADIENT:   4.4185E-01  0.0000E+00 -1.0945E+00 -1.4265E+00 -3.3216E-03  7.4591E-02  0.0000E+00  0.0000E+00  5.2129E-02  1.7674E-05
             2.8363E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2703
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5682E-03  7.7663E-07  8.7552E-05 -1.8119E-02 -1.9545E-05
 SE:             2.9180E-02  1.1253E-06  2.6636E-04  2.3849E-02  7.1132E-05
 N:                     100         100         100         100         100

 P VAL.:         9.2987E-01  4.9009E-01  7.4238E-01  4.4742E-01  7.8349E-01

 ETASHRINKSD(%)  2.2431E+00  9.9996E+01  9.9108E+01  2.0102E+01  9.9762E+01
 ETASHRINKVR(%)  4.4359E+00  1.0000E+02  9.9992E+01  3.6164E+01  9.9999E+01
 EBVSHRINKSD(%)  2.3703E+00  9.9996E+01  9.9155E+01  2.0940E+01  9.9765E+01
 EBVSHRINKVR(%)  4.6844E+00  1.0000E+02  9.9993E+01  3.7495E+01  9.9999E+01
 RELATIVEINF(%)  2.8698E+00  1.1990E-08  5.7279E-05  4.3157E-01  2.6463E-05
 EPSSHRINKSD(%)  1.2846E+01
 EPSSHRINKVR(%)  2.4041E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1010.0578657055763     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -91.119332500903624     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    53.47
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1010.058       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.80E-01  1.00E-02  3.16E-02  3.61E-01  1.27E+01  1.42E+00  1.00E-02  1.00E-02  7.36E-01  7.28E-01  7.37E+00
 


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
 #CPUT: Total CPU Time in Seconds,       53.510
Stop Time:
Fri Oct  1 15:23:43 CDT 2021
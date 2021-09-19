Sat Sep 18 10:20:36 CDT 2021
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
$DATA ../../../../data/spa/A3/dat23.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m23.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   55.9536339827827        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3023E+01  1.6524E+02  1.2527E+02  8.6446E+01  2.4708E+02  3.3704E+01 -8.7008E+01 -8.0772E+01 -1.8969E+02 -2.1489E+02
            -2.8810E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1229.60647307231        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  1.0648E+00  8.8758E-01  8.6022E-01  1.0621E+00  8.4912E-01  8.3201E-01  1.0234E+00  1.0566E+00  1.1498E+00  1.0648E+00
             4.6329E+00
 PARAMETER:  1.6279E-01 -1.9261E-02 -5.0568E-02  1.6020E-01 -6.3549E-02 -8.3907E-02  1.2309E-01  1.5503E-01  2.3957E-01  1.6283E-01
             1.6332E+00
 GRADIENT:   4.3171E+01 -1.9384E+01 -1.0120E+01 -2.2014E+01  1.1511E+00  4.2825E+00  1.1698E+01  6.7221E+00  2.3346E+01  2.8953E+01
             8.8632E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1248.53706149885        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0565E+00  4.9363E-01  2.9744E-01  1.2890E+00  3.2763E-01  9.0934E-01  7.0190E-01  6.8798E-01  1.3118E+00  3.4285E-01
             4.1196E+00
 PARAMETER:  1.5499E-01 -6.0598E-01 -1.1126E+00  3.5385E-01 -1.0159E+00  4.9684E-03 -2.5397E-01 -2.7400E-01  3.7139E-01 -9.7046E-01
             1.5157E+00
 GRADIENT:  -1.8706E+01  7.8530E+01  4.9377E+01  1.6582E+02 -1.2112E+02  6.8789E+00 -1.0061E+00 -3.0322E-01 -5.0815E-03  7.3016E-01
             8.2261E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1288.45742724088        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  9.9091E-01  5.7396E-01  1.5374E-01  1.0073E+00  2.7976E-01  9.0646E-01  5.9587E-01  1.7063E+00  1.4863E+00  1.7468E-01
             2.9897E+00
 PARAMETER:  9.0870E-02 -4.5520E-01 -1.7725E+00  1.0723E-01 -1.1738E+00  1.7878E-03 -4.1774E-01  6.3434E-01  4.9628E-01 -1.6448E+00
             1.1952E+00
 GRADIENT:  -5.7564E+01  5.2419E+01 -1.1984E+01  9.8374E+01 -2.9826E+01  5.6292E+00 -2.7655E+00  1.2653E+01 -1.4365E+01  2.1166E-01
             4.9661E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1296.27735769262        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      303
 NPARAMETR:  1.0173E+00  4.9251E-01  1.6010E-01  9.3327E-01  2.6144E-01  8.8580E-01  7.4613E-01  1.5167E+00  1.4866E+00  1.0734E-01
             2.8857E+00
 PARAMETER:  1.1719E-01 -6.0824E-01 -1.7320E+00  3.0939E-02 -1.2415E+00 -2.1267E-02 -1.9285E-01  5.1651E-01  4.9648E-01 -2.1318E+00
             1.1598E+00
 GRADIENT:   5.6956E+00  2.0128E+00  4.5840E+00  8.4969E+00 -6.1520E+00 -2.1432E+00  3.3524E-01 -1.9864E+00  3.1493E-01 -1.8522E-01
            -8.5891E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1296.52201779525        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      400
 NPARAMETR:  1.0137E+00  5.0528E-01  1.5524E-01  9.1504E-01  2.6268E-01  8.9029E-01  7.1931E-01  1.5337E+00  1.4931E+00  1.0121E-01
             2.9336E+00
 PARAMETER:  1.1362E-01 -5.8263E-01 -1.7628E+00  1.1212E-02 -1.2368E+00 -1.6206E-02 -2.2947E-01  5.2771E-01  5.0085E-01 -2.1905E+00
             1.1762E+00
 GRADIENT:  -4.6038E+00 -9.9375E-01 -1.9210E+00 -1.0252E-01 -9.6883E+00 -2.5115E-01 -9.4240E-02 -1.8098E-01 -1.0382E+00 -1.7531E-01
            -1.0841E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1296.68278535641        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      559
 NPARAMETR:  1.0150E+00  5.2085E-01  1.5899E-01  9.1619E-01  2.6896E-01  8.8934E-01  7.0477E-01  1.5421E+00  1.4844E+00  1.2480E-01
             2.9419E+00
 PARAMETER:  1.1488E-01 -5.5230E-01 -1.7389E+00  1.2466E-02 -1.2132E+00 -1.7279E-02 -2.4988E-01  5.3315E-01  4.9504E-01 -1.9810E+00
             1.1790E+00
 GRADIENT:   3.8173E+00  1.3290E+00  2.0381E+00  7.4859E-01  9.6182E+00  2.1294E-01  2.0995E-01  3.2053E-01  8.6730E-01  2.8378E-02
             1.0726E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1296.68330345947        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      632
 NPARAMETR:  1.0143E+00  5.1952E-01  1.5813E-01  9.1512E-01  2.6808E-01  8.8926E-01  7.0013E-01  1.5386E+00  1.4838E+00  1.3865E-01
             2.9389E+00
 PARAMETER:  1.1416E-01 -5.5486E-01 -1.7443E+00  1.1296E-02 -1.2165E+00 -1.7369E-02 -2.5649E-01  5.3090E-01  4.9460E-01 -1.8758E+00
             1.1780E+00
 GRADIENT:   2.1555E+00  1.6364E+00  1.7531E+00  6.0159E-01  8.6678E+00  9.5511E-02  1.7100E-01  2.5016E-01  3.6207E-01  1.8945E-02
             6.7719E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1296.68338794514        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      709
 NPARAMETR:  1.0141E+00  5.1813E-01  1.5754E-01  9.1454E-01  2.6732E-01  8.8935E-01  6.9494E-01  1.5359E+00  1.4849E+00  1.5144E-01
             2.9374E+00
 PARAMETER:  1.1400E-01 -5.5753E-01 -1.7481E+00  1.0667E-02 -1.2193E+00 -1.7262E-02 -2.6393E-01  5.2915E-01  4.9538E-01 -1.7876E+00
             1.1775E+00
 GRADIENT:   1.8141E+00  1.7190E+00  1.6026E+00  5.1717E-01  8.3151E+00  7.7080E-02  1.7186E-01  2.3569E-01  2.8795E-01  1.8093E-02
             6.0470E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1296.68339803867        NO. OF FUNC. EVALS.:  84
 CUMULATIVE NO. OF FUNC. EVALS.:      793
 NPARAMETR:  1.0141E+00  5.1751E-01  1.5734E-01  9.1439E-01  2.6702E-01  8.8940E-01  6.9268E-01  1.5349E+00  1.4854E+00  1.5632E-01
             2.9369E+00
 PARAMETER:  1.1398E-01 -5.5873E-01 -1.7494E+00  1.0505E-02 -1.2204E+00 -1.7212E-02 -2.6718E-01  5.2848E-01  4.9572E-01 -1.7558E+00
             1.1774E+00
 GRADIENT:   1.7547E+00  1.7271E+00  1.5660E+00  4.9814E-01  8.2086E+00  7.4202E-02  1.7062E-01  2.3194E-01  2.7761E-01  1.7866E-02
             5.9151E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1296.68813973407        NO. OF FUNC. EVALS.: 145
 CUMULATIVE NO. OF FUNC. EVALS.:      938
 NPARAMETR:  1.0151E+00  5.1658E-01  1.5725E-01  9.1456E-01  2.6669E-01  8.8992E-01  6.7528E-01  1.5308E+00  1.4900E+00  1.7201E-01
             2.9382E+00
 PARAMETER:  1.1499E-01 -5.6053E-01 -1.7499E+00  1.0688E-02 -1.2217E+00 -1.6625E-02 -2.9262E-01  5.2580E-01  4.9876E-01 -1.6602E+00
             1.1778E+00
 GRADIENT:  -1.3283E-01  4.8498E-01 -1.8737E-01 -1.8493E-01 -4.2242E-01  1.9042E-02 -7.7556E-02 -1.4158E-01 -1.0101E-01 -1.8039E-02
            -1.9016E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1296.68915939141        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1113
 NPARAMETR:  1.0153E+00  5.1519E-01  1.5760E-01  9.1563E-01  2.6652E-01  8.8983E-01  6.7625E-01  1.5323E+00  1.4895E+00  1.7349E-01
             2.9381E+00
 PARAMETER:  1.1520E-01 -5.6322E-01 -1.7477E+00  1.1852E-02 -1.2223E+00 -1.6720E-02 -2.9120E-01  5.2675E-01  4.9846E-01 -1.6516E+00
             1.1778E+00
 GRADIENT:   1.0429E-02  5.2519E-04  3.6206E-03 -1.9102E-04 -8.1742E-03  2.7958E-04  1.2856E-03  3.4655E-03  9.8139E-03 -2.6514E-04
            -1.9349E-03

0ITERATION NO.:   56    OBJECTIVE VALUE:  -1296.68915939141        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1135
 NPARAMETR:  1.0153E+00  5.1519E-01  1.5760E-01  9.1563E-01  2.6652E-01  8.8983E-01  6.7625E-01  1.5323E+00  1.4895E+00  1.7349E-01
             2.9381E+00
 PARAMETER:  1.1520E-01 -5.6322E-01 -1.7477E+00  1.1852E-02 -1.2223E+00 -1.6720E-02 -2.9120E-01  5.2675E-01  4.9846E-01 -1.6516E+00
             1.1778E+00
 GRADIENT:   1.0429E-02  5.2519E-04  3.6206E-03 -1.9102E-04 -8.1742E-03  2.7958E-04  1.2856E-03  3.4655E-03  9.8139E-03 -2.6514E-04
            -1.9349E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1135
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5880E-03 -1.7847E-02  1.1899E-02 -3.2024E-03  7.8004E-03
 SE:             2.8712E-02  1.2625E-02  2.0568E-02  2.6446E-02  6.3797E-03
 N:                     100         100         100         100         100

 P VAL.:         9.2818E-01  1.5746E-01  5.6292E-01  9.0362E-01  2.2145E-01

 ETASHRINKSD(%)  3.8119E+00  5.7706E+01  3.1095E+01  1.1402E+01  7.8627E+01
 ETASHRINKVR(%)  7.4785E+00  8.2112E+01  5.2521E+01  2.1503E+01  9.5432E+01
 EBVSHRINKSD(%)  4.0056E+00  5.6373E+01  3.1229E+01  9.8157E+00  7.9974E+01
 EBVSHRINKVR(%)  7.8507E+00  8.0967E+01  5.2706E+01  1.8668E+01  9.5989E+01
 RELATIVEINF(%)  8.6585E+01  8.6847E-01  1.0852E+01  5.1851E+01  1.3806E-01
 EPSSHRINKSD(%)  3.4529E+01
 EPSSHRINKVR(%)  5.7135E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1296.6891593914120     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -561.53833282767380     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.18
 Elapsed covariance  time in seconds:     6.34
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1296.689       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  5.15E-01  1.58E-01  9.16E-01  2.67E-01  8.90E-01  6.76E-01  1.53E+00  1.49E+00  1.73E-01  2.94E+00
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         2.78E-02  1.03E-01  2.54E-02  4.58E-02  4.15E-02  6.15E-02  5.03E-01  2.61E-01  1.65E-01  7.60E-01  3.08E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        7.74E-04
 
 TH 2
+       -3.15E-04  1.07E-02
 
 TH 3
+       -1.34E-04  1.84E-03  6.47E-04
 
 TH 4
+       -3.14E-04 -6.29E-05  2.79E-04  2.10E-03
 
 TH 5
+       -1.56E-04  4.14E-03  8.71E-04  7.11E-05  1.72E-03
 
 TH 6
+       -4.36E-04  1.32E-03  1.08E-04  2.13E-04  5.04E-04  3.79E-03
 
 TH 7
+       -3.05E-03  4.15E-02  1.02E-02  2.03E-03  1.80E-02  7.10E-03  2.53E-01
 
 TH 8
+        5.92E-04  1.59E-02  2.02E-03  8.41E-04  6.12E-03  3.88E-03  5.39E-02  6.82E-02
 
 TH 9
+        1.00E-03 -3.11E-04 -7.64E-04 -2.23E-03 -4.83E-04 -9.00E-04 -1.77E-02  7.65E-03  2.71E-02
 
 TH10
+        2.52E-03 -7.28E-02 -1.61E-02 -1.20E-03 -3.07E-02 -9.22E-03 -3.43E-01 -1.08E-01  7.92E-03  5.77E-01
 
 TH11
+        2.07E-03  1.65E-02  3.82E-03 -4.43E-03  6.88E-03 -1.93E-03  5.88E-02  2.66E-02  1.97E-02 -1.39E-01  9.46E-02
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        2.78E-02
 
 TH 2
+       -1.10E-01  1.03E-01
 
 TH 3
+       -1.89E-01  7.00E-01  2.54E-02
 
 TH 4
+       -2.47E-01 -1.33E-02  2.40E-01  4.58E-02
 
 TH 5
+       -1.35E-01  9.66E-01  8.24E-01  3.74E-02  4.15E-02
 
 TH 6
+       -2.55E-01  2.08E-01  6.92E-02  7.54E-02  1.97E-01  6.15E-02
 
 TH 7
+       -2.18E-01  7.97E-01  7.96E-01  8.78E-02  8.61E-01  2.29E-01  5.03E-01
 
 TH 8
+        8.15E-02  5.91E-01  3.04E-01  7.03E-02  5.65E-01  2.42E-01  4.10E-01  2.61E-01
 
 TH 9
+        2.19E-01 -1.83E-02 -1.82E-01 -2.95E-01 -7.06E-02 -8.88E-02 -2.13E-01  1.78E-01  1.65E-01
 
 TH10
+        1.19E-01 -9.28E-01 -8.33E-01 -3.45E-02 -9.73E-01 -1.97E-01 -8.97E-01 -5.47E-01  6.33E-02  7.60E-01
 
 TH11
+        2.42E-01  5.20E-01  4.89E-01 -3.14E-01  5.39E-01 -1.02E-01  3.80E-01  3.32E-01  3.89E-01 -5.94E-01  3.08E-01
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.73E+03
 
 TH 2
+        1.03E+02  2.64E+03
 
 TH 3
+        4.66E+02  3.58E+03  1.34E+04
 
 TH 4
+        9.13E+01 -2.12E+02 -1.57E+03  8.22E+02
 
 TH 5
+       -1.24E+02 -8.59E+03 -1.48E+04  1.50E+03  4.18E+04
 
 TH 6
+        1.53E+02  2.88E+01  2.56E+02  6.44E+00 -7.44E+00  3.29E+02
 
 TH 7
+        1.24E+01  1.65E-01 -1.22E+02  2.99E+01  1.70E+02 -4.29E+00  2.98E+01
 
 TH 8
+       -4.22E+01  1.55E+01  1.80E+02 -4.31E+01 -1.94E+02 -1.53E+01  1.65E+00  2.97E+01
 
 TH 9
+        2.55E+01 -7.54E+00  9.56E+01  9.33E+00 -2.01E+01 -2.71E-01  2.87E+00 -8.73E+00  5.97E+01
 
 TH10
+       -1.02E+00 -3.13E+01 -6.71E+01  3.85E+01  8.84E+02  1.32E+01  2.68E+01  3.10E+00 -5.15E+00  6.63E+01
 
 TH11
+       -6.10E+01 -4.10E+01 -2.60E+02  7.62E+01  3.88E+02  1.53E+01  1.33E+01 -2.49E-01 -2.05E+01  2.68E+01  4.07E+01
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       18.592
Stop Time:
Sat Sep 18 10:20:57 CDT 2021
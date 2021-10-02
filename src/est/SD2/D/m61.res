Fri Oct  1 15:51:40 CDT 2021
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
$DATA ../../../../data/SD2/D/dat61.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m61.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   15632.5426006272        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.6533E+02  2.8069E+02 -5.8145E+01  9.3794E+01  3.7827E+02 -2.3677E+03 -7.2685E+02 -2.5454E+01 -1.4709E+03 -6.4695E+02
            -2.9889E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -667.515284484622        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.2017E+00  8.6928E-01  8.0618E-01  2.5626E+00  1.4471E+00  3.7508E+00  1.4300E+00  9.2547E-01  2.8694E+00  1.3287E+00
             1.1741E+01
 PARAMETER:  2.8378E-01 -4.0090E-02 -1.1545E-01  1.0410E+00  4.6955E-01  1.4220E+00  4.5767E-01  2.2544E-02  1.1541E+00  3.8422E-01
             2.5631E+00
 GRADIENT:  -1.1733E+01  1.9364E+01 -7.1536E+01  1.1040E+02  4.7258E+00  1.5049E+02  4.3324E+00  8.0213E+00  2.8141E+01  5.4499E+00
             1.5828E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -710.863491731749        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.2111E+00  1.0487E+00  1.7561E+00  2.4803E+00  3.9747E+00  3.1989E+00  3.7175E+00  4.3610E-01  4.2775E+00  7.7054E+00
             1.0046E+01
 PARAMETER:  2.9157E-01  1.4759E-01  6.6309E-01  1.0084E+00  1.4799E+00  1.2628E+00  1.4130E+00 -7.2988E-01  1.5534E+00  2.1419E+00
             2.4072E+00
 GRADIENT:  -2.7589E+00  6.4876E+00 -1.0351E+01  7.1777E+01 -2.0216E+01  1.1554E+02  2.1647E+01  6.2032E-02  1.0283E+02  2.6599E+01
             1.2801E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -764.501282118966        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      225
 NPARAMETR:  1.2466E+00  6.9544E-01  1.2544E+00  1.9101E+00  6.8728E+00  2.3868E+00  1.9778E+00  4.7897E-02  2.2596E+00  6.3000E+00
             1.0751E+01
 PARAMETER:  3.2038E-01 -2.6321E-01  3.2663E-01  7.4713E-01  2.0276E+00  9.6994E-01  7.8197E-01 -2.9387E+00  9.1519E-01  1.9406E+00
             2.4750E+00
 GRADIENT:  -6.1974E+00  1.8647E+01  2.9689E+01  4.9518E+01 -3.3769E+00 -6.1369E+00  4.5512E+00 -1.6390E-02  2.5129E+00  1.7296E-01
             1.6661E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -850.272646764632        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  9.1186E-01  9.3757E-02  1.2059E-01  8.6917E-01  2.9729E+01  1.9863E+00  2.9347E-01  1.0000E-02  8.9423E-01  1.0658E+01
             6.9951E+00
 PARAMETER:  7.7351E-03 -2.2671E+00 -2.0154E+00 -4.0222E-02  3.4921E+00  7.8628E-01 -1.1260E+00 -1.0731E+01 -1.1791E-02  2.4663E+00
             2.0452E+00
 GRADIENT:   9.6490E+01  6.0341E+01 -3.9479E+01  1.0486E+02 -1.7687E+00 -1.5947E+01  1.0208E+00  0.0000E+00 -4.7264E+01  1.0375E+01
            -2.5548E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -861.682872355250        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      398
 NPARAMETR:  6.6865E-01  3.7157E-02  5.9777E-02  5.7017E-01  3.2407E+01  2.0355E+00  4.9995E-02  1.0000E-02  6.8511E-01  9.2569E+00
             6.4506E+00
 PARAMETER: -3.0250E-01 -3.1926E+00 -2.7171E+00 -4.6183E-01  3.5784E+00  8.1073E-01 -2.8958E+00 -1.1991E+01 -2.7818E-01  2.3254E+00
             1.9642E+00
 GRADIENT:   4.8329E+01  1.0557E+01 -1.3244E+02  2.1808E+02  1.3083E+00 -1.7845E+01  5.3439E-03  0.0000E+00 -8.4644E+01 -1.0731E+00
            -3.8104E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -933.428301551505        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      574
 NPARAMETR:  5.3265E-01  1.3408E-02  3.8284E-02  3.9510E-01  2.2120E+01  2.0842E+00  1.0000E-02  1.0000E-02  8.3081E-01  5.6463E+00
             8.1459E+00
 PARAMETER: -5.2989E-01 -4.2119E+00 -3.1627E+00 -8.2862E-01  3.1965E+00  8.3436E-01 -7.0803E+00 -1.0502E+01 -8.5350E-02  1.8310E+00
             2.1975E+00
 GRADIENT:  -6.3235E+00  8.6990E-02  1.6580E-01  1.0804E+01  7.6503E-02  1.5135E+01  0.0000E+00  0.0000E+00 -3.1234E+00 -3.9993E-03
            -1.5439E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -935.805359251163        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:      741
 NPARAMETR:  4.8379E-01  1.0000E-02  2.7653E-02  3.0913E-01  2.1652E+01  1.9451E+00  1.0000E-02  1.0000E-02  8.1916E-01  5.3960E+00
             8.2328E+00
 PARAMETER: -6.2610E-01 -4.7448E+00 -3.4880E+00 -1.0740E+00  3.1751E+00  7.6533E-01 -8.6096E+00 -9.8988E+00 -9.9473E-02  1.7857E+00
             2.2081E+00
 GRADIENT:   7.4278E+01  0.0000E+00  9.6302E+01  4.6127E+01  6.9361E-02  2.9225E+01  0.0000E+00  0.0000E+00 -1.5390E+00 -1.2960E-04
             1.7775E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -935.852832625591        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      897
 NPARAMETR:  4.8126E-01  1.0000E-02  2.7788E-02  3.0901E-01  1.6798E+01  1.9488E+00  1.0000E-02  1.0000E-02  8.2567E-01  5.9749E+00
             8.2557E+00
 PARAMETER: -6.3136E-01 -4.7448E+00 -3.4831E+00 -1.0744E+00  2.9213E+00  7.6722E-01 -8.6096E+00 -9.8988E+00 -9.1555E-02  1.8876E+00
             2.2109E+00
 GRADIENT:   6.1190E-01  0.0000E+00 -3.3682E-01 -1.5952E+00  5.4397E-02  2.8649E-01  0.0000E+00  0.0000E+00  4.2865E-02 -5.3658E-03
             3.0453E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -935.855454063176        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:     1093
 NPARAMETR:  4.8196E-01  1.0000E-02  2.7866E-02  3.0947E-01  1.3778E+01  1.9505E+00  1.0000E-02  1.0000E-02  8.2622E-01  7.5585E+00
             8.2618E+00
 PARAMETER: -6.2990E-01 -4.7448E+00 -3.4803E+00 -1.0729E+00  2.7231E+00  7.6809E-01 -8.6096E+00 -9.8988E+00 -9.0900E-02  2.1227E+00
             2.2116E+00
 GRADIENT:   3.9308E-01  0.0000E+00  1.2540E+00 -3.5878E+00  2.4975E-02  5.5596E-01  0.0000E+00  0.0000E+00  2.8942E-01  1.0222E-03
             1.2363E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -935.866800775726        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1268
 NPARAMETR:  4.8063E-01  1.0000E-02  2.7743E-02  3.0938E-01  1.2723E+01  1.9472E+00  1.0000E-02  1.0000E-02  8.2567E-01  6.6921E+00
             8.2489E+00
 PARAMETER: -6.3266E-01 -4.7448E+00 -3.4848E+00 -1.0732E+00  2.6435E+00  7.6637E-01 -8.6096E+00 -9.8988E+00 -9.1559E-02  2.0009E+00
             2.2101E+00
 GRADIENT:   6.9205E+01  0.0000E+00  1.0208E+02  4.0782E+01  3.5773E-02  2.9621E+01  0.0000E+00  0.0000E+00  2.2716E-01  2.2096E-02
             2.1544E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -935.869638186367        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     1457
 NPARAMETR:  4.8129E-01  1.0000E-02  2.7755E-02  3.0919E-01  1.2752E+01  1.9493E+00  1.0000E-02  1.0000E-02  8.2566E-01  6.6697E+00
             8.2512E+00
 PARAMETER: -6.3129E-01 -4.7448E+00 -3.4843E+00 -1.0738E+00  2.6457E+00  7.6748E-01 -8.6096E+00 -9.8988E+00 -9.1574E-02  1.9976E+00
             2.2104E+00
 GRADIENT:   4.0754E-01  0.0000E+00 -2.2611E+00  8.4047E-01 -6.9650E-03  3.2662E-01  0.0000E+00  0.0000E+00  2.9560E-02  2.8561E-03
            -2.6919E-01

0ITERATION NO.:   56    OBJECTIVE VALUE:  -935.869638186367        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1479
 NPARAMETR:  4.8129E-01  1.0000E-02  2.7755E-02  3.0919E-01  1.2752E+01  1.9493E+00  1.0000E-02  1.0000E-02  8.2566E-01  6.6697E+00
             8.2512E+00
 PARAMETER: -6.3129E-01 -4.7448E+00 -3.4843E+00 -1.0738E+00  2.6457E+00  7.6748E-01 -8.6096E+00 -9.8988E+00 -9.1574E-02  1.9976E+00
             2.2104E+00
 GRADIENT:   4.0754E-01  0.0000E+00 -2.2611E+00  8.4047E-01 -6.9650E-03  3.2662E-01  0.0000E+00  0.0000E+00  2.9560E-02  2.8561E-03
            -2.6919E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1479
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.2086E-03  1.1064E-06  8.7687E-05 -1.9561E-02 -6.7539E-04
 SE:             2.9388E-02  8.0071E-07  2.4350E-04  2.4427E-02  6.5003E-04
 N:                     100         100         100         100         100

 P VAL.:         9.4009E-01  1.6705E-01  7.1876E-01  4.2325E-01  2.9880E-01

 ETASHRINKSD(%)  1.5458E+00  9.9997E+01  9.9184E+01  1.8166E+01  9.7822E+01
 ETASHRINKVR(%)  3.0677E+00  1.0000E+02  9.9993E+01  3.3032E+01  9.9953E+01
 EBVSHRINKSD(%)  1.4753E+00  9.9996E+01  9.9219E+01  1.8883E+01  9.8104E+01
 EBVSHRINKVR(%)  2.9288E+00  1.0000E+02  9.9994E+01  3.4200E+01  9.9964E+01
 RELATIVEINF(%)  6.3322E+00  2.8275E-08  5.6697E-05  5.0601E-01  3.2295E-03
 EPSSHRINKSD(%)  1.2364E+01
 EPSSHRINKVR(%)  2.3199E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -935.86963818636718     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -16.931104981694489     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.02
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -935.870       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.81E-01  1.00E-02  2.78E-02  3.09E-01  1.28E+01  1.95E+00  1.00E-02  1.00E-02  8.26E-01  6.67E+00  8.25E+00
 


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
 #CPUT: Total CPU Time in Seconds,       27.070
Stop Time:
Fri Oct  1 15:52:09 CDT 2021

Fri Oct  1 20:14:17 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat84.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m84.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1534.57440316419        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5916E+02 -9.0383E+01 -5.3967E+01  1.5017E+02  1.5981E+02  7.2685E+01 -5.5017E+01 -2.2363E+01 -5.3896E+01  1.0962E+01
            -1.8505E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2088.83444976266        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0171E+00  1.2546E+00  1.1918E+00  8.8943E-01  1.0837E+00  7.5264E-01  1.0977E+00  9.0611E-01  1.0481E+00  8.3307E-01
             1.8916E+00
 PARAMETER:  1.1691E-01  3.2684E-01  2.7549E-01 -1.7179E-02  1.8038E-01 -1.8416E-01  1.9320E-01  1.4058E-03  1.4699E-01 -8.2640E-02
             7.3743E-01
 GRADIENT:   3.9094E+01  7.3135E+01  3.7179E+00  3.3385E+01  3.0394E+00 -5.1029E+01  4.8339E+00 -5.3935E-01 -9.5391E+00 -2.0866E+01
            -1.2165E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2097.91806263135        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      243
 NPARAMETR:  1.0172E+00  1.5846E+00  1.2607E+00  7.3964E-01  1.3419E+00  7.9228E-01  8.3220E-01  7.6267E-01  1.3269E+00  1.2237E+00
             1.8941E+00
 PARAMETER:  1.1706E-01  5.6030E-01  3.3166E-01 -2.0159E-01  3.9406E-01 -1.3284E-01 -8.3684E-02 -1.7093E-01  3.8287E-01  3.0184E-01
             7.3873E-01
 GRADIENT:  -1.0233E+02  4.7768E+01 -1.6077E+01  7.0878E+01  3.1598E+01 -4.3169E+01 -7.3962E+00  1.0346E+00 -5.1262E+00  3.8859E+00
            -1.1158E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2110.28471529859        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      420
 NPARAMETR:  1.0487E+00  1.6722E+00  1.2531E+00  6.2544E-01  1.3797E+00  8.6626E-01  7.8962E-01  3.4190E-01  1.4727E+00  1.2063E+00
             2.0726E+00
 PARAMETER:  1.4753E-01  6.1414E-01  3.2561E-01 -3.6930E-01  4.2185E-01 -4.3566E-02 -1.3621E-01 -9.7322E-01  4.8709E-01  2.8752E-01
             8.2879E-01
 GRADIENT:  -3.5616E-02 -1.1353E+01 -8.1351E-01  6.0944E+00  9.6899E+00 -1.0082E+00 -4.3323E+00  9.2407E-02 -5.4722E-02 -2.9128E+00
             9.3568E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2111.90204407932        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      595
 NPARAMETR:  1.0493E+00  1.9921E+00  9.5927E-01  4.1418E-01  1.4924E+00  8.6887E-01  7.4840E-01  2.4778E-01  1.9000E+00  1.3070E+00
             2.0493E+00
 PARAMETER:  1.4816E-01  7.8918E-01  5.8413E-02 -7.8146E-01  5.0039E-01 -4.0564E-02 -1.8982E-01 -1.2952E+00  7.4185E-01  3.6770E-01
             8.1750E-01
 GRADIENT:   1.0514E+00  3.3540E+00  1.2219E+00  1.1469E+00 -4.6760E+00 -2.1771E-01 -1.5994E-01  1.0178E-01  6.4330E-01  1.0435E+00
             1.1308E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2111.91679052613        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      770
 NPARAMETR:  1.0493E+00  2.0298E+00  9.1009E-01  3.8880E-01  1.5097E+00  8.6947E-01  7.4399E-01  2.1548E-01  1.9605E+00  1.3131E+00
             2.0481E+00
 PARAMETER:  1.4815E-01  8.0795E-01  5.7836E-03 -8.4468E-01  5.1193E-01 -3.9866E-02 -1.9573E-01 -1.4349E+00  7.7318E-01  3.7240E-01
             8.1694E-01
 GRADIENT:   7.8249E-01  2.5873E+00  6.3519E-01  7.3913E-01 -2.3614E+00  9.1592E-03 -2.4508E-01  8.0778E-02  3.4675E-01  4.5661E-01
             5.2445E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2111.91683338686        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      950
 NPARAMETR:  1.0493E+00  2.0327E+00  9.0552E-01  3.8680E-01  1.5110E+00  8.6948E-01  7.4382E-01  2.1131E-01  1.9650E+00  1.3136E+00
             2.0481E+00
 PARAMETER:  1.4813E-01  8.0935E-01  7.5202E-04 -8.4986E-01  5.1276E-01 -3.9855E-02 -1.9596E-01 -1.4544E+00  7.7549E-01  3.7276E-01
             8.1692E-01
 GRADIENT:   7.1706E-01  2.3298E+00  5.6694E-01  6.6857E-01 -2.1468E+00  1.0387E-02 -2.2175E-01  7.8049E-02  3.1885E-01  4.3067E-01
             5.2005E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2111.96163011808        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1131
 NPARAMETR:  1.0490E+00  2.0333E+00  8.8541E-01  3.8496E-01  1.5105E+00  8.6959E-01  7.4569E-01  5.2018E-02  1.9583E+00  1.3111E+00
             2.0470E+00
 PARAMETER:  1.4784E-01  8.0967E-01 -2.1701E-02 -8.5462E-01  5.1241E-01 -3.9734E-02 -1.9344E-01 -2.8562E+00  7.7206E-01  3.7084E-01
             8.1639E-01
 GRADIENT:  -1.2211E-01 -5.8035E-01  3.2098E-03  1.4400E-01 -5.1151E-01  2.2757E-02  2.2762E-02  4.9402E-03 -1.2176E-01  3.9262E-01
             7.0420E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2111.96765450611        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1313             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0495E+00  2.0293E+00  8.8625E-01  3.8526E-01  1.5101E+00  8.6960E-01  7.4519E-01  1.0000E-02  1.9630E+00  1.3081E+00
             2.0468E+00
 PARAMETER:  1.4830E-01  8.0771E-01 -2.0757E-02 -8.5384E-01  5.1216E-01 -3.9718E-02 -1.9412E-01 -5.7900E+00  7.7445E-01  3.6856E-01
             8.1630E-01
 GRADIENT:   1.6349E+02  3.3158E+02  2.6989E-02  2.6633E+01  1.9735E+01  7.2252E+00  4.4982E+00  0.0000E+00  9.2591E+00  2.5001E+00
             9.8859E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2111.97358838153        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1495
 NPARAMETR:  1.0493E+00  2.0253E+00  8.8911E-01  3.8899E-01  1.5081E+00  8.6956E-01  7.4576E-01  1.0000E-02  1.9529E+00  1.3063E+00
             2.0468E+00
 PARAMETER:  1.4813E-01  8.0571E-01 -1.7532E-02 -8.4420E-01  5.1088E-01 -3.9771E-02 -1.9335E-01 -5.7900E+00  7.6930E-01  3.6721E-01
             8.1627E-01
 GRADIENT:   7.6783E-01 -3.2910E+00 -1.8724E-01 -7.7124E-02  6.9793E-01 -6.2102E-03 -3.7294E-02  0.0000E+00  1.8100E-01  1.0048E-01
            -1.5600E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2111.97455498660        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1682
 NPARAMETR:  1.0493E+00  2.0237E+00  8.8925E-01  3.8973E-01  1.5076E+00  8.6957E-01  7.4603E-01  1.0000E-02  1.9512E+00  1.3062E+00
             2.0469E+00
 PARAMETER:  1.4816E-01  8.0494E-01 -1.7374E-02 -8.4229E-01  5.1054E-01 -3.9754E-02 -1.9299E-01 -5.7900E+00  7.6847E-01  3.6710E-01
             8.1633E-01
 GRADIENT:   8.8430E-01 -3.9692E+00 -2.5685E-01 -1.4061E-01  8.9948E-01 -6.8750E-04  9.2546E-04  0.0000E+00  2.3606E-01  1.7897E-01
             1.1436E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2111.97654085785        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1864             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0493E+00  2.0221E+00  8.9119E-01  3.9081E-01  1.5066E+00  8.6958E-01  7.4628E-01  1.0000E-02  1.9480E+00  1.3053E+00
             2.0469E+00
 PARAMETER:  1.4816E-01  8.0416E-01 -1.5201E-02 -8.3954E-01  5.0984E-01 -3.9746E-02 -1.9265E-01 -5.7900E+00  7.6683E-01  3.6647E-01
             8.1633E-01
 GRADIENT:   1.6288E+02  3.2881E+02 -8.7543E-02  2.7330E+01  2.0011E+01  7.1999E+00  4.4198E+00  0.0000E+00  9.2331E+00  2.4966E+00
             9.8798E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2111.97736954129        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     2029
 NPARAMETR:  1.0493E+00  2.0219E+00  8.9448E-01  3.9104E-01  1.5056E+00  8.6960E-01  7.4633E-01  1.0000E-02  1.9458E+00  1.3047E+00
             2.0468E+00
 PARAMETER:  1.4817E-01  8.0403E-01 -1.1507E-02 -8.3895E-01  5.0920E-01 -3.9722E-02 -1.9258E-01 -5.7900E+00  7.6569E-01  3.6601E-01
             8.1627E-01
 GRADIENT:   9.6129E-01 -3.0858E+00  4.4867E-02 -3.6675E-01 -2.4138E-01  2.3795E-02  1.8794E-03  0.0000E+00  4.9736E-02  5.6639E-03
            -6.8355E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2029
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5708E-04 -3.3503E-02 -8.6579E-05  2.8138E-02 -2.8048E-02
 SE:             2.9470E-02  2.2668E-02  3.9909E-05  2.0471E-02  2.4501E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9304E-01  1.3940E-01  3.0051E-02  1.6927E-01  2.5232E-01

 ETASHRINKSD(%)  1.2704E+00  2.4061E+01  9.9866E+01  3.1421E+01  1.7917E+01
 ETASHRINKVR(%)  2.5247E+00  4.2332E+01  1.0000E+02  5.2969E+01  3.2624E+01
 EBVSHRINKSD(%)  1.5536E+00  2.2509E+01  9.9860E+01  3.6294E+01  1.5574E+01
 EBVSHRINKVR(%)  3.0830E+00  3.9951E+01  1.0000E+02  5.9416E+01  2.8722E+01
 RELATIVEINF(%)  9.6750E+01  7.0488E+00  7.7077E-05  4.8638E+00  2.8003E+01
 EPSSHRINKSD(%)  2.5101E+01
 EPSSHRINKVR(%)  4.3902E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2111.9773695412941     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1009.2511296956870     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    37.07
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2111.977       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  2.02E+00  8.94E-01  3.91E-01  1.51E+00  8.70E-01  7.46E-01  1.00E-02  1.95E+00  1.30E+00  2.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       37.119
Stop Time:
Fri Oct  1 20:14:56 CDT 2021
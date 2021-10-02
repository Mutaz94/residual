Fri Oct  1 06:53:36 CDT 2021
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
$DATA ../../../../data/SD1/D/dat56.csv ignore=@
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
 (2E4.0,E22.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m56.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   37426.4064614758        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.5065E+02  5.3778E+02 -3.2306E+01  3.4711E+02  2.0816E+02 -2.7147E+03 -1.2404E+03 -1.0582E+02 -2.0284E+03 -7.2549E+02
            -7.5007E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -818.430997598451        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0801E+00  2.2423E+00  8.5595E-01  2.6790E+00  8.7930E-01  4.7590E+00  4.3255E+00  1.0134E+00  2.5587E+00  1.4800E+00
             1.2752E+01
 PARAMETER:  1.7705E-01  9.0751E-01 -5.5541E-02  1.0854E+00 -2.8631E-02  1.6600E+00  1.5645E+00  1.1333E-01  1.0395E+00  4.9205E-01
             2.6457E+00
 GRADIENT:  -2.6776E+01  5.2329E+01 -3.8096E+01  1.7574E+02 -3.5208E+01  2.1028E+02  1.2157E+01  5.0459E+00 -1.6264E+01  3.0328E+01
             2.9782E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -901.726709180915        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.1331E+00  4.0646E+00  8.3085E+00  3.9250E+00  3.9712E+00  4.0151E+00  3.2178E+00  1.0036E+00  1.2857E+01  1.9629E+00
             1.2000E+01
 PARAMETER:  2.2494E-01  1.5023E+00  2.2173E+00  1.4674E+00  1.4791E+00  1.4901E+00  1.2687E+00  1.0361E-01  2.6539E+00  7.7444E-01
             2.5849E+00
 GRADIENT:  -8.2621E+00  4.8938E+01 -6.8737E+00  4.5797E+01  4.0057E+01  1.6915E+02 -1.2083E+01  1.9046E+00  3.9757E+01  4.7159E+01
             3.3431E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1068.28854854528        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  1.2794E+00  7.6112E-01  9.0592E+00  1.4479E+00  2.0307E+00  1.8117E+00  5.1325E+00  2.8234E-01  1.7541E+00  6.8742E-02
             1.2042E+01
 PARAMETER:  3.4639E-01 -1.7297E-01  2.3038E+00  4.7011E-01  8.0836E-01  6.9424E-01  1.7356E+00 -1.1646E+00  6.6196E-01 -2.5774E+00
             2.5884E+00
 GRADIENT:   3.9369E+01 -3.4794E+01 -6.1361E+00 -2.5377E+01 -1.6649E+01 -2.8599E+01  3.0794E+01  3.8579E-02  2.9701E+01  6.3016E-02
             3.6383E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1101.91001472886        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  1.0211E+00  1.3363E+00  1.5312E+01  1.1816E+00  2.6821E+00  2.0885E+00  4.3185E+00  4.1377E+00  2.1710E+00  1.2250E-01
             1.0252E+01
 PARAMETER:  1.2088E-01  3.8992E-01  2.8286E+00  2.6689E-01  1.0866E+00  8.3645E-01  1.5629E+00  1.5202E+00  8.7520E-01 -1.9997E+00
             2.4275E+00
 GRADIENT:  -4.7840E+01 -2.4175E+01 -6.5788E+00 -5.9693E+00  3.5419E+01  2.1726E+01  1.8044E+01  1.1142E+00  2.8394E+01  2.6318E-01
             1.7780E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1137.62975139950        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      485
 NPARAMETR:  1.1897E+00  1.2095E+00  3.0507E+01  1.3549E+00  2.5435E+00  2.2267E+00  6.5494E+00  2.5692E+00  1.1051E+00  9.7043E-02
             9.6913E+00
 PARAMETER:  2.7371E-01  2.9022E-01  3.5179E+00  4.0375E-01  1.0335E+00  9.0052E-01  1.9794E+00  1.0436E+00  1.9997E-01 -2.2326E+00
             2.3712E+00
 GRADIENT:   8.3780E+00  7.7001E+00 -1.2303E+00  7.3855E+00 -7.8177E-01 -1.3571E+00  1.2551E+01  1.4224E-01  5.9933E+00  1.3630E-01
             1.1275E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1139.54154719460        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      660
 NPARAMETR:  1.1520E+00  1.0793E+00  3.9346E+01  1.2616E+00  2.5704E+00  2.2320E+00  6.2448E+00  2.4580E+00  8.3560E-01  5.4379E-02
             9.5802E+00
 PARAMETER:  2.4147E-01  1.7627E-01  3.7724E+00  3.3238E-01  1.0441E+00  9.0292E-01  1.9317E+00  9.9937E-01 -7.9601E-02 -2.8118E+00
             2.3597E+00
 GRADIENT:  -2.2379E+00 -1.0287E+00 -4.6713E-01  2.5003E+00 -1.3587E+00 -3.7484E-01  1.0225E+00  5.8553E-02  3.4739E-01  3.9255E-02
            -1.7057E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1139.83078328984        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      820
 NPARAMETR:  1.1627E+00  1.1371E+00  8.2041E+01  1.2399E+00  2.5849E+00  2.2372E+00  6.4240E+00  8.6423E-01  8.0407E-01  1.9669E-02
             9.5846E+00
 PARAMETER:  2.5073E-01  2.2848E-01  4.5072E+00  3.1499E-01  1.0497E+00  9.0522E-01  1.9600E+00 -4.5913E-02 -1.1808E-01 -3.8287E+00
             2.3602E+00
 GRADIENT:   1.6575E+01  4.2244E+00 -2.4951E-02  3.1981E+00 -3.0051E+00  2.9562E+01  1.5006E+02  1.7022E-03  8.3208E-01  5.5047E-03
             4.2361E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1139.96625327718        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1002
 NPARAMETR:  1.1583E+00  1.1139E+00  1.5032E+02  1.2524E+00  2.6335E+00  2.2438E+00  6.3779E+00  8.4037E-01  7.8058E-01  1.0000E-02
             9.5839E+00
 PARAMETER:  2.4698E-01  2.0791E-01  5.1128E+00  3.2508E-01  1.0683E+00  9.0819E-01  1.9528E+00 -7.3914E-02 -1.4772E-01 -4.5060E+00
             2.3601E+00
 GRADIENT:  -1.5571E-02  7.3537E-01 -3.2801E-02  2.0454E+00 -3.0252E+00  1.3397E+00  6.7212E+00  4.9980E-04 -1.1914E+00  6.9721E-04
            -2.7151E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1140.03953509272        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1179
 NPARAMETR:  1.1618E+00  1.0857E+00  9.8311E+02  1.2742E+00  2.6704E+00  2.2416E+00  6.3569E+00  8.4022E-01  8.4496E-01  1.0000E-02
             9.5977E+00
 PARAMETER:  2.4997E-01  1.8225E-01  6.9907E+00  3.4232E-01  1.0822E+00  9.0721E-01  1.9495E+00 -7.4097E-02 -6.8463E-02 -4.6657E+00
             2.3615E+00
 GRADIENT:   7.9301E-01  1.1842E-01 -9.2063E-03  1.0529E+00  2.8546E-01  8.8657E-01  4.3550E+00  1.0391E-05  2.7325E-02  0.0000E+00
             9.1389E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1140.13932819773        NO. OF FUNC. EVALS.: 170
 CUMULATIVE NO. OF FUNC. EVALS.:     1349             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1590E+00  1.0539E+00  1.1643E+04  1.2807E+00  2.6687E+00  2.2455E+00  6.5103E+00  8.4081E-01  8.2892E-01  1.0000E-02
             9.5831E+00
 PARAMETER:  2.4755E-01  1.5248E-01  9.4624E+00  3.4738E-01  1.0816E+00  9.0891E-01  1.9734E+00 -7.3390E-02 -8.7633E-02 -4.6681E+00
             2.3600E+00
 GRADIENT:   1.4853E+01  1.9796E+00 -6.2787E-04  9.7957E+00  2.7421E+00  3.0878E+01  1.5347E+02  4.0543E-06 -4.9132E-01  0.0000E+00
             4.1011E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1140.15728319684        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1529
 NPARAMETR:  1.1592E+00  1.0537E+00  2.1991E+04  1.2830E+00  2.6711E+00  2.2449E+00  6.5679E+00  8.4078E-01  8.4190E-01  1.0000E-02
             9.5872E+00
 PARAMETER:  2.4775E-01  1.5233E-01  1.0098E+01  3.4918E-01  1.0825E+00  9.0866E-01  1.9822E+00 -7.3424E-02 -7.2089E-02 -4.6681E+00
             2.3604E+00
 GRADIENT:   9.7055E-03  3.7880E-01 -4.0512E-04 -1.8576E+00  8.0740E-02  1.4939E+00  1.0455E+01 -9.7569E-06  2.3561E-02  0.0000E+00
             3.1398E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1140.17560154720        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1709
 NPARAMETR:  1.1591E+00  1.0329E+00  3.0041E+04  1.2917E+00  2.6714E+00  2.2437E+00  6.6196E+00  8.4046E-01  8.4835E-01  1.0000E-02
             9.5845E+00
 PARAMETER:  2.4764E-01  1.3240E-01  1.0410E+01  3.5598E-01  1.0826E+00  9.0811E-01  1.9900E+00 -7.3809E-02 -6.4467E-02 -4.6681E+00
             2.3602E+00
 GRADIENT:   2.1129E-01  1.7428E-01 -3.2340E-04 -1.4317E+00  7.1711E-02  1.3670E+00  1.0915E+01  2.2179E-06 -1.2795E-01  0.0000E+00
            -3.4685E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1140.18529600219        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1893
 NPARAMETR:  1.1585E+00  1.0190E+00  5.8626E+04  1.2985E+00  2.6707E+00  2.2433E+00  6.6378E+00  8.3880E-01  8.5805E-01  1.0000E-02
             9.5827E+00
 PARAMETER:  2.4711E-01  1.1880E-01  1.1079E+01  3.6117E-01  1.0823E+00  9.0796E-01  1.9928E+00 -7.5785E-02 -5.3096E-02 -4.6681E+00
             2.3600E+00
 GRADIENT:  -3.1638E+00  1.8493E-01 -1.7871E-04  1.4297E-01 -7.7438E-02  2.8537E+00  1.0470E+01  7.8365E-06 -3.6791E-01  0.0000E+00
             1.0240E-03

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1140.18780804967        NO. OF FUNC. EVALS.: 152
 CUMULATIVE NO. OF FUNC. EVALS.:     2045             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1588E+00  1.0189E+00  6.3523E+04  1.3034E+00  2.6698E+00  2.2452E+00  6.6448E+00  8.3896E-01  8.6323E-01  1.0000E-02
             9.5832E+00
 PARAMETER:  2.4736E-01  1.1877E-01  1.1159E+01  3.6494E-01  1.0820E+00  9.0878E-01  1.9938E+00 -7.5593E-02 -4.7077E-02 -4.6681E+00
             2.3600E+00
 GRADIENT:   1.0738E+01  1.9977E+00 -1.4803E-04  1.1866E+01  2.9362E+00  3.2435E+01  1.5954E+02  2.1838E-05 -3.2004E-01  0.0000E+00
             4.2069E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1140.19130944270        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2234             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1589E+00  1.0088E+00  6.6766E+04  1.3052E+00  2.6705E+00  2.2450E+00  6.6624E+00  8.3896E-01  8.6496E-01  1.0000E-02
             9.5843E+00
 PARAMETER:  2.4750E-01  1.0879E-01  1.1209E+01  3.6633E-01  1.0823E+00  9.0872E-01  1.9965E+00 -7.5593E-02 -4.5077E-02 -4.6681E+00
             2.3601E+00
 GRADIENT:   1.0859E+01  1.4844E+00 -1.4486E-04  1.1139E+01  3.1533E+00  3.2962E+01  1.6091E+02  1.2397E-05 -3.1027E-01  0.0000E+00
             4.2699E+01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1140.19316717721        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     2425
 NPARAMETR:  1.1587E+00  1.0062E+00  1.2983E+05  1.3084E+00  2.6706E+00  2.2450E+00  6.6806E+00  8.4075E-01  8.6823E-01  1.0000E-02
             9.5849E+00
 PARAMETER:  2.4730E-01  1.0618E-01  1.1874E+01  3.6877E-01  1.0823E+00  9.0869E-01  1.9992E+00 -7.3456E-02 -4.1296E-02 -4.6681E+00
             2.3602E+00
 GRADIENT:  -2.2994E+01  1.5813E-01 -7.5301E-05  3.2849E+00 -1.8585E-01  1.6886E+01  1.0987E+01 -5.4854E-06 -5.1700E-01  0.0000E+00
             6.6311E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1140.21781128958        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2608
 NPARAMETR:  1.1566E+00  1.0057E+00  1.2755E+08  1.3059E+00  2.6888E+00  2.2403E+00  6.6947E+00  8.4028E-01  8.7285E-01  1.0000E-02
             9.5863E+00
 PARAMETER:  2.4750E-01  1.0492E-01  1.8909E+01  3.6951E-01  1.0824E+00  9.0867E-01  1.9993E+00 -7.4459E-02 -3.4989E-02 -4.6681E+00
             2.3603E+00
 GRADIENT:   5.2018E+00 -8.0667E+00  1.0243E-01  2.7492E+00 -1.5499E+00  5.5032E-01 -1.9802E-01 -5.8525E+00  1.4886E+01  0.0000E+00
            -1.3492E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2608
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5025E-02  3.3116E-02  6.3097E-09 -6.9087E-02  7.4138E-06
 SE:             2.8675E-02  2.4493E-02  6.2126E-09  1.2680E-02  1.0970E-04
 N:                     100         100         100         100         100

 P VAL.:         6.0029E-01  1.7636E-01  3.0980E-01  5.0956E-08  9.4612E-01

 ETASHRINKSD(%)  3.9349E+00  1.7945E+01  1.0000E+02  5.7519E+01  9.9632E+01
 ETASHRINKVR(%)  7.7150E+00  3.2669E+01  1.0000E+02  8.1954E+01  9.9999E+01
 EBVSHRINKSD(%)  5.1070E+00  1.1694E+01  1.0000E+02  6.2994E+01  9.9553E+01
 EBVSHRINKVR(%)  9.9531E+00  2.2021E+01  1.0000E+02  8.6306E+01  9.9998E+01
 RELATIVEINF(%)  7.5517E+01  4.3844E+01  0.0000E+00  7.6009E+00  1.9223E-03
 EPSSHRINKSD(%)  5.4583E+00
 EPSSHRINKVR(%)  1.0619E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1140.2178112895842     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       513.87154847882653     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    88.21
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1140.218       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.16E+00  1.00E+00  1.47E+08  1.31E+00  2.67E+00  2.24E+00  6.68E+00  8.40E-01  8.74E-01  1.00E-02  9.59E+00
 


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
 #CPUT: Total CPU Time in Seconds,       88.257
Stop Time:
Fri Oct  1 06:55:06 CDT 2021

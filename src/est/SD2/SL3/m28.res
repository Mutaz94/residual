Fri Oct  1 12:51:20 CDT 2021
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
$DATA ../../../../data/SD2/SL3/dat28.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1968.63748493353        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9361E+02 -1.0145E+02 -3.0552E+01 -8.8424E+01  9.9984E+01  3.1593E+01 -7.3446E+00 -4.1455E+00 -1.3115E+01 -1.6139E+01
            -2.0593E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1983.82611076094        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      128
 NPARAMETR:  9.3771E-01  1.0957E+00  1.0105E+00  1.0852E+00  8.9125E-01  9.9531E-01  9.9239E-01  1.0170E+00  1.0117E+00  1.0194E+00
             1.4674E+00
 PARAMETER:  3.5683E-02  1.9141E-01  1.1041E-01  1.8175E-01 -1.5125E-02  9.5296E-02  9.2362E-02  1.1689E-01  1.1163E-01  1.1919E-01
             4.8350E-01
 GRADIENT:  -1.2909E+02  5.4903E+01  3.5137E+01  2.0954E+01 -8.5078E+01 -8.1783E+00  3.9302E+00 -1.6164E+00  2.8715E+00  8.0709E+00
             1.1836E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1994.63668053286        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      306
 NPARAMETR:  9.7784E-01  1.3744E+00  1.4443E+00  9.2905E-01  1.2042E+00  9.7489E-01  5.2459E-01  2.2038E+00  1.3093E+00  1.3302E+00
             1.3326E+00
 PARAMETER:  7.7591E-02  4.1803E-01  4.6765E-01  2.6406E-02  2.8580E-01  7.4569E-02 -5.4513E-01  8.9017E-01  3.6950E-01  3.8530E-01
             3.8716E-01
 GRADIENT:  -3.5153E+01  5.8674E+01 -1.1376E+00  5.0129E+01 -3.3969E+01 -9.8107E+00 -4.5773E+00  1.3222E+01  7.0589E-01  1.2753E+01
             5.7529E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2002.37289985037        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      482
 NPARAMETR:  9.9061E-01  1.1021E+00  1.3422E+00  1.0628E+00  1.0923E+00  9.9923E-01  7.4854E-01  1.6121E+00  1.0773E+00  1.1248E+00
             1.2352E+00
 PARAMETER:  9.0562E-02  1.9719E-01  3.9432E-01  1.6092E-01  1.8829E-01  9.9232E-02 -1.8963E-01  5.7753E-01  1.7446E-01  2.1756E-01
             3.1121E-01
 GRADIENT:   1.6844E-01 -2.8072E-01  1.8303E-01 -4.2970E+00 -2.4460E+00  5.3630E-01 -2.9131E-01  2.8320E+00 -1.0517E-01 -2.2613E+00
             2.0935E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2002.69215097202        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      657
 NPARAMETR:  9.8840E-01  8.9101E-01  1.4964E+00  1.2109E+00  1.0616E+00  9.9529E-01  8.3563E-01  1.5528E+00  9.7427E-01  1.1349E+00
             1.2335E+00
 PARAMETER:  8.8331E-02 -1.5394E-02  5.0308E-01  2.9137E-01  1.5981E-01  9.5282E-02 -7.9570E-02  5.4007E-01  7.3938E-02  2.2656E-01
             3.0986E-01
 GRADIENT:  -6.5207E-01  6.6883E+00  2.2611E+00  9.2598E+00 -4.6247E+00 -4.5255E-01  2.7758E-01 -1.3338E-01  5.2715E-01  1.3300E-01
            -4.1161E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2002.79325404695        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      832
 NPARAMETR:  9.8731E-01  7.4514E-01  1.6015E+00  1.3023E+00  1.0489E+00  9.9551E-01  8.0278E-01  1.5824E+00  9.2356E-01  1.1325E+00
             1.2358E+00
 PARAMETER:  8.7230E-02 -1.9419E-01  5.7095E-01  3.6414E-01  1.4770E-01  9.5503E-02 -1.1968E-01  5.5896E-01  2.0482E-02  2.2445E-01
             3.1168E-01
 GRADIENT:   2.1294E-01  2.4859E+00  2.4697E-01  4.7671E+00 -5.9853E-02  1.5926E-01 -2.2726E-01 -3.7801E-01 -3.9313E-01 -3.9011E-02
             2.4164E-03

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2002.80029184571        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1007
 NPARAMETR:  9.8624E-01  6.6017E-01  1.6655E+00  1.3575E+00  1.0392E+00  9.9441E-01  7.9958E-01  1.6143E+00  8.9392E-01  1.1291E+00
             1.2364E+00
 PARAMETER:  8.6148E-02 -3.1525E-01  6.1011E-01  4.0563E-01  1.3843E-01  9.4391E-02 -1.2367E-01  5.7889E-01 -1.2137E-02  2.2145E-01
             3.1223E-01
 GRADIENT:  -1.5696E-01  2.1673E+00  3.0587E-01  4.5745E+00 -5.6974E-01 -1.4410E-02 -2.9153E-01 -3.1109E-01 -4.4910E-01  7.3721E-02
             3.7380E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2002.80214040405        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1182
 NPARAMETR:  9.8538E-01  5.8710E-01  1.7222E+00  1.4051E+00  1.0318E+00  9.9377E-01  8.1257E-01  1.6484E+00  8.6802E-01  1.1258E+00
             1.2368E+00
 PARAMETER:  8.5277E-02 -4.3256E-01  6.4363E-01  4.4013E-01  1.3126E-01  9.3750E-02 -1.0756E-01  5.9982E-01 -4.1542E-02  2.1849E-01
             3.1253E-01
 GRADIENT:  -2.5582E-01  1.9703E+00  3.7097E-01  4.2851E+00 -8.7749E-01 -6.5390E-02 -2.8575E-01 -2.6735E-01 -4.6536E-01  9.3791E-02
             2.7925E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2002.80439899202        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1360
 NPARAMETR:  9.8421E-01  4.9550E-01  1.8012E+00  1.4664E+00  1.0242E+00  9.9293E-01  8.3688E-01  1.7050E+00  8.3617E-01  1.1227E+00
             1.2372E+00
 PARAMETER:  8.4087E-02 -6.0219E-01  6.8843E-01  4.8279E-01  1.2387E-01  9.2901E-02 -7.8079E-02  6.3358E-01 -7.8928E-02  2.1578E-01
             3.1282E-01
 GRADIENT:  -5.2165E-01  2.4961E+00  6.4346E-01  6.2985E+00 -1.9079E+00 -1.8361E-01 -2.7937E-01 -2.4924E-01 -6.0830E-01  2.0074E-01
             7.6929E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2002.80740913461        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1538
 NPARAMETR:  9.8333E-01  4.3672E-01  1.8560E+00  1.5070E+00  1.0193E+00  9.9215E-01  8.5601E-01  1.7501E+00  8.1595E-01  1.1208E+00
             1.2373E+00
 PARAMETER:  8.3189E-02 -7.2846E-01  7.1843E-01  5.1009E-01  1.1916E-01  9.2118E-02 -5.5468E-02  6.5969E-01 -1.0340E-01  2.1408E-01
             3.1296E-01
 GRADIENT:  -9.8070E-01  3.3536E+00  1.0216E+00  1.0100E+01 -3.5619E+00 -3.7841E-01 -2.7832E-01 -1.8694E-01 -9.1015E-01  3.9668E-01
             1.6743E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2002.80911643733        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1713
 NPARAMETR:  9.8264E-01  3.9716E-01  1.8939E+00  1.5348E+00  1.0157E+00  9.9143E-01  8.7483E-01  1.7843E+00  8.0226E-01  1.1192E+00
             1.2374E+00
 PARAMETER:  8.2490E-02 -8.2341E-01  7.3864E-01  5.2839E-01  1.1556E-01  9.1395E-02 -3.3729E-02  6.7904E-01 -1.2032E-01  2.1264E-01
             3.1304E-01
 GRADIENT:  -1.4979E+00  4.0401E+00  1.3588E+00  1.3802E+01 -5.2830E+00 -5.9942E-01 -2.7254E-01 -6.1778E-02 -1.2427E+00  6.1325E-01
             2.6866E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2002.81007862896        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1889
 NPARAMETR:  9.8202E-01  3.6432E-01  1.9258E+00  1.5581E+00  1.0124E+00  9.9074E-01  8.9869E-01  1.8149E+00  7.9078E-01  1.1177E+00
             1.2375E+00
 PARAMETER:  8.1854E-02 -9.0971E-01  7.5533E-01  5.4346E-01  1.1228E-01  9.0697E-02 -6.8185E-03  6.9604E-01 -1.3474E-01  2.1123E-01
             3.1308E-01
 GRADIENT:  -2.0479E+00  4.5771E+00  1.6667E+00  1.7378E+01 -7.0364E+00 -8.3023E-01 -2.6251E-01  1.0508E-01 -1.6036E+00  8.3778E-01
             3.6648E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2002.81261696893        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2064
 NPARAMETR:  9.8142E-01  3.3454E-01  1.9547E+00  1.5792E+00  1.0091E+00  9.9003E-01  9.3216E-01  1.8442E+00  7.8026E-01  1.1160E+00
             1.2375E+00
 PARAMETER:  8.1248E-02 -9.9500E-01  7.7026E-01  5.5692E-01  1.0909E-01  8.9978E-02  2.9745E-02  7.1205E-01 -1.4813E-01  2.0976E-01
             3.1308E-01
 GRADIENT:  -2.6115E+00  4.9502E+00  1.9421E+00  2.0663E+01 -8.8061E+00 -1.0792E+00 -2.4802E-01  3.1675E-01 -1.9742E+00  1.0702E+00
             4.6568E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2002.82456454162        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2239
 NPARAMETR:  9.8049E-01  2.8928E-01  2.0000E+00  1.6111E+00  1.0044E+00  9.8892E-01  1.0197E+00  1.8918E+00  7.6405E-01  1.1134E+00
             1.2374E+00
 PARAMETER:  8.0302E-02 -1.1404E+00  7.9313E-01  5.7694E-01  1.0438E-01  8.8856E-02  1.1947E-01  7.3751E-01 -1.6913E-01  2.0746E-01
             3.1299E-01
 GRADIENT:  -3.5030E+00  5.2230E+00  2.3072E+00  2.5327E+01 -1.1555E+01 -1.4810E+00 -2.1762E-01  7.2188E-01 -2.5916E+00  1.4320E+00
             6.0594E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2002.95163551457        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2417
 NPARAMETR:  9.7893E-01  2.0644E-01  2.0898E+00  1.6670E+00  9.9866E-01  9.8734E-01  1.4424E+00  1.9853E+00  7.3435E-01  1.1098E+00
             1.2366E+00
 PARAMETER:  7.8708E-02 -1.4777E+00  8.3705E-01  6.1105E-01  9.8657E-02  8.7262E-02  4.6628E-01  7.8575E-01 -2.0877E-01  2.0416E-01
             3.1239E-01
 GRADIENT:  -4.7206E+00  4.3023E+00  2.5966E+00  2.7302E+01 -1.4927E+01 -2.0670E+00 -1.1135E-01  1.4760E+00 -3.2688E+00  1.8892E+00
             7.0316E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2003.34790927060        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2595
 NPARAMETR:  9.7953E-01  1.0495E-01  2.3658E+00  1.7338E+00  1.0379E+00  9.9168E-01  3.8631E+00  2.1801E+00  7.0585E-01  1.1366E+00
             1.2343E+00
 PARAMETER:  7.9316E-02 -2.1543E+00  9.6113E-01  6.5032E-01  1.3719E-01  9.1641E-02  1.4515E+00  8.7935E-01 -2.4835E-01  2.2800E-01
             3.1048E-01
 GRADIENT:  -7.5923E-01  2.1476E+00  1.8818E+00  8.9517E+00 -5.4490E+00 -4.8650E-01  1.2511E+00  3.8485E-03  1.7768E+00  3.7167E-01
             4.5255E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -2003.57706933814        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2773
 NPARAMETR:  9.8029E-01  5.0133E-02  2.6436E+00  1.7758E+00  1.0886E+00  9.9530E-01  5.3483E+00  2.3779E+00  6.9109E-01  1.1782E+00
             1.2329E+00
 PARAMETER:  8.0092E-02 -2.8931E+00  1.0721E+00  6.7426E-01  1.8488E-01  9.5286E-02  1.7768E+00  9.6621E-01 -2.6949E-01  2.6398E-01
             3.0940E-01
 GRADIENT:   1.6828E+00  8.7101E-01 -6.3033E-01  7.0217E+00  5.1492E+00  7.9204E-01  3.7271E-01 -4.9945E-01 -2.5492E-01 -3.5037E-01
            -7.3362E-02

0ITERATION NO.:   85    OBJECTIVE VALUE:  -2003.87770388452        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     2952
 NPARAMETR:  9.7829E-01  1.0000E-02  2.4979E+00  1.7963E+00  1.0447E+00  9.9193E-01  9.0087E+00  2.3047E+00  6.8753E-01  1.1405E+00
             1.2333E+00
 PARAMETER:  7.8054E-02 -4.5161E+00  1.0154E+00  6.8572E-01  1.4373E-01  9.1897E-02  2.2982E+00  9.3493E-01 -2.7465E-01  2.3144E-01
             3.0971E-01
 GRADIENT:  -8.8091E-01  2.4721E-01 -3.8447E-01  7.8255E+00 -1.7411E+00 -3.3990E-01  1.7609E-02  5.3838E-01  3.3635E-01  3.0974E-01
             1.6745E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -2003.93173186682        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     3138
 NPARAMETR:  9.7901E-01  1.0000E-02  2.5009E+00  1.7880E+00  1.0463E+00  9.9280E-01  5.0130E+00  2.3002E+00  6.8735E-01  1.1413E+00
             1.2330E+00
 PARAMETER:  7.8790E-02 -4.5647E+00  1.0167E+00  6.8108E-01  1.4526E-01  9.2773E-02  1.7120E+00  9.3298E-01 -2.7491E-01  2.3220E-01
             3.0945E-01
 GRADIENT:   9.1408E-01  0.0000E+00  5.9004E-02 -1.2780E+01  6.1392E-03  5.5262E-02  1.0032E-03  2.2151E-01  5.3228E-02  1.3565E-01
             1.0867E-01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -2003.93230487218        NO. OF FUNC. EVALS.: 197
 CUMULATIVE NO. OF FUNC. EVALS.:     3335             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7899E-01  1.0000E-02  2.4933E+00  1.7877E+00  1.0456E+00  9.9276E-01  5.1323E+00  2.2941E+00  6.8752E-01  1.1388E+00
             1.2328E+00
 PARAMETER:  7.8765E-02 -4.5647E+00  1.0136E+00  6.8094E-01  1.4460E-01  9.2730E-02  1.7355E+00  9.3035E-01 -2.7467E-01  2.2999E-01
             3.0929E-01
 GRADIENT:   2.4512E+02  0.0000E+00  7.6973E+00  8.1156E+02  6.2460E+00  2.1767E+01  7.7661E-02  5.7369E+00  1.7459E+01  1.8532E+00
             3.0115E+00

0ITERATION NO.:  100    OBJECTIVE VALUE:  -2003.93266206161        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:     3531
 NPARAMETR:  9.7898E-01  1.0000E-02  2.4903E+00  1.7876E+00  1.0450E+00  9.9275E-01  5.1314E+00  2.2930E+00  6.8751E-01  1.1387E+00
             1.2329E+00
 PARAMETER:  7.8759E-02 -4.5647E+00  1.0124E+00  6.8089E-01  1.4397E-01  9.2726E-02  1.7354E+00  9.2985E-01 -2.7467E-01  2.2989E-01
             3.0934E-01
 GRADIENT:   9.3964E-01  0.0000E+00 -1.2629E-01 -1.2911E+01  5.3548E-01  5.8772E-02  1.3017E-03  1.6757E-01  1.0195E-01 -5.9303E-02
            -3.2271E-02

0ITERATION NO.:  101    OBJECTIVE VALUE:  -2003.93266206161        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     3559
 NPARAMETR:  9.7897E-01  1.0000E-02  2.4922E+00  1.7876E+00  1.0434E+00  9.9276E-01  5.0842E+00  2.2901E+00  6.8753E-01  1.1399E+00
             1.2330E+00
 PARAMETER:  7.8759E-02 -4.5647E+00  1.0124E+00  6.8089E-01  1.4397E-01  9.2726E-02  1.7354E+00  9.2985E-01 -2.7467E-01  2.2989E-01
             3.0934E-01
 GRADIENT:   1.7853E-02  0.0000E+00 -6.3450E-02  6.7941E-02  5.4277E-01 -5.5411E-04  7.9407E-05  7.7621E-02 -3.4572E-03 -6.6693E-02
            -2.8099E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     3559
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -3.9944E-05 -1.3052E-03 -4.3127E-02 -9.5162E-03 -5.6772E-02
 SE:             2.9800E-02  8.4979E-04  2.0118E-02  2.9134E-02  1.8955E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9893E-01  1.2455E-01  3.2052E-02  7.4394E-01  2.7433E-03

 ETASHRINKSD(%)  1.6486E-01  9.7153E+01  3.2604E+01  2.3979E+00  3.6500E+01
 ETASHRINKVR(%)  3.2944E-01  9.9919E+01  5.4577E+01  4.7382E+00  5.9678E+01
 EBVSHRINKSD(%)  5.1065E-01  9.7307E+01  3.5985E+01  2.8323E+00  3.2772E+01
 EBVSHRINKVR(%)  1.0187E+00  9.9927E+01  5.9020E+01  5.5844E+00  5.4804E+01
 RELATIVEINF(%)  9.6735E+01  3.5286E-03  1.6377E+01  4.9723E+00  1.3868E+01
 EPSSHRINKSD(%)  3.3858E+01
 EPSSHRINKVR(%)  5.6253E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2003.9326620616109     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1084.9941288569382     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    54.46
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2003.933       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.79E-01  1.00E-02  2.49E+00  1.79E+00  1.04E+00  9.93E-01  5.13E+00  2.29E+00  6.88E-01  1.14E+00  1.23E+00
 


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
 #CPUT: Total CPU Time in Seconds,       54.487
Stop Time:
Fri Oct  1 12:52:16 CDT 2021

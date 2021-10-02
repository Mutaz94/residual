Fri Oct  1 21:37:05 CDT 2021
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
$DATA ../../../../data/SD3/TD2/dat97.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m97.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2106.07761835230        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.4885E+02 -4.7430E+01  7.1705E+01 -3.3071E+01  5.6780E+01  2.8261E+01 -5.5563E+00 -4.4898E+02 -9.7971E+01  2.9727E+01
            -9.7024E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2156.92770834430        NO. OF FUNC. EVALS.:  85
 CUMULATIVE NO. OF FUNC. EVALS.:       98
 NPARAMETR:  9.7266E-01  9.9070E-01  1.0518E+00  9.9109E-01  1.0216E+00  9.2882E-01  9.9883E-01  1.1710E+00  8.6043E-01  9.5498E-01
             9.8756E-01
 PARAMETER:  7.2277E-02  9.0657E-02  1.5054E-01  9.1050E-02  1.2137E-01  2.6155E-02  9.8829E-02  2.5785E-01 -5.0318E-02  5.3940E-02
             8.7481E-02
 GRADIENT:   5.1509E+02 -6.8947E+01  5.5686E+01 -7.2324E+01  6.2249E+01  6.8721E+00 -1.8396E+01 -3.9797E+02 -7.2213E+01  2.1544E+01
            -1.0547E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2191.89586155970        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:      264
 NPARAMETR:  9.7021E-01  1.0111E+00  1.1515E+00  1.0002E+00  1.0449E+00  9.0950E-01  1.0225E+00  1.3305E+00  7.1167E-01  9.1836E-01
             9.8559E-01
 PARAMETER:  6.9760E-02  1.1100E-01  2.4107E-01  1.0022E-01  1.4394E-01  5.1361E-03  1.2230E-01  3.8558E-01 -2.4014E-01  1.4831E-02
             8.5485E-02
 GRADIENT:   1.1361E+02 -9.4963E+01  5.2414E+01 -1.4075E+02 -6.8731E+00 -5.9398E+01 -3.8656E+01 -3.7469E+02 -7.6155E+01  1.1001E+01
            -1.0701E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2241.95400430739        NO. OF FUNC. EVALS.: 171
 CUMULATIVE NO. OF FUNC. EVALS.:      435
 NPARAMETR:  9.5002E-01  1.0149E+00  1.1533E+00  1.0059E+00  1.0492E+00  9.1945E-01  1.0718E+00  1.4875E+00  8.0094E-01  9.1792E-01
             9.9954E-01
 PARAMETER:  4.8723E-02  1.1482E-01  2.4260E-01  1.0585E-01  1.4807E-01  1.6016E-02  1.6935E-01  4.9710E-01 -1.2197E-01  1.4353E-02
             9.9535E-02
 GRADIENT:   4.4881E+02 -1.0123E+01  3.9192E+01 -2.4703E+01  3.3947E+01  8.8727E+00 -5.1467E+00 -2.6580E+02 -3.8363E+01  1.7334E+01
            -7.5638E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2253.12130658234        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:      564
 NPARAMETR:  9.0155E-01  1.0148E+00  1.1535E+00  1.0058E+00  1.0485E+00  9.4708E-01  1.1148E+00  1.4974E+00  9.5858E-01  8.4875E-01
             1.0379E+00
 PARAMETER: -3.6368E-03  1.1471E-01  2.4284E-01  1.0583E-01  1.4737E-01  4.5625E-02  2.0871E-01  5.0370E-01  5.7697E-02 -6.3996E-02
             1.3725E-01
 GRADIENT:   2.8785E+02 -5.3579E+00  3.6855E+01 -6.2825E+00  4.7958E+01  2.5357E+01  1.2164E+01 -2.4614E+02 -1.1216E+01  9.5422E+00
            -2.5363E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2257.14078577536        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      744
 NPARAMETR:  9.2159E-01  1.0149E+00  1.1535E+00  1.0059E+00  1.0486E+00  1.0065E+00  1.1272E+00  1.4976E+00  1.0496E+00  8.0131E-01
             1.0562E+00
 PARAMETER:  1.8350E-02  1.1475E-01  2.4276E-01  1.0586E-01  1.4741E-01  1.0644E-01  2.1977E-01  5.0389E-01  1.4839E-01 -1.2151E-01
             1.5472E-01
 GRADIENT:  -1.9147E+01 -6.8416E+01  2.6610E+01 -6.2191E+01  2.7684E+01 -8.9130E+00 -1.2408E+00 -2.5968E+02 -3.7477E+00  2.1287E+00
            -6.3427E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2257.38576345603        NO. OF FUNC. EVALS.: 200
 CUMULATIVE NO. OF FUNC. EVALS.:      944             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2164E-01  1.0169E+00  1.1542E+00  1.0063E+00  1.0479E+00  1.0290E+00  1.1270E+00  1.4975E+00  1.0509E+00  8.0107E-01
             1.0560E+00
 PARAMETER:  1.8397E-02  1.1679E-01  2.4338E-01  1.0628E-01  1.4679E-01  1.2856E-01  2.1955E-01  5.0379E-01  1.4968E-01 -1.2180E-01
             1.5452E-01
 GRADIENT:   3.3326E+02 -2.5672E+00  3.7277E+01  4.0621E+00  5.4961E+01  7.4055E+01  1.5997E+01 -2.3757E+02  4.1640E+00  3.7417E+00
            -4.6585E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2257.53484412197        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1131
 NPARAMETR:  9.2347E-01  1.0166E+00  1.1549E+00  1.0060E+00  1.0475E+00  1.0154E+00  1.1276E+00  1.4983E+00  1.0860E+00  8.0133E-01
             1.0565E+00
 PARAMETER:  2.0384E-02  1.1650E-01  2.4398E-01  1.0601E-01  1.4638E-01  1.1529E-01  2.2013E-01  5.0434E-01  1.8252E-01 -1.2148E-01
             1.5494E-01
 GRADIENT:  -1.4353E+01 -6.6730E+01  2.7789E+01 -5.7649E+01  2.4667E+01 -5.1575E+00 -5.0751E-02 -2.5520E+02  5.5041E-01  2.4772E+00
            -5.5741E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2258.21798981721        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1318
 NPARAMETR:  9.2700E-01  1.0167E+00  1.1548E+00  1.0060E+00  1.0473E+00  1.0221E+00  1.1278E+00  1.5019E+00  1.0803E+00  8.0137E-01
             1.0566E+00
 PARAMETER:  2.4204E-02  1.1651E-01  2.4394E-01  1.0601E-01  1.4622E-01  1.2187E-01  2.2023E-01  5.0671E-01  1.7721E-01 -1.2143E-01
             1.5502E-01
 GRADIENT:  -6.0835E+00 -6.6517E+01  2.7550E+01 -5.8281E+01  2.4141E+01 -2.4015E+00 -1.2671E-01 -2.5479E+02  2.1890E-01  2.5596E+00
            -5.4940E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2259.22445486598        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1501
 NPARAMETR:  9.2845E-01  1.0165E+00  1.1552E+00  1.0059E+00  1.0469E+00  1.0703E+00  1.1283E+00  1.5106E+00  1.0164E+00  8.0156E-01
             1.0569E+00
 PARAMETER:  2.5757E-02  1.1637E-01  2.4426E-01  1.0586E-01  1.4582E-01  1.6797E-01  2.2067E-01  5.1254E-01  1.1623E-01 -1.2119E-01
             1.5536E-01
 GRADIENT:  -2.4796E+00 -6.5005E+01  2.7305E+01 -6.5950E+01  2.1603E+01  1.5430E+01 -1.7195E+00 -2.5958E+02 -6.8366E+00  2.5639E+00
            -5.7537E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2259.38957456580        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1667
 NPARAMETR:  9.3175E-01  1.0164E+00  1.1555E+00  1.0058E+00  1.0467E+00  1.0229E+00  1.1285E+00  1.5100E+00  1.0162E+00  8.0166E-01
             1.0571E+00
 PARAMETER:  2.9311E-02  1.1626E-01  2.4450E-01  1.0576E-01  1.4567E-01  1.2263E-01  2.2089E-01  5.1214E-01  1.1611E-01 -1.2107E-01
             1.5552E-01
 GRADIENT:   4.5716E+00 -6.4904E+01  2.7476E+01 -6.6227E+01  2.1395E+01 -2.1219E+00 -1.6531E+00 -2.5978E+02 -6.9280E+00  2.5463E+00
            -5.7896E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2260.04518386063        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1852
 NPARAMETR:  9.3007E-01  1.0160E+00  1.1563E+00  1.0054E+00  1.0461E+00  1.0309E+00  1.1294E+00  1.5131E+00  1.0677E+00  8.0200E-01
             1.0577E+00
 PARAMETER:  2.7510E-02  1.1590E-01  2.4524E-01  1.0543E-01  1.4511E-01  1.3042E-01  2.2168E-01  5.1416E-01  1.6550E-01 -1.2065E-01
             1.5608E-01
 GRADIENT:   9.0164E-01 -6.6012E+01  2.7538E+01 -6.1302E+01  2.0910E+01  1.0465E+00 -1.6224E-01 -2.5289E+02 -3.0573E-01  3.0447E+00
            -4.1973E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2260.91751407057        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2040             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2886E-01  1.0158E+00  1.1568E+00  1.0053E+00  1.0458E+00  1.0128E+00  1.1299E+00  1.5189E+00  1.0848E+00  8.0220E-01
             1.0580E+00
 PARAMETER:  2.6207E-02  1.1572E-01  2.4564E-01  1.0526E-01  1.4474E-01  1.1272E-01  2.2214E-01  5.1801E-01  1.8141E-01 -1.2040E-01
             1.5642E-01
 GRADIENT:   3.4841E+02 -3.4238E+00  3.6983E+01  3.8224E+00  4.9434E+01  5.7234E+01  1.7519E+01 -2.2689E+02  1.1768E+01  4.8286E+00
            -1.5670E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2261.13096844787        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     2220
 NPARAMETR:  9.2400E-01  1.0158E+00  1.1568E+00  1.0053E+00  1.0457E+00  1.0187E+00  1.1300E+00  1.5202E+00  1.0697E+00  8.0223E-01
             1.0581E+00
 PARAMETER:  2.0962E-02  1.1570E-01  2.4568E-01  1.0524E-01  1.4469E-01  1.1851E-01  2.2220E-01  5.1886E-01  1.6738E-01 -1.2037E-01
             1.5647E-01
 GRADIENT:  -1.3044E+01 -6.5849E+01  2.7134E+01 -6.1520E+01  1.9769E+01 -3.8382E+00  1.6115E-02 -2.5048E+02  4.8424E-01  3.2747E+00
            -3.4832E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2262.42125289409        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     2415             RESET HESSIAN, TYPE I
 NPARAMETR:  9.3010E-01  1.0154E+00  1.1579E+00  1.0048E+00  1.0449E+00  1.0282E+00  1.1311E+00  1.5280E+00  1.0593E+00  7.9981E-01
             1.0589E+00
 PARAMETER:  2.7535E-02  1.1527E-01  2.4664E-01  1.0483E-01  1.4393E-01  1.2781E-01  2.2323E-01  5.2396E-01  1.5757E-01 -1.2338E-01
             1.5721E-01
 GRADIENT:   3.5072E+02 -3.2610E+00  3.6991E+01 -3.3099E-01  4.7079E+01  7.1539E+01  1.7101E+01 -2.2667E+02  7.9951E+00  4.7481E+00
            -7.8585E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2263.14996844599        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2604
 NPARAMETR:  9.3237E-01  1.0151E+00  1.1587E+00  1.0046E+00  1.0444E+00  1.0286E+00  1.1320E+00  1.5328E+00  1.0540E+00  8.0012E-01
             1.0594E+00
 PARAMETER:  2.9971E-02  1.1496E-01  2.4731E-01  1.0454E-01  1.4342E-01  1.2821E-01  2.2395E-01  5.2711E-01  1.5264E-01 -1.2299E-01
             1.5773E-01
 GRADIENT:   6.0091E+00 -6.5286E+01  2.7247E+01 -6.5375E+01  1.6468E+01  1.4697E-01 -1.8471E-01 -2.4860E+02 -4.3913E-01  3.4114E+00
            -2.0850E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -2265.35003908362        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2796             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2971E-01  1.0146E+00  1.1599E+00  1.0041E+00  1.0434E+00  1.0315E+00  1.1333E+00  1.5477E+00  1.0923E+00  8.0065E-01
             1.0603E+00
 PARAMETER:  2.7114E-02  1.1449E-01  2.4835E-01  1.0410E-01  1.4252E-01  1.3104E-01  2.2516E-01  5.3677E-01  1.8824E-01 -1.2233E-01
             1.5860E-01
 GRADIENT:   3.4913E+02 -3.9327E+00  3.6344E+01  6.0713E-01  4.3138E+01  7.4615E+01  1.8423E+01 -2.1713E+02  1.5233E+01  5.6152E+00
             1.7567E+00

0ITERATION NO.:   85    OBJECTIVE VALUE:  -2265.94451809189        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2978
 NPARAMETR:  9.2440E-01  1.0146E+00  1.1599E+00  1.0041E+00  1.0434E+00  1.0383E+00  1.1334E+00  1.5528E+00  9.8353E-01  8.0068E-01
             1.0604E+00
 PARAMETER:  2.1386E-02  1.1449E-01  2.4836E-01  1.0410E-01  1.4244E-01  1.3757E-01  2.2524E-01  5.4004E-01  8.3389E-02 -1.2229E-01
             1.5865E-01
 GRADIENT:  -1.1758E+01 -6.3735E+01  2.6466E+01 -7.5612E+01  1.1596E+01  3.7351E+00 -2.0676E+00 -2.5015E+02 -8.3608E+00  3.6404E+00
            -1.4881E+00

0ITERATION NO.:   89    OBJECTIVE VALUE:  -2267.01336478540        NO. OF FUNC. EVALS.: 145
 CUMULATIVE NO. OF FUNC. EVALS.:     3123
 NPARAMETR:  9.2333E-01  1.0146E+00  1.1599E+00  1.0041E+00  1.0432E+00  1.0319E+00  1.1336E+00  1.5612E+00  9.5475E-01  8.0076E-01
             1.0606E+00
 PARAMETER:  1.9233E-02  1.1450E-01  2.4836E-01  1.0411E-01  1.4232E-01  1.3160E-01  2.2536E-01  5.4559E-01  5.3725E-02 -1.2223E-01
             1.5874E-01
 GRADIENT:  -1.7241E+01  7.5470E+04 -8.0707E+03  8.2976E+04  3.0404E+04  7.6273E-01 -1.9191E+04  1.5492E+04  8.6460E+04 -7.0788E+04
            -2.7246E+04
 NUMSIGDIG:         0.8         2.3         3.2         2.3         2.3         1.5         2.3         2.3         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     3123
 NO. OF SIG. DIGITS IN FINAL EST.:  0.8
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.8393E-03  1.9885E-02 -4.9055E-02  4.1116E-02 -3.9509E-02
 SE:             2.9788E-02  2.1990E-02  3.8532E-02  2.5942E-02  1.9696E-02
 N:                     100         100         100         100         100

 P VAL.:         7.6666E-01  3.6586E-01  2.0298E-01  1.1299E-01  4.4860E-02

 ETASHRINKSD(%)  2.0674E-01  2.6329E+01  1.0000E-10  1.3090E+01  3.4017E+01
 ETASHRINKVR(%)  4.1306E-01  4.5726E+01  1.0000E-10  2.4466E+01  5.6463E+01
 EBVSHRINKSD(%)  3.6207E-01  2.6720E+01  3.6283E+01  1.6913E+01  3.0985E+01
 EBVSHRINKVR(%)  7.2282E-01  4.6301E+01  5.9401E+01  3.0965E+01  5.2369E+01
 RELATIVEINF(%)  9.9265E+01  1.6813E+01  2.0330E+01  2.5957E+01  1.6023E+01
 EPSSHRINKSD(%)  3.0345E+01
 EPSSHRINKVR(%)  5.1482E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2267.0133647854027     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1164.2871249397956     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    64.63
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2267.013       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.22E-01  1.01E+00  1.16E+00  1.00E+00  1.04E+00  1.03E+00  1.13E+00  1.56E+00  9.55E-01  8.01E-01  1.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       64.672
Stop Time:
Fri Oct  1 21:38:11 CDT 2021

Fri Oct  1 22:34:31 CDT 2021
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
$DATA ../../../../data/SD3/D/dat84.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   29194.9549630688        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   7.9290E+02  5.9007E+02 -7.2140E+01  5.4739E+02  6.2274E+01 -2.4900E+03 -1.3615E+03 -1.6746E+01 -1.9331E+03 -5.6345E+02
            -5.6208E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -492.815586348353        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.3193E+00  1.3075E+00  1.0342E+00  1.4542E+00  1.1456E+00  1.9170E+00  1.8094E+00  9.6000E-01  1.5425E+00  9.6347E-01
             1.4185E+01
 PARAMETER:  3.7714E-01  3.6808E-01  1.3359E-01  4.7443E-01  2.3591E-01  7.5077E-01  6.9299E-01  5.9182E-02  5.3343E-01  6.2790E-02
             2.7522E+00
 GRADIENT:   5.9699E-01 -1.0744E+01 -2.5488E+01  4.9269E+01  2.1500E+01  3.9654E+01 -2.4922E+01  3.4133E+00 -8.4815E+00  1.0272E+01
             1.1177E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -566.718951560089        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.3033E+00  6.5886E-01  8.6755E+00  2.3648E+00  1.9761E+00  1.8790E+00  6.6190E+00  3.8485E-01  1.7706E+00  2.8252E-01
             1.3522E+01
 PARAMETER:  3.6490E-01 -3.1725E-01  2.2605E+00  9.6069E-01  7.8111E-01  7.3074E-01  1.9900E+00 -8.5490E-01  6.7131E-01 -1.1640E+00
             2.7043E+00
 GRADIENT:   1.9594E+01  1.4587E+01 -1.8454E+00  8.7602E+01 -1.0018E+01  2.8118E+01  3.7685E+01  4.4273E-02 -4.4506E+00  5.1998E-01
             1.1881E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -578.211555957774        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      296
 NPARAMETR:  1.2053E+00  6.9889E-01  1.0040E+01  1.8471E+00  2.0475E+00  1.7897E+00  6.3718E+00  6.2215E-01  1.7110E+00  4.0053E-01
             1.2990E+01
 PARAMETER:  2.8669E-01 -2.5826E-01  2.4066E+00  7.1360E-01  8.1663E-01  6.8207E-01  1.9519E+00 -3.7457E-01  6.3708E-01 -8.1497E-01
             2.6642E+00
 GRADIENT:  -1.7857E+01  5.0621E+00 -1.2198E+00 -6.7966E+00 -5.1755E-01  7.9122E+00  1.1809E+01  4.8576E-02  1.2647E+01  1.1529E+00
             1.1450E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -584.406334333909        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:      484             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1967E+00  6.1861E-01  2.9418E+01  1.8923E+00  2.1557E+00  1.7698E+00  6.4979E+00  1.0000E-02  1.6548E+00  1.0365E-01
             1.2370E+01
 PARAMETER:  2.7960E-01 -3.8028E-01  3.4816E+00  7.3781E-01  8.6812E-01  6.7085E-01  1.9715E+00 -1.6098E+01  6.0369E-01 -2.1667E+00
             2.6153E+00
 GRADIENT:   9.5162E-01  6.5234E+00  1.3020E-01  2.1238E+01 -3.5941E+00  1.1530E+01  5.4712E+01  0.0000E+00  7.8633E+00  8.2785E-02
             9.4370E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -586.367410688478        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      620
 NPARAMETR:  1.1964E+00  6.1884E-01  2.0766E+01  1.8917E+00  2.1542E+00  1.7707E+00  6.4522E+00  1.0000E-02  1.6533E+00  3.7349E-02
             1.1678E+01
 PARAMETER:  2.7929E-01 -3.7991E-01  3.1333E+00  7.3748E-01  8.6741E-01  6.7137E-01  1.9644E+00 -1.8544E+01  6.0277E-01 -3.1875E+00
             2.5577E+00
 GRADIENT:   2.5302E+00  6.8420E+00 -8.0138E-02  1.7218E+01 -4.1531E+00  3.6740E-02  4.7979E+00  0.0000E+00  8.5190E-01  1.0615E-02
            -8.2254E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -587.525950439436        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      799
 NPARAMETR:  1.1894E+00  4.9016E-01  3.0879E+01  1.8492E+00  2.2056E+00  1.7695E+00  6.5571E+00  1.0000E-02  1.5833E+00  1.8792E-02
             1.1600E+01
 PARAMETER:  2.7346E-01 -6.1301E-01  3.5301E+00  7.1477E-01  8.9098E-01  6.7068E-01  1.9806E+00 -1.8494E+01  5.5952E-01 -3.8743E+00
             2.5510E+00
 GRADIENT:   2.7011E+00  2.5972E-01 -1.3515E-02 -3.9842E-01 -5.7140E-01  1.2208E+00  4.5303E-01  0.0000E+00 -1.1250E-01  2.6865E-03
             2.1880E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -587.560522851783        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      976
 NPARAMETR:  1.1834E+00  4.7702E-01  4.1310E+01  1.8628E+00  2.2394E+00  1.7631E+00  6.5714E+00  1.0000E-02  1.5976E+00  1.0000E-02
             1.1566E+01
 PARAMETER:  2.6839E-01 -6.4021E-01  3.8211E+00  7.2208E-01  9.0621E-01  6.6706E-01  1.9827E+00 -1.8494E+01  5.6848E-01 -4.8460E+00
             2.5480E+00
 GRADIENT:   1.8853E-01  5.9816E-02  3.5024E-04  2.0884E-01  5.7100E-02  3.2934E-02 -5.2440E-01  0.0000E+00  2.6984E-02  0.0000E+00
            -2.4093E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -587.714336706524        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1159             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1840E+00  4.4707E-01  4.5286E+01  1.8883E+00  2.2355E+00  1.7620E+00  7.0059E+00  1.0000E-02  1.6057E+00  1.0000E-02
             1.1567E+01
 PARAMETER:  2.6888E-01 -7.0505E-01  3.9130E+00  7.3565E-01  9.0445E-01  6.6642E-01  2.0468E+00 -1.8494E+01  5.7354E-01 -4.8460E+00
             2.5482E+00
 GRADIENT:   1.2896E+01  3.6815E+00  1.4516E-02  1.6595E+01  3.6943E-01  8.0997E+00  6.9078E+01  0.0000E+00  3.5812E+00  0.0000E+00
             3.0922E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -587.778984338643        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1321
 NPARAMETR:  1.1827E+00  4.2160E-01  4.5874E+01  1.8988E+00  2.2358E+00  1.7630E+00  6.9001E+00  1.0000E-02  1.6034E+00  1.0000E-02
             1.1561E+01
 PARAMETER:  2.6776E-01 -7.6370E-01  3.9259E+00  7.4124E-01  9.0458E-01  6.6700E-01  2.0315E+00 -1.8494E+01  5.7214E-01 -4.8460E+00
             2.5476E+00
 GRADIENT:   1.4389E-01  1.6081E-01  1.0434E-02 -1.1893E+00 -2.9332E-01  2.7862E-01  3.1028E+00  0.0000E+00 -5.3512E-01  0.0000E+00
            -4.1602E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -587.845088763646        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1503
 NPARAMETR:  1.1848E+00  3.9632E-01  4.5989E+01  1.9279E+00  2.2418E+00  1.7648E+00  7.0164E+00  1.0000E-02  1.6290E+00  1.0000E-02
             1.1587E+01
 PARAMETER:  2.6959E-01 -8.2552E-01  3.9284E+00  7.5645E-01  9.0728E-01  6.6803E-01  2.0483E+00 -1.8494E+01  5.8794E-01 -4.8460E+00
             2.5499E+00
 GRADIENT:   4.1298E-01  1.1943E-01 -7.0192E-03 -8.7670E-01 -2.0413E-02  5.9284E-01  3.3960E+00  0.0000E+00  7.5969E-02  0.0000E+00
             1.5439E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -587.909590621169        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1688
 NPARAMETR:  1.1844E+00  3.7682E-01  5.2101E+01  1.9458E+00  2.2451E+00  1.7611E+00  7.2137E+00  1.0000E-02  1.6338E+00  1.0000E-02
             1.1570E+01
 PARAMETER:  2.6920E-01 -8.7598E-01  4.0532E+00  7.6568E-01  9.0873E-01  6.6595E-01  2.0760E+00 -1.8494E+01  5.9089E-01 -4.8460E+00
             2.5484E+00
 GRADIENT:   5.6199E-01  6.1679E-01  2.0676E-03 -8.3321E-01 -3.0441E-01 -7.4174E-02  6.2614E+00  0.0000E+00 -1.2070E-01  0.0000E+00
            -4.4694E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -587.946043149602        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1870
 NPARAMETR:  1.1842E+00  3.5523E-01  5.6890E+01  1.9626E+00  2.2526E+00  1.7621E+00  7.2906E+00  1.0000E-02  1.6430E+00  1.0000E-02
             1.1572E+01
 PARAMETER:  2.6907E-01 -9.3498E-01  4.1411E+00  7.7427E-01  9.1209E-01  6.6649E-01  2.0866E+00 -1.8494E+01  5.9654E-01 -4.8460E+00
             2.5486E+00
 GRADIENT:   2.9689E-01  2.1312E-01 -1.3809E-03 -8.6999E-01 -8.9524E-02  1.5404E-01  5.6791E+00  0.0000E+00 -1.4869E-01  0.0000E+00
            -2.3399E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -587.975659963610        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2055
 NPARAMETR:  1.1847E+00  3.2597E-01  6.2872E+01  1.9828E+00  2.2613E+00  1.7618E+00  7.4279E+00  1.0000E-02  1.6562E+00  1.0000E-02
             1.1577E+01
 PARAMETER:  2.6952E-01 -1.0210E+00  4.2411E+00  7.8450E-01  9.1593E-01  6.6636E-01  2.1052E+00 -1.8494E+01  6.0454E-01 -4.8460E+00
             2.5490E+00
 GRADIENT:   3.7816E-01 -2.9061E-01 -8.9173E-03 -1.8852E+00  2.8676E-01  1.8022E-01  5.6189E+00  0.0000E+00  1.0791E-01  0.0000E+00
             3.9712E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -587.986792063965        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2236
 NPARAMETR:  1.1845E+00  3.2474E-01  6.6797E+01  1.9928E+00  2.2655E+00  1.7632E+00  7.4768E+00  1.0000E-02  1.6607E+00  1.0000E-02
             1.1582E+01
 PARAMETER:  2.6933E-01 -1.0247E+00  4.3017E+00  7.8954E-01  9.1780E-01  6.6711E-01  2.1118E+00 -1.8494E+01  6.0724E-01 -4.8460E+00
             2.5495E+00
 GRADIENT:  -2.9560E-02  6.0571E-02 -7.6572E-03 -6.1497E-01  1.4406E-01  3.2952E-01  6.4387E+00  0.0000E+00  1.3815E-02  0.0000E+00
             3.7226E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -587.991297026564        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2421
 NPARAMETR:  1.1848E+00  3.2010E-01  7.2118E+01  1.9975E+00  2.2673E+00  1.7628E+00  7.5071E+00  1.0000E-02  1.6631E+00  1.0000E-02
             1.1581E+01
 PARAMETER:  2.6960E-01 -1.0391E+00  4.3783E+00  7.9189E-01  9.1857E-01  6.6689E-01  2.1158E+00 -1.8494E+01  6.0866E-01 -4.8460E+00
             2.5494E+00
 GRADIENT:   1.0183E-01  4.7407E-02 -3.9214E-03 -5.1071E-01  5.0121E-02  2.6164E-01  6.5725E+00  0.0000E+00 -1.5618E-02  0.0000E+00
             1.3311E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -587.995474873405        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2613             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1846E+00  3.1589E-01  8.2800E+01  2.0027E+00  2.2662E+00  1.7620E+00  7.5635E+00  1.0000E-02  1.6645E+00  1.0000E-02
             1.1575E+01
 PARAMETER:  2.6943E-01 -1.0523E+00  4.5164E+00  7.9447E-01  9.1812E-01  6.6647E-01  2.1233E+00 -1.8494E+01  6.0955E-01 -4.8460E+00
             2.5488E+00
 GRADIENT:   1.2250E+01  2.5832E+00  6.7739E-03  2.1183E+01  4.8618E-01  8.5608E+00  7.6271E+01  0.0000E+00  3.6557E+00  0.0000E+00
             2.9911E+01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -587.997519417266        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2799
 NPARAMETR:  1.1846E+00  3.1271E-01  8.2657E+01  2.0047E+00  2.2678E+00  1.7622E+00  7.5758E+00  1.0000E-02  1.6662E+00  1.0000E-02
             1.1576E+01
 PARAMETER:  2.6945E-01 -1.0625E+00  4.5147E+00  7.9550E-01  9.1882E-01  6.6654E-01  2.1250E+00 -1.8494E+01  6.1057E-01 -4.8460E+00
             2.5489E+00
 GRADIENT:   9.6061E-02  1.3046E-01  2.8158E-03 -3.7378E-01 -2.1710E-01  1.3506E-01  7.2645E+00  0.0000E+00 -9.3255E-02  0.0000E+00
            -5.1291E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -587.999270576579        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2991             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1847E+00  3.0880E-01  7.8919E+01  2.0076E+00  2.2715E+00  1.7622E+00  7.5943E+00  1.0000E-02  1.6689E+00  1.0000E-02
             1.1577E+01
 PARAMETER:  2.6953E-01 -1.0751E+00  4.4684E+00  7.9695E-01  9.2042E-01  6.6656E-01  2.1274E+00 -1.8494E+01  6.1217E-01 -4.8460E+00
             2.5491E+00
 GRADIENT:   1.2202E+01  2.4274E+00 -2.7055E-03  2.0834E+01  8.9784E-01  8.5720E+00  7.6679E+01  0.0000E+00  3.8675E+00  0.0000E+00
             3.0294E+01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -587.999840877123        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     3176
 NPARAMETR:  1.1848E+00  3.0677E-01  7.8999E+01  2.0096E+00  2.2742E+00  1.7622E+00  7.6073E+00  1.0000E-02  1.6708E+00  1.0000E-02
             1.1578E+01
 PARAMETER:  2.6959E-01 -1.0817E+00  4.4694E+00  7.9793E-01  9.2164E-01  6.6656E-01  2.1291E+00 -1.8494E+01  6.1332E-01 -4.8460E+00
             2.5491E+00
 GRADIENT:   6.5093E-02  1.9566E-02 -7.7999E-03 -7.3920E-01  2.3532E-01  1.0793E-01  7.2998E+00  0.0000E+00  1.0204E-01  0.0000E+00
            -1.6811E-01

0ITERATION NO.:  100    OBJECTIVE VALUE:  -588.000806629807        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     3361
 NPARAMETR:  1.1850E+00  3.0511E-01  8.3506E+01  2.0121E+00  2.2758E+00  1.7623E+00  7.6185E+00  1.0000E-02  1.6723E+00  1.0000E-02
             1.1579E+01
 PARAMETER:  2.6973E-01 -1.0871E+00  4.5249E+00  7.9919E-01  9.2235E-01  6.6661E-01  2.1306E+00 -1.8494E+01  6.1419E-01 -4.8460E+00
             2.5492E+00
 GRADIENT:   9.4044E-02  2.7091E-02 -5.8322E-03 -6.1394E-01  1.9151E-01  1.1667E-01  7.3362E+00  0.0000E+00  8.4877E-02  0.0000E+00
            -1.7587E-01

0ITERATION NO.:  105    OBJECTIVE VALUE:  -588.001696337861        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     3555             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1850E+00  3.0357E-01  9.3614E+01  2.0145E+00  2.2734E+00  1.7624E+00  7.6326E+00  1.0000E-02  1.6727E+00  1.0000E-02
             1.1578E+01
 PARAMETER:  2.6975E-01 -1.0921E+00  4.6392E+00  8.0038E-01  9.2128E-01  6.6668E-01  2.1324E+00 -1.8494E+01  6.1446E-01 -4.8460E+00
             2.5491E+00
 GRADIENT:   1.2242E+01  2.4665E+00  3.3407E-03  2.1302E+01  6.5495E-01  8.6035E+00  7.7310E+01  0.0000E+00  3.8475E+00  0.0000E+00
             3.0185E+01

0ITERATION NO.:  110    OBJECTIVE VALUE:  -588.001975170400        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     3738
 NPARAMETR:  1.1851E+00  3.0240E-01  9.8135E+01  2.0163E+00  2.2740E+00  1.7624E+00  7.6415E+00  1.0000E-02  1.6734E+00  1.0000E-02
             1.1578E+01
 PARAMETER:  2.6979E-01 -1.0960E+00  4.6863E+00  8.0124E-01  9.2154E-01  6.6670E-01  2.1336E+00 -1.8494E+01  6.1486E-01 -4.8460E+00
             2.5491E+00
 GRADIENT:   1.1805E-01  8.3840E-02  3.3160E-03 -1.9077E-01 -2.2578E-01  1.5030E-01  7.4897E+00  0.0000E+00 -8.7909E-02  0.0000E+00
            -5.1317E-01

0ITERATION NO.:  115    OBJECTIVE VALUE:  -588.002409022129        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     3912
 NPARAMETR:  1.1851E+00  3.0134E-01  9.6351E+01  2.0170E+00  2.2753E+00  1.7624E+00  7.6469E+00  1.0000E-02  1.6745E+00  1.0000E-02
             1.1579E+01
 PARAMETER:  2.6981E-01 -1.0995E+00  4.6680E+00  8.0159E-01  9.2213E-01  6.6670E-01  2.1343E+00 -1.8494E+01  6.1551E-01 -4.8460E+00
             2.5492E+00
 GRADIENT:   1.0529E-01  5.9180E-02  1.1910E-03 -3.2775E-01 -1.1170E-01  1.4172E-01  7.5021E+00  0.0000E+00 -2.4125E-02  0.0000E+00
            -3.8785E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     3912
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2121E-02  5.9640E-02  9.7233E-07 -7.9882E-02 -1.8326E-05
 SE:             2.8008E-02  1.9866E-02  4.8140E-07  1.7939E-02  3.7726E-05
 N:                     100         100         100         100         100

 P VAL.:         6.6518E-01  2.6807E-03  4.3404E-02  8.4795E-06  6.2713E-01

 ETASHRINKSD(%)  6.1693E+00  3.3448E+01  9.9998E+01  3.9901E+01  9.9874E+01
 ETASHRINKVR(%)  1.1958E+01  5.5708E+01  1.0000E+02  6.3881E+01  1.0000E+02
 EBVSHRINKSD(%)  7.8368E+00  4.2885E+01  9.9996E+01  2.7800E+01  9.9767E+01
 EBVSHRINKVR(%)  1.5059E+01  6.7379E+01  1.0000E+02  4.7872E+01  9.9999E+01
 RELATIVEINF(%)  8.1531E+01  1.7887E+01  1.7761E-08  2.4303E+01  7.2078E-05
 EPSSHRINKSD(%)  7.8575E+00
 EPSSHRINKVR(%)  1.5098E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -588.00240902212886     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       514.72383082347824     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:   105.05
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -588.002       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.19E+00  3.01E-01  9.64E+01  2.02E+00  2.28E+00  1.76E+00  7.65E+00  1.00E-02  1.67E+00  1.00E-02  1.16E+01
 


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
 #CPUT: Total CPU Time in Seconds,      100.081
Stop Time:
Fri Oct  1 22:36:25 CDT 2021

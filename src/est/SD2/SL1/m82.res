Fri Oct  1 11:55:39 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat82.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m82.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2091.18693232878        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2960E+02 -3.2518E+01 -7.5071E+01  9.9808E+01  1.3054E+02  6.7033E+01 -1.6032E+01  3.2720E+00  1.8873E+01 -1.9488E+01
            -2.3767E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2102.77999732112        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  1.0165E+00  1.1574E+00  1.1243E+00  9.2347E-01  1.0463E+00  8.8625E-01  1.1308E+00  9.8114E-01  9.2587E-01  1.0575E+00
             1.0749E+00
 PARAMETER:  1.1635E-01  2.4615E-01  2.1715E-01  2.0384E-02  1.4529E-01 -2.0760E-02  2.2293E-01  8.0961E-02  2.2981E-02  1.5588E-01
             1.7219E-01
 GRADIENT:   4.3301E+01 -2.5910E+00 -1.0342E+01  2.0867E+01  1.7464E+01 -2.5647E+01 -5.7173E+00 -3.2384E-01  2.4726E+00 -1.0859E+01
             3.1296E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2103.96898573828        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  1.0146E+00  1.3341E+00  1.2690E+00  8.1115E-01  1.2074E+00  9.3734E-01  1.1977E+00  1.0438E+00  8.4361E-01  1.2714E+00
             1.0110E+00
 PARAMETER:  1.1446E-01  3.8824E-01  3.3824E-01 -1.0931E-01  2.8843E-01  3.5293E-02  2.8044E-01  1.4287E-01 -7.0069E-02  3.4009E-01
             1.1095E-01
 GRADIENT:   3.5310E+01  6.4785E+00  1.6940E+00  1.5947E+00  2.6822E+01 -2.5932E+00  1.0791E+01 -7.1439E+00 -8.4219E+00 -3.1383E+00
            -1.5594E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2106.71302075314        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  1.0047E+00  1.4852E+00  1.2028E+00  7.2562E-01  1.2096E+00  9.4355E-01  1.0041E+00  1.4173E+00  1.0195E+00  1.2611E+00
             1.0262E+00
 PARAMETER:  1.0469E-01  4.9555E-01  2.8466E-01 -2.2073E-01  2.9025E-01  4.1897E-02  1.0410E-01  4.4876E-01  1.1928E-01  3.3202E-01
             1.2584E-01
 GRADIENT:   7.4107E+00  1.6197E+01 -3.7478E-01  1.4649E+01 -1.8704E+00  2.0487E-01 -1.8275E+00 -2.3988E-02 -7.1397E-01 -6.1949E-01
            -1.3994E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2106.87970247925        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      700
 NPARAMETR:  1.0024E+00  1.5483E+00  1.2302E+00  6.7808E-01  1.2492E+00  9.4281E-01  9.8023E-01  1.5408E+00  1.0563E+00  1.3013E+00
             1.0281E+00
 PARAMETER:  1.0243E-01  5.3716E-01  3.0719E-01 -2.8849E-01  3.2250E-01  4.1108E-02  8.0031E-02  5.3230E-01  1.5478E-01  3.6333E-01
             1.2770E-01
 GRADIENT:   1.3407E+00  5.9463E+00  7.0476E-01  4.7506E+00 -1.6877E+00 -1.5756E-01 -5.1961E-01 -1.9956E-01 -6.3432E-01  1.6238E-01
            -3.3678E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2106.88010675973        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      879
 NPARAMETR:  1.0025E+00  1.5686E+00  1.2238E+00  6.6472E-01  1.2564E+00  9.4287E-01  9.7205E-01  1.5629E+00  1.0690E+00  1.3072E+00
             1.0282E+00
 PARAMETER:  1.0252E-01  5.5015E-01  3.0196E-01 -3.0839E-01  3.2829E-01  4.1175E-02  7.1656E-02  5.4654E-01  1.6672E-01  3.6785E-01
             1.2786E-01
 GRADIENT:   1.3559E+00  5.6938E+00  9.2797E-01  4.1564E+00 -1.9684E+00 -1.6015E-01 -4.0508E-01 -2.0665E-01 -6.0978E-01  1.5512E-01
            -3.9084E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2106.88038192992        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1059
 NPARAMETR:  1.0026E+00  1.5819E+00  1.2132E+00  6.5583E-01  1.2598E+00  9.4292E-01  9.6681E-01  1.5697E+00  1.0774E+00  1.3095E+00
             1.0283E+00
 PARAMETER:  1.0259E-01  5.5861E-01  2.9328E-01 -3.2185E-01  3.3094E-01  4.1222E-02  6.6243E-02  5.5087E-01  1.7451E-01  3.6967E-01
             1.2793E-01
 GRADIENT:   1.3796E+00  5.5351E+00  1.0440E+00  3.8455E+00 -2.1308E+00 -1.6389E-01 -3.5499E-01 -2.0988E-01 -5.9473E-01  1.5365E-01
            -3.1630E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2106.88070830296        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1239
 NPARAMETR:  1.0027E+00  1.5996E+00  1.1943E+00  6.4401E-01  1.2631E+00  9.4298E-01  9.6006E-01  1.5727E+00  1.0884E+00  1.3116E+00
             1.0284E+00
 PARAMETER:  1.0268E-01  5.6974E-01  2.7758E-01 -3.4004E-01  3.3360E-01  4.1290E-02  5.9236E-02  5.5278E-01  1.8472E-01  3.7123E-01
             1.2800E-01
 GRADIENT:   1.4117E+00  5.4282E+00  1.1779E+00  3.5478E+00 -2.3228E+00 -1.6825E-01 -3.0328E-01 -2.1568E-01 -5.8413E-01  1.5193E-01
            -2.5819E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2106.88095041192        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1422
 NPARAMETR:  1.0028E+00  1.6212E+00  1.1673E+00  6.2957E-01  1.2664E+00  9.4306E-01  9.5207E-01  1.5712E+00  1.1021E+00  1.3131E+00
             1.0284E+00
 PARAMETER:  1.0279E-01  5.8318E-01  2.5467E-01 -3.6273E-01  3.3615E-01  4.1376E-02  5.0883E-02  5.5182E-01  1.9718E-01  3.7242E-01
             1.2804E-01
 GRADIENT:   1.4577E+00  5.4029E+00  1.3272E+00  3.2896E+00 -2.5431E+00 -1.7299E-01 -2.5288E-01 -2.2465E-01 -5.8045E-01  1.5007E-01
            -2.2391E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2106.88138682289        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     1612
 NPARAMETR:  1.0029E+00  1.6418E+00  1.1388E+00  6.1584E-01  1.2688E+00  9.4314E-01  9.4471E-01  1.5659E+00  1.1153E+00  1.3140E+00
             1.0285E+00
 PARAMETER:  1.0291E-01  5.9578E-01  2.3001E-01 -3.8477E-01  3.3809E-01  4.1461E-02  4.3121E-02  5.4847E-01  2.0912E-01  3.7307E-01
             1.2807E-01
 GRADIENT:   1.5014E+00  5.4425E+00  1.4601E+00  3.1114E+00 -2.7439E+00 -1.7795E-01 -2.1311E-01 -2.3431E-01 -5.8285E-01  1.4881E-01
            -2.0833E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2106.91115600248        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     1807             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0030E+00  1.6529E+00  1.0933E+00  6.0136E-01  1.2735E+00  9.4375E-01  9.3909E-01  1.5695E+00  1.1344E+00  1.3141E+00
             1.0285E+00
 PARAMETER:  1.0304E-01  6.0255E-01  1.8923E-01 -4.0856E-01  3.4180E-01  4.2104E-02  3.7156E-02  5.5073E-01  2.2612E-01  3.7315E-01
             1.2808E-01
 GRADIENT:   4.3044E+02  5.5802E+02  3.2215E-02  1.1614E+02  2.1214E+01  4.4033E+01  7.2413E+00  1.1532E+00  7.6530E+00  5.0466E+00
             1.7847E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2106.93805312263        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1985
 NPARAMETR:  1.0008E+00  1.6812E+00  1.0117E+00  5.8741E-01  1.2597E+00  9.4370E-01  9.3476E-01  1.4530E+00  1.1374E+00  1.3001E+00
             1.0267E+00
 PARAMETER:  1.0083E-01  6.1948E-01  1.1161E-01 -4.3203E-01  3.3088E-01  4.2057E-02  3.2537E-02  4.7360E-01  2.2872E-01  3.6243E-01
             1.2640E-01
 GRADIENT:  -4.3590E+00  3.4957E+00  6.7002E-01  3.3815E+00 -6.1677E-02 -8.3885E-02  2.5645E-01 -1.9005E-01 -3.9976E-01  3.4893E-01
            -5.1313E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2107.03373822610        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2166             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0035E+00  1.7315E+00  8.2367E-01  5.4169E-01  1.2318E+00  9.4463E-01  9.1712E-01  1.2539E+00  1.1760E+00  1.2635E+00
             1.0257E+00
 PARAMETER:  1.0353E-01  6.4898E-01 -9.3989E-02 -5.1306E-01  3.0849E-01  4.3043E-02  1.3478E-02  3.2629E-01  2.6214E-01  3.3391E-01
             1.2535E-01
 GRADIENT:   4.3361E+02  6.5984E+02  5.8650E-01  1.1825E+02  1.7080E+01  4.4330E+01  7.9977E+00  2.3735E-01  7.2888E+00  4.2838E+00
             1.2846E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2107.04703982216        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2350             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0038E+00  1.7367E+00  8.2124E-01  5.4244E-01  1.2325E+00  9.4467E-01  9.1483E-01  1.2473E+00  1.1817E+00  1.2622E+00
             1.0259E+00
 PARAMETER:  1.0375E-01  6.5199E-01 -9.6938E-02 -5.1169E-01  3.0907E-01  4.3083E-02  1.0986E-02  3.2099E-01  2.6693E-01  3.3285E-01
             1.2555E-01
 GRADIENT:   4.3481E+02  6.6998E+02  2.2334E-01  1.2130E+02  1.8076E+01  4.4289E+01  7.7523E+00  2.3275E-01  7.7366E+00  4.0311E+00
             1.3048E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2107.04773265569        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     2530
 NPARAMETR:  1.0038E+00  1.7369E+00  8.2057E-01  5.4201E-01  1.2326E+00  9.4468E-01  9.1409E-01  1.2450E+00  1.1809E+00  1.2621E+00
             1.0259E+00
 PARAMETER:  1.0376E-01  6.5210E-01 -9.7759E-02 -5.1248E-01  3.0913E-01  4.3090E-02  1.0177E-02  3.1911E-01  2.6630E-01  3.3276E-01
             1.2555E-01
 GRADIENT:   1.7098E+00 -6.7450E+00 -5.0527E-02  2.4733E-01  1.0451E-01  1.3757E-01  4.8096E-02  3.2683E-02  4.5785E-02  6.0622E-02
             3.0503E-02

0ITERATION NO.:   71    OBJECTIVE VALUE:  -2107.04773265569        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     2554
 NPARAMETR:  1.0038E+00  1.7369E+00  8.2057E-01  5.4201E-01  1.2326E+00  9.4468E-01  9.1409E-01  1.2450E+00  1.1809E+00  1.2621E+00
             1.0259E+00
 PARAMETER:  1.0376E-01  6.5210E-01 -9.7759E-02 -5.1248E-01  3.0913E-01  4.3090E-02  1.0177E-02  3.1911E-01  2.6630E-01  3.3276E-01
             1.2555E-01
 GRADIENT:  -1.1857E-02 -5.2030E-01 -5.0270E-02  4.5453E-01  1.8006E-01 -2.2585E-03  3.7520E-02  2.1232E-02  2.5426E-02  3.9283E-02
             3.1138E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2554
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.1231E-04 -1.7055E-02 -2.9161E-02  1.8879E-02 -3.4923E-02
 SE:             2.9862E-02  2.5136E-02  9.5341E-03  1.8943E-02  2.3405E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8898E-01  4.9745E-01  2.2237E-03  3.1895E-01  1.3567E-01

 ETASHRINKSD(%)  1.0000E-10  1.5791E+01  6.8060E+01  3.6539E+01  2.1591E+01
 ETASHRINKVR(%)  1.0000E-10  2.9088E+01  8.9798E+01  5.9727E+01  3.8520E+01
 EBVSHRINKSD(%)  3.7972E-01  1.5402E+01  7.4897E+01  4.0934E+01  1.6549E+01
 EBVSHRINKVR(%)  7.5800E-01  2.8432E+01  9.3699E+01  6.5112E+01  3.0359E+01
 RELATIVEINF(%)  9.8986E+01  3.1845E+00  6.9894E-01  1.2942E+00  2.2642E+01
 EPSSHRINKSD(%)  3.3907E+01
 EPSSHRINKVR(%)  5.6317E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2107.0477326556852     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1188.1091994510125     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    40.63
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2107.048       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.74E+00  8.21E-01  5.42E-01  1.23E+00  9.45E-01  9.14E-01  1.24E+00  1.18E+00  1.26E+00  1.03E+00
 


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
 #CPUT: Total CPU Time in Seconds,       40.671
Stop Time:
Fri Oct  1 11:56:21 CDT 2021

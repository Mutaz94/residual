Fri Oct  1 14:00:31 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat9.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m9.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2061.91812215701        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1408E+02 -1.7463E+01 -5.1729E+00 -1.3684E+01  1.9031E+01  1.7413E+01  6.2188E+00  1.0910E+01  7.9085E+00  9.7585E-01
            -2.2689E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2069.76952494474        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.2083E-01  9.3950E-01  1.0913E+00  1.1008E+00  9.9681E-01  9.9876E-01  9.1989E-01  8.0511E-01  9.0977E-01  1.0069E+00
             1.0147E+00
 PARAMETER:  1.7519E-02  3.7594E-02  1.8737E-01  1.9606E-01  9.6800E-02  9.8761E-02  1.6500E-02 -1.1677E-01  5.4347E-03  1.0690E-01
             1.1455E-01
 GRADIENT:  -3.2209E+01  2.2596E+01  1.2519E+01  9.1849E+00 -4.6539E+00  2.6550E-01 -4.1792E+00 -5.9395E-01 -1.7297E+01 -9.3677E+00
             4.3585E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2071.22895184328        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  9.3006E-01  8.6100E-01  9.9420E-01  1.1488E+00  9.1459E-01  9.9392E-01  8.0921E-01  5.9704E-01  9.6810E-01  1.0279E+00
             1.0023E+00
 PARAMETER:  2.7489E-02 -4.9661E-02  9.4186E-02  2.3874E-01  1.0720E-02  9.3905E-02 -1.1170E-01 -4.1578E-01  6.7583E-02  1.2752E-01
             1.0230E-01
 GRADIENT:  -9.6051E+00  2.3068E+01  6.1615E+00  2.8626E+01 -9.9955E+00 -1.0938E+00 -2.2223E+00 -2.6779E+00  9.5977E-02 -2.0071E+00
            -7.8366E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2072.53586962792        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  9.3398E-01  7.4889E-01  9.3979E-01  1.2055E+00  8.4413E-01  9.9426E-01  1.2433E+00  5.8099E-01  8.5427E-01  9.3908E-01
             9.9576E-01
 PARAMETER:  3.1703E-02 -1.8917E-01  3.7904E-02  2.8692E-01 -6.9451E-02  9.4244E-02  3.1781E-01 -4.4302E-01 -5.7509E-02  3.7150E-02
             9.5749E-02
 GRADIENT:   1.6592E+00  8.5447E+00 -1.0173E+00  1.5230E+01  9.1110E-01 -6.6111E-01 -1.0812E+00 -3.8209E-01 -3.8645E+00 -1.4179E+00
            -1.4223E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2073.80245334605        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.2908E-01  4.5747E-01  1.2013E+00  1.4001E+00  8.7124E-01  9.9174E-01  1.3489E+00  7.8896E-01  8.2526E-01  1.0482E+00
             1.0046E+00
 PARAMETER:  2.6436E-02 -6.8205E-01  2.8344E-01  4.3656E-01 -3.7832E-02  9.1705E-02  3.9925E-01 -1.3704E-01 -9.2059E-02  1.4705E-01
             1.0463E-01
 GRADIENT:   1.6111E+00  8.2606E+00  5.8947E+00  2.0151E+01 -1.0671E+01  2.4484E-01  1.2261E+00 -2.5024E-01  3.2879E+00  1.8752E+00
             5.2249E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2074.37412912877        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      878
 NPARAMETR:  9.2503E-01  2.5515E-01  1.3081E+00  1.5230E+00  8.6263E-01  9.8885E-01  1.4719E+00  9.0590E-01  7.6710E-01  1.0579E+00
             9.9694E-01
 PARAMETER:  2.2069E-02 -1.2659E+00  3.6859E-01  5.2065E-01 -4.7768E-02  8.8784E-02  4.8658E-01  1.1694E-03 -1.6514E-01  1.5626E-01
             9.6932E-02
 GRADIENT:   6.5452E-02  2.9988E+00  2.5742E+00  1.2474E+01 -3.5617E+00  1.7680E-01  3.2190E-01 -4.3865E-02 -2.2719E+00  2.2737E-01
            -7.8883E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2074.60725073109        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1061
 NPARAMETR:  9.2412E-01  2.0679E-01  1.3080E+00  1.5461E+00  8.4911E-01  9.8764E-01  6.4005E-01  9.1474E-01  7.6617E-01  1.0541E+00
             9.9742E-01
 PARAMETER:  2.1087E-02 -1.4761E+00  3.6847E-01  5.3575E-01 -6.3561E-02  8.7567E-02 -3.4621E-01  1.0889E-02 -1.6635E-01  1.5264E-01
             9.7417E-02
 GRADIENT:  -1.3146E-01  1.3132E+00  2.1940E+00  3.2673E+00 -4.3081E+00  2.0225E-02  8.6296E-02 -3.0793E-01 -1.2518E+00 -1.9515E-01
            -2.9592E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2074.66661122362        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1241
 NPARAMETR:  9.2439E-01  1.9393E-01  1.3117E+00  1.5493E+00  8.4992E-01  9.8755E-01  9.5785E-02  9.2663E-01  7.6565E-01  1.0579E+00
             9.9750E-01
 PARAMETER:  2.1376E-02 -1.5402E+00  3.7129E-01  5.3783E-01 -6.2615E-02  8.7467E-02 -2.2457E+00  2.3796E-02 -1.6703E-01  1.5629E-01
             9.7492E-02
 GRADIENT:   1.1618E+00  2.0697E-03 -5.3710E-01 -7.6869E+00 -2.9064E-01  6.6823E-02  2.8260E-03  2.6766E-01 -3.6436E-01  2.4566E-01
             1.4580E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2074.67090393713        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1425
 NPARAMETR:  9.2443E-01  1.9619E-01  1.3114E+00  1.5483E+00  8.5072E-01  9.8756E-01  1.7373E-02  9.2758E-01  7.6673E-01  1.0591E+00
             9.9758E-01
 PARAMETER:  2.1421E-02 -1.5287E+00  3.7113E-01  5.3713E-01 -6.1669E-02  8.7481E-02 -3.9528E+00  2.4819E-02 -1.6562E-01  1.5737E-01
             9.7576E-02
 GRADIENT:   1.1654E+00  1.7648E-02 -9.1736E-01 -7.0157E+00 -1.7397E-02  5.6552E-02  1.3338E-04  3.9359E-01 -1.8176E-01  3.9080E-01
             2.5602E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2074.67475208170        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1609             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2447E-01  1.9767E-01  1.3119E+00  1.5470E+00  8.5136E-01  9.8760E-01  1.0000E-02  9.2616E-01  7.6738E-01  1.0588E+00
             9.9757E-01
 PARAMETER:  2.1465E-02 -1.5212E+00  3.7149E-01  5.3632E-01 -6.0919E-02  8.7523E-02 -5.8818E+00  2.3292E-02 -1.6478E-01  1.5716E-01
             9.7568E-02
 GRADIENT:   3.6274E+02  1.9818E+01  7.7759E+00  7.8983E+02  7.3131E+00  2.9518E+01  0.0000E+00  4.8736E-01  1.3195E+01  1.6065E+00
             1.1991E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2074.67728591428        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1796             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2451E-01  1.9984E-01  1.3115E+00  1.5458E+00  8.5236E-01  9.8763E-01  1.0000E-02  9.2714E-01  7.6795E-01  1.0595E+00
             9.9762E-01
 PARAMETER:  2.1505E-02 -1.5102E+00  3.7114E-01  5.3557E-01 -5.9741E-02  8.7549E-02 -5.8818E+00  2.4346E-02 -1.6403E-01  1.5777E-01
             9.7614E-02
 GRADIENT:   3.6272E+02  2.0086E+01  7.0882E+00  7.8742E+02  8.1147E+00  2.9515E+01  0.0000E+00  6.1773E-01  1.3088E+01  1.6560E+00
             1.2700E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2074.67999214255        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1978
 NPARAMETR:  9.2446E-01  2.0077E-01  1.3132E+00  1.5457E+00  8.5205E-01  9.8763E-01  1.0000E-02  9.2042E-01  7.6829E-01  1.0584E+00
             9.9744E-01
 PARAMETER:  2.1456E-02 -1.5056E+00  3.7246E-01  5.3547E-01 -6.0105E-02  8.7550E-02 -5.8818E+00  1.7079E-02 -1.6359E-01  1.5673E-01
             9.7433E-02
 GRADIENT:   1.0279E+00  8.2278E-02  5.4074E-01 -6.7286E+00 -8.2154E-01  5.3534E-02  0.0000E+00 -1.7217E-01 -5.2342E-02 -1.3510E-01
            -1.1984E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2074.68319021967        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2165
 NPARAMETR:  9.2455E-01  2.0280E-01  1.3134E+00  1.5443E+00  8.5251E-01  9.8767E-01  1.0000E-02  9.1936E-01  7.6877E-01  1.0586E+00
             9.9742E-01
 PARAMETER:  2.1551E-02 -1.4955E+00  3.7263E-01  5.3458E-01 -5.9575E-02  8.7593E-02 -5.8818E+00  1.5921E-02 -1.6296E-01  1.5697E-01
             9.7421E-02
 GRADIENT:   1.1504E+00  7.7171E-02  8.6392E-01 -7.0848E+00 -1.1062E+00  5.9280E-02  0.0000E+00 -2.3192E-01 -1.0818E-01 -1.7232E-01
            -1.6651E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2074.68643778319        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2352
 NPARAMETR:  9.2459E-01  2.0451E-01  1.3134E+00  1.5431E+00  8.5309E-01  9.8771E-01  1.0000E-02  9.1911E-01  7.6941E-01  1.0591E+00
             9.9745E-01
 PARAMETER:  2.1594E-02 -1.4871E+00  3.7264E-01  5.3376E-01 -5.8888E-02  8.7630E-02 -5.8818E+00  1.5652E-02 -1.6213E-01  1.5741E-01
             9.7449E-02
 GRADIENT:   1.1767E+00  1.9790E-02  8.2420E-01 -7.6299E+00 -9.6333E-01  6.3838E-02  0.0000E+00 -2.1886E-01 -4.7503E-02 -1.6229E-01
            -1.4178E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2074.68911721819        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2539
 NPARAMETR:  9.2462E-01  2.0669E-01  1.3136E+00  1.5419E+00  8.5357E-01  9.8773E-01  1.0000E-02  9.1709E-01  7.7001E-01  1.0592E+00
             9.9742E-01
 PARAMETER:  2.1632E-02 -1.4765E+00  3.7274E-01  5.3300E-01 -5.8326E-02  8.7657E-02 -5.8818E+00  1.3445E-02 -1.6135E-01  1.5756E-01
             9.7420E-02
 GRADIENT:   1.1621E+00  6.5589E-02  1.1736E+00 -7.2856E+00 -1.2324E+00  6.1231E-02  0.0000E+00 -3.4027E-01 -6.7880E-02 -2.4818E-01
            -2.2895E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -2074.69250801940        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     2725             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2466E-01  2.0823E-01  1.3133E+00  1.5409E+00  8.5411E-01  9.8776E-01  1.0000E-02  9.1799E-01  7.7051E-01  1.0598E+00
             9.9747E-01
 PARAMETER:  2.1666E-02 -1.4691E+00  3.7251E-01  5.3234E-01 -5.7693E-02  8.7685E-02 -5.8818E+00  1.4434E-02 -1.6070E-01  1.5804E-01
             9.7465E-02
 GRADIENT:   3.6293E+02  2.1360E+01  9.3030E+00  7.7727E+02  6.2572E+00  2.9548E+01  0.0000E+00 -2.8692E-02  1.2865E+01  1.2145E+00
             8.4377E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -2074.69480151834        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2912             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2469E-01  2.1033E-01  1.3133E+00  1.5397E+00  8.5452E-01  9.8779E-01  1.0000E-02  9.1570E-01  7.7111E-01  1.0597E+00
             9.9744E-01
 PARAMETER:  2.1703E-02 -1.4591E+00  3.7254E-01  5.3158E-01 -5.7216E-02  8.7712E-02 -5.8818E+00  1.1939E-02 -1.5993E-01  1.5799E-01
             9.7435E-02
 GRADIENT:   3.6297E+02  2.1688E+01  9.6828E+00  7.7502E+02  5.9812E+00  2.9554E+01  0.0000E+00 -1.7095E-01  1.2787E+01  1.0942E+00
             7.4711E-01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -2074.69681560290        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     3094
 NPARAMETR:  9.2465E-01  2.1072E-01  1.3118E+00  1.5396E+00  8.5514E-01  9.8778E-01  1.0000E-02  9.2198E-01  7.7132E-01  1.0610E+00
             9.9763E-01
 PARAMETER:  2.1661E-02 -1.4572E+00  3.7140E-01  5.3151E-01 -5.6492E-02  8.7707E-02 -5.8818E+00  1.8770E-02 -1.5965E-01  1.5921E-01
             9.7625E-02
 GRADIENT:   1.0602E+00 -5.0038E-04 -5.3013E-01 -6.8434E+00  3.0312E-01  5.5228E-02  0.0000E+00  1.7522E-01 -5.1890E-02  9.7617E-02
             1.1883E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -2074.69947926143        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3281
 NPARAMETR:  9.2464E-01  2.1275E-01  1.3114E+00  1.5388E+00  8.5562E-01  9.8779E-01  1.0000E-02  9.2125E-01  7.7188E-01  1.0611E+00
             9.9764E-01
 PARAMETER:  2.1652E-02 -1.4476E+00  3.7113E-01  5.3097E-01 -5.5925E-02  8.7718E-02 -5.8818E+00  1.7972E-02 -1.5892E-01  1.5929E-01
             9.7632E-02
 GRADIENT:   9.4723E-01  7.9896E-02 -5.9894E-01 -5.8492E+00  3.7164E-01  4.5687E-02  0.0000E+00  1.6268E-01 -8.2852E-02  5.8110E-02
             9.8906E-02

0ITERATION NO.:   95    OBJECTIVE VALUE:  -2074.70226532811        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3468
 NPARAMETR:  9.2472E-01  2.1459E-01  1.3110E+00  1.5375E+00  8.5609E-01  9.8783E-01  1.0000E-02  9.2161E-01  7.7234E-01  1.0615E+00
             9.9766E-01
 PARAMETER:  2.1735E-02 -1.4390E+00  3.7080E-01  5.3015E-01 -5.5383E-02  8.7754E-02 -5.8818E+00  1.8370E-02 -1.5833E-01  1.5969E-01
             9.7657E-02
 GRADIENT:   1.0568E+00  4.8560E-02 -7.8234E-01 -6.1447E+00  5.3577E-01  5.0506E-02  0.0000E+00  2.4152E-01 -1.3809E-01  1.1261E-01
             1.4011E-01

0ITERATION NO.:  100    OBJECTIVE VALUE:  -2074.70410239983        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3655
 NPARAMETR:  9.2480E-01  2.1605E-01  1.3105E+00  1.5360E+00  8.5667E-01  9.8788E-01  1.0000E-02  9.2258E-01  7.7291E-01  1.0622E+00
             9.9772E-01
 PARAMETER:  2.1827E-02 -1.4322E+00  3.7038E-01  5.2918E-01 -5.4703E-02  8.7802E-02 -5.8818E+00  1.9415E-02 -1.5759E-01  1.6037E-01
             9.7718E-02
 GRADIENT:   1.2133E+00 -1.1227E-01 -1.2206E+00 -7.5284E+00  1.0877E+00  6.2998E-02  0.0000E+00  3.7655E-01 -8.2454E-02  2.1257E-01
             2.5021E-01

0ITERATION NO.:  105    OBJECTIVE VALUE:  -2074.70725077023        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     3842
 NPARAMETR:  9.2483E-01  2.1799E-01  1.3102E+00  1.5351E+00  8.5688E-01  9.8789E-01  1.0000E-02  9.2167E-01  7.7335E-01  1.0624E+00
             9.9771E-01
 PARAMETER:  2.1853E-02 -1.4233E+00  3.7021E-01  5.2861E-01 -5.4457E-02  8.7819E-02 -5.8818E+00  1.8428E-02 -1.5702E-01  1.6052E-01
             9.7707E-02
 GRADIENT:   1.1813E+00 -1.5395E-02 -9.8812E-01 -6.7501E+00  7.1229E-01  5.8247E-02  0.0000E+00  3.4537E-01 -1.5629E-01  2.1200E-01
             2.1032E-01

0ITERATION NO.:  110    OBJECTIVE VALUE:  -2074.71001149808        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     4028             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2486E-01  2.1914E-01  1.3103E+00  1.5340E+00  8.5709E-01  9.8793E-01  1.0000E-02  9.1972E-01  7.7393E-01  1.0624E+00
             9.9770E-01
 PARAMETER:  2.1890E-02 -1.4180E+00  3.7023E-01  5.2787E-01 -5.4211E-02  8.7854E-02 -5.8818E+00  1.6315E-02 -1.5627E-01  1.6049E-01
             9.7694E-02
 GRADIENT:   3.6290E+02  2.2691E+01  7.7438E+00  7.6239E+02  7.7304E+00  2.9557E+01  0.0000E+00  4.3038E-01  1.2492E+01  1.5416E+00
             1.1613E+00

0ITERATION NO.:  115    OBJECTIVE VALUE:  -2074.71220473415        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     4215             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2489E-01  2.2101E-01  1.3096E+00  1.5330E+00  8.5759E-01  9.8794E-01  1.0000E-02  9.1989E-01  7.7441E-01  1.0625E+00
             9.9772E-01
 PARAMETER:  2.1920E-02 -1.4095E+00  3.6970E-01  5.2725E-01 -5.3634E-02  8.7871E-02 -5.8818E+00  1.6496E-02 -1.5565E-01  1.6064E-01
             9.7719E-02
 GRADIENT:   3.6288E+02  2.2962E+01  7.3970E+00  7.6060E+02  8.0758E+00  2.9554E+01  0.0000E+00  5.0026E-01  1.2389E+01  1.5507E+00
             1.1916E+00

0ITERATION NO.:  120    OBJECTIVE VALUE:  -2074.71361428856        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     4397
 NPARAMETR:  9.2485E-01  2.2217E-01  1.3110E+00  1.5329E+00  8.5715E-01  9.8794E-01  1.0000E-02  9.1368E-01  7.7470E-01  1.0620E+00
             9.9755E-01
 PARAMETER:  2.1875E-02 -1.4043E+00  3.7075E-01  5.2715E-01 -5.4145E-02  8.7868E-02 -5.8818E+00  9.7200E-03 -1.5528E-01  1.6011E-01
             9.7550E-02
 GRADIENT:   1.0320E+00  1.6423E-01  8.5984E-01 -5.9538E+00 -9.8151E-01  5.1823E-02  0.0000E+00 -2.1285E-01 -9.6270E-02 -1.3677E-01
            -1.5934E-01

0ITERATION NO.:  125    OBJECTIVE VALUE:  -2074.71615261677        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     4584
 NPARAMETR:  9.2493E-01  2.2346E-01  1.3106E+00  1.5316E+00  8.5745E-01  9.8798E-01  1.0000E-02  9.1348E-01  7.7515E-01  1.0622E+00
             9.9757E-01
 PARAMETER:  2.1959E-02 -1.3985E+00  3.7052E-01  5.2634E-01 -5.3796E-02  8.7908E-02 -5.8818E+00  9.5072E-03 -1.5470E-01  1.6030E-01
             9.7568E-02
 GRADIENT:   1.1730E+00  6.5018E-02  8.3752E-01 -6.9738E+00 -8.7211E-01  6.2502E-02  0.0000E+00 -1.8838E-01 -7.0382E-02 -1.2949E-01
            -1.3313E-01

0ITERATION NO.:  130    OBJECTIVE VALUE:  -2074.71811300968        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     4771
 NPARAMETR:  9.2496E-01  2.2530E-01  1.3105E+00  1.5306E+00  8.5772E-01  9.8800E-01  1.0000E-02  9.1150E-01  7.7569E-01  1.0622E+00
             9.9755E-01
 PARAMETER:  2.1992E-02 -1.3903E+00  3.7038E-01  5.2565E-01 -5.3475E-02  8.7932E-02 -5.8818E+00  7.3368E-03 -1.5400E-01  1.6034E-01
             9.7543E-02
 GRADIENT:   1.1615E+00  1.0104E-01  1.1385E+00 -6.7631E+00 -1.1173E+00  6.1211E-02  0.0000E+00 -2.9398E-01 -7.9992E-02 -2.0157E-01
            -2.0542E-01

0ITERATION NO.:  135    OBJECTIVE VALUE:  -2074.72068714927        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     4957             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2498E-01  2.2650E-01  1.3098E+00  1.5297E+00  8.5807E-01  9.8803E-01  1.0000E-02  9.1221E-01  7.7614E-01  1.0625E+00
             9.9759E-01
 PARAMETER:  2.2021E-02 -1.3850E+00  3.6990E-01  5.2507E-01 -5.3070E-02  8.7955E-02 -5.8818E+00  8.1190E-03 -1.5343E-01  1.6062E-01
             9.7586E-02
 GRADIENT:   3.6303E+02  2.3838E+01  9.1465E+00  7.5406E+02  6.4087E+00  2.9577E+01  0.0000E+00  1.0993E-02  1.2242E+01  1.2763E+00
             8.6896E-01

0ITERATION NO.:  140    OBJECTIVE VALUE:  -2074.72267569098        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     5144             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2501E-01  2.2825E-01  1.3095E+00  1.5287E+00  8.5832E-01  9.8805E-01  1.0000E-02  9.1046E-01  7.7666E-01  1.0625E+00
             9.9757E-01
 PARAMETER:  2.2053E-02 -1.3773E+00  3.6967E-01  5.2440E-01 -5.2774E-02  8.7977E-02 -5.8818E+00  6.1926E-03 -1.5275E-01  1.6061E-01
             9.7565E-02
 GRADIENT:   3.6305E+02  2.4100E+01  9.3600E+00  7.5205E+02  6.2468E+00  2.9580E+01  0.0000E+00 -7.5041E-02  1.2180E+01  1.2086E+00
             8.0941E-01

0ITERATION NO.:  145    OBJECTIVE VALUE:  -2074.72381781954        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     5326
 NPARAMETR:  9.2498E-01  2.2879E-01  1.3080E+00  1.5285E+00  8.5881E-01  9.8804E-01  1.0000E-02  9.1617E-01  7.7686E-01  1.0635E+00
             9.9775E-01
 PARAMETER:  2.2016E-02 -1.3749E+00  3.6848E-01  5.2431E-01 -5.2206E-02  8.7970E-02 -5.8818E+00  1.2444E-02 -1.5250E-01  1.6157E-01
             9.7743E-02
 GRADIENT:   1.0768E+00  2.6472E-02 -5.9315E-01 -6.3879E+00  3.7734E-01  5.4804E-02  0.0000E+00  2.2877E-01 -7.6144E-02  1.4137E-01
             1.4780E-01

0ITERATION NO.:  150    OBJECTIVE VALUE:  -2074.72517440636        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     5513
 NPARAMETR:  9.2506E-01  2.3012E-01  1.3073E+00  1.5273E+00  8.5929E-01  9.8808E-01  1.0000E-02  9.1689E-01  7.7733E-01  1.0639E+00
             9.9779E-01
 PARAMETER:  2.2101E-02 -1.3692E+00  3.6794E-01  5.2347E-01 -5.1651E-02  8.8010E-02 -5.8818E+00  1.3228E-02 -1.5189E-01  1.6193E-01
             9.7788E-02
 GRADIENT:   1.2215E+00 -1.1259E-01 -1.0383E+00 -7.4313E+00  9.4469E-01  6.5535E-02  0.0000E+00  3.4413E-01 -5.4482E-02  1.9564E-01
             2.3328E-01

0ITERATION NO.:  155    OBJECTIVE VALUE:  -2074.72779962580        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     5700
 NPARAMETR:  9.2508E-01  2.3186E-01  1.3070E+00  1.5265E+00  8.5939E-01  9.8809E-01  1.0000E-02  9.1578E-01  7.7769E-01  1.0639E+00
             9.9777E-01
 PARAMETER:  2.2121E-02 -1.3616E+00  3.6770E-01  5.2300E-01 -5.1532E-02  8.8020E-02 -5.8818E+00  1.2022E-02 -1.5142E-01  1.6198E-01
             9.7770E-02
 GRADIENT:   1.1829E+00  3.7991E-03 -7.8492E-01 -6.5512E+00  5.4062E-01  5.8957E-02  0.0000E+00  3.0004E-01 -1.3894E-01  1.8504E-01
             1.8311E-01

0ITERATION NO.:  160    OBJECTIVE VALUE:  -2074.72955334988        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     5886             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2511E-01  2.3310E-01  1.3065E+00  1.5255E+00  8.5964E-01  9.8812E-01  1.0000E-02  9.1539E-01  7.7820E-01  1.0643E+00
             9.9780E-01
 PARAMETER:  2.2153E-02 -1.3563E+00  3.6738E-01  5.2234E-01 -5.1247E-02  8.8048E-02 -5.8818E+00  1.1593E-02 -1.5077E-01  1.6230E-01
             9.7794E-02
 GRADIENT:   3.6294E+02  2.4609E+01  7.4880E+00  7.4514E+02  7.7689E+00  2.9574E+01  0.0000E+00  5.2245E-01  1.1982E+01  1.6574E+00
             1.2141E+00

0ITERATION NO.:  165    OBJECTIVE VALUE:  -2074.73073589912        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     6068
 NPARAMETR:  9.2506E-01  2.3409E-01  1.3077E+00  1.5254E+00  8.5935E-01  9.8811E-01  1.0000E-02  9.0865E-01  7.7845E-01  1.0633E+00
             9.9761E-01
 PARAMETER:  2.2108E-02 -1.3521E+00  3.6826E-01  5.2229E-01 -5.1576E-02  8.8039E-02 -5.8818E+00  4.2060E-03 -1.5045E-01  1.6141E-01
             9.7605E-02
 GRADIENT:   1.0457E+00  1.5840E-01  7.8799E-01 -5.8814E+00 -8.1632E-01  5.3070E-02  0.0000E+00 -2.1978E-01 -8.0243E-02 -1.5031E-01
            -1.6610E-01

0ITERATION NO.:  170    OBJECTIVE VALUE:  -2074.73280023166        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     6255
 NPARAMETR:  9.2514E-01  2.3519E-01  1.3073E+00  1.5243E+00  8.5957E-01  9.8815E-01  1.0000E-02  9.0861E-01  7.7886E-01  1.0634E+00
             9.9763E-01
 PARAMETER:  2.2187E-02 -1.3474E+00  3.6799E-01  5.2155E-01 -5.1326E-02  8.8078E-02 -5.8818E+00  4.1635E-03 -1.4992E-01  1.6151E-01
             9.7629E-02
 GRADIENT:   1.1829E+00  5.4650E-02  7.5848E-01 -6.8979E+00 -7.2106E-01  6.3672E-02  0.0000E+00 -1.8694E-01 -5.0763E-02 -1.4119E-01
            -1.3103E-01

0ITERATION NO.:  175    OBJECTIVE VALUE:  -2074.73446548120        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     6442
 NPARAMETR:  9.2516E-01  2.3679E-01  1.3070E+00  1.5234E+00  8.5979E-01  9.8817E-01  1.0000E-02  9.0693E-01  7.7935E-01  1.0634E+00
             9.9761E-01
 PARAMETER:  2.2216E-02 -1.3406E+00  3.6776E-01  5.2092E-01 -5.1068E-02  8.8098E-02 -5.8818E+00  2.3106E-03 -1.4929E-01  1.6150E-01
             9.7611E-02
 GRADIENT:   1.1806E+00  7.6043E-02  9.7015E-01 -6.7848E+00 -8.7346E-01  6.2770E-02  0.0000E+00 -2.6894E-01 -5.2013E-02 -2.0530E-01
            -1.8607E-01

0ITERATION NO.:  180    OBJECTIVE VALUE:  -2074.73613893732        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     6628             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2518E-01  2.3825E-01  1.3066E+00  1.5226E+00  8.5999E-01  9.8818E-01  1.0000E-02  9.0627E-01  7.7973E-01  1.0636E+00
             9.9761E-01
 PARAMETER:  2.2238E-02 -1.3345E+00  3.6746E-01  5.2043E-01 -5.0839E-02  8.8113E-02 -5.8818E+00  1.5813E-03 -1.4881E-01  1.6163E-01
             9.7607E-02
 GRADIENT:   3.6309E+02  2.5496E+01  9.3208E+00  7.3989E+02  6.1761E+00  2.9592E+01  0.0000E+00 -7.7619E-02  1.1809E+01  1.2277E+00
             7.9637E-01

0ITERATION NO.:  185    OBJECTIVE VALUE:  -2074.73714100146        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     6810
 NPARAMETR:  9.2511E-01  2.3856E-01  1.3053E+00  1.5227E+00  8.6041E-01  9.8816E-01  1.0000E-02  9.1104E-01  7.7998E-01  1.0643E+00
             9.9777E-01
 PARAMETER:  2.2152E-02 -1.3331E+00  3.6642E-01  5.2048E-01 -5.0348E-02  8.8094E-02 -5.8818E+00  6.8299E-03 -1.4848E-01  1.6231E-01
             9.7771E-02
 GRADIENT:   9.6112E-01  9.6252E-02 -4.0498E-01 -5.6920E+00  2.1956E-01  4.9278E-02  0.0000E+00  1.4222E-01 -4.4145E-02  7.0777E-02
             9.2707E-02

0ITERATION NO.:  190    OBJECTIVE VALUE:  -2074.73926810251        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     7002             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2523E-01  2.4108E-01  1.3059E+00  1.5209E+00  8.6042E-01  9.8822E-01  1.0000E-02  9.0419E-01  7.8062E-01  1.0635E+00
             9.9760E-01
 PARAMETER:  2.2291E-02 -1.3226E+00  3.6689E-01  5.1929E-01 -5.0337E-02  8.8151E-02 -5.8818E+00 -7.1939E-04 -1.4767E-01  1.6160E-01
             9.7602E-02
 GRADIENT:   3.6311E+02  2.5891E+01  9.4692E+00  7.3642E+02  6.0922E+00  2.9597E+01  0.0000E+00 -1.5168E-01  1.1713E+01  1.1466E+00
             7.4829E-01

0ITERATION NO.:  195    OBJECTIVE VALUE:  -2074.74069552419        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     7184
 NPARAMETR:  9.2519E-01  2.4105E-01  1.3045E+00  1.5208E+00  8.6091E-01  9.8822E-01  1.0000E-02  9.0996E-01  7.8084E-01  1.0648E+00
             9.9779E-01
 PARAMETER:  2.2242E-02 -1.3228E+00  3.6581E-01  5.1923E-01 -4.9763E-02  8.8147E-02 -5.8818E+00  5.6465E-03 -1.4739E-01  1.6275E-01
             9.7788E-02
 GRADIENT:   1.0662E+00  3.1201E-03 -4.7436E-01 -6.4856E+00  3.8133E-01  5.7880E-02  0.0000E+00  1.5368E-01 -1.0594E-02  9.0432E-02
             1.1205E-01

0ITERATION NO.:  200    OBJECTIVE VALUE:  -2074.74457322879        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     7376             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2529E-01  2.4481E-01  1.3048E+00  1.5188E+00  8.6097E-01  9.8827E-01  1.0000E-02  9.0642E-01  7.8167E-01  1.0647E+00
             9.9770E-01
 PARAMETER:  2.2355E-02 -1.3073E+00  3.6605E-01  5.1792E-01 -4.9695E-02  8.8198E-02 -5.8818E+00  1.7511E-03 -1.4632E-01  1.6270E-01
             9.7694E-02
 GRADIENT:   3.6305E+02  2.6466E+01  9.1301E+00  7.3237E+02  5.8941E+00  2.9597E+01  0.0000E+00  1.1864E-01  1.1527E+01  1.4357E+00
             9.0405E-01

0ITERATION NO.:  205    OBJECTIVE VALUE:  -2074.74659395004        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     7564
 NPARAMETR:  9.2533E-01  2.4698E-01  1.3046E+00  1.5176E+00  8.6127E-01  9.8830E-01  1.0000E-02  9.0538E-01  7.8229E-01  1.0652E+00
             9.9771E-01
 PARAMETER:  2.2390E-02 -1.2984E+00  3.6586E-01  5.1713E-01 -4.9343E-02  8.8227E-02 -5.8818E+00  5.9650E-04 -1.4553E-01  1.6316E-01
             9.7709E-02
 GRADIENT:   1.1224E+00  2.8875E-01  1.0922E+00 -5.3583E+00 -1.6181E+00  5.5000E-02  0.0000E+00 -1.0598E-01 -1.9132E-01  3.3305E-02
            -1.0589E-01

0ITERATION NO.:  210    OBJECTIVE VALUE:  -2074.74857663229        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     7748
 NPARAMETR:  9.2510E-01  2.4769E-01  1.3037E+00  1.5171E+00  8.6215E-01  9.8821E-01  1.0000E-02  9.0575E-01  7.8278E-01  1.0653E+00
             9.9776E-01
 PARAMETER:  2.2151E-02 -1.2956E+00  3.6524E-01  5.1680E-01 -4.8322E-02  8.8145E-02 -5.8818E+00  1.0066E-03 -1.4491E-01  1.6329E-01
             9.7753E-02
 GRADIENT:   5.6359E-01  1.5343E-01  9.1250E-02 -5.4740E+00 -1.6314E-01  1.6442E-02  0.0000E+00 -1.8859E-02 -7.7148E-02 -2.4541E-02
            -2.8278E-02

0ITERATION NO.:  214    OBJECTIVE VALUE:  -2074.74978805125        NO. OF FUNC. EVALS.: 133
 CUMULATIVE NO. OF FUNC. EVALS.:     7881
 NPARAMETR:  9.2543E-01  2.4964E-01  1.3032E+00  1.5165E+00  8.6233E-01  9.8839E-01  1.0000E-02  9.0575E-01  7.8335E-01  1.0657E+00
             9.9777E-01
 PARAMETER:  2.2500E-02 -1.2877E+00  3.6482E-01  5.1642E-01 -4.8115E-02  8.8317E-02 -5.8818E+00  1.0066E-03 -1.4418E-01  1.6359E-01
             9.7772E-02
 GRADIENT:   1.2627E+00  3.2037E-01  8.6607E-02 -4.0152E+00 -4.4621E-01  7.1908E-02  0.0000E+00  3.0382E-02 -1.0322E-01  4.9704E-02
            -2.0935E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     7881
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.9307E-04 -9.0005E-05 -2.7330E-02 -5.4687E-03 -2.9228E-02
 SE:             2.9844E-02  4.5181E-05  1.5331E-02  2.9494E-02  2.2983E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8415E-01  4.6360E-02  7.4643E-02  8.5290E-01  2.0348E-01

 ETASHRINKSD(%)  1.9862E-02  9.9849E+01  4.8640E+01  1.1900E+00  2.3003E+01
 ETASHRINKVR(%)  3.9721E-02  1.0000E+02  7.3621E+01  2.3658E+00  4.0715E+01
 EBVSHRINKSD(%)  3.5817E-01  9.9855E+01  5.1979E+01  1.6525E+00  2.0113E+01
 EBVSHRINKVR(%)  7.1506E-01  1.0000E+02  7.6940E+01  3.2777E+00  3.6181E+01
 RELATIVEINF(%)  9.7593E+01  1.4741E-05  5.3400E+00  8.2483E+00  1.1260E+01
 EPSSHRINKSD(%)  3.3753E+01
 EPSSHRINKVR(%)  5.6114E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2074.7497880512469     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1155.8112548465742     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:   127.00
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2074.750       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.25E-01  2.50E-01  1.30E+00  1.52E+00  8.62E-01  9.88E-01  1.00E-02  9.06E-01  7.83E-01  1.07E+00  9.98E-01
 


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
 #CPUT: Total CPU Time in Seconds,      127.003
Stop Time:
Fri Oct  1 14:02:39 CDT 2021

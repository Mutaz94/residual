Wed Sep 29 17:18:13 CDT 2021
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
$DATA ../../../../data/spa/S2/dat30.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
 RAW OUTPUT FILE (FILE): m30.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1691.17148111646        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6747E+02  2.2701E+01 -3.7571E+01  1.1583E+02  3.7910E+01  6.4308E+01 -1.0235E+01  6.5156E+00  1.2771E+01 -7.4381E+00
             1.0257E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1695.50507993429        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  9.7870E-01  1.2109E+00  1.2411E+00  8.5895E-01  1.2049E+00  1.0185E+00  1.2392E+00  9.3145E-01  9.4250E-01  1.1829E+00
             9.7987E-01
 PARAMETER:  7.8470E-02  2.9134E-01  3.1598E-01 -5.2041E-02  2.8638E-01  1.1833E-01  3.1448E-01  2.8983E-02  4.0786E-02  2.6793E-01
             7.9661E-02
 GRADIENT:  -6.6652E+01 -1.0560E+00  1.1327E+01 -1.4370E+01  1.4386E+01  1.3438E+00  1.2692E+01 -5.4522E+00 -7.3889E-02 -7.7008E+00
            -6.0443E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1696.72089490659        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  9.8895E-01  1.3764E+00  1.1855E+00  7.7800E-01  1.2604E+00  9.8943E-01  1.0396E+00  1.0483E+00  1.0453E+00  1.2413E+00
             9.7887E-01
 PARAMETER:  8.8890E-02  4.1944E-01  2.7015E-01 -1.5103E-01  3.3140E-01  8.9371E-02  1.3886E-01  1.4717E-01  1.4429E-01  3.1617E-01
             7.8641E-02
 GRADIENT:  -4.9556E+01  2.2711E+01  8.0185E+00  1.6543E+01  1.5139E+01 -9.7528E+00  9.7466E-01 -4.7146E+00 -1.8713E+00 -2.5456E+00
            -6.7901E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1698.82703383891        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      545
 NPARAMETR:  1.0146E+00  1.4926E+00  9.4336E-01  6.8968E-01  1.2066E+00  1.0166E+00  9.6793E-01  1.1473E+00  1.1118E+00  1.1789E+00
             9.8011E-01
 PARAMETER:  1.1448E-01  5.0053E-01  4.1691E-02 -2.7152E-01  2.8777E-01  1.1645E-01  6.7407E-02  2.3742E-01  2.0595E-01  2.6457E-01
             7.9910E-02
 GRADIENT:   5.9720E+00  1.0865E+01  2.7565E+00  7.3871E+00 -7.3830E+00  2.0148E+00 -1.2968E+00  5.2894E-02 -6.1716E-01 -1.0622E-01
            -7.2027E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1698.97029204122        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      725
 NPARAMETR:  1.0147E+00  1.6675E+00  7.5569E-01  5.7611E-01  1.2340E+00  1.0174E+00  9.0610E-01  1.0561E+00  1.2248E+00  1.1866E+00
             9.8020E-01
 PARAMETER:  1.1454E-01  6.1133E-01 -1.8012E-01 -4.5145E-01  3.1025E-01  1.1725E-01  1.3900E-03  1.5460E-01  3.0282E-01  2.7111E-01
             8.0002E-02
 GRADIENT:   4.1193E+00  1.3822E+01  1.5819E+00  8.6068E+00 -5.5686E+00  1.8968E+00 -8.2663E-01  3.4713E-01 -1.1341E+00 -1.0836E-01
            -4.3723E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1699.00003910007        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      905
 NPARAMETR:  1.0147E+00  1.7395E+00  6.7397E-01  5.2939E-01  1.2435E+00  1.0174E+00  8.8185E-01  9.5944E-01  1.2876E+00  1.1894E+00
             9.8041E-01
 PARAMETER:  1.1460E-01  6.5360E-01 -2.9457E-01 -5.3603E-01  3.1794E-01  1.1725E-01 -2.5728E-02  5.8598E-02  3.5282E-01  2.7348E-01
             8.0214E-02
 GRADIENT:   3.4703E+00  1.5201E+01  1.1665E+00  9.3215E+00 -5.2193E+00  1.7211E+00 -9.4299E-01  3.8812E-01 -1.1253E+00 -8.2108E-02
            -3.6316E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1699.26589721168        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1090
 NPARAMETR:  1.0137E+00  1.7629E+00  6.3167E-01  5.0246E-01  1.2529E+00  1.0132E+00  8.7434E-01  7.5621E-01  1.3394E+00  1.1937E+00
             9.8122E-01
 PARAMETER:  1.1362E-01  6.6694E-01 -3.5939E-01 -5.8824E-01  3.2544E-01  1.1315E-01 -3.4287E-02 -1.7944E-01  3.9222E-01  2.7702E-01
             8.1046E-02
 GRADIENT:   1.2578E+00 -3.5939E+00  1.2638E+00  1.7640E+00 -6.0690E-01  5.4267E-02  2.2945E-01  1.7292E-01 -5.4567E-01 -5.4490E-01
            -1.5689E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1699.30006534485        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1266
 NPARAMETR:  1.0119E+00  1.8007E+00  5.7962E-01  4.8174E-01  1.2574E+00  1.0122E+00  8.6386E-01  4.5172E-01  1.3990E+00  1.2035E+00
             9.8231E-01
 PARAMETER:  1.1184E-01  6.8818E-01 -4.4538E-01 -6.3035E-01  3.2908E-01  1.1214E-01 -4.6342E-02 -6.9470E-01  4.3575E-01  2.8519E-01
             8.2153E-02
 GRADIENT:  -3.2240E+00  1.0665E+00 -9.7034E-01  8.1918E+00  3.5881E+00 -4.9500E-01  4.5152E-01  1.2263E-01  1.1341E+00  7.9448E-01
             6.2547E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1699.30193442125        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1446
 NPARAMETR:  1.0117E+00  1.8192E+00  5.6072E-01  4.7041E-01  1.2607E+00  1.0121E+00  8.5876E-01  3.6322E-01  1.4211E+00  1.2051E+00
             9.8234E-01
 PARAMETER:  1.1163E-01  6.9839E-01 -4.7854E-01 -6.5414E-01  3.3164E-01  1.1199E-01 -5.2263E-02 -9.1274E-01  4.5144E-01  2.8653E-01
             8.2178E-02
 GRADIENT:  -3.8667E+00  2.0165E+00 -1.2742E+00  9.0864E+00  3.8614E+00 -6.0004E-01  4.9815E-01  9.4250E-02  1.3281E+00  9.1200E-01
             6.9500E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1699.44161461640        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1633
 NPARAMETR:  1.0142E+00  1.8150E+00  5.5835E-01  4.6090E-01  1.2586E+00  1.0140E+00  8.5626E-01  2.3928E-01  1.4158E+00  1.2009E+00
             9.8135E-01
 PARAMETER:  1.1415E-01  6.9610E-01 -4.8277E-01 -6.7457E-01  3.3004E-01  1.1386E-01 -5.5180E-02 -1.3301E+00  4.4767E-01  2.8306E-01
             8.1177E-02
 GRADIENT:   2.0187E+00 -1.4210E+01  2.1417E+00 -2.4477E+00 -9.3039E-01  2.1032E-01 -1.4591E-02  1.9407E-02 -8.2636E-01  3.5209E-03
            -2.7452E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1699.48085303392        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1815
 NPARAMETR:  1.0144E+00  1.8223E+00  5.4250E-01  4.5694E-01  1.2577E+00  1.0140E+00  8.5399E-01  8.3334E-02  1.4276E+00  1.1989E+00
             9.8121E-01
 PARAMETER:  1.1434E-01  7.0011E-01 -5.1157E-01 -6.8321E-01  3.2929E-01  1.1387E-01 -5.7833E-02 -2.3849E+00  4.5596E-01  2.8137E-01
             8.1027E-02
 GRADIENT:   2.2144E+00 -1.4613E+01  3.2172E-01  1.4664E-01  1.5116E+00  1.7571E-01  8.6383E-04  4.6284E-03  3.3521E-02  2.9600E-01
             1.5223E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1699.49044405974        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1999             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0148E+00  1.8208E+00  5.3902E-01  4.5623E-01  1.2528E+00  1.0144E+00  8.5399E-01  1.0000E-02  1.4245E+00  1.1938E+00
             9.8036E-01
 PARAMETER:  1.1471E-01  6.9925E-01 -5.1800E-01 -6.8475E-01  3.2538E-01  1.1429E-01 -5.7832E-02 -5.1353E+00  4.5382E-01  2.7715E-01
             8.0161E-02
 GRADIENT:   6.0795E+02  1.0229E+03  3.1170E+00  1.5258E+02  2.0816E+01  8.3490E+01  1.0451E+01  0.0000E+00  1.5115E+01  5.2581E+00
             6.6754E-01

0ITERATION NO.:   59    OBJECTIVE VALUE:  -1699.49193077153        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:     2137
 NPARAMETR:  1.0149E+00  1.8209E+00  5.3827E-01  4.5581E-01  1.2497E+00  1.0144E+00  8.5409E-01  1.0000E-02  1.4199E+00  1.1907E+00
             9.7978E-01
 PARAMETER:  1.1470E-01  6.9919E-01 -5.2318E-01 -6.8350E-01  3.2566E-01  1.1428E-01 -5.7619E-02 -5.1353E+00  4.5514E-01  2.7680E-01
             8.0352E-02
 GRADIENT:  -5.2928E-02 -1.6577E-01 -2.7287E-01  5.1710E-01  1.4825E+00 -9.9581E-03  1.1661E-02  0.0000E+00  1.2830E-01  2.1972E-01
             1.7049E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2137
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.5089E-04 -2.5815E-02 -2.5337E-04  2.7446E-02 -3.7891E-02
 SE:             2.9850E-02  2.5068E-02  8.4445E-05  2.0334E-02  2.3147E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9329E-01  3.0310E-01  2.6968E-03  1.7708E-01  1.0162E-01

 ETASHRINKSD(%)  1.8864E-04  1.6018E+01  9.9717E+01  3.1880E+01  2.2456E+01
 ETASHRINKVR(%)  3.7728E-04  2.9470E+01  9.9999E+01  5.3596E+01  3.9870E+01
 EBVSHRINKSD(%)  4.0037E-01  1.5076E+01  9.9773E+01  3.6386E+01  1.8921E+01
 EBVSHRINKVR(%)  7.9914E-01  2.7879E+01  9.9999E+01  5.9533E+01  3.4262E+01
 RELATIVEINF(%)  9.9075E+01  4.6856E+00  5.7807E-05  2.1860E+00  1.8685E+01
 EPSSHRINKSD(%)  4.4383E+01
 EPSSHRINKVR(%)  6.9067E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1699.4919307715331     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -964.34110420779496     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    30.82
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.79
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1699.492       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.82E+00  5.36E-01  4.57E-01  1.25E+00  1.01E+00  8.54E-01  1.00E-02  1.43E+00  1.19E+00  9.81E-01
 


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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.04E+03
 
 TH 2
+       -5.29E+00  3.47E+02
 
 TH 3
+        9.13E+00  8.10E+01  2.47E+02
 
 TH 4
+       -1.51E+01  3.57E+02 -2.93E+02  1.11E+03
 
 TH 5
+       -2.94E+00 -8.70E+01 -1.79E+02  2.34E+02  3.32E+02
 
 TH 6
+       -2.77E-01 -1.25E+00  1.78E+00 -2.97E+00 -7.37E-01  1.91E+02
 
 TH 7
+        7.03E-01  1.23E+01 -4.55E+00 -2.37E+01 -5.28E+00  2.84E-02  1.51E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        6.45E-01 -1.28E+01 -3.01E+01  5.77E+01  3.09E+00  2.89E-01  1.45E+01  0.00E+00  2.72E+01
 
 TH10
+        5.02E-01 -1.17E+01 -2.39E+01  1.14E+01 -4.51E+01  2.46E-01  2.18E+00  0.00E+00  6.56E+00  6.71E+01
 
 TH11
+       -7.40E+00 -1.81E+01 -3.25E+01  1.64E+01 -9.02E-01  7.55E-01  1.24E+01  0.00E+00  6.38E+00  1.12E+01  2.22E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       37.667
Stop Time:
Wed Sep 29 17:18:52 CDT 2021

Sat Sep 18 09:53:23 CDT 2021
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
$DATA ../../../../data/spa/A2/dat48.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m48.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -870.563700748527        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.7845E+01  1.2439E+01  7.6156E+01 -6.1874E+01  5.5105E+01 -1.8483E+01 -2.9052E+01 -3.6029E+01 -4.1954E+01 -5.2395E+01
            -1.3988E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1339.56932487105        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0632E+00  9.9190E-01  9.2096E-01  1.1407E+00  9.6211E-01  1.0091E+00  9.7490E-01  1.0182E+00  9.2767E-01  8.3266E-01
             3.9637E+00
 PARAMETER:  1.6128E-01  9.1870E-02  1.7660E-02  2.3164E-01  6.1378E-02  1.0910E-01  7.4577E-02  1.1801E-01  2.4918E-02 -8.3131E-02
             1.4772E+00
 GRADIENT:   6.3228E+01  1.6538E+01 -1.7518E+01  4.7150E+01 -5.1101E+00 -2.4708E+00  7.0598E+00  7.2197E+00  1.1293E+01  1.6337E+01
             1.7447E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1359.94414831761        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0433E+00  8.3487E-01  4.8563E-01  1.1425E+00  5.6775E-01  1.0660E+00  1.2298E+00  5.7973E-01  1.0137E+00  3.5485E-01
             3.3863E+00
 PARAMETER:  1.4236E-01 -8.0477E-02 -6.2230E-01  2.3321E-01 -4.6607E-01  1.6390E-01  3.0685E-01 -4.4519E-01  1.1359E-01 -9.3607E-01
             1.3197E+00
 GRADIENT:   3.7516E+01  4.2340E+01  6.2219E+00  4.1414E+01 -4.6535E+01  1.2954E+01  1.4304E+01  3.3850E+00  2.3301E+01  4.2815E+00
             1.2278E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1379.64248205519        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0065E+00  8.0402E-01  6.0004E-01  1.1220E+00  6.6482E-01  1.0259E+00  1.2231E+00  6.3736E-01  9.0786E-01  3.8440E-01
             2.7288E+00
 PARAMETER:  1.0646E-01 -1.1813E-01 -4.1076E-01  2.1510E-01 -3.0825E-01  1.2560E-01  3.0137E-01 -3.5042E-01  3.3342E-03 -8.5607E-01
             1.1039E+00
 GRADIENT:  -1.1025E+00 -8.6347E+00 -1.2211E+01 -5.8533E+00  2.0449E+01 -1.2272E-01  3.0677E+00  1.9054E-01  2.8719E-02  1.3032E+00
             5.8726E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1380.06762082648        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.0079E+00  6.7223E-01  5.1025E-01  1.1812E+00  5.4439E-01  1.0319E+00  1.3137E+00  6.5775E-01  8.8384E-01  2.8996E-01
             2.6693E+00
 PARAMETER:  1.0784E-01 -2.9715E-01 -5.7286E-01  2.6653E-01 -5.0808E-01  1.3143E-01  3.7285E-01 -3.1893E-01 -2.3481E-02 -1.1380E+00
             1.0818E+00
 GRADIENT:  -7.2153E-01  7.4480E+00  3.7591E+00  1.1530E+01 -7.3499E+00  1.1746E-01 -1.0266E+00 -2.3752E-01 -2.4793E-01 -8.4438E-02
            -9.4430E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1380.29867781088        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      436
 NPARAMETR:  1.0126E+00  6.3495E-01  6.1450E-01  1.2225E+00  6.0039E-01  1.0286E+00  1.4321E+00  6.7763E-01  8.6691E-01  3.0069E-01
             2.7283E+00
 PARAMETER:  1.1257E-01 -3.5421E-01 -3.8695E-01  3.0088E-01 -4.1018E-01  1.2819E-01  4.5913E-01 -2.8915E-01 -4.2815E-02 -1.1017E+00
             1.1037E+00
 GRADIENT:   6.3996E+00  4.9590E+00  8.1629E+00 -3.1070E+00 -1.1346E+01  2.4995E-01  1.3294E+00 -1.4003E+00 -6.4445E-02 -1.9680E-01
             8.5130E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1380.55893952726        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      611
 NPARAMETR:  1.0065E+00  5.1457E-01  6.7542E-01  1.3019E+00  6.0418E-01  1.0235E+00  1.6280E+00  7.9744E-01  8.4360E-01  2.5091E-01
             2.7330E+00
 PARAMETER:  1.0651E-01 -5.6441E-01 -2.9242E-01  3.6384E-01 -4.0389E-01  1.2319E-01  5.8734E-01 -1.2634E-01 -7.0078E-02 -1.2827E+00
             1.1054E+00
 GRADIENT:  -8.6568E-01  1.2516E+00  1.7331E+00  2.1009E+00 -2.4358E+00 -6.3095E-01  1.2126E-01 -2.3904E-01  4.9780E-01 -1.1381E-01
            -2.8037E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1380.57277089837        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      788
 NPARAMETR:  1.0063E+00  4.8432E-01  6.6466E-01  1.3137E+00  5.9087E-01  1.0243E+00  1.6802E+00  7.9163E-01  8.3665E-01  2.6062E-01
             2.7269E+00
 PARAMETER:  1.0625E-01 -6.2502E-01 -3.0848E-01  3.7283E-01 -4.2615E-01  1.2397E-01  6.1892E-01 -1.3366E-01 -7.8355E-02 -1.2447E+00
             1.1032E+00
 GRADIENT:  -5.1092E-01 -1.0548E+00 -2.0552E+00 -7.0827E-01  3.0674E+00 -3.9147E-01 -5.0110E-01  3.1361E-02 -1.6223E-01 -1.6270E-01
             4.1674E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1381.35560268222        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      966
 NPARAMETR:  1.0063E+00  3.2101E-01  5.1985E-01  1.3555E+00  4.5804E-01  1.0348E+00  2.1718E+00  5.7250E-01  8.3750E-01  5.3133E-01
             2.5899E+00
 PARAMETER:  1.0631E-01 -1.0363E+00 -5.5421E-01  4.0420E-01 -6.8081E-01  1.3417E-01  8.7555E-01 -4.5773E-01 -7.7337E-02 -5.3238E-01
             1.0516E+00
 GRADIENT:   1.0013E+00  2.1001E+00  1.2026E+00  3.7140E+00 -3.5989E+00  5.7323E-01  4.7569E-01  1.3422E+00  7.0827E-02  4.8780E-01
             1.5752E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1381.71438758218        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1142
 NPARAMETR:  1.0038E+00  2.5311E-01  4.9463E-01  1.3761E+00  4.3152E-01  1.0330E+00  2.4662E+00  3.3612E-01  8.3315E-01  6.3174E-01
             2.5693E+00
 PARAMETER:  1.0381E-01 -1.2739E+00 -6.0394E-01  4.1925E-01 -7.4044E-01  1.3249E-01  1.0027E+00 -9.9029E-01 -8.2542E-02 -3.5928E-01
             1.0436E+00
 GRADIENT:  -6.1069E-01  9.9176E-01 -1.0046E+00  4.3746E+00 -1.2615E-01 -1.3961E-01  3.6601E-01  7.9555E-02 -3.5080E-01  5.8940E-02
            -4.0356E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1381.74446114572        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1317
 NPARAMETR:  1.0033E+00  2.3114E-01  4.9242E-01  1.3818E+00  4.2690E-01  1.0328E+00  2.5911E+00  2.6837E-01  8.3164E-01  6.5149E-01
             2.5706E+00
 PARAMETER:  1.0326E-01 -1.3648E+00 -6.0842E-01  4.2339E-01 -7.5122E-01  1.3227E-01  1.0521E+00 -1.2154E+00 -8.4357E-02 -3.2849E-01
             1.0441E+00
 GRADIENT:   7.5780E-03 -1.0019E-01 -1.1226E-01 -3.7634E-01  1.8530E-01  5.3555E-03 -1.1165E-02  2.3553E-02  2.5396E-02 -2.8504E-03
             7.2451E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1381.74614391836        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1494
 NPARAMETR:  1.0034E+00  2.3231E-01  4.9182E-01  1.3813E+00  4.2669E-01  1.0328E+00  2.5733E+00  2.3300E-01  8.3216E-01  6.5874E-01
             2.5712E+00
 PARAMETER:  1.0335E-01 -1.3597E+00 -6.0965E-01  4.2306E-01 -7.5169E-01  1.3230E-01  1.0452E+00 -1.3567E+00 -8.3733E-02 -3.1743E-01
             1.0444E+00
 GRADIENT:   4.9591E-03 -9.4222E-03 -3.3202E-02  9.4228E-02  3.4780E-02 -3.3110E-03 -2.4853E-02  3.2256E-03  1.0643E-02  1.7523E-02
            -1.2595E-02

0ITERATION NO.:   58    OBJECTIVE VALUE:  -1381.74618159246        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1586
 NPARAMETR:  1.0033E+00  2.3200E-01  4.9151E-01  1.3813E+00  4.2645E-01  1.0328E+00  2.5765E+00  2.2821E-01  8.3214E-01  6.5932E-01
             2.5713E+00
 PARAMETER:  1.0334E-01 -1.3610E+00 -6.1027E-01  4.2301E-01 -7.5226E-01  1.3231E-01  1.0464E+00 -1.3775E+00 -8.3753E-02 -3.1655E-01
             1.0444E+00
 GRADIENT:  -2.0151E-03  4.9798E-03  1.6239E-02  6.6214E-03 -2.5243E-02  2.9375E-03  3.6239E-03  5.1141E-05  7.6107E-03 -1.2097E-03
             3.8934E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1586
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.3980E-04  2.4706E-02 -2.8028E-03 -2.0216E-02 -3.9747E-04
 SE:             2.9131E-02  1.3956E-02  4.9530E-03  2.5323E-02  1.8621E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7700E-01  7.6677E-02  5.7147E-01  4.2468E-01  9.8297E-01

 ETASHRINKSD(%)  2.4059E+00  5.3246E+01  8.3407E+01  1.5165E+01  3.7618E+01
 ETASHRINKVR(%)  4.7540E+00  7.8140E+01  9.7247E+01  2.8030E+01  6.1084E+01
 EBVSHRINKSD(%)  2.2895E+00  6.3857E+01  8.2736E+01  1.3552E+01  3.4687E+01
 EBVSHRINKVR(%)  4.5266E+00  8.6937E+01  9.7020E+01  2.5268E+01  5.7342E+01
 RELATIVEINF(%)  9.3276E+01  2.9089E+00  1.1619E-01  2.0959E+01  1.5725E+00
 EPSSHRINKSD(%)  3.3164E+01
 EPSSHRINKVR(%)  5.5329E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1381.7461815924562     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -646.59535502871802     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.16
 Elapsed covariance  time in seconds:     7.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1381.746       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  2.32E-01  4.92E-01  1.38E+00  4.26E-01  1.03E+00  2.58E+00  2.28E-01  8.32E-01  6.59E-01  2.57E+00
 


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
 
         3.41E-02  1.37E-01  2.10E-01  8.56E-02  1.55E-01  8.34E-02  9.87E-01  1.66E+00  1.22E-01  3.17E-01  3.12E-01
 


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
+        1.17E-03
 
 TH 2
+        4.73E-04  1.87E-02
 
 TH 3
+       -1.28E-03  1.97E-02  4.42E-02
 
 TH 4
+       -9.11E-04  3.80E-03  1.54E-02  7.33E-03
 
 TH 5
+       -7.56E-04  1.55E-02  3.23E-02  1.08E-02  2.39E-02
 
 TH 6
+       -7.61E-04 -5.62E-04 -2.74E-03 -1.19E-03 -1.98E-03  6.95E-03
 
 TH 7
+       -5.33E-03 -1.03E-01 -7.10E-02 -3.89E-03 -5.90E-02 -6.11E-03  9.75E-01
 
 TH 8
+        4.26E-03  1.65E-01  1.36E-01  1.23E-02  1.14E-01 -4.78E-03 -6.18E-01  2.77E+00
 
 TH 9
+        4.39E-04 -8.86E-03 -1.58E-02 -5.72E-03 -1.18E-02  6.76E-04  4.20E-02 -7.33E-02  1.48E-02
 
 TH10
+       -1.20E-03 -2.58E-02 -2.01E-02 -1.66E-03 -1.72E-02  7.81E-04  7.51E-02 -4.85E-01  1.02E-02  1.01E-01
 
 TH11
+        3.59E-03  7.38E-03  1.31E-02  4.89E-03  1.07E-02 -2.12E-03 -6.83E-02 -3.03E-02  2.28E-03 -9.16E-03  9.75E-02
 
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
+        3.41E-02
 
 TH 2
+        1.01E-01  1.37E-01
 
 TH 3
+       -1.79E-01  6.85E-01  2.10E-01
 
 TH 4
+       -3.12E-01  3.25E-01  8.54E-01  8.56E-02
 
 TH 5
+       -1.43E-01  7.35E-01  9.94E-01  8.18E-01  1.55E-01
 
 TH 6
+       -2.67E-01 -4.94E-02 -1.56E-01 -1.67E-01 -1.54E-01  8.34E-02
 
 TH 7
+       -1.58E-01 -7.67E-01 -3.42E-01 -4.61E-02 -3.87E-01 -7.42E-02  9.87E-01
 
 TH 8
+        7.50E-02  7.28E-01  3.88E-01  8.62E-02  4.43E-01 -3.44E-02 -3.76E-01  1.66E+00
 
 TH 9
+        1.06E-01 -5.33E-01 -6.18E-01 -5.50E-01 -6.28E-01  6.66E-02  3.50E-01 -3.62E-01  1.22E-01
 
 TH10
+       -1.11E-01 -5.96E-01 -3.01E-01 -6.12E-02 -3.50E-01  2.95E-02  2.40E-01 -9.19E-01  2.65E-01  3.17E-01
 
 TH11
+        3.36E-01  1.73E-01  2.00E-01  1.83E-01  2.21E-01 -8.14E-02 -2.22E-01 -5.83E-02  6.01E-02 -9.24E-02  3.12E-01
 
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
+        1.41E+03
 
 TH 2
+       -1.23E+02  8.26E+02
 
 TH 3
+       -1.54E+01  2.27E+02  4.52E+03
 
 TH 4
+        2.90E+02  2.38E+02 -9.23E+02  1.17E+03
 
 TH 5
+        6.51E+01 -7.49E+02 -6.03E+03  6.45E+02  8.62E+03
 
 TH 6
+        1.76E+02  1.59E+00 -9.54E+00  4.53E+01  2.23E+01  1.74E+02
 
 TH 7
+       -7.16E+00  4.79E+01  1.35E+01 -3.72E+00 -3.48E+01  2.73E+00  4.85E+00
 
 TH 8
+       -1.61E+00 -1.74E+01  3.20E+01  3.11E+00 -4.75E+01  1.07E+00 -1.29E-01  5.29E+00
 
 TH 9
+        5.91E+01  1.71E+00 -1.70E+02  1.38E+02  2.37E+02  6.96E+00 -4.64E+00 -1.15E+00  1.44E+02
 
 TH10
+       -1.78E+01  1.31E+01  8.49E+01  1.01E+01 -1.54E+02  5.86E+00  5.35E+00  2.00E+01 -8.62E+00  9.92E+01
 
 TH11
+       -6.70E+01  1.10E+01  1.15E+02 -3.68E+01 -1.71E+02 -3.59E+00  2.86E+00  5.61E+00 -1.99E+01  2.42E+01  2.34E+01
 
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
 #CPUT: Total CPU Time in Seconds,       27.244
Stop Time:
Sat Sep 18 09:53:52 CDT 2021
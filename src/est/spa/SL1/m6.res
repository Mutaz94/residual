Wed Sep 29 14:49:07 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat6.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m6.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1692.22230413027        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3136E+02 -5.5512E+01 -8.7924E+01  4.4731E+01  1.4268E+02  5.2197E+01  4.3113E+00  1.3384E+01  7.2007E+00  6.5808E+00
             2.8376E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1705.09171697588        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0021E+00  1.0684E+00  1.1300E+00  9.9696E-01  9.6623E-01  9.9757E-01  9.7167E-01  9.4720E-01  1.0074E+00  9.3181E-01
             9.1629E-01
 PARAMETER:  1.0214E-01  1.6613E-01  2.2226E-01  9.6956E-02  6.5642E-02  9.7568E-02  7.1263E-02  4.5760E-02  1.0738E-01  2.9369E-02
             1.2577E-02
 GRADIENT:   5.0862E+00  3.3522E+00 -1.7650E+00 -2.9450E-01 -4.6500E+00  6.5745E-02  5.6653E+00  6.3972E+00 -5.7470E+00 -2.0426E+00
            -1.0766E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1707.16261128307        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  1.0037E+00  1.1838E+00  1.1204E+00  9.3251E-01  1.0025E+00  9.8293E-01  6.4164E-01  7.0958E-01  1.1139E+00  1.0104E+00
             9.5344E-01
 PARAMETER:  1.0368E-01  2.6874E-01  2.1367E-01  3.0122E-02  1.0252E-01  8.2781E-02 -3.4372E-01 -2.4308E-01  2.0784E-01  1.1036E-01
             5.2317E-02
 GRADIENT:   6.6009E+00  3.2430E+01  9.4124E+00  1.9900E+01 -2.1223E+01 -5.8754E+00 -2.4512E+00  5.9609E-02 -1.6591E+01 -3.9108E+00
             5.3541E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1709.01317882125        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  1.0014E+00  1.3228E+00  1.0774E+00  8.2218E-01  1.0623E+00  9.9561E-01  4.2636E-01  7.0418E-01  1.3896E+00  1.1011E+00
             9.2893E-01
 PARAMETER:  1.0141E-01  3.7975E-01  1.7459E-01 -9.5797E-02  1.6044E-01  9.5599E-02 -7.5246E-01 -2.5072E-01  4.2904E-01  1.9631E-01
             2.6280E-02
 GRADIENT:   1.3204E+00  4.2877E+00 -9.9248E-01  9.0965E+00 -4.1542E+00 -1.0924E+00 -1.3596E-02 -7.4186E-02  1.7873E+00  1.0020E+00
            -2.6196E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1709.19315139871        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  1.0013E+00  1.5175E+00  9.8907E-01  6.9042E-01  1.1148E+00  1.0000E+00  4.5624E-01  6.9050E-01  1.5411E+00  1.1110E+00
             9.4317E-01
 PARAMETER:  1.0130E-01  5.1710E-01  8.9012E-02 -2.7045E-01  2.0871E-01  1.0003E-01 -6.8473E-01 -2.7034E-01  5.3253E-01  2.0524E-01
             4.1490E-02
 GRADIENT:  -4.9524E-01  1.5204E+01  4.6924E+00  4.3870E+00 -7.2101E+00  6.2569E-01 -2.3588E+00 -3.9043E-01 -5.3344E+00 -9.7114E-01
             2.6637E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1709.52253391112        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:      895
 NPARAMETR:  1.0011E+00  1.5385E+00  9.1685E-01  6.7693E-01  1.1142E+00  9.9814E-01  5.8184E-01  5.8365E-01  1.5122E+00  1.0946E+00
             9.3048E-01
 PARAMETER:  1.0108E-01  5.3083E-01  1.3193E-02 -2.9019E-01  2.0813E-01  9.8134E-02 -4.4156E-01 -4.3845E-01  5.1359E-01  1.9041E-01
             2.7949E-02
 GRADIENT:  -1.0457E+00 -8.7925E+00 -1.4874E-02  4.8258E-01  5.3996E+00 -2.5618E-01  1.0522E+00  3.8129E-01 -5.1186E-02  2.0401E+00
            -1.4611E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1709.82384683667        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1071
 NPARAMETR:  1.0026E+00  1.6205E+00  7.4571E-01  6.2233E-01  1.0850E+00  1.0000E+00  6.4785E-01  3.0013E-01  1.5115E+00  1.0125E+00
             9.3879E-01
 PARAMETER:  1.0261E-01  5.8276E-01 -1.9341E-01 -3.7429E-01  1.8155E-01  1.0001E-01 -3.3409E-01 -1.1035E+00  5.1312E-01  1.1239E-01
             3.6838E-02
 GRADIENT:   8.6341E-01 -8.8049E+00 -3.2498E+00  2.5343E-01  2.6867E+00  3.5696E-01  2.6891E-01  4.0335E-01 -3.1311E+00 -6.0454E-01
             2.4173E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1709.98150050704        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1247
 NPARAMETR:  1.0024E+00  1.7329E+00  6.7700E-01  5.4955E-01  1.1073E+00  9.9924E-01  6.1609E-01  1.0648E-01  1.6868E+00  1.0162E+00
             9.3434E-01
 PARAMETER:  1.0239E-01  6.4978E-01 -2.9008E-01 -4.9866E-01  2.0191E-01  9.9235E-02 -3.8437E-01 -2.1398E+00  6.2283E-01  1.1612E-01
             3.2084E-02
 GRADIENT:   1.8728E-01  1.7862E+00 -6.8352E-01  3.3136E+00 -7.7439E+00  5.8437E-03 -8.3433E-01  5.0866E-02 -3.7749E-01 -2.0195E+00
            -1.4758E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1710.07773023904        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1430
 NPARAMETR:  1.0021E+00  1.7487E+00  6.8157E-01  5.3801E-01  1.1226E+00  9.9927E-01  6.1640E-01  4.2949E-02  1.7102E+00  1.0352E+00
             9.3412E-01
 PARAMETER:  1.0214E-01  6.5885E-01 -2.8336E-01 -5.1988E-01  2.1567E-01  9.9266E-02 -3.8386E-01 -3.0477E+00  6.3660E-01  1.3459E-01
             3.1853E-02
 GRADIENT:  -3.1746E-01 -1.9644E+00 -5.9352E-01  2.0552E+00 -3.5324E+00  2.8240E-02 -3.7769E-02  7.6421E-03 -8.9702E-01 -7.8779E-01
            -9.0830E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1710.11670310144        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1613
 NPARAMETR:  1.0030E+00  1.7536E+00  6.8854E-01  5.3082E-01  1.1340E+00  9.9945E-01  6.1347E-01  1.7981E-02  1.7374E+00  1.0497E+00
             9.3441E-01
 PARAMETER:  1.0297E-01  6.6165E-01 -2.7319E-01 -5.3334E-01  2.2577E-01  9.9446E-02 -3.8863E-01 -3.9184E+00  6.5239E-01  1.4850E-01
             3.2157E-02
 GRADIENT:   1.6898E+00 -1.2570E+01 -1.3159E+00 -3.7603E-01  1.5385E+00  1.1450E-01  6.2996E-01  1.2703E-03  1.4953E-01  9.1823E-02
             2.9480E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1710.12647087610        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1800
 NPARAMETR:  1.0032E+00  1.7522E+00  6.9322E-01  5.3154E-01  1.1344E+00  9.9966E-01  6.0805E-01  1.0000E-02  1.7452E+00  1.0540E+00
             9.3434E-01
 PARAMETER:  1.0316E-01  6.6085E-01 -2.6641E-01 -5.3198E-01  2.2608E-01  9.9663E-02 -3.9751E-01 -4.9707E+00  6.5688E-01  1.5259E-01
             3.2090E-02
 GRADIENT:   2.1697E+00 -1.2269E+01 -9.4108E-01 -2.9933E-01  4.6523E-01  1.9825E-01  3.4428E-01  0.0000E+00  5.6757E-01  3.5351E-01
             2.4509E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1710.13152760095        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     1994             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0032E+00  1.7507E+00  6.9839E-01  5.3244E-01  1.1346E+00  9.9968E-01  6.0597E-01  1.0000E-02  1.7436E+00  1.0540E+00
             9.3412E-01
 PARAMETER:  1.0315E-01  6.6002E-01 -2.5898E-01 -5.3029E-01  2.2631E-01  9.9677E-02 -4.0092E-01 -4.9707E+00  6.5595E-01  1.5257E-01
             3.1850E-02
 GRADIENT:   5.2984E+02  8.7708E+02  1.6981E+00  1.1432E+02  1.7254E+01  6.1107E+01  1.7329E+01  0.0000E+00  3.6572E+01  1.4273E+00
             7.5431E-01

0ITERATION NO.:   57    OBJECTIVE VALUE:  -1710.13152760095        NO. OF FUNC. EVALS.:  63
 CUMULATIVE NO. OF FUNC. EVALS.:     2057
 NPARAMETR:  1.0031E+00  1.7482E+00  6.9782E-01  5.3373E-01  1.1358E+00  9.9967E-01  6.0522E-01  1.0000E-02  1.7440E+00  1.0556E+00
             9.3437E-01
 PARAMETER:  1.0315E-01  6.6002E-01 -2.5898E-01 -5.3029E-01  2.2631E-01  9.9677E-02 -4.0092E-01 -4.9707E+00  6.5595E-01  1.5257E-01
             3.1850E-02
 GRADIENT:   1.2352E-02  1.5824E+00  6.4668E-02 -4.6627E-01 -5.9192E-01  1.4229E-03  3.9853E-02  0.0000E+00 -1.5675E-02 -1.2020E-01
            -4.5325E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2057
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3894E-04 -4.5330E-02 -2.2632E-04  2.7317E-02 -3.4084E-02
 SE:             2.9862E-02  1.9310E-02  9.6337E-05  2.4429E-02  2.4474E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9629E-01  1.8899E-02  1.8810E-02  2.6348E-01  1.6373E-01

 ETASHRINKSD(%)  1.0000E-10  3.5310E+01  9.9677E+01  1.8160E+01  1.8009E+01
 ETASHRINKVR(%)  1.0000E-10  5.8152E+01  9.9999E+01  3.3022E+01  3.2774E+01
 EBVSHRINKSD(%)  3.8723E-01  3.4188E+01  9.9713E+01  1.8908E+01  1.6086E+01
 EBVSHRINKVR(%)  7.7296E-01  5.6687E+01  9.9999E+01  3.4241E+01  2.9585E+01
 RELATIVEINF(%)  9.9184E+01  3.8383E+00  1.9786E-04  7.1681E+00  2.1901E+01
 EPSSHRINKSD(%)  4.4348E+01
 EPSSHRINKVR(%)  6.9028E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1710.1315276009466     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -974.98070103720841     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    29.00
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1710.132       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.75E+00  6.98E-01  5.32E-01  1.13E+00  1.00E+00  6.06E-01  1.00E-02  1.74E+00  1.05E+00  9.34E-01
 


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
+        1.10E+03
 
 TH 2
+       -6.51E+00  4.66E+02
 
 TH 3
+        4.64E+00  1.38E+02  2.07E+02
 
 TH 4
+       -1.09E+01  4.06E+02 -1.06E+02  8.59E+02
 
 TH 5
+       -3.08E+00 -2.11E+02 -2.12E+02  1.20E+02  5.46E+02
 
 TH 6
+        2.31E-01 -8.64E-01  7.01E-01 -3.01E+00 -7.26E-01  1.96E+02
 
 TH 7
+        1.69E+00 -2.72E+01  1.61E+01 -2.56E+01 -2.88E+01  7.90E-02  1.11E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.17E+00 -2.50E+01 -1.61E+01  4.71E+01  2.62E+00 -3.03E-01  2.51E+01  0.00E+00  3.23E+01
 
 TH10
+       -2.17E-01 -1.67E+01 -3.40E+01 -2.46E+00 -5.05E+01 -1.02E-02  2.33E+01  0.00E+00  2.14E+00  9.02E+01
 
 TH11
+       -8.01E+00 -2.26E+01 -2.12E+01 -4.48E-01  5.83E+00  2.53E+00  9.50E+00  0.00E+00  3.84E+00  1.70E+01  2.48E+02
 
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
 #CPUT: Total CPU Time in Seconds,       35.487
Stop Time:
Wed Sep 29 14:49:44 CDT 2021

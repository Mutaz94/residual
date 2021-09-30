Thu Sep 30 01:09:11 CDT 2021
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
$DATA ../../../../data/spa1/TD1/dat9.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2076.65910719008        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0769E+02 -2.4244E+01 -1.7457E+01  8.3523E-01  6.9192E+01  1.9172E+01  5.5144E+00  2.9979E+00  1.1103E+01 -6.1519E+00
             4.4877E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2082.82826208202        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:      113
 NPARAMETR:  9.3053E-01  9.8736E-01  9.8420E-01  1.0073E+00  9.7585E-01  9.4908E-01  9.8890E-01  9.9539E-01  9.8735E-01  1.0005E+00
             9.6660E-01
 PARAMETER:  2.7994E-02  8.7276E-02  8.4076E-02  1.0729E-01  7.5551E-02  4.7735E-02  8.8842E-02  9.5375E-02  8.7265E-02  1.0046E-01
             6.6025E-02
 GRADIENT:  -1.6237E+01 -4.9990E+01 -1.5916E+01 -6.5500E+01  4.8728E+01 -2.0045E+01  2.2124E+00  3.8194E+00  2.9644E+00 -4.4507E+00
             2.1192E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2087.38651580774        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      290
 NPARAMETR:  9.3659E-01  8.0677E-01  9.2662E-01  1.1600E+00  8.0795E-01  1.0368E+00  9.4080E-01  8.0190E-01  8.9718E-01  9.9526E-01
             9.4110E-01
 PARAMETER:  3.4487E-02 -1.1472E-01  2.3787E-02  2.4846E-01 -1.1326E-01  1.3619E-01  3.8972E-02 -1.2078E-01 -8.4969E-03  9.5245E-02
             3.9294E-02
 GRADIENT:   2.0255E+00  2.3645E+01  1.9257E+01  5.9322E+00 -4.3451E+01  1.5759E+01 -2.6090E+00  8.4865E-01 -6.6915E+00  7.3092E+00
             7.6475E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2089.17231245083        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      468
 NPARAMETR:  9.3430E-01  7.2431E-01  9.3534E-01  1.2136E+00  7.9769E-01  9.9778E-01  1.2309E+00  7.5102E-01  8.5208E-01  9.2103E-01
             9.3177E-01
 PARAMETER:  3.2043E-02 -2.2254E-01  3.3158E-02  2.9356E-01 -1.2604E-01  9.7773E-02  3.0778E-01 -1.8632E-01 -6.0076E-02  1.7738E-02
             2.9333E-02
 GRADIENT:  -9.5551E-01  1.3725E+01  9.0854E+00  1.5799E+01 -1.1034E+01  1.4819E+00 -6.2647E-01 -2.3250E+00 -1.8620E+00 -2.0152E+00
            -1.2526E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2090.14091973478        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      643
 NPARAMETR:  9.3053E-01  4.5779E-01  1.1085E+00  1.3825E+00  7.9506E-01  9.9412E-01  1.4170E+00  9.3135E-01  8.0163E-01  9.6989E-01
             9.3055E-01
 PARAMETER:  2.7998E-02 -6.8135E-01  2.0296E-01  4.2386E-01 -1.2934E-01  9.4107E-02  4.4853E-01  2.8877E-02 -1.2111E-01  6.9431E-02
             2.8017E-02
 GRADIENT:   3.2151E-01  6.4660E+00  4.9048E+00  1.4423E+01 -9.8799E+00  1.8219E+00  1.9498E-01 -1.7831E-01 -1.5309E-02  7.6593E-01
            -1.1816E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2090.41116334405        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      821
 NPARAMETR:  9.2705E-01  2.8658E-01  1.2211E+00  1.4895E+00  7.9851E-01  9.8809E-01  1.5406E+00  1.0527E+00  7.6538E-01  9.8810E-01
             9.3230E-01
 PARAMETER:  2.4251E-02 -1.1497E+00  2.9977E-01  4.9842E-01 -1.2500E-01  8.8016E-02  5.3220E-01  1.5138E-01 -1.6738E-01  8.8025E-02
             2.9899E-02
 GRADIENT:  -7.6847E-01  2.7702E+00  1.8868E+00  9.8520E+00 -4.0288E+00  5.3218E-01  9.2732E-02 -8.6530E-02 -1.9478E-01  5.4299E-01
            -9.8285E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2090.44931418965        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1003
 NPARAMETR:  9.2703E-01  2.4218E-01  1.2404E+00  1.5069E+00  7.9885E-01  9.8659E-01  1.4989E+00  1.0798E+00  7.5764E-01  9.8653E-01
             9.3253E-01
 PARAMETER:  2.4230E-02 -1.3181E+00  3.1543E-01  5.1005E-01 -1.2458E-01  8.6502E-02  5.0476E-01  1.7674E-01 -1.7755E-01  8.6434E-02
             3.0146E-02
 GRADIENT:   1.2236E+00 -6.4240E-01 -1.6155E+00 -1.4253E+01  4.1759E+00  2.5507E-01  7.4480E-02 -8.2768E-02 -5.9193E-02 -4.3311E-01
             1.3015E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2090.46437382315        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1178
 NPARAMETR:  9.2613E-01  2.2546E-01  1.2493E+00  1.5226E+00  7.9528E-01  9.8548E-01  9.3997E-01  1.0928E+00  7.6117E-01  9.9204E-01
             9.3255E-01
 PARAMETER:  2.3259E-02 -1.3896E+00  3.2258E-01  5.2044E-01 -1.2906E-01  8.5373E-02  3.8094E-02  1.8875E-01 -1.7290E-01  9.2005E-02
             3.0163E-02
 GRADIENT:  -3.5674E-01  1.0143E+00  4.9361E-02  7.3688E-01 -2.0257E+00 -8.3365E-02  5.5676E-02 -2.6138E-01  2.3914E-01  1.3986E-01
            -1.1822E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2090.46483507908        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1358
 NPARAMETR:  9.2588E-01  2.1832E-01  1.2531E+00  1.5276E+00  7.9476E-01  9.8527E-01  7.7301E-01  1.0987E+00  7.6087E-01  9.9303E-01
             9.3258E-01
 PARAMETER:  2.2992E-02 -1.4218E+00  3.2564E-01  5.2372E-01 -1.2972E-01  8.5163E-02 -1.5746E-01  1.9410E-01 -1.7329E-01  9.3008E-02
             3.0204E-02
 GRADIENT:  -6.6028E-01  1.1363E+00  3.9620E-02  2.4580E+00 -2.5958E+00 -1.2237E-01  4.9281E-02 -2.2905E-01  3.8560E-01  2.4522E-01
            -1.2050E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2090.50931147677        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1546             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2642E-01  2.1290E-01  1.2539E+00  1.5258E+00  7.9594E-01  9.8549E-01  2.4303E-01  1.1019E+00  7.6031E-01  9.9177E-01
             9.3266E-01
 PARAMETER:  2.3578E-02 -1.4469E+00  3.2623E-01  5.2249E-01 -1.2823E-01  8.5380E-02 -1.3146E+00  1.9700E-01 -1.7404E-01  9.1733E-02
             3.0283E-02
 GRADIENT:   4.1172E+02  2.4985E+01  7.9920E+00  8.5123E+02  1.3487E+01  3.4013E+01  1.3035E-01  5.4963E-01  1.5585E+01  5.0230E-01
             8.8385E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2090.51741195534        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1730
 NPARAMETR:  9.2650E-01  2.1350E-01  1.2577E+00  1.5264E+00  7.9567E-01  9.8560E-01  6.8172E-02  1.1066E+00  7.6131E-01  9.9473E-01
             9.3278E-01
 PARAMETER:  2.3661E-02 -1.4441E+00  3.2930E-01  5.2288E-01 -1.2857E-01  8.5491E-02 -2.5857E+00  2.0130E-01 -1.7272E-01  9.4713E-02
             3.0410E-02
 GRADIENT:   1.0794E+00  2.3260E-01 -3.7358E-02 -7.2765E+00 -1.9339E+00  5.7505E-02  1.1739E-03 -3.8766E-02 -3.1995E-02  1.6949E-01
             3.3974E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2090.52168474496        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1913
 NPARAMETR:  9.2662E-01  2.1456E-01  1.2605E+00  1.5256E+00  7.9705E-01  9.8565E-01  1.0000E-02  1.1081E+00  7.6155E-01  9.9554E-01
             9.3278E-01
 PARAMETER:  2.3791E-02 -1.4392E+00  3.3152E-01  5.2238E-01 -1.2684E-01  8.5549E-02 -8.0409E+00  2.0267E-01 -1.7240E-01  9.5531E-02
             3.0417E-02
 GRADIENT:   1.3251E+00  1.6221E-01  1.9007E-01 -8.1705E+00 -1.7884E+00  7.0446E-02  0.0000E+00 -7.7527E-02 -5.3892E-02  1.1567E-01
             1.2186E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2090.52582488676        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     2104             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2667E-01  2.1626E-01  1.2618E+00  1.5244E+00  7.9932E-01  9.8570E-01  1.0000E-02  1.1100E+00  7.6219E-01  9.9569E-01
             9.3280E-01
 PARAMETER:  2.3844E-02 -1.4313E+00  3.3255E-01  5.2163E-01 -1.2400E-01  8.5595E-02 -8.0409E+00  2.0440E-01 -1.7156E-01  9.5676E-02
             3.0441E-02
 GRADIENT:   4.1221E+02  2.5531E+01  8.8814E+00  8.4763E+02  1.2005E+01  3.4060E+01  0.0000E+00  8.4616E-01  1.5729E+01  8.2150E-01
             1.0163E+00

0ITERATION NO.:   62    OBJECTIVE VALUE:  -2090.52582488676        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     2162
 NPARAMETR:  9.2667E-01  2.1626E-01  1.2618E+00  1.5244E+00  7.9932E-01  9.8570E-01  1.0000E-02  1.1100E+00  7.6219E-01  9.9569E-01
             9.3280E-01
 PARAMETER:  2.3844E-02 -1.4313E+00  3.3255E-01  5.2163E-01 -1.2400E-01  8.5595E-02 -8.0409E+00  2.0440E-01 -1.7156E-01  9.5676E-02
             3.0441E-02
 GRADIENT:   1.3735E+00 -5.6532E-02 -9.9702E-01 -9.0020E+00  5.3676E-01  7.1683E-02  0.0000E+00  1.1853E-02  1.1789E-02 -1.2802E-01
             1.6271E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2162
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.4434E-04 -7.1507E-05 -3.0381E-02 -4.8603E-03 -3.1331E-02
 SE:             2.9870E-02  4.0489E-05  1.8108E-02  2.9501E-02  2.2160E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8813E-01  7.7384E-02  9.3392E-02  8.6914E-01  1.5742E-01

 ETASHRINKSD(%)  1.0000E-10  9.9864E+01  3.9336E+01  1.1677E+00  2.5760E+01
 ETASHRINKVR(%)  1.0000E-10  1.0000E+02  6.3199E+01  2.3217E+00  4.4884E+01
 EBVSHRINKSD(%)  3.0842E-01  9.9873E+01  4.2305E+01  1.6625E+00  2.3310E+01
 EBVSHRINKVR(%)  6.1588E-01  1.0000E+02  6.6713E+01  3.2974E+00  4.1186E+01
 RELATIVEINF(%)  9.7618E+01  1.2517E-05  8.0665E+00  8.9526E+00  1.1896E+01
 EPSSHRINKSD(%)  3.4802E+01
 EPSSHRINKVR(%)  5.7492E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2090.5258248867594     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1171.5872916820867     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    32.57
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.42
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2090.526       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.27E-01  2.16E-01  1.26E+00  1.52E+00  7.99E-01  9.86E-01  1.00E-02  1.11E+00  7.62E-01  9.96E-01  9.33E-01
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.40E+03
 
 TH 2
+       -8.76E+01  4.36E+02
 
 TH 3
+        2.22E+01  4.19E+01  1.61E+02
 
 TH 4
+       -1.08E+02  5.30E+02 -8.07E+01  8.41E+02
 
 TH 5
+       -2.04E+01 -2.59E+02 -3.97E+02  3.06E-01  1.05E+03
 
 TH 6
+        9.96E+01 -2.83E+01 -1.83E+00 -3.11E+01  3.09E+01  1.49E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+       -6.43E+00  5.49E+00 -7.39E+00  7.88E+00  1.28E+01 -6.09E+00  0.00E+00  1.46E+00
 
 TH 9
+        1.79E+00 -1.76E+02  3.49E+01 -1.01E+02 -1.89E+01 -5.65E+00  0.00E+00 -1.28E+01  3.86E+02
 
 TH10
+       -3.76E+00  1.96E+01  2.27E+01  3.68E+00 -6.57E+01 -1.08E+01  0.00E+00  5.54E-01 -2.44E+00  5.90E+00
 
 TH11
+        1.93E+00 -5.45E+00 -5.75E+01  4.36E+01  6.89E+01 -3.51E+01  0.00E+00  1.90E+01  3.04E+01  2.28E+01  5.43E+02
 
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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.32E+03
 
 TH 2
+       -3.05E+01  3.99E+02
 
 TH 3
+       -2.33E+00  7.30E+01  1.94E+02
 
 TH 4
+       -5.21E+00  4.83E+02 -4.15E+01  7.96E+02
 
 TH 5
+        5.14E+00 -2.97E+02 -3.66E+02 -6.14E+01  1.05E+03
 
 TH 6
+        1.25E+00 -4.22E+00 -2.90E-01 -1.96E+00 -1.12E+00  2.02E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+       -3.95E-01  3.10E+00 -3.43E+01 -5.07E+00 -4.08E-01 -5.94E-02  0.00E+00  3.75E+01
 
 TH 9
+        2.10E+00 -1.00E+02  6.73E+00  1.81E-01  4.37E-01 -6.19E-01  0.00E+00 -1.18E+00  3.22E+02
 
 TH10
+        1.74E+00  9.34E+00 -5.82E+00  3.19E+00 -7.86E+01  3.08E-01  0.00E+00  1.90E+01  3.48E+00  7.55E+01
 
 TH11
+       -8.80E+00 -9.99E+00 -1.07E+01 -1.12E+01 -5.56E+00  2.30E+00  0.00E+00  8.57E+00  7.00E+00  1.34E+01  4.54E+02
 
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
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.32E+03
 
 TH 2
+        6.13E+00  3.85E+02
 
 TH 3
+       -1.12E+00  8.61E+01  1.95E+02
 
 TH 4
+        8.21E+01  4.65E+02 -2.06E+01  7.96E+02
 
 TH 5
+        6.17E+01 -3.37E+02 -3.72E+02 -1.15E+02  1.06E+03
 
 TH 6
+       -1.41E+02  1.70E+01  1.13E+01  3.64E+01 -6.03E+01  2.86E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+       -1.67E+01  1.05E+01 -3.63E+01 -9.91E+00  3.78E+00 -1.36E+01  0.00E+00  4.03E+01
 
 TH 9
+        2.24E+00 -3.63E+01  5.05E+00  8.93E+01  2.30E+01 -6.76E+00  0.00E+00 -1.70E+01  2.68E+02
 
 TH10
+       -2.60E+01  2.22E+01 -6.16E+00  4.46E+00 -6.58E+01 -1.41E+01  0.00E+00  2.22E+01 -1.36E+01  5.38E+01
 
 TH11
+       -4.22E+01 -1.60E+01  7.17E+00 -5.39E+01 -8.79E+01  5.38E+01  0.00E+00  7.85E+00 -1.04E+01  1.78E+01  3.92E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       39.043
Stop Time:
Thu Sep 30 01:09:51 CDT 2021

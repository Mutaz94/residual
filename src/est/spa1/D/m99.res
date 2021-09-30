Thu Sep 30 03:52:54 CDT 2021
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
$DATA ../../../../data/spa1/D/dat99.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m99.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   32625.6476670296        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   8.8473E+02  7.1485E+02  1.6827E+01  7.3395E+02  1.8889E+02 -3.8383E+03 -1.5714E+03 -7.0450E+01 -2.1647E+03 -8.2773E+02
            -6.0213E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -386.892675000396        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1978E+00  1.0504E+00  8.8245E-01  1.4512E+00  1.4818E+00  1.8094E+00  1.0753E+00  9.5985E-01  1.0120E+00  9.4853E-01
             1.4887E+01
 PARAMETER:  2.8052E-01  1.4919E-01 -2.5053E-02  4.7241E-01  4.9325E-01  6.9298E-01  1.7264E-01  5.9018E-02  1.1189E-01  4.7157E-02
             2.8005E+00
 GRADIENT:  -8.5403E+00  4.4844E+01 -3.7692E+00  7.6398E+01 -6.8302E+00  2.8289E+01 -5.5678E+00  4.6993E+00 -1.5580E+01  1.0012E+00
            -9.6440E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -406.587105252643        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.1872E+00  7.2836E-01  1.1147E+00  1.4696E+00  3.1495E+00  1.3851E+00  3.5536E-01  3.3210E-01  7.8058E-01  3.2065E-01
             1.6757E+01
 PARAMETER:  2.7157E-01 -2.1695E-01  2.0857E-01  4.8501E-01  1.2473E+00  4.2575E-01 -9.3462E-01 -1.0023E+00 -1.4772E-01 -1.0374E+00
             2.9188E+00
 GRADIENT:  -2.1844E+01  1.7869E+01  7.4603E+00  2.9886E+01 -6.6283E+00 -1.8597E+01 -3.2257E-02  1.2816E-01 -1.1944E+00  1.3992E-02
             2.8478E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -447.565826541080        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  1.0715E+00  1.9933E-01  2.0323E-01  1.5185E+00  1.3535E+01  1.8564E+00  9.7326E-02  1.0000E-02  2.6669E-01  2.2729E+00
             1.6905E+01
 PARAMETER:  1.6903E-01 -1.5128E+00 -1.4934E+00  5.1770E-01  2.7053E+00  7.1866E-01 -2.2297E+00 -8.1189E+00 -1.2216E+00  9.2104E-01
             2.9276E+00
 GRADIENT:   5.8246E+01  1.8025E+01 -4.9350E+01  2.4795E+02 -1.2402E+00 -5.8139E+01  1.7627E-01  0.0000E+00 -1.8313E+00  1.0734E+00
            -7.9253E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -533.978250212338        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  4.8772E-01  1.8075E-02  3.5606E-02  3.9579E-01  3.0858E+02  2.0480E+00  1.5925E+00  1.0000E-02  1.0000E-02  9.3547E-02
             1.6489E+01
 PARAMETER: -6.1802E-01 -3.9132E+00 -3.2352E+00 -8.2687E-01  5.8320E+00  8.1687E-01  5.6530E-01 -1.2748E+01 -5.3537E+00 -2.2693E+00
             2.9027E+00
 GRADIENT:  -3.9540E+01  1.1459E+00  1.3907E+02 -6.8868E+01 -1.0288E-02  3.2715E+01  3.3150E-02  0.0000E+00  0.0000E+00 -1.8236E-09
             1.4185E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -544.200628923375        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      421
 NPARAMETR:  3.8065E-01  1.0000E-02  1.8122E-02  2.4260E-01  1.2667E+03  1.9509E+00  2.4012E+00  1.0000E-02  1.0000E-02  2.9050E-02
             1.6279E+01
 PARAMETER: -8.6589E-01 -4.7804E+00 -3.9106E+00 -1.3163E+00  7.2442E+00  7.6830E-01  9.7599E-01 -1.3611E+01 -6.5791E+00 -3.4387E+00
             2.8899E+00
 GRADIENT:  -6.6958E+01  0.0000E+00  2.9967E+01 -3.9370E+00 -1.8095E-03  5.9599E+00  3.0435E-02  0.0000E+00  0.0000E+00 -1.1571E-11
             1.1568E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -555.042431324402        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:      587
 NPARAMETR:  4.0848E-01  1.0000E-02  1.8180E-02  2.4104E-01  3.1608E+03  1.8812E+00  3.1491E+00  1.0000E-02  1.0000E-02  3.6272E-02
             1.4580E+01
 PARAMETER: -7.9532E-01 -4.5996E+00 -3.9074E+00 -1.3228E+00  8.1586E+00  7.3191E-01  1.2471E+00 -1.2399E+01 -5.7018E+00 -3.2167E+00
             2.7797E+00
 GRADIENT:   3.6095E+01  0.0000E+00  7.7703E+01  1.8590E+01 -1.4083E-04  1.0760E+01  3.0648E-01  0.0000E+00  0.0000E+00  3.5342E-12
             5.3942E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -555.081223148203        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      660
 NPARAMETR:  3.9510E-01  1.0000E-02  1.7847E-02  2.3799E-01  8.3931E+03  1.8658E+00  3.0206E+00  1.0000E-02  1.0000E-02  3.6272E-02
             1.4374E+01
 PARAMETER: -8.2861E-01 -4.5996E+00 -3.9259E+00 -1.3355E+00  9.1352E+00  7.2367E-01  1.2055E+00 -1.2399E+01 -5.7018E+00 -3.2167E+00
             2.7654E+00
 GRADIENT:   2.5578E+01  0.0000E+00  7.7689E+01  2.5917E+01 -1.5810E-04  6.6067E+00  4.7028E-01  0.0000E+00  0.0000E+00  0.0000E+00
             4.7917E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -555.670200209842        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      836
 NPARAMETR:  4.0454E-01  1.0000E-02  1.7870E-02  2.3762E-01  3.7681E+03  1.8958E+00  2.6392E+00  1.0000E-02  1.0000E-02  3.6272E-02
             1.4020E+01
 PARAMETER: -8.0500E-01 -4.5996E+00 -3.9246E+00 -1.3371E+00  8.3343E+00  7.3963E-01  1.0705E+00 -1.2399E+01 -5.7018E+00 -3.2167E+00
             2.7405E+00
 GRADIENT:  -1.4145E+00  0.0000E+00  2.5676E+00  6.5580E-01  6.8424E-05  1.4657E-01  1.5950E-01  0.0000E+00  0.0000E+00 -1.7671E-12
            -2.7078E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -556.161608585527        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1018
 NPARAMETR:  3.9699E-01  1.0000E-02  1.6598E-02  2.2393E-01  1.3891E+01  1.8703E+00  8.8015E-01  1.0000E-02  1.0000E-02  3.2207E-02
             1.4006E+01
 PARAMETER: -8.2385E-01 -4.5996E+00 -3.9985E+00 -1.3964E+00  2.7313E+00  7.2612E-01 -2.7658E-02 -1.2399E+01 -5.7018E+00 -3.3356E+00
             2.7395E+00
 GRADIENT:   2.9158E+00  0.0000E+00 -4.1367E-01  8.7570E-01  4.7983E-02 -3.8022E+00  3.7647E-02  0.0000E+00  0.0000E+00  7.3058E-07
            -3.3548E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -556.680072648317        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1201
 NPARAMETR:  3.7908E-01  1.0000E-02  1.4973E-02  2.0672E-01  8.7242E+00  1.8960E+00  2.4080E-01  1.0000E-02  1.0000E-02  1.0000E-02
             1.3973E+01
 PARAMETER: -8.7001E-01 -4.5996E+00 -4.1015E+00 -1.4764E+00  2.2661E+00  7.3976E-01 -1.3238E+00 -1.2399E+01 -5.7018E+00 -1.7349E+01
             2.7371E+00
 GRADIENT:  -1.2285E+00  0.0000E+00 -1.5002E+00  1.2035E+00 -2.2248E-01  2.2361E+00  1.9860E-02  0.0000E+00  0.0000E+00  0.0000E+00
            -3.3728E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -556.708164097588        NO. OF FUNC. EVALS.: 200
 CUMULATIVE NO. OF FUNC. EVALS.:     1401
 NPARAMETR:  3.8026E-01  1.0000E-02  1.4930E-02  2.0629E-01  9.0443E+00  1.8849E+00  3.1398E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.3988E+01
 PARAMETER: -8.6691E-01 -4.5996E+00 -4.1044E+00 -1.4785E+00  2.3021E+00  7.3388E-01 -3.3610E+00 -1.2399E+01 -5.7018E+00 -1.7349E+01
             2.7382E+00
 GRADIENT:   1.2647E+00  0.0000E+00 -4.2841E+00  3.5622E+00  5.6511E-02  2.0066E-01  3.0412E-04  0.0000E+00  0.0000E+00  0.0000E+00
            -7.2343E-01

0ITERATION NO.:   59    OBJECTIVE VALUE:  -556.720130398102        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:     1540
 NPARAMETR:  3.8010E-01  1.0000E-02  1.4846E-02  2.0554E-01  8.9698E+00  1.8858E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.3990E+01
 PARAMETER: -8.6732E-01 -4.5996E+00 -4.1100E+00 -1.4821E+00  2.2939E+00  7.3434E-01 -7.5674E+00 -1.2399E+01 -5.7018E+00 -1.7349E+01
             2.7383E+00
 GRADIENT:   2.2700E+00  0.0000E+00 -6.1205E+00  5.1279E+00  5.0886E-02  3.8742E-01  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -8.7924E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1540
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.4427E-04  1.6604E-05  6.0972E-05 -1.8544E-04 -4.6447E-06
 SE:             2.9142E-02  8.3467E-06  2.9276E-04  3.2908E-04  7.7813E-06
 N:                     100         100         100         100         100

 P VAL.:         9.9057E-01  4.6671E-02  8.3502E-01  5.7308E-01  5.5057E-01

 ETASHRINKSD(%)  2.3699E+00  9.9972E+01  9.9019E+01  9.8898E+01  9.9974E+01
 ETASHRINKVR(%)  4.6837E+00  1.0000E+02  9.9990E+01  9.9988E+01  1.0000E+02
 EBVSHRINKSD(%)  2.5953E+00  9.9952E+01  9.9026E+01  9.8852E+01  9.9963E+01
 EBVSHRINKVR(%)  5.1233E+00  1.0000E+02  9.9991E+01  9.9987E+01  1.0000E+02
 RELATIVEINF(%)  8.2876E+00  4.6791E-06  4.4370E-05  6.3042E-05  3.1519E-06
 EPSSHRINKSD(%)  4.3196E+00
 EPSSHRINKVR(%)  8.4527E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -556.72013039810167     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       362.21840280657102     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.30
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     7.37
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -556.720       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.80E-01  1.00E-02  1.48E-02  2.06E-01  8.97E+00  1.89E+00  1.00E-02  1.00E-02  1.00E-02  1.00E-02  1.40E+01
 


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
+        9.94E+01
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.53E+04  0.00E+00  2.36E+06
 
 TH 4
+        1.25E+03  0.00E+00 -1.93E+05  1.58E+04
 
 TH 5
+        5.16E-01  0.00E+00 -7.94E+01  6.50E+00  2.68E-03
 
 TH 6
+       -4.38E+00  0.00E+00  6.74E+02 -5.52E+01 -2.27E-02  1.93E-01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.69E+00  0.00E+00  2.61E+02 -2.13E+01 -8.79E-03  7.46E-02  0.00E+00  0.00E+00  0.00E+00  0.00E+00  2.88E-02
 
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
+        2.03E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -2.17E+04  0.00E+00  3.33E+06
 
 TH 4
+        9.19E+01  0.00E+00 -2.72E+05  2.41E+04
 
 TH 5
+        9.77E-01  0.00E+00 -1.12E+02  9.74E+00  3.03E-02
 
 TH 6
+        3.86E-01  0.00E+00  9.49E+02 -1.08E+02 -3.48E-02  4.94E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.89E+01  0.00E+00  3.68E+02 -2.03E+01 -2.50E-02  7.39E-01  0.00E+00  0.00E+00  0.00E+00  0.00E+00  2.09E+00
 
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
+        2.05E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -4.26E+04  0.00E+00  4.69E+06
 
 TH 4
+        1.45E+03  0.00E+00 -3.65E+05  3.08E+04
 
 TH 5
+        1.73E+00  0.00E+00 -1.72E+02  1.37E+01  8.84E-03
 
 TH 6
+        4.36E+02  0.00E+00 -9.00E+03  2.77E+02  4.33E-01  1.86E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -4.46E+01  0.00E+00  1.97E+03 -1.34E+02 -8.58E-02 -3.68E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  1.96E+01
 
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
 #CPUT: Total CPU Time in Seconds,       30.759
Stop Time:
Thu Sep 30 03:53:27 CDT 2021
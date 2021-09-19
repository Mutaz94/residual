Sat Sep 18 09:45:55 CDT 2021
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
$DATA ../../../../data/spa/A2/dat28.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -856.240499644443        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.0847E+02 -7.1470E+01 -1.1908E+01 -1.2591E+02  1.3180E+02  1.6305E+01 -3.1615E+01  1.0582E+00 -9.7553E+01 -5.0754E+01
            -1.4033E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1358.39435411300        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0209E+00  1.0219E+00  1.1381E+00  1.1592E+00  1.0519E+00  8.3914E-01  8.6914E-01  8.7831E-01  9.9032E-01  6.8756E-01
             3.7365E+00
 PARAMETER:  1.2071E-01  1.2166E-01  2.2940E-01  2.4772E-01  1.5058E-01 -7.5374E-02 -4.0250E-02 -2.9753E-02  9.0273E-02 -2.7461E-01
             1.4181E+00
 GRADIENT:   5.4995E+01 -5.6038E+00 -1.9792E+01  1.4610E+01  2.0629E+01 -3.2707E+01  8.1175E+00  5.7420E+00  1.2197E+01  1.2519E+01
             1.5658E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1374.64143842331        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0126E+00  8.5505E-01  6.2227E-01  1.2288E+00  6.5430E-01  9.7242E-01  5.6050E-01  3.4528E-01  1.1484E+00  2.9434E-01
             3.4791E+00
 PARAMETER:  1.1249E-01 -5.6594E-02 -3.7438E-01  3.0602E-01 -3.2419E-01  7.2036E-02 -4.7893E-01 -9.6339E-01  2.3839E-01 -1.1230E+00
             1.3468E+00
 GRADIENT:   2.6253E+01  1.0672E+01 -2.2778E+01  4.8219E+01  8.0197E+00  1.5359E+01  1.5410E+00  2.5616E+00  2.4166E+01  4.1163E+00
             1.3192E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1396.47375253128        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  9.8039E-01  6.2515E-01  8.2506E-01  1.3471E+00  6.8316E-01  9.2314E-01  7.8208E-01  1.3229E-01  9.2677E-01  2.4683E-01
             2.7968E+00
 PARAMETER:  8.0191E-02 -3.6976E-01 -9.2304E-02  3.9795E-01 -2.8102E-01  2.0024E-02 -1.4580E-01 -1.9228E+00  2.3953E-02 -1.2990E+00
             1.1285E+00
 GRADIENT:  -1.0840E+01  2.5101E+01  1.8360E+01  3.9414E+01 -3.2607E+01 -4.5311E+00 -1.4311E+00  1.5878E-01 -5.0848E+00  1.2169E-01
            -1.6918E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1400.25027864158        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      297
 NPARAMETR:  9.7535E-01  2.7421E-01  6.3854E-01  1.4944E+00  4.9829E-01  9.4489E-01  1.7063E+00  5.4664E-02  8.2680E-01  4.8250E-02
             2.8241E+00
 PARAMETER:  7.5044E-02 -1.1938E+00 -3.4858E-01  5.0171E-01 -5.9657E-01  4.3312E-02  6.3430E-01 -2.8066E+00 -9.0191E-02 -2.9314E+00
             1.1382E+00
 GRADIENT:  -1.3285E+01  9.3067E+00  1.6896E+01  3.7267E+01 -3.0317E+01  3.9970E+00 -1.0595E+00  1.2833E-02 -5.0850E+00 -7.1370E-02
            -1.0329E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1401.76901000472        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      367
 NPARAMETR:  9.8083E-01  1.4321E-01  5.4993E-01  1.5152E+00  4.2691E-01  9.2748E-01  2.8289E+00  1.8124E-02  8.2320E-01  1.0924E-02
             2.8722E+00
 PARAMETER:  8.0641E-02 -1.8434E+00 -4.9796E-01  5.1555E-01 -7.5118E-01  2.4719E-02  1.1399E+00 -3.9105E+00 -9.4558E-02 -4.4168E+00
             1.1551E+00
 GRADIENT:   6.2488E+00  3.6274E+00  1.8836E+01  2.0151E+01 -3.0380E+01 -2.0087E+00 -3.9286E-01  1.5782E-03 -1.1690E+00 -4.5771E-03
             6.3869E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1402.59548122684        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      439
 NPARAMETR:  9.7185E-01  4.5949E-02  4.9428E-01  1.5206E+00  3.8519E-01  9.3544E-01  5.8884E+00  1.0000E-02  8.2513E-01  1.0000E-02
             2.8338E+00
 PARAMETER:  7.1444E-02 -2.9802E+00 -6.0466E-01  5.1912E-01 -8.5401E-01  3.3263E-02  1.8730E+00 -6.1131E+00 -9.2211E-02 -6.9618E+00
             1.1416E+00
 GRADIENT:  -3.9738E+00  1.2675E+00  6.7428E+00  3.2708E+00 -1.1828E+01  8.4423E-01  1.0505E+00  0.0000E+00 -1.0846E+00  0.0000E+00
            -1.5751E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1403.15793042385        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      511
 NPARAMETR:  9.7158E-01  1.0537E-02  5.1365E-01  1.5454E+00  3.9287E-01  9.3068E-01  1.2435E+01  1.0000E-02  8.1711E-01  1.0000E-02
             2.8388E+00
 PARAMETER:  7.1164E-02 -4.4529E+00 -5.6622E-01  5.3527E-01 -8.3426E-01  2.8161E-02  2.6205E+00 -9.1105E+00 -1.0199E-01 -1.0060E+01
             1.1434E+00
 GRADIENT:   5.7649E-02  2.4542E-01  3.6672E+00  2.8839E+00 -5.3279E+00 -3.8074E-01  2.2691E-01  0.0000E+00 -3.0514E-01  0.0000E+00
             3.6237E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1403.16709859033        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      605
 NPARAMETR:  9.7144E-01  1.0000E-02  5.1416E-01  1.5452E+00  3.9335E-01  9.3106E-01  1.2791E+01  1.0000E-02  8.1692E-01  1.0000E-02
             2.8375E+00
 PARAMETER:  7.1020E-02 -4.5107E+00 -5.6523E-01  5.3515E-01 -8.3305E-01  2.8573E-02  2.6487E+00 -9.2321E+00 -1.0222E-01 -1.0185E+01
             1.1429E+00
 GRADIENT:  -3.9646E+00  0.0000E+00  1.5566E+00 -6.7222E+00 -5.1476E+00 -5.2621E-01  2.9848E-01  0.0000E+00 -4.6353E-01  0.0000E+00
            -8.7994E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1403.36037282278        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      783
 NPARAMETR:  9.7294E-01  1.0000E-02  5.7245E-01  1.5774E+00  4.2637E-01  9.3074E-01  1.2731E+01  1.0000E-02  8.0326E-01  1.0000E-02
             2.8442E+00
 PARAMETER:  7.2572E-02 -4.5058E+00 -4.5784E-01  5.5577E-01 -7.5244E-01  2.8220E-02  2.6440E+00 -9.2184E+00 -1.1908E-01 -1.0038E+01
             1.1453E+00
 GRADIENT:   1.5292E-01  8.6005E-02  1.3268E-01 -1.2916E-01 -1.8719E-01 -1.7829E-02  1.8039E-01  0.0000E+00 -4.3362E-02  0.0000E+00
             5.5820E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1403.36623009786        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      961
 NPARAMETR:  9.7289E-01  1.0000E-02  5.7315E-01  1.5777E+00  4.2677E-01  9.3075E-01  1.1319E+01  1.0000E-02  8.0337E-01  1.0000E-02
             2.8441E+00
 PARAMETER:  7.2518E-02 -4.5488E+00 -4.5662E-01  5.5596E-01 -7.5150E-01  2.8237E-02  2.5265E+00 -9.3148E+00 -1.1894E-01 -1.0079E+01
             1.1452E+00
 GRADIENT:   4.5958E-02  0.0000E+00  1.2048E-01  2.7373E-02 -1.7795E-01  6.1839E-04 -8.4228E-05  0.0000E+00  2.0799E-02  0.0000E+00
             3.6360E-02

0ITERATION NO.:   53    OBJECTIVE VALUE:  -1403.36623340424        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1054
 NPARAMETR:  9.7287E-01  1.0000E-02  5.7310E-01  1.5777E+00  4.2680E-01  9.3076E-01  1.1324E+01  1.0000E-02  8.0327E-01  1.0000E-02
             2.8440E+00
 PARAMETER:  7.2499E-02 -4.5488E+00 -4.5669E-01  5.5595E-01 -7.5144E-01  2.8251E-02  2.5269E+00 -9.3148E+00 -1.1906E-01 -1.0079E+01
             1.1452E+00
 GRADIENT:   1.5280E-02  0.0000E+00 -1.2446E-01 -2.2071E-02  1.5715E-01  4.6723E-03  1.4579E-04  0.0000E+00 -9.3063E-03  0.0000E+00
             1.2279E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1054
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.9891E-04 -2.4758E-04  1.3149E-04 -1.1498E-02 -1.8587E-05
 SE:             2.8906E-02  1.7952E-03  2.6441E-04  2.6361E-02  3.8423E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9451E-01  8.9031E-01  6.1897E-01  6.6270E-01  9.6142E-01

 ETASHRINKSD(%)  3.1601E+00  9.3986E+01  9.9114E+01  1.1688E+01  9.8713E+01
 ETASHRINKVR(%)  6.2204E+00  9.9638E+01  9.9992E+01  2.2010E+01  9.9983E+01
 EBVSHRINKSD(%)  3.0719E+00  9.4035E+01  9.9097E+01  1.1375E+01  9.8781E+01
 EBVSHRINKVR(%)  6.0494E+00  9.9644E+01  9.9992E+01  2.1456E+01  9.9985E+01
 RELATIVEINF(%)  7.7951E+01  1.3101E-02  2.6356E-04  6.4140E+00  3.5261E-04
 EPSSHRINKSD(%)  2.3163E+01
 EPSSHRINKVR(%)  4.0961E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1403.3662334042428     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -668.21540684050467     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.24
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.29
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1403.366       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.73E-01  1.00E-02  5.73E-01  1.58E+00  4.27E-01  9.31E-01  1.13E+01  1.00E-02  8.03E-01  1.00E-02  2.84E+00
 


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
+        1.10E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.64E+02  0.00E+00  2.18E+03
 
 TH 4
+       -1.80E+02  0.00E+00  1.42E+02  3.56E+01
 
 TH 5
+        4.68E+02  0.00E+00 -4.09E+03 -2.91E+02  7.70E+03
 
 TH 6
+       -1.33E+01  0.00E+00 -1.85E+00  1.97E+00  1.50E+00  1.67E-01
 
 TH 7
+       -2.90E-02  0.00E+00 -4.89E-02  1.91E-03  8.69E-02  4.44E-04  2.08E-06
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        3.98E+01  0.00E+00 -2.54E+01 -7.55E+00  5.33E+01 -4.44E-01 -5.65E-04  0.00E+00  1.61E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -4.47E+00  0.00E+00 -8.11E+00  2.64E-01  1.45E+01  6.94E-02  3.34E-04  0.00E+00 -8.19E-02  0.00E+00  5.38E-02
 
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
+        1.28E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -5.44E+01  0.00E+00  2.59E+03
 
 TH 4
+       -5.50E+01  0.00E+00 -4.91E+01  5.42E+02
 
 TH 5
+        1.60E+02  0.00E+00 -4.61E+03 -3.43E+02  8.71E+03
 
 TH 6
+       -6.94E+00  0.00E+00  4.11E+00 -1.46E+01  1.44E+01  2.14E+02
 
 TH 7
+       -4.80E-02  0.00E+00 -3.76E-02 -8.32E-03  1.22E-01  3.21E-02  1.87E-03
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        9.02E+00  0.00E+00  7.70E+00 -1.75E+01  6.51E+01  1.84E+01  5.92E-02  0.00E+00  2.04E+02
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.87E+01  0.00E+00 -7.47E+00 -8.43E+00  1.87E+01  2.65E+00  4.77E-03  0.00E+00  1.11E+01  0.00E+00  5.30E+01
 
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
+        1.27E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+        1.53E+02  0.00E+00  2.70E+03
 
 TH 4
+       -1.53E+02  0.00E+00  7.83E+01  5.45E+02
 
 TH 5
+       -2.90E+02  0.00E+00 -5.12E+03 -4.93E+02  1.02E+04
 
 TH 6
+       -9.75E+01  0.00E+00  1.06E+02 -3.24E+01 -2.05E+02  1.61E+02
 
 TH 7
+        1.14E-02  0.00E+00 -7.65E-02 -2.30E-02  1.99E-01 -1.47E-02  1.96E-05
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.22E+02  0.00E+00  9.38E+01 -1.17E+02 -1.11E+02 -1.31E+01  3.46E-02  0.00E+00  2.24E+02
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        1.45E+02  0.00E+00  2.59E+01 -1.24E+02  5.06E+01  2.70E+01  1.61E-02  0.00E+00  6.97E+01  0.00E+00  2.82E+02
 
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
 #CPUT: Total CPU Time in Seconds,       17.607
Stop Time:
Sat Sep 18 09:46:14 CDT 2021
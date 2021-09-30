Wed Sep 29 17:06:34 CDT 2021
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
$DATA ../../../../data/spa/S2/dat6.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1695.28462275811        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2945E+02 -5.8602E+01 -8.9547E+01  4.4254E+01  1.4725E+02  5.1225E+01  3.3540E+00  1.3757E+01  8.8294E+00  2.7679E+00
             3.7916E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1707.27542639486        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8688E-01  1.0755E+00  1.1708E+00  9.7552E-01  9.6875E-01  1.0027E+00  9.6598E-01  9.2739E-01  1.0012E+00  9.2267E-01
             8.4833E-01
 PARAMETER:  8.6789E-02  1.7280E-01  2.5765E-01  7.5216E-02  6.8253E-02  1.0268E-01  6.5384E-02  2.4615E-02  1.0115E-01  1.9520E-02
            -6.4490E-02
 GRADIENT:  -2.7499E+01 -3.4976E+00  1.7273E+01 -3.3640E+01 -2.5546E+01  5.7907E-01  4.6075E+00  3.8658E+00 -1.0037E+01 -1.2571E+01
            -3.5694E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1710.36040780564        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  1.0070E+00  1.2895E+00  1.0614E+00  8.5447E-01  9.9924E-01  9.9867E-01  4.2123E-01  4.7192E-01  1.2434E+00  1.0796E+00
             8.8271E-01
 PARAMETER:  1.0697E-01  3.5428E-01  1.5959E-01 -5.7278E-02  9.9235E-02  9.8669E-02 -7.6459E-01 -6.5094E-01  3.1786E-01  1.7655E-01
            -2.4758E-02
 GRADIENT:   1.3578E+01  7.0694E+01  2.6315E+01  1.9303E+01 -6.5408E+01 -1.0478E+00 -4.9657E+00 -1.4256E+00 -2.3699E+01 -8.8709E+00
            -1.9270E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1713.59754589706        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  1.0001E+00  1.2787E+00  1.1721E+00  8.5035E-01  1.0789E+00  1.0014E+00  3.8211E-01  7.2501E-01  1.3522E+00  1.1438E+00
             9.1450E-01
 PARAMETER:  1.0012E-01  3.4583E-01  2.5881E-01 -6.2107E-02  1.7591E-01  1.0141E-01 -8.6204E-01 -2.2158E-01  4.0174E-01  2.3433E-01
             1.0626E-02
 GRADIENT:  -1.0516E+00  1.8885E+00  5.7131E-01  5.6228E+00  1.1595E+00  4.0228E-01  7.5183E-02 -1.8590E-02  3.0988E-01 -3.4339E-01
             1.4358E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1713.72756135938        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  1.0023E+00  1.4869E+00  9.7577E-01  7.2990E-01  1.1006E+00  1.0030E+00  5.1708E-01  5.6015E-01  1.4690E+00  1.1489E+00
             9.0991E-01
 PARAMETER:  1.0231E-01  4.9666E-01  7.5470E-02 -2.1485E-01  1.9587E-01  1.0299E-01 -5.5957E-01 -4.7955E-01  4.8459E-01  2.3877E-01
             5.5851E-03
 GRADIENT:   1.5124E+00  2.6272E+01 -3.7368E-01  2.1221E+01 -4.6101E+00  6.3194E-01 -1.4092E+00  4.5318E-01 -2.3476E+00  4.3472E+00
            -2.6720E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1713.83106436128        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  1.0034E+00  1.6075E+00  8.6417E-01  6.5432E-01  1.1097E+00  9.9943E-01  5.8229E-01  4.7599E-01  1.5500E+00  1.1272E+00
             9.0546E-01
 PARAMETER:  1.0336E-01  5.7470E-01 -4.5981E-02 -3.2416E-01  2.0405E-01  9.9426E-02 -4.4079E-01 -6.4235E-01  5.3827E-01  2.1972E-01
             6.8794E-04
 GRADIENT:   3.0337E+00  3.5648E+01  1.9247E+00  2.0816E+01 -1.3547E+01 -9.2418E-01 -6.8649E-01  6.8027E-01 -1.6026E+00  4.6011E+00
            -2.2239E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1714.05849969371        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1053
 NPARAMETR:  1.0034E+00  1.7612E+00  7.5310E-01  5.4170E-01  1.1468E+00  9.9739E-01  5.9142E-01  4.1557E-01  1.7439E+00  1.1182E+00
             9.0542E-01
 PARAMETER:  1.0341E-01  6.6598E-01 -1.8355E-01 -5.1304E-01  2.3698E-01  9.7383E-02 -4.2524E-01 -7.7811E-01  6.5611E-01  2.1171E-01
             6.4057E-04
 GRADIENT:   2.6903E+00  2.2665E+01  2.4120E+00  9.0861E+00 -1.2998E+01 -1.7540E+00  3.4918E-01  6.6316E-01 -1.0491E+00  2.4087E+00
            -2.6536E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1714.57733040042        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1235
 NPARAMETR:  1.0017E+00  1.7635E+00  7.3336E-01  5.2430E-01  1.1539E+00  1.0011E+00  5.8966E-01  1.1777E-01  1.7717E+00  1.1118E+00
             9.0946E-01
 PARAMETER:  1.0173E-01  6.6729E-01 -2.1012E-01 -5.4569E-01  2.4319E-01  1.0107E-01 -4.2821E-01 -2.0390E+00  6.7193E-01  2.0594E-01
             5.0903E-03
 GRADIENT:  -9.8999E-01 -1.0380E+01  8.2752E-01 -2.1588E+00 -1.9605E+00 -2.5664E-01  3.6653E-01  5.2665E-02 -5.2212E-01  1.0512E+00
            -2.6024E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1714.60308120381        NO. OF FUNC. EVALS.: 120
 CUMULATIVE NO. OF FUNC. EVALS.:     1355
 NPARAMETR:  1.0033E+00  1.7626E+00  7.2792E-01  5.2272E-01  1.1545E+00  1.0031E+00  5.8661E-01  3.0611E-02  1.7792E+00  1.1008E+00
             9.1009E-01
 PARAMETER:  1.0333E-01  6.6676E-01 -2.1757E-01 -5.4871E-01  2.4364E-01  1.0313E-01 -4.3340E-01 -3.3864E+00  6.7617E-01  1.9601E-01
             5.7922E-03
 GRADIENT:   5.5874E+02  9.3800E+02  1.1809E+00  1.1928E+02  2.2363E+01  6.6780E+01  1.8508E+01  5.4654E-03  4.0979E+01  1.5159E+00
             7.3668E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1714.61783409490        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1537             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0032E+00  1.7616E+00  7.2923E-01  5.2537E-01  1.1523E+00  1.0018E+00  5.8726E-01  1.0000E-02  1.7729E+00  1.1034E+00
             9.0977E-01
 PARAMETER:  1.0322E-01  6.6620E-01 -2.1577E-01 -5.4365E-01  2.4176E-01  1.0184E-01 -4.3230E-01 -6.2520E+00  6.7259E-01  1.9840E-01
             5.4419E-03
 GRADIENT:   5.5817E+02  9.4001E+02  1.6278E+00  1.2022E+02  1.9863E+01  6.5496E+01  1.8497E+01  0.0000E+00  4.0543E+01  2.1937E+00
             5.9072E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1714.62297707277        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1724
 NPARAMETR:  1.0032E+00  1.7596E+00  7.3159E-01  5.2733E-01  1.1512E+00  1.0023E+00  5.8833E-01  1.0000E-02  1.7691E+00  1.1025E+00
             9.0979E-01
 PARAMETER:  1.0322E-01  6.6508E-01 -2.1253E-01 -5.3994E-01  2.4079E-01  1.0233E-01 -4.3046E-01 -6.2520E+00  6.7045E-01  1.9760E-01
             5.4562E-03
 GRADIENT:   2.3339E+00 -9.7589E+00  7.5318E-01 -1.4116E+00 -1.0359E+00  2.3733E-01 -4.7132E-02  0.0000E+00 -1.2811E-01 -3.1180E-01
            -2.5559E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1714.63091532308        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     1918             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0032E+00  1.7556E+00  7.2961E-01  5.2974E-01  1.1511E+00  1.0023E+00  5.8926E-01  1.0000E-02  1.7675E+00  1.1033E+00
             9.1014E-01
 PARAMETER:  1.0320E-01  6.6281E-01 -2.1524E-01 -5.3537E-01  2.4072E-01  1.0232E-01 -4.2888E-01 -6.2520E+00  6.6957E-01  1.9832E-01
             5.8433E-03
 GRADIENT:   5.5744E+02  9.2689E+02  5.4483E-01  1.2066E+02  2.1796E+01  6.5910E+01  1.8522E+01  0.0000E+00  4.1207E+01  2.5588E+00
             9.8789E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1714.63578169007        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2107
 NPARAMETR:  1.0032E+00  1.7528E+00  7.3067E-01  5.3171E-01  1.1505E+00  1.0023E+00  5.8938E-01  1.0000E-02  1.7635E+00  1.1030E+00
             9.1014E-01
 PARAMETER:  1.0320E-01  6.6121E-01 -2.1379E-01 -5.3165E-01  2.4020E-01  1.0231E-01 -4.2868E-01 -6.2520E+00  6.6729E-01  1.9807E-01
             5.8421E-03
 GRADIENT:   2.2628E+00 -1.3745E+01 -1.0396E+00 -7.4243E-01  2.4719E+00  2.1848E-01  6.6016E-02  0.0000E+00  7.2121E-01  1.8499E-01
             2.2501E-01

0ITERATION NO.:   62    OBJECTIVE VALUE:  -1714.63670614277        NO. OF FUNC. EVALS.:  63
 CUMULATIVE NO. OF FUNC. EVALS.:     2170
 NPARAMETR:  1.0035E+00  1.7494E+00  7.3379E-01  5.3148E-01  1.1487E+00  1.0025E+00  5.9163E-01  1.0000E-02  1.7593E+00  1.1028E+00
             9.0990E-01
 PARAMETER:  1.0299E-01  6.6217E-01 -2.1165E-01 -5.3134E-01  2.3982E-01  1.0220E-01 -4.2886E-01 -6.2520E+00  6.6656E-01  1.9789E-01
             5.7374E-03
 GRADIENT:  -4.9607E-01  3.3774E+00 -1.7017E-01  1.4872E-01  6.6513E-01 -5.1528E-02 -1.1977E-01  0.0000E+00  1.3562E-01  2.9128E-03
             2.7495E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2170
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.4020E-04 -4.7347E-02 -2.2446E-04  2.6639E-02 -3.4128E-02
 SE:             2.9872E-02  1.8786E-02  9.4069E-05  2.4546E-02  2.4784E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9091E-01  1.1726E-02  1.7026E-02  2.7781E-01  1.6851E-01

 ETASHRINKSD(%)  1.0000E-10  3.7064E+01  9.9685E+01  1.7768E+01  1.6971E+01
 ETASHRINKVR(%)  1.0000E-10  6.0390E+01  9.9999E+01  3.2379E+01  3.1062E+01
 EBVSHRINKSD(%)  3.6659E-01  3.6001E+01  9.9717E+01  1.8421E+01  1.4683E+01
 EBVSHRINKVR(%)  7.3183E-01  5.9041E+01  9.9999E+01  3.3449E+01  2.7211E+01
 RELATIVEINF(%)  9.9223E+01  3.7591E+00  2.0923E-04  7.4538E+00  2.4536E+01
 EPSSHRINKSD(%)  4.4455E+01
 EPSSHRINKVR(%)  6.9148E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1714.6367061427745     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -979.48587957903635     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    29.14
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.10
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1714.637       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.75E+00  7.32E-01  5.32E-01  1.15E+00  1.00E+00  5.89E-01  1.00E-02  1.76E+00  1.10E+00  9.10E-01
 


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
+        1.09E+03
 
 TH 2
+       -6.34E+00  4.66E+02
 
 TH 3
+        4.54E+00  1.27E+02  1.83E+02
 
 TH 4
+       -1.02E+01  4.18E+02 -8.97E+01  8.53E+02
 
 TH 5
+       -2.68E+00 -1.94E+02 -1.87E+02  1.01E+02  5.02E+02
 
 TH 6
+        8.14E-01 -7.74E-01  8.93E-01 -2.84E+00 -5.99E-01  1.96E+02
 
 TH 7
+        1.85E+00 -3.52E+01  1.64E+01 -2.80E+01 -2.74E+01  7.62E-02  1.06E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.07E+00 -2.58E+01 -1.43E+01  4.58E+01  2.74E+00 -3.08E-01  2.62E+01  0.00E+00  3.20E+01
 
 TH10
+       -1.78E-01 -1.60E+01 -3.21E+01 -1.88E+00 -4.71E+01  3.37E-02  2.20E+01  0.00E+00  1.82E+00  8.63E+01
 
 TH11
+       -8.00E+00 -2.40E+01 -2.12E+01 -8.59E-01  6.44E+00  2.46E+00  9.64E+00  0.00E+00  3.78E+00  1.63E+01  2.61E+02
 
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
 #CPUT: Total CPU Time in Seconds,       35.291
Stop Time:
Wed Sep 29 17:07:11 CDT 2021

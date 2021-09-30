Wed Sep 29 08:49:23 CDT 2021
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
$DATA ../../../../data/int/D/dat43.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E22.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m43.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   29071.4264175481        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   8.2368E+02  4.9715E+02  2.1580E+01  4.4082E+02  7.1994E+00 -1.7609E+03 -1.1675E+03 -4.7703E+01 -1.5794E+03 -2.7029E+02
            -6.0114E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -722.722240390876        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  8.8784E-01  1.8877E+00  9.4047E-01  2.0013E+00  9.2557E-01  2.8640E+00  2.9928E+00  9.8282E-01  2.0948E+00  1.1433E+00
             1.3621E+01
 PARAMETER: -1.8963E-02  7.3535E-01  3.8627E-02  7.9382E-01  2.2658E-02  1.1522E+00  1.1962E+00  8.2674E-02  8.3945E-01  2.3391E-01
             2.7116E+00
 GRADIENT:  -9.9815E+01  7.4792E+01 -1.6976E+01  1.6164E+02 -3.1982E+01  6.0411E+01 -1.1273E+01  4.2454E+00 -2.0870E+00  2.0069E+01
             5.1076E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -806.215829042314        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  8.4239E-01  2.1386E+00  1.5733E+01  1.8602E+00  1.7964E+00  2.3711E+00  7.7723E+00  5.1328E-01  2.0285E+00  9.3749E-01
             1.3027E+01
 PARAMETER: -7.1516E-02  8.6016E-01  2.8558E+00  7.2070E-01  6.8577E-01  9.6335E-01  2.1506E+00 -5.6693E-01  8.0728E-01  3.5447E-02
             2.6671E+00
 GRADIENT:  -1.2006E+02  4.5256E+01  6.9913E+00  2.9537E+01 -6.0698E+01  4.3995E+01  6.0374E+01  3.0729E-02  2.7022E+01  1.2634E+01
             5.6454E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -993.236949046236        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  1.1265E+00  4.1852E-01  4.0253E+01  1.6837E+00  2.5330E+00  2.6081E+00  2.9258E+00  4.2645E-01  2.4237E+00  4.8952E-01
             8.7935E+00
 PARAMETER:  2.1914E-01 -7.7102E-01  3.7952E+00  6.2099E-01  1.0294E+00  1.0586E+00  1.1736E+00 -7.5225E-01  9.8529E-01 -6.1433E-01
             2.2740E+00
 GRADIENT:   1.9419E+01 -5.3838E+00 -6.7689E+00 -6.3015E-01  5.9098E+01  7.3052E+01  5.1262E+00  4.2922E-02  3.1249E+01  3.2596E+00
             1.4631E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1003.32857660858        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:      323
 NPARAMETR:  1.0868E+00  3.0138E-01  5.7909E+01  1.6955E+00  2.2454E+00  2.1423E+00  3.3262E+00  4.9951E-01  2.1104E+00  3.5650E-01
             8.1137E+00
 PARAMETER:  1.8323E-01 -1.0994E+00  4.1589E+00  6.2801E-01  9.0890E-01  8.6186E-01  1.3018E+00 -5.9413E-01  8.4689E-01 -9.3141E-01
             2.1936E+00
 GRADIENT:   2.9721E+00 -2.1770E+00 -2.0642E+00 -2.8858E+01 -1.2298E+00 -1.5628E+01  1.8133E+00  3.0713E-02 -1.8010E+01  8.9296E-01
            -4.9733E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1007.30239794699        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      501
 NPARAMETR:  1.0865E+00  2.0048E-01  2.7509E+02  1.9147E+00  2.4066E+00  2.2548E+00  3.4034E+00  7.5650E-01  2.1666E+00  2.3013E-01
             8.3183E+00
 PARAMETER:  1.8299E-01 -1.5070E+00  5.7171E+00  7.4957E-01  9.7820E-01  9.1304E-01  1.3248E+00 -1.7905E-01  8.7316E-01 -1.3691E+00
             2.2185E+00
 GRADIENT:  -1.2752E+00 -5.3194E-01 -3.6470E-01  2.4937E-01  7.0080E+00  1.8518E+00  1.4306E+00  4.6383E-03  3.1881E+00  4.8987E-01
            -2.2433E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1007.59257424383        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      678
 NPARAMETR:  1.0886E+00  1.3810E-01  9.7580E+02  1.9414E+00  2.3866E+00  2.2406E+00  3.0793E+00  1.2095E+00  2.0903E+00  1.2786E-01
             8.3257E+00
 PARAMETER:  1.8486E-01 -1.8798E+00  6.9833E+00  7.6339E-01  9.6989E-01  9.0674E-01  1.2247E+00  2.9018E-01  8.3731E-01 -1.9569E+00
             2.2193E+00
 GRADIENT:  -2.2723E-01 -6.6043E-01 -5.8939E-02 -3.3130E+00 -2.3393E+00  3.9432E-01  7.8607E-01  1.0228E-03 -2.4225E+00  1.3270E-01
            -7.6591E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1012.15297345462        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      862
 NPARAMETR:  1.0815E+00  6.0169E-01  9.0367E+01  1.5974E+00  2.3590E+00  2.2428E+00  1.0000E-02  2.8641E-02  2.5989E+00  1.0000E-02
             8.4328E+00
 PARAMETER:  1.7839E-01 -4.0802E-01  4.6039E+00  5.6836E-01  9.5824E-01  9.0771E-01 -4.9782E+00 -3.4529E+00  1.0551E+00 -1.0082E+01
             2.2321E+00
 GRADIENT:  -4.8058E+00 -3.2174E+00 -1.4419E+00  6.9950E+00  1.8805E+00  1.6781E-01  0.0000E+00  4.4673E-05  5.9839E-02  0.0000E+00
             1.8039E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1014.98161298148        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1038
 NPARAMETR:  1.0900E+00  8.7218E-01  7.1636E+02  1.2909E+00  2.4127E+00  2.2467E+00  1.0000E-02  1.0000E-02  3.0587E+00  1.0000E-02
             8.3657E+00
 PARAMETER:  1.8618E-01 -3.6757E-02  6.6742E+00  3.5537E-01  9.8074E-01  9.0944E-01 -1.2146E+01 -5.4694E+00  1.2180E+00 -2.1105E+01
             2.2241E+00
 GRADIENT:  -5.5015E-01 -1.6858E+00 -1.4111E-01 -2.6482E+00  1.0768E+00  1.1341E-01  0.0000E+00  0.0000E+00  5.6285E-01  0.0000E+00
             2.1394E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1015.12623494171        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1214
 NPARAMETR:  1.0924E+00  8.6371E-01  1.8102E+04  1.3170E+00  2.4185E+00  2.2451E+00  1.0000E-02  1.0000E-02  3.0270E+00  1.0000E-02
             8.3612E+00
 PARAMETER:  1.8841E-01 -4.6522E-02  9.9038E+00  3.7535E-01  9.8316E-01  9.0874E-01 -1.8756E+01 -7.3403E+00  1.2076E+00 -3.2042E+01
             2.2236E+00
 GRADIENT:   2.7421E-01  2.9477E-01 -5.1951E-03  2.7481E-01  6.6242E-02 -6.4030E-02  0.0000E+00  0.0000E+00 -5.0328E-01  0.0000E+00
            -7.5381E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1015.13398528426        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     1412             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0918E+00  8.6810E-01  2.3841E+05  1.3106E+00  2.4180E+00  2.2503E+00  1.0000E-02  1.0000E-02  3.0446E+00  1.0000E-02
             8.3616E+00
 PARAMETER:  1.8781E-01 -4.1447E-02  1.2482E+01  3.7045E-01  9.8296E-01  9.1106E-01 -2.1359E+01 -8.0580E+00  1.2134E+00 -3.6318E+01
             2.2236E+00
 GRADIENT:   1.9764E+00  2.4206E+00 -3.6657E-04  1.2432E+01  4.0408E+00  2.5612E+01  0.0000E+00  0.0000E+00  2.1431E+01  0.0000E+00
             4.2044E+01

0ITERATION NO.:   54    OBJECTIVE VALUE:  -1015.13402678836        NO. OF FUNC. EVALS.: 147
 CUMULATIVE NO. OF FUNC. EVALS.:     1559
 NPARAMETR:  1.0918E+00  8.6862E-01  3.0640E+05  1.3104E+00  2.4184E+00  2.2505E+00  1.0000E-02  1.0000E-02  3.0454E+00  1.0000E-02
             8.3622E+00
 PARAMETER:  1.8775E-01 -4.1261E-02  1.2607E+01  3.7069E-01  9.8288E-01  9.1108E-01 -2.1359E+01 -8.0580E+00  1.2132E+00 -3.6318E+01
             2.2236E+00
 GRADIENT:  -8.7635E-03 -2.9587E-02 -1.3324E-04  2.6035E-02 -4.1355E-02 -5.2234E-03  0.0000E+00  0.0000E+00 -3.8851E-02  0.0000E+00
            -7.3816E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1559
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.5097E-03 -4.9055E-04  3.6327E-09 -3.8083E-04 -1.6362E-05
 SE:             2.9009E-02  1.1490E-04  1.7480E-09  2.8245E-02  1.5180E-04
 N:                     100         100         100         100         100

 P VAL.:         7.6926E-01  1.9615E-05  3.7694E-02  9.8924E-01  9.1417E-01

 ETASHRINKSD(%)  2.8145E+00  9.9615E+01  1.0000E+02  5.3741E+00  9.9491E+01
 ETASHRINKVR(%)  5.5499E+00  9.9999E+01  1.0000E+02  1.0459E+01  9.9997E+01
 EBVSHRINKSD(%)  2.2401E+00  9.9735E+01  1.0000E+02  3.8151E+00  9.9478E+01
 EBVSHRINKVR(%)  4.4300E+00  9.9999E+01  1.0000E+02  7.4846E+00  9.9997E+01
 RELATIVEINF(%)  9.5377E+01  3.0674E-04  0.0000E+00  4.0496E+01  1.6352E-03
 EPSSHRINKSD(%)  6.8271E+00
 EPSSHRINKVR(%)  1.3188E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1015.1340267883556     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       638.95533298005512     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    44.60
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    14.77
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1015.134       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.09E+00  8.68E-01  2.70E+05  1.31E+00  2.42E+00  2.25E+00  1.00E-02  1.00E-02  3.04E+00  1.00E-02  8.36E+00
 


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
+        1.34E+02
 
 TH 2
+       -7.21E+01  2.46E+02
 
 TH 3
+       -4.12E-07  9.04E-07  3.51E-15
 
 TH 4
+       -9.78E+00  8.08E+01  2.78E-07  2.82E+01
 
 TH 5
+        9.07E+00 -4.25E+01 -1.51E-07 -1.43E+01  7.44E+00
 
 TH 6
+        8.11E+00 -8.35E+00 -3.78E-08 -2.03E+00  1.24E+00  6.18E-01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.82E+01 -4.67E+01 -1.77E-07 -1.47E+01  7.91E+00  1.81E+00  0.00E+00  0.00E+00  9.03E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.08E-01 -1.19E+01 -3.81E-08 -4.32E+00  2.08E+00  3.55E-01  0.00E+00  0.00E+00  2.12E+00  0.00E+00  1.08E+00
 
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
+        1.75E+02
 
 TH 2
+       -3.23E+00  1.76E+02
 
 TH 3
+       -1.71E-07  6.63E-07  1.11E-14
 
 TH 4
+       -2.90E+00  5.64E+01  9.85E-09  6.41E+01
 
 TH 5
+       -2.46E+00 -1.81E+01 -6.24E-09 -9.57E+00  4.76E+01
 
 TH 6
+        1.20E-01  1.87E+00 -5.59E-09 -6.35E-01 -5.26E-01  3.15E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -4.21E-02 -3.13E+01 -5.69E-09  2.17E+00  2.26E+00 -1.45E+00  0.00E+00  0.00E+00  1.63E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -6.69E+00 -1.16E+01 -1.75E-09 -5.39E+00  7.73E-01  1.37E+00  0.00E+00  0.00E+00  1.99E+00  0.00E+00  1.52E+01
 
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
+        1.76E+02
 
 TH 2
+        6.72E+01  1.22E+02
 
 TH 3
+        3.57E-09  5.55E-10  6.50E-19
 
 TH 4
+        9.21E+01  5.81E+01  2.10E-09  6.46E+01
 
 TH 5
+       -2.18E+01 -3.24E+01 -3.03E-09 -1.92E+01  4.65E+01
 
 TH 6
+        1.26E+01 -1.51E+01  9.43E-10  6.80E+00 -3.93E+00  3.46E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        4.36E+00 -2.85E+01  1.02E-09 -1.02E+00  2.56E+00  1.46E+01  0.00E+00  0.00E+00  1.48E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -8.55E+01 -6.80E+01 -3.31E-09 -4.56E+01  1.24E+01  5.27E+01  0.00E+00  0.00E+00  1.88E+01  0.00E+00  5.29E+02
 
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
 #CPUT: Total CPU Time in Seconds,       59.482
Stop Time:
Wed Sep 29 08:50:24 CDT 2021

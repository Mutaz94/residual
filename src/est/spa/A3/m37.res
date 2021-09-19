Sat Sep 18 10:25:28 CDT 2021
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
$DATA ../../../../data/spa/A3/dat37.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m37.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -513.750568114158        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.4475E+01  1.3199E+01  1.5636E+02 -1.1981E+02  1.9006E+01  2.8963E+00 -2.5452E+01 -6.7260E+01 -3.3229E+01 -7.3455E+01
            -2.0703E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1318.00572531691        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0426E+00  1.0817E+00  8.9683E-01  1.0940E+00  1.0755E+00  8.2588E-01  9.2926E-01  1.0201E+00  7.2314E-01  8.9245E-01
             4.0230E+00
 PARAMETER:  1.4168E-01  1.7855E-01 -8.8850E-03  1.8988E-01  1.7281E-01 -9.1308E-02  2.6635E-02  1.1986E-01 -2.2416E-01 -1.3782E-02
             1.4920E+00
 GRADIENT:   2.4696E+01  9.0873E+00 -1.9639E+01  3.6888E+01  2.5401E+00 -3.7761E+01  2.5411E+00  5.0705E+00  4.8617E+00  1.1833E+01
             1.1324E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1329.41130119711        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0384E+00  1.0620E+00  5.4956E-01  1.0432E+00  7.3199E-01  9.3788E-01  1.1113E+00  9.3036E-01  6.6025E-01  3.5650E-01
             3.6945E+00
 PARAMETER:  1.3766E-01  1.6014E-01 -4.9864E-01  1.4228E-01 -2.1199E-01  3.5864E-02  2.0554E-01  2.7817E-02 -3.1514E-01 -9.3143E-01
             1.4068E+00
 GRADIENT:   1.7132E+01  2.8679E+01  8.7343E+00  2.0030E+01 -3.2461E+01  5.7765E-01  4.1824E+00  5.3978E+00  4.6219E+00  2.8233E+00
             8.4841E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1337.32626554490        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0203E+00  8.9788E-01  5.9920E-01  1.1203E+00  7.2197E-01  9.4737E-01  1.3552E+00  7.3972E-01  6.2523E-01  2.7607E-01
             3.2290E+00
 PARAMETER:  1.2011E-01 -7.7241E-03 -4.1217E-01  2.1364E-01 -2.2578E-01  4.5937E-02  4.0393E-01 -2.0149E-01 -3.6964E-01 -1.1871E+00
             1.2722E+00
 GRADIENT:  -1.4150E-01  6.8792E+00 -6.8302E-01  1.1259E+01 -9.5305E-01  1.0778E+00  1.3553E+00  2.5316E-01 -8.8280E-01  7.3394E-01
             2.2936E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1337.66083792488        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.0219E+00  9.2202E-01  3.0905E-01  1.0165E+00  4.9552E-01  9.5257E-01  1.1991E+00  6.5339E-01  7.0886E-01  6.8225E-02
             3.0829E+00
 PARAMETER:  1.2166E-01  1.8810E-02 -1.0742E+00  1.1641E-01 -6.0215E-01  5.1406E-02  2.8157E-01 -3.2558E-01 -2.4410E-01 -2.5849E+00
             1.2259E+00
 GRADIENT:   7.9609E+00  4.1904E+01  2.2313E+01  1.3743E+01 -4.5645E+01 -3.4893E+00  3.1991E+00 -1.1602E+00 -1.2613E+00  7.9509E-02
             6.1208E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1338.45900388421        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0158E+00  8.1013E-01  2.0536E-01  9.7615E-01  3.6959E-01  9.4721E-01  1.1736E+00  9.5502E-01  8.0932E-01  1.0000E-02
             2.8690E+00
 PARAMETER:  1.1566E-01 -1.1056E-01 -1.4830E+00  7.5866E-02 -8.9535E-01  4.5763E-02  2.6005E-01  5.3972E-02 -1.1156E-01 -4.6991E+00
             1.1540E+00
 GRADIENT:   1.9005E+01  7.8604E+01  4.9528E+01 -6.5035E+00 -1.1420E+02 -1.1619E+01  1.2830E+00 -2.6382E+00  7.5676E-01  0.0000E+00
             1.4603E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1342.20829662206        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      442
 NPARAMETR:  1.0007E+00  6.4175E-01  1.6100E-01  9.6900E-01  3.0536E-01  9.9128E-01  1.1658E+00  1.1266E+00  9.2526E-01  1.0000E-02
             2.5719E+00
 PARAMETER:  1.0069E-01 -3.4355E-01 -1.7263E+00  6.8514E-02 -1.0863E+00  9.1242E-02  2.5338E-01  2.1922E-01  2.2324E-02 -7.9330E+00
             1.0447E+00
 GRADIENT:   1.0729E+01  7.3847E+00  9.2642E+00 -1.7218E+01 -2.2552E+01  7.3859E-02 -2.8598E+00 -2.6476E+00  1.4081E+00  0.0000E+00
            -8.9859E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1344.79202558478        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      513
 NPARAMETR:  9.8669E-01  9.3521E-01  1.7219E-01  8.9185E-01  4.1230E-01  9.7346E-01  9.9765E-01  1.2778E+00  8.5138E-01  1.0000E-02
             2.6202E+00
 PARAMETER:  8.6601E-02  3.3015E-02 -1.6591E+00 -1.4459E-02 -7.8601E-01  7.3105E-02  9.7650E-02  3.4513E-01 -6.0891E-02 -6.3309E+00
             1.0633E+00
 GRADIENT:  -1.2464E+01  1.9506E+01  7.5251E+00  2.2597E+01 -1.6452E+01 -2.1165E-01 -2.1766E+00 -3.4887E+00 -4.4282E+00  0.0000E+00
            -9.4024E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1357.36300065611        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      588
 NPARAMETR:  9.8167E-01  1.4755E+00  1.3340E-01  6.1971E-01  6.5765E-01  9.6269E-01  8.3872E-01  2.2945E+00  9.8597E-01  1.0000E-02
             2.5007E+00
 PARAMETER:  8.1497E-02  4.8897E-01 -1.9144E+00 -3.7850E-01 -3.1909E-01  6.1979E-02 -7.5884E-02  9.3050E-01  8.5869E-02 -1.0791E+01
             1.0166E+00
 GRADIENT:  -7.7154E+00 -2.7317E+01 -3.7784E+00  1.4081E+01  1.6349E+01  3.1021E+00  3.2800E+00 -1.8751E+00 -7.6912E+00  0.0000E+00
            -1.4971E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1362.89685428006        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      664
 NPARAMETR:  9.9608E-01  1.7431E+00  1.1091E-01  4.9754E-01  7.8445E-01  9.4979E-01  7.4085E-01  2.5685E+00  1.2779E+00  1.0000E-02
             2.6305E+00
 PARAMETER:  9.6070E-02  6.5567E-01 -2.0990E+00 -5.9808E-01 -1.4277E-01  4.8489E-02 -1.9995E-01  1.0433E+00  3.4521E-01 -1.4012E+01
             1.0672E+00
 GRADIENT:   1.3761E+01  2.1753E+01  3.0127E+00  1.0217E+01 -1.0476E+01 -7.8177E-01 -3.1566E+00  1.5131E+00 -2.3382E+00  0.0000E+00
             1.3609E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1362.90317775792        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      844
 NPARAMETR:  9.9607E-01  1.7434E+00  1.1085E-01  4.9739E-01  7.8459E-01  9.5284E-01  7.4081E-01  2.5685E+00  1.2784E+00  1.0000E-02
             2.6304E+00
 PARAMETER:  9.6066E-02  6.5585E-01 -2.0995E+00 -5.9838E-01 -1.4259E-01  5.1697E-02 -2.0001E-01  1.0433E+00  3.4561E-01 -1.4018E+01
             1.0672E+00
 GRADIENT:   8.3644E+00  1.3200E+01  2.1972E+00  8.8560E+00 -1.0789E+01 -8.2850E-02 -3.2795E+00  1.2263E+00 -2.4418E+00  0.0000E+00
            -6.8528E-01

0ITERATION NO.:   53    OBJECTIVE VALUE:  -1362.90373625243        NO. OF FUNC. EVALS.: 103
 CUMULATIVE NO. OF FUNC. EVALS.:      947
 NPARAMETR:  9.9608E-01  1.7434E+00  1.1084E-01  4.9739E-01  7.8459E-01  9.5396E-01  7.4082E-01  2.5685E+00  1.2784E+00  1.0000E-02
             2.6304E+00
 PARAMETER:  9.6067E-02  6.5582E-01 -2.0997E+00 -5.9840E-01 -1.4259E-01  5.2962E-02 -2.0001E-01  1.0433E+00  3.4561E-01 -1.4018E+01
             1.0671E+00
 GRADIENT:  -1.0314E+04 -1.5627E+03  2.4873E+02 -1.7192E+03  7.2256E+03  3.5736E-01 -2.5835E+03 -9.9346E+02  2.9852E+03  0.0000E+00
             9.6704E+02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      947
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.4712E-03 -2.4495E-02 -2.7093E-03  7.8838E-03 -3.0409E-04
 SE:             2.9039E-02  2.4951E-02  1.5751E-02  2.0303E-02  2.1553E-04
 N:                     100         100         100         100         100

 P VAL.:         9.3218E-01  3.2623E-01  8.6344E-01  6.9779E-01  1.5828E-01

 ETASHRINKSD(%)  2.7166E+00  1.6410E+01  4.7231E+01  3.1983E+01  9.9278E+01
 ETASHRINKVR(%)  5.3594E+00  3.0128E+01  7.2154E+01  5.3737E+01  9.9995E+01
 EBVSHRINKSD(%)  2.7357E+00  1.7636E+01  4.3607E+01  3.3057E+01  9.9192E+01
 EBVSHRINKVR(%)  5.3966E+00  3.2161E+01  6.8198E+01  5.5187E+01  9.9993E+01
 RELATIVEINF(%)  9.2106E+01  8.9699E+00  1.8296E+01  9.0022E+00  9.1291E-04
 EPSSHRINKSD(%)  3.4087E+01
 EPSSHRINKVR(%)  5.6555E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1362.9037362524289     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -627.75290968869069     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:     9.92
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     7.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1362.904       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.96E-01  1.74E+00  1.11E-01  4.97E-01  7.85E-01  9.54E-01  7.41E-01  2.57E+00  1.28E+00  1.00E-02  2.63E+00
 


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
+        4.60E+06
 
 TH 2
+        2.93E+03  1.87E+00
 
 TH 3
+       -3.39E+05 -2.16E+02  2.50E+04
 
 TH 4
+        1.55E+06  9.88E+02 -1.14E+05  5.21E+05
 
 TH 5
+       -2.91E+06 -1.86E+03  2.15E+05 -9.81E+05  1.85E+06
 
 TH 6
+       -1.86E+03 -1.18E+00  1.37E+02 -6.25E+02  1.18E+03  7.49E-01
 
 TH 7
+        1.25E+06  8.00E+02 -9.25E+04  4.22E+05 -7.95E+05 -5.06E+02  3.42E+05
 
 TH 8
+        4.45E+03  2.84E+00 -3.28E+02  1.50E+03 -2.82E+03 -1.79E+00  1.21E+03  4.30E+00
 
 TH 9
+       -4.77E+04 -3.05E+01  3.52E+03 -1.61E+04  3.03E+04  1.93E+01 -1.30E+04 -4.62E+01  4.96E+02
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.54E+02 -1.62E-01  1.87E+01 -8.55E+01  1.61E+02  1.02E-01 -6.93E+01 -2.46E-01  2.64E+00  0.00E+00  1.40E-02
 
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
+        2.60E+07
 
 TH 2
+       -3.93E+02  1.98E+05
 
 TH 3
+        1.57E+03 -5.71E+03  4.80E+06
 
 TH 4
+        8.72E+06  2.72E+03 -1.36E+04  2.92E+06
 
 TH 5
+        3.52E+03  1.46E+03  6.11E+04 -2.54E+04  2.06E+07
 
 TH 6
+       -4.49E+03 -4.00E+02  1.93E+03 -1.52E+03  3.99E+03  1.90E+02
 
 TH 7
+       -2.69E+03 -6.60E+02  3.15E+03  1.95E+04  6.67E+03 -3.01E+03  1.18E+07
 
 TH 8
+        1.02E+04  8.89E+02 -4.45E+03  3.42E+03 -9.12E+03 -1.66E+02  6.87E+03  3.63E+04
 
 TH 9
+        9.08E+02 -2.30E+02  1.14E+03 -6.52E+03  2.21E+03  1.01E+03  1.69E+03 -2.30E+03  1.32E+06
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        1.24E+02 -6.76E+01  2.50E+03 -1.03E+03 -8.03E+02  1.63E+02  2.82E+02 -3.62E+02  9.85E+01  0.00E+00  3.28E+04
 
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
+        2.69E+07
 
 TH 2
+        2.32E+06  2.01E+05
 
 TH 3
+       -1.16E+07 -1.01E+06  5.04E+06
 
 TH 4
+        8.98E+06  7.76E+05 -3.89E+06  3.00E+06
 
 TH 5
+       -2.39E+07 -2.07E+06  1.03E+07 -7.98E+06  2.12E+07
 
 TH 6
+        1.67E+04  1.47E+03 -7.25E+03  5.64E+03 -1.49E+04  1.91E+02
 
 TH 7
+        1.81E+07  1.56E+06 -7.82E+06  6.03E+06 -1.61E+07  1.13E+04  1.21E+07
 
 TH 8
+        1.01E+06  8.71E+04 -4.36E+05  3.37E+05 -8.96E+05  6.30E+02  6.78E+05  3.78E+04
 
 TH 9
+       -6.06E+06 -5.23E+05  2.62E+06 -2.02E+06  5.38E+06 -3.79E+03 -4.07E+06 -2.27E+05  1.36E+06
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -9.52E+05 -8.22E+04  4.12E+05 -3.18E+05  8.46E+05 -5.86E+02 -6.40E+05 -3.57E+04  2.14E+05  0.00E+00  3.37E+04
 
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
 #CPUT: Total CPU Time in Seconds,       17.274
Stop Time:
Sat Sep 18 10:25:47 CDT 2021
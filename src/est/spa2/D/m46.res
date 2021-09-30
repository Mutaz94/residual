Thu Sep 30 09:07:23 CDT 2021
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
$DATA ../../../../data/spa2/D/dat46.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m46.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   17806.8685361397        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.3810E+02  3.4173E+02  4.5236E+00  2.4820E+02  1.7689E+02 -1.7423E+03 -8.4098E+02 -5.8737E+01 -1.2475E+03 -5.5233E+02
            -3.5608E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -615.915086544831        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1625E+00  1.2526E+00  9.7608E-01  1.4791E+00  9.9403E-01  1.9134E+00  1.5222E+00  9.9038E-01  1.4074E+00  1.1585E+00
             1.4186E+01
 PARAMETER:  2.5056E-01  3.2526E-01  7.5791E-02  4.9140E-01  9.4011E-02  7.4890E-01  5.2015E-01  9.0329E-02  4.4173E-01  2.4711E-01
             2.7523E+00
 GRADIENT:  -5.5361E+01 -1.7098E+01 -1.7953E+01  2.0618E+01  1.9277E+01  3.6711E+01 -1.3615E+01  3.4867E+00  4.6721E+00  1.5269E+01
             3.2826E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -683.627047366887        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  1.1104E+00  1.1446E+00  5.6187E+00  1.6681E+00  1.8024E+00  2.2936E+00  5.9412E+00  6.6633E-01  2.2196E+00  2.5466E+00
             1.2049E+01
 PARAMETER:  2.0471E-01  2.3509E-01  1.8261E+00  6.1167E-01  6.8912E-01  9.3014E-01  1.8819E+00 -3.0598E-01  8.9733E-01  1.0348E+00
             2.5890E+00
 GRADIENT:  -3.2103E+01  1.1363E+01 -2.2059E+00 -1.4546E+01 -2.5950E+01  5.7339E+01  7.3795E+01  1.1901E-01  4.8124E+01  5.2443E+01
             3.2018E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -786.126332821940        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0427E+00  1.0294E+00  8.7981E+00  1.0711E+00  2.0692E+00  1.9909E+00  4.2053E+00  4.5632E+00  8.8074E-01  5.0265E-01
             7.7857E+00
 PARAMETER:  1.4184E-01  1.2898E-01  2.2745E+00  1.6872E-01  8.2718E-01  7.8857E-01  1.5363E+00  1.6180E+00 -2.6988E-02 -5.8787E-01
             2.1523E+00
 GRADIENT:   4.3417E-01 -1.9569E+01 -7.2359E-01 -2.7987E+01  7.2747E+00  8.5157E+00  3.5241E+01  9.7105E-01  6.5220E+00  2.7375E+00
            -6.1410E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -789.594580381139        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.0616E+00  1.4641E+00  4.7991E+00  9.4798E-01  1.9388E+00  1.9422E+00  3.5520E+00  1.2061E+00  6.6215E-01  4.7367E-01
             8.1897E+00
 PARAMETER:  1.5975E-01  4.8127E-01  1.6684E+00  4.6573E-02  7.6209E-01  7.6383E-01  1.3675E+00  2.8738E-01 -3.1226E-01 -6.4724E-01
             2.2029E+00
 GRADIENT:   1.4197E+00  4.1478E-01  1.1685E+00 -2.4147E+00 -3.6518E+00  3.6592E-01  2.2668E+00  1.8074E-01  2.4611E+00  2.4182E+00
            -9.3171E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -790.189617581673        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.0592E+00  1.5739E+00  3.3821E+00  8.9582E-01  1.8601E+00  1.9231E+00  3.4302E+00  2.7689E-01  4.6474E-01  3.5466E-01
             8.3008E+00
 PARAMETER:  1.5755E-01  5.5356E-01  1.3185E+00 -1.0021E-02  7.2065E-01  7.5393E-01  1.3326E+00 -1.1841E+00 -6.6627E-01 -9.3661E-01
             2.2163E+00
 GRADIENT:  -2.3721E+00  4.5508E+00  1.8909E+00  7.0889E-01 -4.1195E+00 -3.2752E+00 -2.8635E+00  2.0889E-02  9.4899E-01  1.4118E+00
             6.4563E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -791.389233493480        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      500
 NPARAMETR:  1.0588E+00  1.5768E+00  2.6580E+00  8.7219E-01  1.8590E+00  1.9194E+00  3.4432E+00  6.1113E-02  2.6308E-01  1.2348E-01
             8.3376E+00
 PARAMETER:  1.5717E-01  5.5539E-01  1.0776E+00 -3.6750E-02  7.2004E-01  7.5201E-01  1.3364E+00 -2.6950E+00 -1.2353E+00 -1.9917E+00
             2.2208E+00
 GRADIENT:  -3.5477E+00  8.9612E-01  1.9461E-01 -1.4781E+00  5.8407E+00 -4.7084E+00  8.9481E-01  1.9165E-03  2.3117E-01  1.7760E-01
             1.5292E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -791.886147203338        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      637
 NPARAMETR:  1.0590E+00  1.5770E+00  3.0733E+00  8.8903E-01  1.8567E+00  1.9251E+00  3.4885E+00  3.4513E-02  2.4199E-01  5.2089E-02
             8.4759E+00
 PARAMETER:  1.5734E-01  5.5550E-01  1.2228E+00 -1.7619E-02  7.1878E-01  7.5497E-01  1.3495E+00 -3.2664E+00 -1.3189E+00 -2.8548E+00
             2.2372E+00
 GRADIENT:  -1.6543E+01 -4.7913E+00  1.5290E+00 -6.3766E-01 -1.7021E+00 -2.8649E+01 -2.8924E+01  4.2241E-04 -1.1793E-02  2.9447E-02
             7.4040E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -794.640180529994        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      814
 NPARAMETR:  1.0602E+00  1.5832E+00  2.7195E+00  9.3602E-01  1.8297E+00  1.9869E+00  4.0735E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4244E+00
 PARAMETER:  1.5848E-01  5.5942E-01  1.1004E+00  3.3887E-02  7.0418E-01  7.8655E-01  1.5045E+00 -2.4100E+01 -9.7678E+00 -2.3065E+01
             2.2311E+00
 GRADIENT:  -1.4251E+01  7.0525E+00 -3.6746E-03  1.6489E+00  1.6127E+00 -1.9915E+01  4.1481E+00  0.0000E+00  0.0000E+00  0.0000E+00
             1.4736E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -795.314952957629        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      995
 NPARAMETR:  1.0595E+00  1.5672E+00  2.5959E+00  9.0799E-01  1.8301E+00  2.0920E+00  3.9557E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.3691E+00
 PARAMETER:  1.5777E-01  5.4927E-01  1.0539E+00  3.4726E-03  7.0439E-01  8.3813E-01  1.4752E+00 -2.7500E+01 -1.1941E+01 -2.8781E+01
             2.2245E+00
 GRADIENT:  -1.1979E+01  1.7780E+00 -3.0164E-01 -6.0440E+00  3.4355E+00 -2.4257E+00  8.8446E-01  0.0000E+00  0.0000E+00  0.0000E+00
             1.5225E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -795.725720681675        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1180
 NPARAMETR:  1.0878E+00  1.4791E+00  2.5950E+00  9.4070E-01  1.8030E+00  2.1181E+00  4.0843E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4195E+00
 PARAMETER:  1.8415E-01  4.9143E-01  1.0536E+00  3.8871E-02  6.8943E-01  8.5050E-01  1.5072E+00 -2.9655E+01 -1.2799E+01 -3.1288E+01
             2.2305E+00
 GRADIENT:  -4.3040E-01 -1.9603E-01 -2.6882E-01 -3.6053E+00  2.5154E+00  2.4937E+00  1.5896E+00  0.0000E+00  0.0000E+00  0.0000E+00
             3.8655E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -795.775586462841        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1355
 NPARAMETR:  1.0891E+00  1.4441E+00  2.4154E+00  9.5265E-01  1.7424E+00  2.0994E+00  4.1145E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4113E+00
 PARAMETER:  1.8533E-01  4.6747E-01  9.8186E-01  5.1491E-02  6.5528E-01  8.4165E-01  1.5145E+00 -2.9655E+01 -1.2799E+01 -3.1288E+01
             2.2296E+00
 GRADIENT:   3.0104E-01 -3.0106E-01 -1.4608E-03 -1.6475E-02  2.0927E-01 -1.6590E-01  3.6820E-01  0.0000E+00  0.0000E+00  0.0000E+00
            -3.8240E-02

0ITERATION NO.:   57    OBJECTIVE VALUE:  -795.778159452428        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1412
 NPARAMETR:  1.0891E+00  1.4510E+00  2.3477E+00  9.5041E-01  1.7281E+00  2.1025E+00  4.1035E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.4123E+00
 PARAMETER:  1.8535E-01  4.7227E-01  9.5343E-01  4.9136E-02  6.4705E-01  8.4311E-01  1.5118E+00 -2.9655E+01 -1.2799E+01 -3.1288E+01
             2.2297E+00
 GRADIENT:   2.8634E-01 -1.6280E-02 -2.7502E-02  6.0924E-02 -8.8189E-02  3.6542E-01  3.0883E-01  0.0000E+00  0.0000E+00  0.0000E+00
             1.4269E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1412
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1643E-02  9.5303E-03 -1.0968E-06 -8.0480E-04  8.1279E-06
 SE:             2.8462E-02  2.6661E-02  2.0665E-05  1.8587E-04  7.0062E-05
 N:                     100         100         100         100         100

 P VAL.:         6.8248E-01  7.2075E-01  9.5767E-01  1.4923E-05  9.0764E-01

 ETASHRINKSD(%)  4.6484E+00  1.0681E+01  9.9931E+01  9.9377E+01  9.9765E+01
 ETASHRINKVR(%)  9.0808E+00  2.0221E+01  1.0000E+02  9.9996E+01  9.9999E+01
 EBVSHRINKSD(%)  4.1376E+00  7.5093E+00  9.9906E+01  9.9603E+01  9.9673E+01
 EBVSHRINKVR(%)  8.1041E+00  1.4455E+01  1.0000E+02  9.9998E+01  9.9999E+01
 RELATIVEINF(%)  9.1427E+01  4.1979E+01  1.4451E-05  7.9957E-04  1.7408E-04
 EPSSHRINKSD(%)  8.7608E+00
 EPSSHRINKVR(%)  1.6754E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -795.77815945242764     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       306.94808039317945     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.31
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    10.15
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -795.778       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.09E+00  1.45E+00  2.35E+00  9.50E-01  1.73E+00  2.10E+00  4.10E+00  1.00E-02  1.00E-02  1.00E-02  8.41E+00
 


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
+        1.63E+02
 
 TH 2
+       -4.68E+00  5.28E+00
 
 TH 3
+        1.50E+00 -1.53E-01  1.62E-02
 
 TH 4
+       -5.99E+01  3.65E+01 -1.29E+00  2.57E+02
 
 TH 5
+       -5.50E+00 -5.87E-01 -3.49E-02 -3.01E+00  2.94E-01
 
 TH 6
+        1.18E+01 -3.25E-01  1.05E-01 -4.24E+00 -3.92E-01  1.09E+00
 
 TH 7
+        6.27E+00 -3.07E+00  1.19E-01 -2.18E+01  2.06E-01  4.47E-01  1.86E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -3.25E-01 -2.14E+00  3.89E-02 -1.44E+01  3.32E-01  2.65E-01  1.19E+00  0.00E+00  0.00E+00  0.00E+00  1.26E+00
 
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
+        1.90E+02
 
 TH 2
+       -2.44E+00  2.70E+01
 
 TH 3
+        6.08E-01  1.16E+00  2.06E+00
 
 TH 4
+       -9.18E+00  4.29E+01 -1.56E+00  3.02E+02
 
 TH 5
+       -2.65E+00 -8.04E+00 -7.91E+00 -3.68E+00  3.80E+01
 
 TH 6
+        8.80E-01 -3.52E-01  2.56E-01  2.09E+00 -1.76E+00  3.68E+01
 
 TH 7
+        6.78E-01  2.35E+00 -5.02E-01 -2.50E+01  1.57E+00 -8.24E-01  8.04E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -6.54E+00 -3.21E+00 -1.14E-01 -1.85E+01  1.17E+00  1.71E+00  1.38E+00  0.00E+00  0.00E+00  0.00E+00  9.87E+00
 
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
+        1.97E+02
 
 TH 2
+        5.16E+01  2.70E+01
 
 TH 3
+        2.85E+00  1.28E+00  8.72E-01
 
 TH 4
+        7.33E+01  4.79E+01  2.28E+00  3.76E+02
 
 TH 5
+       -1.77E+01 -5.47E+00 -3.64E+00 -2.24E+01  1.77E+01
 
 TH 6
+        3.59E+01  8.16E+00 -2.06E-01 -1.05E+01 -8.67E-01  4.23E+01
 
 TH 7
+        1.80E+00  4.71E+00 -6.27E-01 -3.19E+01  6.15E+00  5.63E+00  1.31E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -6.88E+01 -1.77E+01 -9.96E-01 -3.08E+01  6.42E+00  6.19E+00  3.24E+00  0.00E+00  0.00E+00  0.00E+00  2.13E+02
 
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
 #CPUT: Total CPU Time in Seconds,       36.514
Stop Time:
Thu Sep 30 09:08:01 CDT 2021

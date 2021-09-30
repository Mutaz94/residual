Wed Sep 29 20:13:07 CDT 2021
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
$DATA ../../../../data/spa/D/dat63.csv ignore=@
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
 (E4.0,E3.0,E22.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m63.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   16135.0243825793        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8304E+02  2.5855E+02 -7.6844E+01  7.8184E+00  2.4865E+02 -1.8568E+03 -7.2073E+02 -4.9218E+01 -1.5429E+03 -5.5844E+02
            -3.0575E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -617.048384430428        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.4179E+00  1.1615E+00  9.1479E-01  1.7185E+00  1.2850E+00  1.9063E+00  1.1254E+00  9.7568E-01  1.1457E+00  1.0456E+00
             1.4667E+01
 PARAMETER:  4.4916E-01  2.4972E-01  1.0941E-02  6.4147E-01  3.5079E-01  7.4516E-01  2.1813E-01  7.5382E-02  2.3603E-01  1.4455E-01
             2.7856E+00
 GRADIENT:  -1.7289E+00  3.5126E+01  1.0247E+00  6.2075E+01 -1.1536E+01  3.0311E+01 -1.0656E+00  5.1746E+00  4.3667E+00  2.0641E+00
             6.6993E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -631.758669437312        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.3286E+00  7.5893E-01  1.1883E+00  1.7788E+00  2.0903E+00  1.6304E+00  1.9471E+00  2.7708E-01  8.5537E-01  4.8861E+00
             1.3893E+01
 PARAMETER:  3.8413E-01 -1.7585E-01  2.7249E-01  6.7592E-01  8.3731E-01  5.8882E-01  7.6634E-01 -1.1835E+00 -5.6222E-02  1.6864E+00
             2.7314E+00
 GRADIENT:  -6.4078E+00  2.5304E+01  3.9607E+00  6.9575E+01 -1.9917E+01 -9.3827E-01  3.6337E-01  1.6291E-01  4.2408E+00  1.5122E+00
             4.7978E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -653.191466320321        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  1.1676E+00  3.0266E-01  9.2864E-01  1.6844E+00  2.7977E+00  1.5515E+00  1.6061E+00  1.9704E-02  5.1312E-01  8.4260E+00
             1.3176E+01
 PARAMETER:  2.5492E-01 -1.0951E+00  2.5968E-02  6.2139E-01  1.1288E+00  5.3924E-01  5.7380E-01 -3.8270E+00 -5.6724E-01  2.2313E+00
             2.6784E+00
 GRADIENT:  -2.9930E+01  6.5109E+00  1.2920E+00  7.6032E+00 -1.4477E+01  3.6251E+00  5.1005E-01  2.5554E-04  7.2065E+00  1.9012E+01
             6.2718E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -703.816253570394        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  8.0043E-01  1.0000E-02  8.8616E-02  7.2141E-01  1.4082E+01  1.1890E+00  1.7724E+00  1.0000E-02  1.0000E-02  1.8440E+00
             1.0403E+01
 PARAMETER: -1.2260E-01 -6.6511E+00 -2.3234E+00 -2.2655E-01  2.7449E+00  2.7308E-01  6.7235E-01 -2.0564E+01 -5.9790E+00  7.1196E-01
             2.4421E+00
 GRADIENT:   1.4362E+02  0.0000E+00 -7.6957E+01  1.7422E+02  7.1852E-01 -1.4713E+02 -9.0448E-04  0.0000E+00  0.0000E+00 -1.2373E-02
            -1.6622E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -711.193048507029        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      394
 NPARAMETR:  6.0729E-01  1.0000E-02  3.9400E-02  4.3522E-01  3.4654E+01  1.1825E+00  1.3482E+00  1.0000E-02  1.0000E-02  8.9015E-01
             9.6389E+00
 PARAMETER: -3.9874E-01 -9.1321E+00 -3.1340E+00 -7.3190E-01  3.6454E+00  2.6766E-01  3.9875E-01 -2.8094E+01 -8.7641E+00 -1.6362E-02
             2.3658E+00
 GRADIENT:   1.4117E+02  0.0000E+00 -1.9158E+02  2.3412E+02  2.9543E-01 -1.6137E+02 -2.7437E-03  0.0000E+00  0.0000E+00 -3.1790E-04
            -2.2834E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -757.032171994157        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      572
 NPARAMETR:  5.6023E-01  1.0000E-02  3.7207E-02  4.0437E-01  3.2697E+01  1.5654E+00  1.2279E+00  1.0000E-02  1.0000E-02  6.5416E-01
             1.0276E+01
 PARAMETER: -4.7940E-01 -9.0783E+00 -3.1913E+00 -8.0542E-01  3.5873E+00  5.4816E-01  3.0533E-01 -2.8816E+01 -9.2946E+00 -3.2440E-01
             2.4298E+00
 GRADIENT:   2.0481E+01  0.0000E+00 -5.8452E+01  9.3901E+01  1.0505E-01 -2.6761E+01  4.2916E-04  0.0000E+00  0.0000E+00 -5.7301E-05
            -1.0003E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -769.931543323400        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      748
 NPARAMETR:  4.2133E-01  1.0000E-02  1.7862E-02  2.2371E-01  7.4636E+01  1.6288E+00  6.3902E-01  1.0000E-02  1.0000E-02  2.4015E-01
             1.1133E+01
 PARAMETER: -7.6433E-01 -1.1199E+01 -3.9251E+00 -1.3974E+00  4.4126E+00  5.8783E-01 -3.4781E-01 -3.5685E+01 -1.2710E+01 -1.3265E+00
             2.5099E+00
 GRADIENT:   1.1148E-01  0.0000E+00 -4.3036E+00  4.9319E+00  2.1532E-03 -6.1132E-01  6.0254E-03  0.0000E+00  0.0000E+00 -1.0569E-07
             1.1766E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -769.942497241098        NO. OF FUNC. EVALS.: 106
 CUMULATIVE NO. OF FUNC. EVALS.:      854
 NPARAMETR:  4.2180E-01  1.0000E-02  1.7864E-02  2.2301E-01  6.2695E+01  1.6335E+00  1.0000E-02  1.0000E-02  1.0000E-02  2.3366E-01
             1.1111E+01
 PARAMETER: -7.6321E-01 -1.1199E+01 -3.9249E+00 -1.4005E+00  4.2383E+00  5.9071E-01 -5.7365E+00 -3.5685E+01 -1.2710E+01 -1.3539E+00
             2.5079E+00
 GRADIENT:   5.2018E+01  0.0000E+00  6.9077E+01  2.6664E+01  2.2883E-03  8.1989E+00  0.0000E+00  0.0000E+00  0.0000E+00  1.0575E-07
             1.9905E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -769.942758660881        NO. OF FUNC. EVALS.:  78
 CUMULATIVE NO. OF FUNC. EVALS.:      932
 NPARAMETR:  4.2208E-01  1.0000E-02  1.7834E-02  2.2250E-01  4.1734E+01  1.6356E+00  1.0000E-02  1.0000E-02  1.0000E-02  2.2030E-01
             1.1105E+01
 PARAMETER: -7.6256E-01 -1.1199E+01 -3.9266E+00 -1.4028E+00  3.8313E+00  5.9201E-01 -1.7117E+01 -3.5685E+01 -1.2710E+01 -1.4128E+00
             2.5074E+00
 GRADIENT:   5.2993E+01  0.0000E+00  7.0835E+01  2.4260E+01  2.3355E-03  8.6699E+00  0.0000E+00  0.0000E+00  0.0000E+00  3.9240E-07
             1.9442E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -769.942852299843        NO. OF FUNC. EVALS.:  84
 CUMULATIVE NO. OF FUNC. EVALS.:     1016
 NPARAMETR:  4.2221E-01  1.0000E-02  1.7809E-02  2.2216E-01  3.1755E+01  1.6367E+00  1.0000E-02  1.0000E-02  1.0000E-02  2.0889E-01
             1.1102E+01
 PARAMETER: -7.6226E-01 -1.1199E+01 -3.9281E+00 -1.4043E+00  3.5581E+00  5.9268E-01 -2.6986E+01 -3.5685E+01 -1.2710E+01 -1.4660E+00
             2.5071E+00
 GRADIENT:   5.3504E+01  0.0000E+00  7.1694E+01  2.3096E+01  1.2568E-03  8.9040E+00  0.0000E+00  0.0000E+00  0.0000E+00  9.2752E-07
             1.9218E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -769.942884129762        NO. OF FUNC. EVALS.:  85
 CUMULATIVE NO. OF FUNC. EVALS.:     1101
 NPARAMETR:  4.2222E-01  1.0000E-02  1.7787E-02  2.2189E-01  2.8932E+01  1.6374E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.9838E-01
             1.1100E+01
 PARAMETER: -7.6223E-01 -1.1199E+01 -3.9293E+00 -1.4056E+00  3.4650E+00  5.9309E-01 -3.6096E+01 -3.5685E+01 -1.2710E+01 -1.5176E+00
             2.5069E+00
 GRADIENT:   5.3871E+01  0.0000E+00  7.2234E+01  2.2357E+01  4.1141E-04  9.0575E+00  0.0000E+00  0.0000E+00  0.0000E+00  1.2096E-06
             1.9086E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -769.942906672300        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1283
 NPARAMETR:  4.2222E-01  1.0000E-02  1.7799E-02  2.2204E-01  2.9539E+01  1.6370E+00  1.0000E-02  1.0000E-02  1.0000E-02  2.0433E-01
             1.1101E+01
 PARAMETER: -7.6223E-01 -1.1199E+01 -3.9286E+00 -1.4049E+00  3.4857E+00  5.9289E-01 -3.0929E+01 -3.5685E+01 -1.2710E+01 -1.4880E+00
             2.5070E+00
 GRADIENT:   3.1047E+00  0.0000E+00  4.0789E+00 -7.0934E+00 -1.4834E-04  1.1615E+00  0.0000E+00  0.0000E+00  0.0000E+00  2.6067E-07
            -9.3003E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -769.959332667106        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     1475
 NPARAMETR:  4.2076E-01  1.0000E-02  1.7740E-02  2.2249E-01  2.7812E+01  1.6312E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.9915E-01
             1.1113E+01
 PARAMETER: -7.6570E-01 -1.1199E+01 -3.9319E+00 -1.4029E+00  3.4255E+00  5.8932E-01 -3.0147E+01 -3.5685E+01 -1.2710E+01 -1.5137E+00
             2.5081E+00
 GRADIENT:   6.8774E-01  0.0000E+00 -4.2010E+00  4.3045E+00  8.6720E-04 -1.6599E-01  0.0000E+00  0.0000E+00  0.0000E+00  3.4227E-07
            -1.6368E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -769.968035581308        NO. OF FUNC. EVALS.: 201
 CUMULATIVE NO. OF FUNC. EVALS.:     1676             RESET HESSIAN, TYPE I
 NPARAMETR:  4.2066E-01  1.0000E-02  1.7699E-02  2.2195E-01  3.2354E+01  1.6318E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.9748E-01
             1.1108E+01
 PARAMETER: -7.6592E-01 -1.1199E+01 -3.9342E+00 -1.4053E+00  3.5767E+00  5.8971E-01 -3.0147E+01 -3.5685E+01 -1.2710E+01 -1.5221E+00
             2.5077E+00
 GRADIENT:   5.2156E+01  0.0000E+00  6.4792E+01  3.2325E+01  3.1460E-03  7.7501E+00  0.0000E+00  0.0000E+00  0.0000E+00  8.1082E-07
             1.9484E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -770.164433938792        NO. OF FUNC. EVALS.: 171
 CUMULATIVE NO. OF FUNC. EVALS.:     1847
 NPARAMETR:  4.0576E-01  1.0000E-02  1.6279E-02  2.0702E-01  7.7286E+01  1.6268E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.2128E-01
             1.1099E+01
 PARAMETER: -8.0199E-01 -1.1199E+01 -4.0179E+00 -1.4749E+00  4.4475E+00  5.8661E-01 -3.0147E+01 -3.5685E+01 -1.2710E+01 -2.0096E+00
             2.5069E+00
 GRADIENT:   5.2897E-01  0.0000E+00 -1.4374E+00 -7.5806E-01 -2.8147E-03  1.4799E-01  0.0000E+00  0.0000E+00  0.0000E+00  4.2688E-08
             3.1479E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -770.168760609761        NO. OF FUNC. EVALS.: 214
 CUMULATIVE NO. OF FUNC. EVALS.:     2061             RESET HESSIAN, TYPE I
 NPARAMETR:  4.0548E-01  1.0000E-02  1.6241E-02  2.0683E-01  4.4904E+03  1.6261E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.2121E-01
             1.1093E+01
 PARAMETER: -8.0268E-01 -1.1199E+01 -4.0202E+00 -1.4759E+00  8.5097E+00  5.8619E-01 -3.0147E+01 -3.5685E+01 -1.2710E+01 -2.0102E+00
             2.5063E+00
 GRADIENT:   5.4854E+01  0.0000E+00  6.7543E+01  3.2715E+01 -9.4777E-06  7.7055E+00  0.0000E+00  0.0000E+00  0.0000E+00  3.3933E-11
             1.9641E+01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -770.170834237029        NO. OF FUNC. EVALS.: 201
 CUMULATIVE NO. OF FUNC. EVALS.:     2262
 NPARAMETR:  4.0526E-01  1.0000E-02  1.6221E-02  2.0663E-01  5.1459E+04  1.6260E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.2903E-01
             1.1093E+01
 PARAMETER: -8.0322E-01 -1.1199E+01 -4.0214E+00 -1.4768E+00  1.0949E+01  5.8613E-01 -3.0147E+01 -3.5685E+01 -1.2710E+01 -1.9477E+00
             2.5063E+00
 GRADIENT:   1.1382E+00  0.0000E+00 -4.0024E+00  2.0984E+00 -9.5735E-07 -3.2241E-02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -4.2981E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -770.172846431631        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2447
 NPARAMETR:  4.0507E-01  1.0000E-02  1.6202E-02  2.0644E-01  2.9392E+14  1.6259E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.1014E-01
             1.1093E+01
 PARAMETER: -8.0369E-01 -1.1199E+01 -4.0226E+00 -1.4778E+00  3.3414E+01  5.8608E-01 -3.0147E+01 -3.5685E+01 -1.2710E+01 -2.1060E+00
             2.5063E+00
 GRADIENT:   1.1391E+00  0.0000E+00 -4.0479E+00  2.1286E+00  0.0000E+00 -3.4734E-02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            -4.3752E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2447
 NO. OF SIG. DIGITS IN FINAL EST.:  2.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1261E-03  3.5703E-06  9.4641E-05 -1.8654E-04 -2.3562E-19
 SE:             2.9023E-02  1.8536E-06  3.1810E-04  3.7009E-04  3.5368E-19
 N:                     100         100         100         100         100

 P VAL.:         9.6905E-01  5.4091E-02  7.6607E-01  6.1423E-01  5.0529E-01

 ETASHRINKSD(%)  2.7691E+00  9.9994E+01  9.8934E+01  9.8760E+01  1.0000E+02
 ETASHRINKVR(%)  5.4615E+00  1.0000E+02  9.9989E+01  9.9985E+01  1.0000E+02
 EBVSHRINKSD(%)  3.0646E+00  9.9987E+01  9.8930E+01  9.8732E+01  1.0000E+02
 EBVSHRINKVR(%)  6.0353E+00  1.0000E+02  9.9989E+01  9.9984E+01  1.0000E+02
 RELATIVEINF(%)  6.8129E+00  1.1378E-06  5.3416E-05  7.5211E-05  0.0000E+00
 EPSSHRINKSD(%)  7.0817E+00
 EPSSHRINKVR(%)  1.3662E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -770.17284643163066     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -35.022019867892482     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    34.91
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.69
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -770.173       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.05E-01  1.00E-02  1.62E-02  2.06E-01  2.94E+14  1.63E+00  1.00E-02  1.00E-02  1.00E-02  1.10E-01  1.11E+01
 


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
+        2.37E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.69E+04  0.00E+00  3.06E+06
 
 TH 4
+       -6.59E+02  0.00E+00 -2.78E+05  2.76E+04
 
 TH 5
+        6.27E-21  0.00E+00 -3.56E-20  5.34E-21 -5.65E-37
 
 TH 6
+       -1.15E+01  0.00E+00  9.79E+02 -1.02E+02  3.63E-22  5.66E+01
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        5.46E-04  0.00E+00 -3.23E-04 -1.26E-04  1.25E-21  4.67E-05  0.00E+00  0.00E+00  0.00E+00 -2.86E-04
 
 TH11
+       -2.14E+01  0.00E+00  4.53E+02 -2.64E+01 -1.03E-22  4.31E-01  0.00E+00  0.00E+00  0.00E+00 -7.30E-07  3.33E+00
 
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
 #CPUT: Total CPU Time in Seconds,       41.650
Stop Time:
Wed Sep 29 20:13:50 CDT 2021

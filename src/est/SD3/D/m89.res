Fri Oct  1 22:41:04 CDT 2021
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
$DATA ../../../../data/SD3/D/dat89.csv ignore=@
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

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        1 OCT 2021
Days until program expires : 198
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m89.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   35190.5272156790        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   7.8294E+02  6.7245E+02  2.1336E+01  6.8862E+02  1.9807E+02 -3.3319E+03 -1.5245E+03 -5.9828E+01 -2.0103E+03 -9.2399E+02
            -6.6632E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -398.486061732303        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.3795E+00  1.2131E+00  9.9619E-01  1.3310E+00  9.7387E-01  1.6815E+00  1.1967E+00  9.8821E-01  1.1071E+00  1.0324E+00
             1.4800E+01
 PARAMETER:  4.2174E-01  2.9316E-01  9.6187E-02  3.8594E-01  7.3522E-02  6.1969E-01  2.7960E-01  8.8142E-02  2.0177E-01  1.3186E-01
             2.7947E+00
 GRADIENT:   6.1487E+01  9.3986E+00  7.0427E+00  9.2565E+00 -1.3961E+01  6.2128E-01 -2.1800E+01  2.5931E+00 -9.9356E+00  8.4511E+00
            -4.2607E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -455.964705254496        NO. OF FUNC. EVALS.: 120
 CUMULATIVE NO. OF FUNC. EVALS.:      204
 NPARAMETR:  1.3317E+00  1.4355E+00  1.5075E+00  1.1932E+00  1.0662E+00  2.3299E+00  8.2539E+00  6.9685E-01  8.6948E-01  3.8999E-01
             1.4027E+01
 PARAMETER:  3.8642E-01  4.6152E-01  5.1044E-01  2.7660E-01  1.6412E-01  9.4582E-01  2.2107E+00 -2.6118E-01 -3.9859E-02 -8.4164E-01
             2.7410E+00
 GRADIENT:   2.2986E+01  6.8668E+00  3.4175E-01 -9.5292E+01 -3.8629E+01  2.7349E+01  8.8951E+01  9.0445E-01  7.1393E+00  1.3172E+00
             8.9816E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -509.420782932325        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      383
 NPARAMETR:  1.2616E+00  8.8262E-01  1.7642E+01  1.9226E+00  3.0934E+00  2.0431E+00  6.8172E+00  6.3611E-01  1.2079E+00  7.6779E-01
             1.3587E+01
 PARAMETER:  3.3240E-01 -2.4863E-02  2.9703E+00  7.5370E-01  1.2293E+00  8.1449E-01  2.0195E+00 -3.5239E-01  2.8887E-01 -1.6424E-01
             2.7091E+00
 GRADIENT:   1.1738E+01  8.2058E+00 -7.2611E-01  2.1839E+01  3.9379E+00  1.2427E+01 -8.7313E-02  7.3725E-03 -8.7293E+00  1.4504E+00
             4.5891E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -515.731231816338        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      563
 NPARAMETR:  1.1729E+00  5.3448E-01  2.4694E+01  2.0461E+00  2.6186E+00  1.8390E+00  7.5129E+00  1.4240E+00  1.4549E+00  4.4044E-01
             1.3441E+01
 PARAMETER:  2.5952E-01 -5.2645E-01  3.3066E+00  8.1593E-01  1.0626E+00  7.0923E-01  2.1166E+00  4.5346E-01  4.7494E-01 -7.1998E-01
             2.6983E+00
 GRADIENT:  -8.9975E+00  3.7867E+00 -2.0262E-01  7.2673E+00 -1.0018E+00 -1.0862E+00  9.2704E-01  3.2328E-02  1.7568E+00  7.1696E-01
             1.1816E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -517.562061088379        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      739
 NPARAMETR:  1.1822E+00  3.3412E-01  3.5274E+01  2.0937E+00  2.6370E+00  1.8195E+00  8.1458E+00  1.1766E+00  1.4359E+00  1.9894E-01
             1.3312E+01
 PARAMETER:  2.6740E-01 -9.9626E-01  3.6631E+00  8.3891E-01  1.0696E+00  6.9854E-01  2.1975E+00  2.6263E-01  4.6180E-01 -1.5148E+00
             2.6887E+00
 GRADIENT:   2.3709E-01 -2.6800E-01 -4.6906E-02 -5.7453E-02 -5.0928E-02  3.0180E-01  1.3768E-01  1.2592E-02  2.3698E-02  1.4661E-01
             1.8838E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -517.785827006616        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      917
 NPARAMETR:  1.1854E+00  3.1461E-01  5.3426E+01  2.1138E+00  2.6673E+00  1.8118E+00  8.2828E+00  1.0576E+00  1.4488E+00  6.2880E-02
             1.3321E+01
 PARAMETER:  2.7012E-01 -1.0564E+00  4.0783E+00  8.4848E-01  1.0811E+00  6.9435E-01  2.2142E+00  1.5604E-01  4.7076E-01 -2.6665E+00
             2.6894E+00
 GRADIENT:   1.5872E+00 -3.3532E-01  5.7931E-03  9.6999E-01 -7.3396E-02 -1.6370E-01  8.6818E-01  4.4142E-03  6.3884E-01  1.4698E-02
             1.3204E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -518.040259999657        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1097
 NPARAMETR:  1.1820E+00  3.0440E-01  5.3575E+01  2.1148E+00  2.6613E+00  1.8263E+00  8.5221E+00  9.8731E-01  1.4446E+00  1.0000E-02
             1.3299E+01
 PARAMETER:  2.6722E-01 -1.0894E+00  4.0811E+00  8.4895E-01  1.0788E+00  7.0230E-01  2.2427E+00  8.7233E-02  4.6785E-01 -5.2160E+00
             2.6877E+00
 GRADIENT:   4.3479E-01  2.1321E-01  4.1813E-03 -1.4070E+00 -1.4712E-02  1.4768E+00  5.6932E+00  3.8389E-03  1.2777E-01  0.0000E+00
             1.6298E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -518.276823494239        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1265             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1787E+00  2.7226E-01  5.1195E+01  2.1255E+00  2.6565E+00  1.8119E+00  8.8223E+00  9.3690E-01  1.4427E+00  1.0000E-02
             1.3274E+01
 PARAMETER:  2.6445E-01 -1.2010E+00  4.0356E+00  8.5400E-01  1.0770E+00  6.9435E-01  2.2773E+00  3.4816E-02  4.6649E-01 -5.1785E+00
             2.6858E+00
 GRADIENT:   8.9699E+00  3.1171E+00  1.1393E-02  1.4481E+01  5.8537E-01  7.3367E+00  1.2165E+02  3.9513E-03  1.6181E+00  0.0000E+00
             3.2154E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -518.297603352959        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1440
 NPARAMETR:  1.1788E+00  2.5434E-01  4.2672E+01  2.1541E+00  2.6696E+00  1.7888E+00  8.8024E+00  9.3328E-01  1.4480E+00  1.0000E-02
             1.3342E+01
 PARAMETER:  2.6451E-01 -1.2691E+00  3.8535E+00  8.6735E-01  1.0819E+00  6.8153E-01  2.2750E+00  3.0948E-02  4.7022E-01 -5.1785E+00
             2.6909E+00
 GRADIENT:   4.1280E-01  2.2353E-01  7.9549E-03  1.8229E+00 -4.8297E-02  3.1255E-01  6.3235E+00  5.9152E-03  2.6047E-01  0.0000E+00
             1.1792E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -518.576971882046        NO. OF FUNC. EVALS.: 148
 CUMULATIVE NO. OF FUNC. EVALS.:     1588
 NPARAMETR:  1.1762E+00  2.1444E-01  4.0497E+01  2.1530E+00  2.6597E+00  1.7859E+00  9.1333E+00  9.3123E-01  1.4446E+00  1.0000E-02
             1.3351E+01
 PARAMETER:  2.6232E-01 -1.4397E+00  3.8012E+00  8.6687E-01  1.0782E+00  6.7994E-01  2.3119E+00  2.8755E-02  4.6785E-01 -5.1785E+00
             2.6916E+00
 GRADIENT:   7.9613E+00  2.9600E+00  2.4180E-02  1.5335E+01  7.2204E-01  6.3116E+00  1.3053E+02  6.8586E-03  2.8557E+00  0.0000E+00
             3.6647E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -518.696013514146        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1767
 NPARAMETR:  1.1749E+00  2.1411E-01  3.2058E+01  2.1669E+00  2.6517E+00  1.7805E+00  9.3151E+00  9.1104E-01  1.4468E+00  1.0000E-02
             1.3332E+01
 PARAMETER:  2.6119E-01 -1.4413E+00  3.5675E+00  8.7331E-01  1.0752E+00  6.7690E-01  2.3316E+00  6.8334E-03  4.6937E-01 -5.1785E+00
             2.6902E+00
 GRADIENT:   6.5451E-01  1.1551E+00 -1.1821E-02 -1.7646E+00  1.4040E-01  1.3041E+00  1.3435E+01  1.0643E-02  2.4195E-01  0.0000E+00
             1.0925E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -519.285431090360        NO. OF FUNC. EVALS.: 169
 CUMULATIVE NO. OF FUNC. EVALS.:     1936
 NPARAMETR:  1.1724E+00  2.1035E-01  2.4755E+01  2.1917E+00  2.7338E+00  1.7708E+00  9.3158E+00  8.9193E-01  1.4002E+00  1.0000E-02
             1.3597E+01
 PARAMETER:  2.5909E-01 -1.4590E+00  3.3090E+00  8.8468E-01  1.1057E+00  6.7142E-01  2.3317E+00 -1.4368E-02  4.3661E-01 -5.1785E+00
             2.7098E+00
 GRADIENT:   7.0251E+00  2.6268E+00 -1.7972E-01  2.3775E+01  8.0428E-01  1.4127E+01  1.3394E+02  1.6576E-02  3.1062E-01  0.0000E+00
             4.3384E+01

0ITERATION NO.:   64    OBJECTIVE VALUE:  -519.305630047943        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:     2035
 NPARAMETR:  1.1724E+00  2.1008E-01  2.5775E+01  2.1929E+00  2.7434E+00  1.7684E+00  9.3091E+00  8.8926E-01  1.3982E+00  1.0000E-02
             1.3587E+01
 PARAMETER:  2.5887E-01 -1.4593E+00  3.3517E+00  8.8471E-01  1.1084E+00  6.7066E-01  2.3317E+00 -1.6368E-02  4.3485E-01 -5.1785E+00
             2.7089E+00
 GRADIENT:  -1.8141E+02  3.0842E+01  1.3464E+01 -4.5706E+01 -4.0100E+01  3.8572E+01  1.1000E+01  1.8036E-02 -5.3905E+01  0.0000E+00
            -2.5982E+00

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2035
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.1624E-02  7.5497E-02  4.9205E-04 -8.2417E-02 -1.4621E-05
 SE:             2.7379E-02  2.0196E-02  1.3167E-04  1.7429E-02  3.0860E-05
 N:                     100         100         100         100         100

 P VAL.:         4.2965E-01  1.8535E-04  1.8627E-04  2.2612E-06  6.3566E-01

 ETASHRINKSD(%)  8.2755E+00  3.2342E+01  9.9559E+01  4.1612E+01  9.9897E+01
 ETASHRINKVR(%)  1.5866E+01  5.4223E+01  9.9998E+01  6.5908E+01  1.0000E+02
 EBVSHRINKSD(%)  1.0418E+01  4.2807E+01  9.9011E+01  3.2271E+01  9.9836E+01
 EBVSHRINKVR(%)  1.9751E+01  6.7289E+01  9.9990E+01  5.4128E+01  1.0000E+02
 RELATIVEINF(%)  7.6824E+01  2.1939E+01  1.5171E-03  2.3469E+01  3.8511E-05
 EPSSHRINKSD(%)  6.2920E+00
 EPSSHRINKVR(%)  1.2188E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -519.30563004794260     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       583.42060979766450     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    50.23
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -519.306       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.17E+00  2.10E-01  2.58E+01  2.19E+00  2.74E+00  1.77E+00  9.32E+00  8.90E-01  1.40E+00  1.00E-02  1.36E+01
 


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
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       50.272
Stop Time:
Fri Oct  1 22:41:55 CDT 2021
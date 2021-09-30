Wed Sep 29 22:43:46 CDT 2021
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
$DATA ../../../../data/spa1/A1/dat68.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m68.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1847.92510350305        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0075E+02  7.9863E+01  2.2458E+01  1.3037E+02  8.5556E+01  4.6606E+01  8.5084E+00 -9.3941E+00  4.1932E+01 -3.5783E+01
            -5.1202E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1954.64036805170        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0111E+00  9.3287E-01  8.8192E-01  1.0123E+00  8.7619E-01  1.0200E+00  8.9447E-01  9.6178E-01  7.7528E-01  1.0175E+00
             1.5240E+00
 PARAMETER:  1.1100E-01  3.0513E-02 -2.5649E-02  1.1219E-01 -3.2173E-02  1.1979E-01 -1.1528E-02  6.1033E-02 -1.5453E-01  1.1737E-01
             5.2131E-01
 GRADIENT:   1.8387E+02  3.1295E+01  8.4656E+00  3.8650E+01  2.4908E+00  3.3803E+01  1.1283E-01  7.3948E+00 -2.2940E+00  8.4827E+00
             7.5404E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1964.72636742251        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:      184
 NPARAMETR:  1.0118E+00  7.5906E-01  4.8544E-01  1.0790E+00  5.5825E-01  1.0292E+00  8.5572E-01  6.2393E-01  7.7990E-01  7.1248E-01
             1.4552E+00
 PARAMETER:  1.1173E-01 -1.7567E-01 -6.2269E-01  1.7602E-01 -4.8295E-01  1.2878E-01 -5.5811E-02 -3.7172E-01 -1.4859E-01 -2.3900E-01
             4.7517E-01
 GRADIENT:  -3.2906E+01  5.0790E+01 -2.1457E+00  8.6613E+01 -1.3657E+01  1.0307E+01 -5.7331E+00  7.5674E+00 -1.4953E+00  5.8854E+00
            -1.4944E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1972.14261303938        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      363
 NPARAMETR:  1.0263E+00  6.6812E-01  4.3167E-01  1.0646E+00  4.9940E-01  1.0028E+00  1.1341E+00  2.6594E-01  7.6604E-01  6.3237E-01
             1.4704E+00
 PARAMETER:  1.2593E-01 -3.0329E-01 -7.4009E-01  1.6264E-01 -5.9434E-01  1.0280E-01  2.2583E-01 -1.2245E+00 -1.6652E-01 -3.5827E-01
             4.8555E-01
 GRADIENT:  -1.6140E+00  1.0144E+01  2.9640E+00 -2.4416E+01  1.3757E+00  1.3414E+00  4.1238E+00  8.7713E-01  5.4605E+00  1.6027E+00
            -9.6436E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1974.49774858888        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      538
 NPARAMETR:  1.0263E+00  5.3678E-01  3.8294E-01  1.1062E+00  4.2907E-01  9.9860E-01  1.2854E+00  1.7133E-01  7.3704E-01  5.6268E-01
             1.4746E+00
 PARAMETER:  1.2601E-01 -5.2218E-01 -8.5987E-01  2.0093E-01 -7.4614E-01  9.8601E-02  3.5103E-01 -1.6642E+00 -2.0512E-01 -4.7504E-01
             4.8838E-01
 GRADIENT:  -2.1896E-01 -1.4853E+00 -2.6943E+00 -8.0132E-01  4.8575E+00 -7.9171E-02 -1.7822E-01  6.8357E-02  3.8323E-01  6.7699E-02
             5.8498E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1974.51172070032        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      714
 NPARAMETR:  1.0265E+00  5.3335E-01  3.8140E-01  1.1075E+00  4.2655E-01  9.9890E-01  1.2982E+00  1.2869E-01  7.3660E-01  5.6316E-01
             1.4745E+00
 PARAMETER:  1.2617E-01 -5.2857E-01 -8.6389E-01  2.0212E-01 -7.5203E-01  9.8902E-02  3.6099E-01 -1.9504E+00 -2.0571E-01 -4.7418E-01
             4.8830E-01
 GRADIENT:   1.9974E-01  4.4719E-01  4.8031E-01  8.9762E-01 -1.1966E+00  4.0725E-02  2.3193E-01  1.0424E-02  3.7788E-03  1.0245E-02
             1.7644E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1974.51500584746        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      889
 NPARAMETR:  1.0261E+00  5.3713E-01  3.8105E-01  1.1055E+00  4.2754E-01  9.9872E-01  1.2841E+00  5.1901E-02  7.3889E-01  5.6731E-01
             1.4743E+00
 PARAMETER:  1.2573E-01 -5.2152E-01 -8.6483E-01  2.0025E-01 -7.4972E-01  9.8716E-02  3.5003E-01 -2.8584E+00 -2.0260E-01 -4.6684E-01
             4.8818E-01
 GRADIENT:  -8.8014E-01  5.5833E-02  4.1849E-02 -2.3870E-01 -3.2036E-01 -6.8161E-02 -1.4620E-02  2.8996E-04 -6.6846E-02 -8.3973E-02
            -8.4566E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1974.51569272284        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:     1048
 NPARAMETR:  1.0269E+00  5.3718E-01  3.8104E-01  1.1054E+00  4.2745E-01  9.9898E-01  1.2834E+00  6.2850E-02  7.3890E-01  5.6693E-01
             1.4741E+00
 PARAMETER:  1.2654E-01 -5.2142E-01 -8.6485E-01  2.0021E-01 -7.4993E-01  9.8983E-02  3.4953E-01 -2.6670E+00 -2.0259E-01 -4.6751E-01
             4.8807E-01
 GRADIENT:   8.9138E-01  2.2029E-01  5.2265E-01 -4.3539E-01 -9.8447E-01  3.5688E-02 -4.6328E-02  4.0537E-04 -3.9847E-02 -1.1594E-01
            -1.8713E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1974.51582237619        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1232
 NPARAMETR:  1.0269E+00  5.3718E-01  3.8099E-01  1.1054E+00  4.2745E-01  9.9899E-01  1.2841E+00  6.2069E-02  7.3902E-01  5.6729E-01
             1.4743E+00
 PARAMETER:  1.2654E-01 -5.2143E-01 -8.6499E-01  2.0018E-01 -7.4992E-01  9.8988E-02  3.5004E-01 -2.6795E+00 -2.0243E-01 -4.6689E-01
             4.8821E-01
 GRADIENT:   8.9240E-01  1.6680E-01  2.5355E-01 -4.6175E-01 -6.8803E-01  3.8355E-02  2.3830E-02  8.9527E-04  1.0608E-02 -6.7284E-03
            -1.6705E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1974.51584395895        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1417
 NPARAMETR:  1.0269E+00  5.3717E-01  3.8095E-01  1.1054E+00  4.2744E-01  9.9899E-01  1.2839E+00  5.9293E-02  7.3906E-01  5.6734E-01
             1.4743E+00
 PARAMETER:  1.2654E-01 -5.2144E-01 -8.6509E-01  2.0017E-01 -7.4994E-01  9.8987E-02  3.4989E-01 -2.7253E+00 -2.0238E-01 -4.6679E-01
             4.8820E-01
 GRADIENT:   8.9204E-01  1.1547E-01  1.6756E-01 -4.2558E-01 -5.5711E-01  3.7453E-02  1.2151E-02  7.6868E-04  5.5450E-03 -1.1407E-02
            -3.1191E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1974.51586208163        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:     1608             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0269E+00  5.3716E-01  3.8089E-01  1.1053E+00  4.2743E-01  9.9899E-01  1.2838E+00  6.0611E-02  7.3911E-01  5.6741E-01
             1.4744E+00
 PARAMETER:  1.2654E-01 -5.2145E-01 -8.6524E-01  2.0014E-01 -7.4997E-01  9.8990E-02  3.4980E-01 -2.7033E+00 -2.0231E-01 -4.6667E-01
             4.8822E-01
 GRADIENT:   2.2900E+02  3.1352E+01  3.4165E+01  9.8172E+01  1.0212E+02  1.7700E+01  3.0239E+00  3.4949E-02  5.8080E+00  3.2610E+00
             4.8863E+00

0ITERATION NO.:   53    OBJECTIVE VALUE:  -1974.51586249080        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:     1705
 NPARAMETR:  1.0269E+00  5.3716E-01  3.8089E-01  1.1053E+00  4.2743E-01  9.9899E-01  1.2838E+00  5.8626E-02  7.3911E-01  5.6741E-01
             1.4744E+00
 PARAMETER:  1.2652E-01 -5.2146E-01 -8.6524E-01  2.0015E-01 -7.4996E-01  9.8985E-02  3.4979E-01 -2.7366E+00 -2.0231E-01 -4.6668E-01
             4.8822E-01
 GRADIENT:  -4.5462E-02 -4.4175E-02  4.0115E-03  7.6997E-02  1.9767E-01 -2.2008E-03  4.0363E-04  6.2792E-06 -7.5830E-03 -1.0003E-03
             3.9559E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1705
 NO. OF SIG. DIGITS IN FINAL EST.:  3.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.3070E-04  1.6107E-02 -1.9314E-03 -9.6203E-03  5.7672E-03
 SE:             2.9761E-02  1.9029E-02  1.4953E-03  2.7215E-02  2.0828E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8577E-01  3.9729E-01  1.9649E-01  7.2372E-01  7.8186E-01

 ETASHRINKSD(%)  2.9783E-01  3.6250E+01  9.4990E+01  8.8269E+00  3.0223E+01
 ETASHRINKVR(%)  5.9477E-01  5.9360E+01  9.9749E+01  1.6875E+01  5.1312E+01
 EBVSHRINKSD(%)  6.7910E-01  3.6667E+01  9.5061E+01  8.8249E+00  2.9615E+01
 EBVSHRINKVR(%)  1.3536E+00  5.9889E+01  9.9756E+01  1.6871E+01  5.0460E+01
 RELATIVEINF(%)  9.8463E+01  7.1093E+00  1.9318E-02  3.4215E+01  2.6782E+00
 EPSSHRINKSD(%)  3.1668E+01
 EPSSHRINKVR(%)  5.3308E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1974.5158624908006     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1055.5773292861279     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.11
 Elapsed covariance  time in seconds:     6.62
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1974.516       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  5.37E-01  3.81E-01  1.11E+00  4.27E-01  9.99E-01  1.28E+00  5.86E-02  7.39E-01  5.67E-01  1.47E+00
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.17E-02  1.22E-01  1.10E-01  4.88E-02  1.01E-01  7.24E-02  2.87E-01  2.02E+00  1.15E-01  1.74E-01  9.98E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.00E-03
 
 TH 2
+       -1.05E-03  1.49E-02
 
 TH 3
+       -1.25E-03  9.38E-03  1.22E-02
 
 TH 4
+       -1.72E-04 -1.10E-03  2.48E-03  2.39E-03
 
 TH 5
+       -1.17E-03  1.02E-02  1.09E-02  1.45E-03  1.03E-02
 
 TH 6
+        3.27E-05 -7.53E-04 -5.45E-04  1.38E-04 -6.30E-04  5.25E-03
 
 TH 7
+       -3.09E-06 -2.51E-02 -1.10E-02  5.52E-03 -1.30E-02  1.64E-03  8.24E-02
 
 TH 8
+        1.86E-02 -1.01E-01 -8.96E-02 -2.67E-03 -9.21E-02  2.47E-02  1.60E-01  4.07E+00
 
 TH 9
+        2.38E-04  4.62E-03  1.76E-03 -1.92E-03  1.95E-03  5.98E-04 -2.35E-02 -3.39E-02  1.33E-02
 
 TH10
+       -1.60E-03  1.43E-02  1.58E-02  1.63E-03  1.44E-02 -1.28E-03 -2.79E-02 -2.18E-01  9.67E-03  3.01E-02
 
 TH11
+        1.17E-03 -4.07E-03 -5.16E-03 -1.14E-03 -4.85E-03  6.82E-04 -2.27E-03  2.44E-02  2.93E-03 -2.79E-03  9.95E-03
 
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
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.17E-02
 
 TH 2
+       -2.70E-01  1.22E-01
 
 TH 3
+       -3.56E-01  6.95E-01  1.10E-01
 
 TH 4
+       -1.11E-01 -1.85E-01  4.59E-01  4.88E-02
 
 TH 5
+       -3.64E-01  8.26E-01  9.72E-01  2.93E-01  1.01E-01
 
 TH 6
+        1.42E-02 -8.51E-02 -6.82E-02  3.91E-02 -8.59E-02  7.24E-02
 
 TH 7
+       -3.40E-04 -7.16E-01 -3.47E-01  3.94E-01 -4.48E-01  7.90E-02  2.87E-01
 
 TH 8
+        2.92E-01 -4.09E-01 -4.02E-01 -2.71E-02 -4.51E-01  1.69E-01  2.77E-01  2.02E+00
 
 TH 9
+        6.53E-02  3.28E-01  1.38E-01 -3.41E-01  1.67E-01  7.17E-02 -7.09E-01 -1.46E-01  1.15E-01
 
 TH10
+       -2.91E-01  6.73E-01  8.24E-01  1.92E-01  8.21E-01 -1.02E-01 -5.60E-01 -6.23E-01  4.83E-01  1.74E-01
 
 TH11
+        3.71E-01 -3.34E-01 -4.68E-01 -2.34E-01 -4.80E-01  9.44E-02 -7.92E-02  1.21E-01  2.54E-01 -1.61E-01  9.98E-02
 
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
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.32E+03
 
 TH 2
+        8.32E+01  1.19E+03
 
 TH 3
+        2.28E+02  1.59E+03  7.51E+03
 
 TH 4
+       -1.58E+02  2.99E+02 -1.76E+03  1.78E+03
 
 TH 5
+       -2.22E+02 -2.77E+03 -8.45E+03  1.10E+03  1.14E+04
 
 TH 6
+        3.08E+01 -4.43E+01 -3.51E+01 -4.65E+01  3.05E+01  2.10E+02
 
 TH 7
+        4.48E+01  1.48E+02  1.16E+02 -2.38E+01 -1.87E+02 -1.83E+01  6.56E+01
 
 TH 8
+       -3.53E+00 -2.66E+00 -2.57E+01  3.58E+00  2.02E+01 -4.80E-01 -2.11E-01  6.12E-01
 
 TH 9
+       -1.00E+01  6.54E+01 -2.28E+01  1.34E+02  1.78E+02 -5.32E+01  6.79E+01 -3.81E+00  2.79E+02
 
 TH10
+        3.79E+01  1.36E+01 -5.90E+02  1.03E+02  1.39E+02  3.23E+01  6.74E-01  9.96E+00 -1.67E+02  3.85E+02
 
 TH11
+       -9.99E+01  1.49E+01  1.30E+02 -5.31E+01  7.53E+01 -2.31E+01  1.86E+01 -1.33E+00  1.76E+01 -9.48E+01  1.94E+02
 
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
 #CPUT: Total CPU Time in Seconds,       31.828
Stop Time:
Wed Sep 29 22:44:20 CDT 2021
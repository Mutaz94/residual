Wed Sep 29 02:48:56 CDT 2021
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
$DATA ../../../../data/int/SL2/dat16.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      999
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      899
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
 RAW OUTPUT FILE (FILE): m16.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2656.28971844473        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7476E+02  1.4884E+01 -8.0924E-01  1.5843E+02  2.0539E+02  8.0676E+01 -1.0186E+02 -1.1068E+02 -6.6731E+01 -2.7403E+01
            -2.2574E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3239.74082615427        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:       90
 NPARAMETR:  1.0002E+00  1.1186E+00  1.0198E+00  9.1847E-01  9.9503E-01  7.6414E-01  1.2895E+00  9.9069E-01  9.6767E-01  1.0753E+00
             1.8249E+00
 PARAMETER:  1.0023E-01  2.1205E-01  1.1963E-01  1.4949E-02  9.5013E-02 -1.6901E-01  3.5425E-01  9.0645E-02  6.7132E-02  1.7261E-01
             7.0154E-01
 GRADIENT:  -1.2507E+01  2.6180E+01 -1.8994E+01 -1.1478E+01  8.5106E+00 -4.5960E+01  2.2453E+01  5.0084E+00 -5.5169E+00  4.5230E+00
             9.8887E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3243.38801044315        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  9.9642E-01  1.1376E+00  1.0254E+00  9.1248E-01  1.0339E+00  8.1968E-01  1.3000E+00  4.5190E-01  9.7303E-01  1.0785E+00
             1.8768E+00
 PARAMETER:  9.6411E-02  2.2891E-01  1.2508E-01  8.4086E-03  1.3334E-01 -9.8841E-02  3.6237E-01 -6.9429E-01  7.2663E-02  1.7558E-01
             7.2955E-01
 GRADIENT:  -1.4845E+01  2.2052E+01 -2.1880E+01  6.2701E+00  4.7614E+01 -2.2382E+01  2.5352E+01  1.7323E-01 -2.3797E+00  3.5725E-01
             5.3150E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3261.74887263738        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      341
 NPARAMETR:  1.0462E+00  1.5357E+00  1.5804E+00  7.4982E-01  1.4306E+00  8.9667E-01  9.3490E-01  3.1327E+00  1.0798E+00  1.5185E+00
             1.7971E+00
 PARAMETER:  1.4513E-01  5.2900E-01  5.5768E-01 -1.8792E-01  4.5806E-01 -9.0644E-03  3.2681E-02  1.2419E+00  1.7678E-01  5.1770E-01
             6.8616E-01
 GRADIENT:   1.3324E+01  4.3083E+00 -3.0134E+01  3.4568E+01  1.8230E+00  8.3005E+00  5.9926E+00  9.1814E+00  2.0864E+01  7.4738E+00
             9.6074E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3273.18886089030        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      519
 NPARAMETR:  1.0537E+00  1.6073E+00  2.1967E+00  6.9197E-01  1.5856E+00  8.8910E-01  9.0698E-01  4.1316E+00  8.5213E-01  1.5315E+00
             1.7872E+00
 PARAMETER:  1.5228E-01  5.7453E-01  8.8695E-01 -2.6821E-01  5.6097E-01 -1.7549E-02  2.3690E-03  1.5187E+00 -6.0019E-02  5.2627E-01
             6.8066E-01
 GRADIENT:   3.3410E+01 -5.1213E+00 -1.7647E+01 -1.3946E+00  1.2993E+01  4.7353E+00 -6.3621E+00  1.0184E+01  5.7936E+00 -5.2055E+00
             5.5287E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3273.36363333748        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      694
 NPARAMETR:  1.0524E+00  1.6064E+00  2.2029E+00  6.9241E-01  1.5852E+00  8.8803E-01  9.0984E-01  4.1276E+00  8.4399E-01  1.5314E+00
             1.7874E+00
 PARAMETER:  1.5112E-01  5.7396E-01  8.8977E-01 -2.6758E-01  5.6069E-01 -1.8748E-02  5.5175E-03  1.5177E+00 -6.9617E-02  5.2616E-01
             6.8076E-01
 GRADIENT:   3.0251E+01 -4.9054E+00 -1.7423E+01 -1.8568E+00  1.2851E+01  4.3493E+00 -6.2454E+00  9.9576E+00  5.4505E+00 -5.1814E+00
             5.8563E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3273.42945086567        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:      794
 NPARAMETR:  1.0520E+00  1.6035E+00  2.1974E+00  6.9293E-01  1.5876E+00  8.8777E-01  9.3314E-01  4.1085E+00  8.4423E-01  1.5337E+00
             1.7908E+00
 PARAMETER:  1.5066E-01  5.7217E-01  8.8726E-01 -2.6682E-01  5.6225E-01 -1.9037E-02  3.0802E-02  1.5131E+00 -6.9329E-02  5.2767E-01
             6.8268E-01
 GRADIENT:   2.4530E+02  2.4303E+02 -1.2615E+01  3.8197E+01  7.9365E+01  1.5205E+01  2.5356E+00  1.7783E+01  7.6755E+00  8.5692E+00
             2.2946E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3273.73886030622        NO. OF FUNC. EVALS.: 149
 CUMULATIVE NO. OF FUNC. EVALS.:      943
 NPARAMETR:  1.0512E+00  1.6031E+00  2.2244E+00  6.9321E-01  1.5858E+00  8.8711E-01  9.3360E-01  4.1066E+00  8.3805E-01  1.5350E+00
             1.7903E+00
 PARAMETER:  1.4994E-01  5.7192E-01  8.9950E-01 -2.6642E-01  5.6110E-01 -1.9782E-02  3.1288E-02  1.5126E+00 -7.6677E-02  5.2854E-01
             6.8238E-01
 GRADIENT:   2.7079E+01 -5.5430E+00 -1.6677E+01 -4.7135E+00  1.3321E+01  4.0133E+00 -1.1600E+00  9.3774E+00  6.3380E+00 -4.3385E+00
             1.0283E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3273.77820495961        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1121
 NPARAMETR:  1.0508E+00  1.6022E+00  2.2227E+00  6.9337E-01  1.5866E+00  8.7767E-01  9.3330E-01  4.1009E+00  8.3511E-01  1.5357E+00
             1.7913E+00
 PARAMETER:  1.4957E-01  5.7140E-01  8.9874E-01 -2.6620E-01  5.6157E-01 -3.0487E-02  3.0972E-02  1.5112E+00 -8.0191E-02  5.2899E-01
             6.8296E-01
 GRADIENT:   2.6478E+01 -6.2701E+00 -1.6751E+01 -4.8736E+00  1.3839E+01 -3.9459E-02 -1.4108E+00  9.2487E+00  6.1592E+00 -4.2284E+00
             1.1458E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3274.85996135487        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1305
 NPARAMETR:  1.0466E+00  1.6070E+00  2.2990E+00  6.9569E-01  1.5716E+00  8.7724E-01  9.4227E-01  3.6096E+00  8.3536E-01  1.5498E+00
             1.7706E+00
 PARAMETER:  1.4557E-01  5.7438E-01  9.3247E-01 -2.6285E-01  5.5208E-01 -3.0970E-02  4.0538E-02  1.3836E+00 -7.9898E-02  5.3813E-01
             6.7132E-01
 GRADIENT:   1.5784E+01  9.7259E+00 -1.1418E+01 -5.0091E+00  7.0102E+00 -1.1658E-01 -1.6793E-02 -2.1135E+00  4.5940E+00 -1.7180E-01
            -1.9685E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -3277.25682537922        NO. OF FUNC. EVALS.: 145
 CUMULATIVE NO. OF FUNC. EVALS.:     1450
 NPARAMETR:  1.0347E+00  1.5441E+00  2.6564E+00  7.6279E-01  1.5455E+00  8.7328E-01  1.0403E+00  3.6778E+00  6.9558E-01  1.5427E+00
             1.8007E+00
 PARAMETER:  1.3410E-01  5.3442E-01  1.0770E+00 -1.7078E-01  5.3533E-01 -3.5501E-02  1.3955E-01  1.4023E+00 -2.6300E-01  5.3352E-01
             6.8816E-01
 GRADIENT:   1.7162E+02  2.5281E+02 -1.0952E+00  5.1034E+01  6.6800E+01  9.3898E+00  1.0427E+01  5.4418E+00  3.5945E+00  1.7963E+01
             4.0250E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -3277.83618247098        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1543
 NPARAMETR:  1.0297E+00  1.4446E+00  2.6133E+00  8.1389E-01  1.5323E+00  8.7001E-01  1.0823E+00  3.6000E+00  6.1438E-01  1.5297E+00
             1.8173E+00
 PARAMETER:  1.2926E-01  4.6782E-01  1.0606E+00 -1.0593E-01  5.2674E-01 -3.9252E-02  1.7906E-01  1.3809E+00 -3.8715E-01  5.2505E-01
             6.9736E-01
 GRADIENT:  -3.2904E+01  2.5597E+01 -1.5590E+01  1.9173E+01  2.1297E+01 -3.5544E+00  1.1828E+00 -3.1107E+00 -1.3728E+00  9.4629E+00
             5.4205E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -3279.00928413446        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1720
 NPARAMETR:  1.0364E+00  1.4447E+00  2.6509E+00  8.0737E-01  1.5261E+00  8.9063E-01  1.0758E+00  3.6180E+00  6.1536E-01  1.5267E+00
             1.7859E+00
 PARAMETER:  1.3576E-01  4.6793E-01  1.0749E+00 -1.1397E-01  5.2274E-01 -1.5829E-02  1.7306E-01  1.3859E+00 -3.8555E-01  5.2312E-01
             6.7994E-01
 GRADIENT:  -1.2168E+01  1.8110E+01 -1.3356E+01  6.4234E+00  1.6044E+01  5.6893E+00  2.7929E-01 -4.1002E+00 -1.5235E+00  8.3291E+00
             1.6831E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -3280.51220113427        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1896
 NPARAMETR:  1.0397E+00  1.2401E+00  2.7212E+00  9.2435E-01  1.4655E+00  8.7304E-01  1.2002E+00  3.5238E+00  6.0124E-01  1.4824E+00
             1.7310E+00
 PARAMETER:  1.3889E-01  3.1518E-01  1.1011E+00  2.1337E-02  4.8217E-01 -3.5779E-02  2.8247E-01  1.3595E+00 -4.0876E-01  4.9364E-01
             6.4871E-01
 GRADIENT:  -1.5225E+00 -1.0400E+01 -2.4975E+01  4.4226E-01  3.6162E+01 -1.9330E+00  9.6728E-01 -7.8531E+00 -9.6447E-02  1.7206E+01
            -3.4015E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -3280.92827419995        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:     2037
 NPARAMETR:  1.0364E+00  1.2284E+00  2.7309E+00  9.4140E-01  1.4487E+00  8.7874E-01  1.2066E+00  3.4913E+00  5.9346E-01  1.4696E+00
             1.7351E+00
 PARAMETER:  1.3574E-01  3.0572E-01  1.1046E+00  3.9612E-02  4.7063E-01 -2.9268E-02  2.8784E-01  1.3503E+00 -4.2178E-01  4.8499E-01
             6.5106E-01
 GRADIENT:  -1.0774E+01  2.0091E+00 -2.5901E+01  1.6848E+01  3.2963E+01  5.1243E-01 -7.9679E-01 -8.8369E+00 -1.3074E+00  1.8234E+01
            -2.7871E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -3282.53041380409        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2215
 NPARAMETR:  1.0441E+00  1.2361E+00  2.8456E+00  9.4112E-01  1.4193E+00  8.7348E-01  1.2198E+00  3.5569E+00  6.1411E-01  1.4516E+00
             1.7851E+00
 PARAMETER:  1.4315E-01  3.1196E-01  1.1458E+00  3.9311E-02  4.5013E-01 -3.5275E-02  2.9869E-01  1.3689E+00 -3.8758E-01  4.7263E-01
             6.7948E-01
 GRADIENT:   9.0842E+00  9.7084E+00 -1.9581E+01  1.0792E+01  1.2915E+01 -1.5562E+00  4.0316E+00 -4.4635E+00  9.5386E-01  1.8536E+01
             3.6291E+01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -3284.10882785977        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     2394
 NPARAMETR:  1.0369E+00  1.2063E+00  3.0139E+00  9.4067E-01  1.3870E+00  8.6802E-01  1.1756E+00  3.6346E+00  6.1067E-01  1.4222E+00
             1.7696E+00
 PARAMETER:  1.3625E-01  2.8756E-01  1.2032E+00  3.8838E-02  4.2716E-01 -4.1540E-02  2.6178E-01  1.3905E+00 -3.9320E-01  4.5219E-01
             6.7077E-01
 GRADIENT:  -9.7908E+00 -1.5171E+01 -1.2778E+01 -2.7950E+01 -5.8991E+00 -3.9094E+00 -6.3023E+00 -3.4970E+00 -1.2179E+00  1.6284E+01
             2.1544E+01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -3284.42095463508        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:     2531
 NPARAMETR:  1.0371E+00  1.1973E+00  3.0019E+00  9.5825E-01  1.3848E+00  8.7751E-01  1.2189E+00  3.6165E+00  6.1774E-01  1.4195E+00
             1.7734E+00
 PARAMETER:  1.3646E-01  2.8010E-01  1.1993E+00  5.7358E-02  4.2557E-01 -3.0667E-02  2.9794E-01  1.3855E+00 -3.8168E-01  4.5033E-01
             6.7293E-01
 GRADIENT:  -9.2875E+00  7.2115E-01 -1.5105E+01 -7.6864E+00 -1.2233E+00  2.3338E-01  8.7648E-02 -3.6224E+00  7.3658E-01  1.8099E+01
             2.7814E+01

0ITERATION NO.:   88    OBJECTIVE VALUE:  -3284.54284719362        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:     2630
 NPARAMETR:  1.0428E+00  1.1855E+00  3.0034E+00  9.6805E-01  1.3847E+00  8.7972E-01  1.2351E+00  3.6160E+00  6.0560E-01  1.4189E+00
             1.7730E+00
 PARAMETER:  1.4244E-01  2.6998E-01  1.2005E+00  6.7593E-02  4.2573E-01 -2.7149E-02  3.1099E-01  1.3862E+00 -4.0109E-01  4.5021E-01
             6.7229E-01
 GRADIENT:   5.5405E+00 -1.0286E+03  2.1285E+02  2.7836E+03  3.2642E+02  1.4922E+00 -8.9503E+02  1.9756E+02  9.5578E-02  3.2630E+02
            -3.9273E+02
 NUMSIGDIG:         1.6         2.3         2.3         2.3         2.3         1.1         2.3         2.3         2.1         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2630
 NO. OF SIG. DIGITS IN FINAL EST.:  1.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.7151E-03 -8.2102E-03 -1.1537E-02  1.3303E-03 -3.2510E-02
 SE:             2.9569E-02  2.5198E-02  2.1264E-02  1.7406E-02  2.1887E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5375E-01  7.4455E-01  5.8742E-01  9.3908E-01  1.3744E-01

 ETASHRINKSD(%)  9.4060E-01  1.5584E+01  2.8763E+01  4.1689E+01  2.6677E+01
 ETASHRINKVR(%)  1.8723E+00  2.8740E+01  4.9253E+01  6.5999E+01  4.6238E+01
 EBVSHRINKSD(%)  9.0900E-01  1.6259E+01  3.1566E+01  4.4647E+01  1.6154E+01
 EBVSHRINKVR(%)  1.8097E+00  2.9874E+01  5.3167E+01  6.9360E+01  2.9699E+01
 RELATIVEINF(%)  9.8166E+01  1.4596E+01  2.8996E+01  5.9947E+00  4.9087E+01
 EPSSHRINKSD(%)  1.9974E+01
 EPSSHRINKVR(%)  3.5959E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          899
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1652.2514827020016     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3284.5428471936216     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1632.2913644916200     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    82.41
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    16.28
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3284.543       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.19E+00  3.01E+00  9.68E-01  1.39E+00  8.81E-01  1.23E+00  3.62E+00  6.06E-01  1.42E+00  1.77E+00
 


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
+        1.29E+03
 
 TH 2
+       -5.94E+01  6.83E+04
 
 TH 3
+        2.05E+00  3.91E+00  5.29E+02
 
 TH 4
+        9.09E+01 -2.24E+05  8.75E+00  7.44E+05
 
 TH 5
+        8.77E+00 -3.09E+01 -4.31E+01  2.32E+02  2.00E+04
 
 TH 6
+       -4.48E+00  1.23E+00 -5.93E-02 -1.05E+01 -1.63E+00  2.46E+02
 
 TH 7
+       -4.66E+01  5.66E+04  1.35E+00 -1.87E+05  1.52E+01  2.88E+00  4.72E+04
 
 TH 8
+        1.16E+00  3.93E-01  2.94E+00  1.77E+01 -2.86E+01 -1.56E-01  1.46E+00  2.84E+02
 
 TH 9
+        1.21E+00 -8.95E+04  5.61E+00  2.25E+01  4.32E+01 -2.07E-01 -7.46E+04  6.79E+00  1.18E+05
 
 TH10
+        1.12E+01  4.09E+00 -2.42E+01  1.74E+02 -2.43E+02 -3.04E-01  1.10E+01 -1.89E+01  3.70E+01  1.69E+04
 
 TH11
+       -1.86E+01 -2.16E+01 -4.74E+01 -7.88E+01  1.00E+02  2.65E+00  5.78E-01 -6.77E+00 -1.26E+01  7.91E+01  5.39E+03
 
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
 #CPUT: Total CPU Time in Seconds,       98.727
Stop Time:
Wed Sep 29 02:50:39 CDT 2021

Wed Sep 29 02:56:00 CDT 2021
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
$DATA ../../../../data/int/SL2/dat24.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      996
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

 TOT. NO. OF OBS RECS:      896
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
 RAW OUTPUT FILE (FILE): m24.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1464.02436673112        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6468E+02  5.9961E+01  1.7560E+02  6.4859E+00  1.2540E+02  2.9892E+01 -9.9675E+01 -2.3939E+02 -7.3159E+01 -1.3375E+01
            -4.3089E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2842.04507555858        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0380E+00  1.1331E+00  8.5858E-01  1.0396E+00  9.8063E-01  1.0032E+00  1.0558E+00  1.0542E+00  9.8047E-01  9.9206E-01
             2.0259E+00
 PARAMETER:  1.3725E-01  2.2498E-01 -5.2479E-02  1.3884E-01  8.0441E-02  1.0315E-01  1.5427E-01  1.5280E-01  8.0274E-02  9.2031E-02
             8.0600E-01
 GRADIENT:   2.5806E+02  8.9355E+01  1.6314E+00  7.8587E+01 -6.8375E+00 -8.9365E-01 -3.4923E+00 -1.4164E+01 -8.5200E+00 -2.9935E+00
            -3.4579E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2845.96177470405        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      264
 NPARAMETR:  1.0476E+00  1.3707E+00  1.0438E+00  9.2855E-01  1.2209E+00  1.0726E+00  8.5591E-01  1.1208E+00  1.0449E+00  1.3157E+00
             2.0781E+00
 PARAMETER:  1.4650E-01  4.1536E-01  1.4289E-01  2.5872E-02  2.9956E-01  1.7010E-01 -5.5593E-02  2.1403E-01  1.4393E-01  3.7438E-01
             8.3144E-01
 GRADIENT:   1.2478E+02  6.5953E+01  3.4173E+01  8.1853E+01 -9.9340E+00  1.3326E+01 -5.5812E+00 -2.0085E+01 -1.3438E+01  2.0430E+01
            -3.1575E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2876.16758617907        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      446
 NPARAMETR:  9.8184E-01  1.4315E+00  1.0717E+00  8.5188E-01  1.3001E+00  9.7881E-01  8.7441E-01  1.8793E+00  1.1138E+00  1.2598E+00
             2.3190E+00
 PARAMETER:  8.1678E-02  4.5870E-01  1.6923E-01 -6.0304E-02  3.6246E-01  7.8577E-02 -3.4208E-02  7.3092E-01  2.0781E-01  3.3099E-01
             9.4114E-01
 GRADIENT:  -5.2877E+00  2.5631E+00  9.3409E+00  2.4664E+01 -2.9909E+00 -1.1961E+01  2.2717E+00  3.4205E-02  6.7657E+00  6.1214E+00
             1.4951E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2880.87865997894        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      622
 NPARAMETR:  9.8349E-01  1.9162E+00  7.9256E-01  5.5381E-01  1.6375E+00  1.0118E+00  7.9345E-01  2.2808E+00  1.2268E+00  1.4367E+00
             2.3171E+00
 PARAMETER:  8.3351E-02  7.5035E-01 -1.3248E-01 -4.9093E-01  5.9319E-01  1.1174E-01 -1.3136E-01  9.2453E-01  3.0441E-01  4.6236E-01
             9.4030E-01
 GRADIENT:  -1.6724E+00  4.6540E+01  3.2987E+00  2.0491E+01 -1.8587E-01  4.0988E-01 -2.0978E+00 -1.1879E+00 -2.4744E+00  1.1171E+00
            -1.0055E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2881.88870250670        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      797
 NPARAMETR:  9.8461E-01  2.0544E+00  6.0456E-01  4.3807E-01  1.7421E+00  1.0099E+00  7.5392E-01  2.3250E+00  1.4210E+00  1.4879E+00
             2.3274E+00
 PARAMETER:  8.4491E-02  8.1999E-01 -4.0325E-01 -7.2539E-01  6.5508E-01  1.0982E-01 -1.8247E-01  9.4372E-01  4.5138E-01  4.9735E-01
             9.4477E-01
 GRADIENT:   1.1783E+00  3.4899E+00 -1.2827E+00  3.2267E+00  1.6664E+00 -1.5051E-01 -1.4742E+00  7.5724E-01 -1.3384E+00 -2.8373E-01
            -2.6760E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2881.98087737637        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      973
 NPARAMETR:  9.8378E-01  2.1514E+00  5.0251E-01  3.6989E-01  1.8036E+00  1.0109E+00  7.2401E-01  2.0367E+00  1.7021E+00  1.5122E+00
             2.3351E+00
 PARAMETER:  8.3647E-02  8.6612E-01 -5.8813E-01 -8.9455E-01  6.8977E-01  1.1088E-01 -2.2295E-01  8.1133E-01  6.3187E-01  5.1357E-01
             9.4804E-01
 GRADIENT:  -4.5873E-01  1.4765E+00 -3.1461E-01  1.4804E+00 -1.7990E-02  1.3463E-01 -2.6555E-01  4.4688E-01  5.9653E-01 -2.4176E-01
             2.3979E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2881.99974228156        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1158
 NPARAMETR:  9.8400E-01  2.1925E+00  4.5776E-01  3.3977E-01  1.8319E+00  1.0108E+00  7.1488E-01  1.8096E+00  1.8134E+00  1.5248E+00
             2.3373E+00
 PARAMETER:  8.3873E-02  8.8503E-01 -6.8142E-01 -9.7948E-01  7.0533E-01  1.1077E-01 -2.3565E-01  6.9312E-01  6.9522E-01  5.2186E-01
             9.4901E-01
 GRADIENT:   1.1492E-01  4.3442E-01  9.0074E-01 -5.0990E-01 -1.9287E-01  7.5930E-02 -1.9110E-01 -1.7661E-02 -6.6258E-01  1.2340E-01
            -1.2058E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2882.07502892321        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1336
 NPARAMETR:  9.8374E-01  2.2160E+00  3.8757E-01  3.1643E-01  1.8245E+00  1.0111E+00  6.9777E-01  1.0593E+00  2.0390E+00  1.5158E+00
             2.3420E+00
 PARAMETER:  8.3609E-02  8.9572E-01 -8.4786E-01 -1.0506E+00  7.0129E-01  1.1102E-01 -2.5987E-01  1.5757E-01  8.1245E-01  5.1597E-01
             9.5100E-01
 GRADIENT:  -1.4772E-01 -1.2174E+01 -1.3950E+00  1.5938E+00 -5.6146E+00  3.1512E-02 -5.0640E-01  2.5698E-01  1.3377E+00 -1.3831E+00
             1.6911E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2882.78414942706        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1514
 NPARAMETR:  9.8410E-01  2.3743E+00  2.5945E-01  2.1829E-01  1.9619E+00  1.0121E+00  6.7788E-01  2.9367E-01  2.6117E+00  1.5724E+00
             2.3451E+00
 PARAMETER:  8.3972E-02  9.6471E-01 -1.2492E+00 -1.4219E+00  7.7391E-01  1.1201E-01 -2.8879E-01 -1.1253E+00  1.0600E+00  5.5262E-01
             9.5233E-01
 GRADIENT:   3.3987E-01  7.6985E+00 -1.8913E+00  4.6833E+00  1.0463E+00  1.1305E-01 -1.5361E+00  9.9770E-02  2.9277E+00 -1.0512E+00
             6.5275E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2882.93292976749        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1695
 NPARAMETR:  9.8375E-01  2.3730E+00  2.6312E-01  2.1294E-01  1.9645E+00  1.0115E+00  6.8343E-01  9.9044E-02  2.5778E+00  1.5786E+00
             2.3384E+00
 PARAMETER:  8.3616E-02  9.6414E-01 -1.2352E+00 -1.4467E+00  7.7525E-01  1.1146E-01 -2.8063E-01 -2.2122E+00  1.0469E+00  5.5653E-01
             9.4946E-01
 GRADIENT:  -3.5750E-02  8.5844E-02  7.2829E-02 -7.0135E-03 -1.3270E-01  6.6347E-04 -2.6899E-02  9.7350E-03 -9.0334E-02 -1.2935E-02
            -9.1588E-02

0ITERATION NO.:   54    OBJECTIVE VALUE:  -2882.93977759741        NO. OF FUNC. EVALS.: 133
 CUMULATIVE NO. OF FUNC. EVALS.:     1828
 NPARAMETR:  9.8398E-01  2.3700E+00  2.6255E-01  2.1308E-01  1.9629E+00  1.0116E+00  6.8333E-01  1.0000E-02  2.5868E+00  1.5799E+00
             2.3378E+00
 PARAMETER:  8.3846E-02  9.6288E-01 -1.2373E+00 -1.4461E+00  7.7445E-01  1.1150E-01 -2.8077E-01 -4.7346E+00  1.0504E+00  5.5738E-01
             9.4923E-01
 GRADIENT:   5.2388E-01 -4.5745E+00 -1.9483E-01 -1.0911E-01 -3.1019E-01  2.2638E-02  5.1737E-02  0.0000E+00  3.9082E-01  2.7239E-01
            -2.2945E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1828
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6214E-03 -3.0251E-02 -2.7791E-05  4.0734E-02 -2.4234E-02
 SE:             2.9504E-02  2.5655E-02  3.9077E-05  1.9053E-02  2.6351E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5617E-01  2.3834E-01  4.7698E-01  3.2521E-02  3.5776E-01

 ETASHRINKSD(%)  1.1565E+00  1.4052E+01  9.9869E+01  3.6170E+01  1.1720E+01
 ETASHRINKVR(%)  2.2996E+00  2.6130E+01  1.0000E+02  5.9257E+01  2.2066E+01
 EBVSHRINKSD(%)  1.3758E+00  1.3012E+01  9.9865E+01  4.2075E+01  9.4961E+00
 EBVSHRINKVR(%)  2.7326E+00  2.4331E+01  1.0000E+02  6.6446E+01  1.8090E+01
 RELATIVEINF(%)  9.7239E+01  1.9061E+01  7.7623E-05  7.4878E+00  4.7532E+01
 EPSSHRINKSD(%)  1.7245E+01
 EPSSHRINKVR(%)  3.1516E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          896
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1646.7378515027735     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2882.9397775974066     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1236.2019260946331     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    51.98
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.65
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2882.940       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  2.37E+00  2.63E-01  2.13E-01  1.96E+00  1.01E+00  6.83E-01  1.00E-02  2.59E+00  1.58E+00  2.34E+00
 


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
+       -8.03E+00  3.33E+02
 
 TH 3
+        1.21E+00  8.06E+01  3.42E+02
 
 TH 4
+       -1.37E+01  3.19E+02 -3.51E+02  1.44E+03
 
 TH 5
+       -1.70E+00 -2.94E+01 -1.98E+01  9.67E+01  9.48E+01
 
 TH 6
+        5.07E+00 -2.64E+00  2.06E+00 -9.19E+00 -7.18E-01  1.84E+02
 
 TH 7
+        4.38E+00 -4.57E+00  8.87E+00  5.96E-02 -2.43E+00 -1.11E+00  2.50E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.99E-01 -4.62E+00 -1.19E+01  5.42E+01 -4.35E-01 -4.25E-01  7.66E+00  0.00E+00  7.86E+00
 
 TH10
+        3.22E-01 -3.14E+00  1.11E+01  7.28E+00 -6.57E+00  2.30E-01  1.23E+00  0.00E+00  1.37E-01  5.50E+01
 
 TH11
+       -1.42E+01 -1.75E+01 -9.57E+00 -2.08E+00 -6.55E-01  2.73E+00  1.04E+01  0.00E+00  2.95E+00  4.08E+00  2.10E+02
 
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
 #CPUT: Total CPU Time in Seconds,       65.751
Stop Time:
Wed Sep 29 02:57:08 CDT 2021

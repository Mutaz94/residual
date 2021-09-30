Wed Sep 29 21:29:45 CDT 2021
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
$DATA ../../../../data/spa1/B/dat93.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m93.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2138.86598943959        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3897E+02 -1.5318E+01  4.3664E+00  1.1761E+01  1.8215E+01  5.0124E+01  1.8133E+01 -6.4587E-01  4.3920E+01 -2.0679E-01
             2.3807E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2145.20466878243        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  9.8547E-01  1.0333E+00  9.3453E-01  1.0322E+00  9.3055E-01  9.8209E-01  8.4412E-01  9.9121E-01  8.1920E-01  9.8871E-01
             9.9030E-01
 PARAMETER:  8.5365E-02  1.3276E-01  3.2290E-02  1.3173E-01  2.8024E-02  8.1926E-02 -6.9465E-02  9.1170E-02 -9.9422E-02  8.8643E-02
             9.0251E-02
 GRADIENT:   4.0960E+02  7.7990E+01  1.9802E+01  1.1333E+02 -3.9955E+01  4.5652E+01  2.8914E+00 -1.6060E-01  7.6262E-01  5.5213E+00
             1.1868E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2146.07635807862        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  9.8403E-01  1.0574E+00  9.7938E-01  1.0203E+00  9.8866E-01  9.8841E-01  6.8764E-01  1.0820E+00  8.5694E-01  9.8794E-01
             9.7914E-01
 PARAMETER:  8.3903E-02  1.5581E-01  7.9161E-02  1.2010E-01  8.8597E-02  8.8343E-02 -2.7449E-01  1.7883E-01 -5.4388E-02  8.7867E-02
             7.8923E-02
 GRADIENT:  -8.2206E+00  2.1636E+01  3.7689E+00  2.2733E+01 -7.4522E+00  1.0277E+00 -3.9181E+00 -1.9416E+00 -9.0265E+00 -3.5941E+00
             1.8806E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2146.57263487177        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      403
 NPARAMETR:  9.8673E-01  1.0344E+00  1.0324E+00  1.0267E+00  1.0138E+00  9.8530E-01  7.3546E-01  1.1498E+00  8.6944E-01  1.0321E+00
             9.7243E-01
 PARAMETER:  8.6636E-02  1.3381E-01  1.3187E-01  1.2635E-01  1.1369E-01  8.5192E-02 -2.0726E-01  2.3956E-01 -3.9902E-02  1.3163E-01
             7.2043E-02
 GRADIENT:  -5.0765E-01 -1.6201E-01 -3.8668E-01  5.9784E-01  4.7645E-01  9.1290E-02  4.3726E-02  8.2623E-02 -1.5938E-01  2.7491E-01
            -9.0188E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2146.59333835867        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      581
 NPARAMETR:  9.8796E-01  1.1080E+00  9.5621E-01  9.7865E-01  1.0111E+00  9.8592E-01  7.3836E-01  1.0844E+00  8.9301E-01  1.0251E+00
             9.7322E-01
 PARAMETER:  8.7892E-02  2.0255E-01  5.5219E-02  7.8415E-02  1.1108E-01  8.5823E-02 -2.0333E-01  1.8101E-01 -1.3162E-02  1.2479E-01
             7.2856E-02
 GRADIENT:   4.1074E-01  2.0342E+00  6.8613E-01  1.9899E+00 -1.3469E+00 -4.8656E-02  2.1867E-02 -3.3720E-02  6.7543E-02  4.3029E-02
            -5.2428E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2146.60147484687        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      756
 NPARAMETR:  9.8837E-01  1.1771E+00  8.7921E-01  9.3176E-01  1.0085E+00  9.8664E-01  7.3796E-01  1.0013E+00  9.1689E-01  1.0224E+00
             9.7444E-01
 PARAMETER:  8.8303E-02  2.6308E-01 -2.8728E-02  2.9322E-02  1.0845E-01  8.6548E-02 -2.0387E-01  1.0128E-01  1.3234E-02  1.2216E-01
             7.4106E-02
 GRADIENT:  -3.9254E-01  1.4487E+00  4.3501E-01  1.1352E+00 -1.0660E+00 -1.1066E-01  5.5295E-02  4.0283E-02  5.8168E-02  9.5179E-02
             3.0677E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2146.60174683736        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      931
 NPARAMETR:  9.8865E-01  1.2015E+00  8.5210E-01  9.1524E-01  1.0078E+00  9.8718E-01  7.3591E-01  9.6728E-01  9.2597E-01  1.0221E+00
             9.7429E-01
 PARAMETER:  8.8584E-02  2.8358E-01 -6.0053E-02  1.1435E-02  1.0779E-01  8.7100E-02 -2.0664E-01  6.6731E-02  2.3084E-02  1.2187E-01
             7.3949E-02
 GRADIENT:  -3.2804E-01  1.2915E+00  2.3845E-01  1.1033E+00 -6.5611E-01 -1.2119E-02  1.0162E-02  4.5207E-02 -6.1949E-02  6.7310E-02
             1.1970E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2146.60347150953        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1112
 NPARAMETR:  9.8952E-01  1.2007E+00  8.5183E-01  9.1500E-01  1.0081E+00  9.8759E-01  7.3602E-01  9.6507E-01  9.2628E-01  1.0223E+00
             9.7415E-01
 PARAMETER:  8.9464E-02  2.8287E-01 -6.0372E-02  1.1172E-02  1.0803E-01  8.7514E-02 -2.0649E-01  6.4448E-02  2.3424E-02  1.2202E-01
             7.3811E-02
 GRADIENT:   1.6901E+00 -3.2496E-01 -5.9097E-02 -1.2857E-01  2.0442E-01  1.5687E-01  2.8604E-02  3.2524E-02  2.8118E-02  9.6607E-03
             2.3500E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2146.60352345025        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1298             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8949E-01  1.2006E+00  8.5177E-01  9.1507E-01  1.0078E+00  9.8757E-01  7.3588E-01  9.6361E-01  9.2621E-01  1.0222E+00
             9.7413E-01
 PARAMETER:  8.9430E-02  2.8281E-01 -6.0439E-02  1.1247E-02  1.0782E-01  8.7496E-02 -2.0669E-01  6.2935E-02  2.3347E-02  1.2199E-01
             7.3787E-02
 GRADIENT:   4.3290E+02  1.4976E+02  1.9203E+00  6.1207E+01  8.4199E+00  4.9068E+01  5.6696E+00  1.4867E-01  5.5882E+00  9.4394E-01
             9.8806E-01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2146.60352345025        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:     1353
 NPARAMETR:  9.8949E-01  1.2006E+00  8.5177E-01  9.1507E-01  1.0078E+00  9.8757E-01  7.3588E-01  9.6361E-01  9.2621E-01  1.0222E+00
             9.7413E-01
 PARAMETER:  8.9430E-02  2.8281E-01 -6.0439E-02  1.1247E-02  1.0782E-01  8.7496E-02 -2.0669E-01  6.2935E-02  2.3347E-02  1.2199E-01
             7.3787E-02
 GRADIENT:   1.6119E+00 -1.3821E-01  1.0758E-01 -1.2232E-01  3.0862E-03  1.5003E-01  5.7278E-03 -1.2535E-02  6.9231E-04 -1.0692E-02
            -1.1948E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1353
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.9774E-04 -2.3512E-02 -2.7424E-02  1.1122E-02 -3.2241E-02
 SE:             2.9898E-02  1.7771E-02  1.3356E-02  2.5431E-02  2.2561E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8672E-01  1.8581E-01  4.0040E-02  6.6186E-01  1.5299E-01

 ETASHRINKSD(%)  1.0000E-10  4.0467E+01  5.5256E+01  1.4804E+01  2.4417E+01
 ETASHRINKVR(%)  1.0000E-10  6.4558E+01  7.9980E+01  2.7416E+01  4.2872E+01
 EBVSHRINKSD(%)  3.1527E-01  4.0220E+01  5.8235E+01  1.5582E+01  2.1880E+01
 EBVSHRINKVR(%)  6.2954E-01  6.4263E+01  8.2557E+01  2.8736E+01  3.8973E+01
 RELATIVEINF(%)  9.8832E+01  1.2130E+00  1.7724E+00  2.8144E+00  1.2128E+01
 EPSSHRINKSD(%)  3.4237E+01
 EPSSHRINKVR(%)  5.6752E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2146.6035234502488     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1227.6649902455761     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.64
 Elapsed covariance  time in seconds:     7.35
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2146.604       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.89E-01  1.20E+00  8.52E-01  9.15E-01  1.01E+00  9.88E-01  7.36E-01  9.64E-01  9.26E-01  1.02E+00  9.74E-01
 


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
 
         3.73E-02  1.90E+00  2.25E+00  1.30E+00  1.55E-01  7.02E-02  1.84E-01  3.20E+00  7.48E-01  1.22E-01  4.91E-02
 


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
+        1.39E-03
 
 TH 2
+        4.38E-02  3.63E+00
 
 TH 3
+       -5.19E-02 -4.29E+00  5.08E+00
 
 TH 4
+       -2.99E-02 -2.48E+00  2.93E+00  1.70E+00
 
 TH 5
+       -3.13E-03 -2.57E-01  3.12E-01  1.76E-01  2.41E-02
 
 TH 6
+        7.95E-04  5.10E-02 -6.06E-02 -3.48E-02 -3.39E-03  4.93E-03
 
 TH 7
+       -7.19E-04 -1.08E-01  1.25E-01  7.44E-02  7.55E-03 -2.81E-03  3.37E-02
 
 TH 8
+       -7.35E-02 -6.06E+00  7.20E+00  4.15E+00  4.45E-01 -8.69E-02  1.73E-01  1.02E+01
 
 TH 9
+        1.74E-02  1.41E+00 -1.67E+00 -9.68E-01 -1.01E-01  2.03E-02 -4.90E-02 -2.36E+00  5.59E-01
 
 TH10
+       -9.61E-04 -6.85E-02  8.38E-02  4.72E-02  8.82E-03 -2.48E-04 -2.76E-03  1.16E-01 -2.81E-02  1.50E-02
 
 TH11
+        1.62E-04  8.29E-03 -8.97E-03 -5.86E-03 -2.21E-04  1.40E-04 -2.77E-04 -1.09E-02  3.39E-03 -7.54E-04  2.41E-03
 
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
+        3.73E-02
 
 TH 2
+        6.18E-01  1.90E+00
 
 TH 3
+       -6.18E-01 -9.98E-01  2.25E+00
 
 TH 4
+       -6.17E-01 -1.00E+00  9.98E-01  1.30E+00
 
 TH 5
+       -5.42E-01 -8.69E-01  8.91E-01  8.71E-01  1.55E-01
 
 TH 6
+        3.04E-01  3.81E-01 -3.83E-01 -3.80E-01 -3.11E-01  7.02E-02
 
 TH 7
+       -1.05E-01 -3.08E-01  3.02E-01  3.11E-01  2.65E-01 -2.18E-01  1.84E-01
 
 TH 8
+       -6.17E-01 -9.96E-01  9.99E-01  9.96E-01  8.96E-01 -3.87E-01  2.95E-01  3.20E+00
 
 TH 9
+        6.24E-01  9.92E-01 -9.91E-01 -9.93E-01 -8.73E-01  3.87E-01 -3.56E-01 -9.89E-01  7.48E-01
 
 TH10
+       -2.11E-01 -2.94E-01  3.04E-01  2.96E-01  4.64E-01 -2.89E-02 -1.23E-01  2.98E-01 -3.07E-01  1.22E-01
 
 TH11
+        8.88E-02  8.87E-02 -8.11E-02 -9.16E-02 -2.90E-02  4.05E-02 -3.07E-02 -6.96E-02  9.24E-02 -1.26E-01  4.91E-02
 
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
+        1.25E+03
 
 TH 2
+       -6.23E+01  6.24E+02
 
 TH 3
+        1.73E+01  2.13E+02  5.32E+02
 
 TH 4
+       -1.25E+02  6.21E+02 -2.60E+02  1.25E+03
 
 TH 5
+        1.55E+01 -3.41E+02 -4.31E+02  1.10E+02  8.31E+02
 
 TH 6
+       -5.45E+01 -4.47E+00  1.23E+01 -4.86E+01 -5.26E+01  2.54E+02
 
 TH 7
+       -4.78E+01  5.63E+00  1.40E+01 -1.02E+01 -5.45E+01  1.53E+01  5.27E+01
 
 TH 8
+       -1.04E+01 -2.08E+01 -1.31E+02  5.88E+01  2.53E+01  1.10E+01  8.82E+00  5.88E+01
 
 TH 9
+       -9.02E+01 -8.22E+00 -3.04E+01  9.17E+01  8.43E+00 -5.20E+00  4.44E+01  1.63E+01  1.69E+02
 
 TH10
+       -1.62E+01  5.11E+01  4.48E+01 -2.66E+00 -1.78E+02  2.70E+00  3.36E+01  1.26E+01  3.10E+01  1.30E+02
 
 TH11
+       -3.60E+01  6.72E+01  3.54E+01  9.69E+01 -4.63E+01 -1.33E+01 -9.15E-01 -2.35E+01 -4.21E+00  2.73E+01  4.58E+02
 
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
 #CPUT: Total CPU Time in Seconds,       29.082
Stop Time:
Wed Sep 29 21:30:15 CDT 2021
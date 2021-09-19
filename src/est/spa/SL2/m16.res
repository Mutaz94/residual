Sat Sep 18 12:06:34 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat16.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1716.27352556234        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -3.3115E+01 -9.9797E+01 -5.8847E+01 -4.0981E+01  1.0843E+02  4.0289E+01 -9.1823E+00  3.8322E+00  2.8246E+01 -9.7623E+00
             2.3213E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1727.52488881643        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      130
 NPARAMETR:  1.0579E+00  1.1206E+00  1.0450E+00  9.8216E-01  9.8590E-01  8.2153E-01  1.0342E+00  9.9051E-01  8.4675E-01  9.9816E-01
             9.0841E-01
 PARAMETER:  1.5626E-01  2.1389E-01  1.4403E-01  8.2002E-02  8.5797E-02 -9.6589E-02  1.3365E-01  9.0469E-02 -6.6345E-02  9.8154E-02
             3.9403E-03
 GRADIENT:   7.0839E+01  5.0487E+00  5.8851E+00  1.1388E+01  4.2365E+00 -3.9027E+01 -9.5913E+00 -2.8650E+00 -1.3508E+00 -5.8960E+00
            -2.2642E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1728.83925992727        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  1.0530E+00  1.1194E+00  9.3186E-01  9.7967E-01  9.3006E-01  8.4184E-01  1.1789E+00  1.0037E+00  7.3684E-01  8.8986E-01
             9.2061E-01
 PARAMETER:  1.5161E-01  2.1283E-01  2.9425E-02  7.9464E-02  2.7498E-02 -7.2161E-02  2.6457E-01  1.0370E-01 -2.0539E-01 -1.6686E-02
             1.7280E-02
 GRADIENT:   5.0276E+01  1.6237E+01  2.1234E+00  1.7018E+01  3.8336E+00 -2.7502E+01 -1.4886E+00 -7.6445E-02 -9.0699E+00 -9.2382E+00
            -1.6670E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1731.28393563275        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      486
 NPARAMETR:  1.0376E+00  1.1539E+00  8.2653E-01  9.4477E-01  9.0320E-01  8.9893E-01  1.1221E+00  7.2164E-01  8.1381E-01  9.3588E-01
             9.5189E-01
 PARAMETER:  1.3688E-01  2.4317E-01 -9.0524E-02  4.3182E-02 -1.8099E-03 -6.5458E-03  2.1516E-01 -2.2623E-01 -1.0602E-01  3.3736E-02
             5.0694E-02
 GRADIENT:   1.2771E+00  3.1470E+00 -1.2498E-01  4.6322E+00 -1.6392E+00  4.8007E-01 -2.6064E-01  3.3142E-01  8.2890E-02  1.9214E-01
             3.4073E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1731.38102047378        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      662
 NPARAMETR:  1.0388E+00  1.3432E+00  6.3892E-01  8.1390E-01  8.9954E-01  8.9884E-01  9.9521E-01  3.9780E-01  8.9267E-01  9.1372E-01
             9.5215E-01
 PARAMETER:  1.3810E-01  3.9504E-01 -3.4798E-01 -1.0592E-01 -5.8735E-03 -6.6522E-03  9.5200E-02 -8.2181E-01 -1.3536E-02  9.7667E-03
             5.0964E-02
 GRADIENT:   5.1127E-01 -1.8935E-01 -1.3660E+00  1.8123E+00  4.6940E-01 -3.1315E-01  2.6753E-02  1.5455E-01  8.4640E-01  5.8393E-01
             4.9044E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1731.39212397121        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      837
 NPARAMETR:  1.0388E+00  1.3943E+00  6.0887E-01  7.7968E-01  9.1032E-01  8.9966E-01  9.6720E-01  3.1909E-01  9.1427E-01  9.1651E-01
             9.5178E-01
 PARAMETER:  1.3804E-01  4.3239E-01 -3.9616E-01 -1.4887E-01  6.0392E-03 -5.7328E-03  6.6653E-02 -1.0423E+00  1.0373E-02  1.2823E-02
             5.0577E-02
 GRADIENT:   3.2164E-02 -7.9456E-01 -4.2854E-01 -3.4583E-01  4.8333E-01 -2.8759E-02  5.6860E-02  6.6875E-02  1.8720E-01  1.4193E-01
             8.9290E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1731.41059639697        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1016
 NPARAMETR:  1.0388E+00  1.3927E+00  5.9041E-01  7.7877E-01  8.9854E-01  8.9977E-01  9.6914E-01  1.3107E-01  9.1170E-01  9.0745E-01
             9.5195E-01
 PARAMETER:  1.3811E-01  4.3125E-01 -4.2693E-01 -1.5004E-01 -6.9797E-03 -5.6118E-03  6.8653E-02 -1.9320E+00  7.5516E-03  2.8789E-03
             5.0759E-02
 GRADIENT:  -8.4567E-02 -5.0124E-01 -2.6134E-01 -1.5448E-01  2.2585E-01 -3.6158E-02  8.4422E-02  8.2105E-03  1.2517E-01  7.4898E-02
             9.5398E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1731.41366118509        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1191
 NPARAMETR:  1.0389E+00  1.3934E+00  5.8765E-01  7.7821E-01  8.9726E-01  8.9985E-01  9.6886E-01  2.1918E-02  9.1136E-01  9.0694E-01
             9.5188E-01
 PARAMETER:  1.3817E-01  4.3172E-01 -4.3162E-01 -1.5075E-01 -8.4151E-03 -5.5246E-03  6.8364E-02 -3.7204E+00  7.1870E-03  2.3207E-03
             5.0681E-02
 GRADIENT:   2.5480E-02 -1.7870E-01 -8.7847E-02 -4.7447E-02  1.2584E-01 -9.8932E-03  2.7462E-02  1.6972E-04  1.5402E-02  2.7918E-02
             5.6356E-03

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1731.41375357692        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:     1325
 NPARAMETR:  1.0390E+00  1.3920E+00  5.8839E-01  7.7908E-01  8.9685E-01  8.9993E-01  9.6945E-01  1.0000E-02  9.1061E-01  9.0678E-01
             9.5187E-01
 PARAMETER:  1.3816E-01  4.3080E-01 -4.3044E-01 -1.4959E-01 -8.8390E-03 -5.5121E-03  6.9051E-02 -4.5294E+00  6.4646E-03  2.1665E-03
             5.0707E-02
 GRADIENT:  -2.5332E-02  7.7900E-03 -5.0730E-03  9.8911E-03  7.7051E-03 -4.5958E-03  2.4300E-03  0.0000E+00  2.2854E-03  7.0011E-04
             2.1429E-03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1325
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.5180E-04 -1.2560E-02 -3.6097E-04  9.0439E-03 -1.9788E-02
 SE:             2.9840E-02  2.4232E-02  1.4490E-04  2.2314E-02  2.3030E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9594E-01  6.0424E-01  1.2732E-02  6.8526E-01  3.9021E-01

 ETASHRINKSD(%)  3.1779E-02  1.8820E+01  9.9515E+01  2.5245E+01  2.2848E+01
 ETASHRINKVR(%)  6.3549E-02  3.4098E+01  9.9998E+01  4.4117E+01  4.0475E+01
 EBVSHRINKSD(%)  4.6256E-01  1.8785E+01  9.9582E+01  2.6728E+01  2.1404E+01
 EBVSHRINKVR(%)  9.2298E-01  3.4042E+01  9.9998E+01  4.6312E+01  3.8226E+01
 RELATIVEINF(%)  9.8953E+01  3.5194E+00  1.3824E-04  2.4864E+00  7.0172E+00
 EPSSHRINKSD(%)  4.4702E+01
 EPSSHRINKVR(%)  6.9422E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1731.4137535769198     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -996.26292701318164     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.78
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.51
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1731.414       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.39E+00  5.88E-01  7.79E-01  8.97E-01  9.00E-01  9.70E-01  1.00E-02  9.11E-01  9.07E-01  9.52E-01
 


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
+        1.26E+03
 
 TH 2
+       -6.49E+00  4.14E+02
 
 TH 3
+        1.49E+01  1.68E+02  6.16E+02
 
 TH 4
+       -2.11E+01  3.79E+02 -4.76E+02  1.20E+03
 
 TH 5
+       -5.68E+00 -2.72E+02 -6.72E+02  4.89E+02  1.04E+03
 
 TH 6
+        7.53E-01 -1.24E+00  2.93E+00 -3.36E+00 -1.08E+00  2.44E+02
 
 TH 7
+        6.96E-01  2.13E+01 -2.25E+01 -1.53E+01  6.12E+00  1.37E+00  9.79E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.05E+00 -1.82E+01 -4.58E+01  5.13E+01  9.43E+00 -1.35E+00  2.34E+01  0.00E+00  8.23E+01
 
 TH10
+       -1.96E+00 -1.61E+01 -5.26E+01 -6.45E+00 -6.59E+01  3.77E+00  1.33E+01  0.00E+00  1.67E+01  9.79E+01
 
 TH11
+       -5.16E+00 -1.44E+01 -3.04E+01  2.96E+00 -1.84E+00  4.58E+00  7.00E+00  0.00E+00  1.23E+01  1.57E+01  2.32E+02
 
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
 #CPUT: Total CPU Time in Seconds,       21.315
Stop Time:
Sat Sep 18 12:06:57 CDT 2021
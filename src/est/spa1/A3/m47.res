Thu Sep 30 00:17:51 CDT 2021
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
$DATA ../../../../data/spa1/A3/dat47.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -216.831747040708        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3022E+02  3.1777E+01  2.3393E+02 -6.5816E+01  2.2545E+02  6.4299E+01 -4.1552E+01 -3.7578E+02 -9.9534E+01 -1.2815E+02
            -3.0735E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1452.44694341625        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0610E+00  1.0283E+00  9.2101E-01  1.1457E+00  9.1696E-01  7.6849E-01  9.8397E-01  1.0509E+00  9.9423E-01  9.7643E-01
             5.2993E+00
 PARAMETER:  1.5918E-01  1.2789E-01  1.7714E-02  2.3599E-01  1.3306E-02 -1.6333E-01  8.3839E-02  1.4968E-01  9.4210E-02  7.6144E-02
             1.7676E+00
 GRADIENT:   1.0705E+02 -8.6548E+00 -1.0222E+01 -4.7255E-01 -1.4555E+01 -7.8396E+00  1.0725E+01  8.0528E+00  2.3366E+01  2.1349E+01
             3.5484E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1498.59450609873        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      162
 NPARAMETR:  1.0217E+00  6.8151E-01  2.7642E-01  1.2761E+00  3.6824E-01  8.1368E-01  7.3234E-01  2.1683E-01  1.2110E+00  2.1570E-01
             4.4970E+00
 PARAMETER:  1.2143E-01 -2.8344E-01 -1.1858E+00  3.4378E-01 -8.9903E-01 -1.0618E-01 -2.1150E-01 -1.4286E+00  2.9144E-01 -1.4339E+00
             1.6034E+00
 GRADIENT:   7.4964E+00  6.1329E+01 -7.6901E+00  1.2879E+02 -2.7285E+01 -8.4960E+00  1.8482E-02  2.5848E-01  2.4705E+01 -5.1133E-02
             2.6270E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1559.08895996622        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      280
 NPARAMETR:  9.4999E-01  6.5509E-01  3.6387E-01  1.1833E+00  4.2184E-01  8.4381E-01  1.5157E+00  1.8828E-01  9.6656E-01  1.9309E-01
             3.2155E+00
 PARAMETER:  4.8695E-02 -3.2298E-01 -9.1097E-01  2.6828E-01 -7.6313E-01 -6.9824E-02  5.1591E-01 -1.5698E+00  6.5985E-02 -1.5446E+00
             1.2680E+00
 GRADIENT:  -1.4241E+02  3.0489E+01  1.5139E+01  1.4720E+01 -3.0091E+01 -7.9473E+00  9.8064E+00 -6.3708E-01  6.2940E+00 -1.6894E+00
             3.1756E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1570.15151909303        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      456
 NPARAMETR:  9.9969E-01  5.4083E-01  3.2531E-01  1.2122E+00  3.5727E-01  8.0500E-01  1.0809E+00  9.9502E-02  1.0313E+00  6.8920E-01
             3.0367E+00
 PARAMETER:  9.9692E-02 -5.1464E-01 -1.0230E+00  2.9242E-01 -9.2927E-01 -1.1691E-01  1.7778E-01 -2.2076E+00  1.3079E-01 -2.7223E-01
             1.2108E+00
 GRADIENT:   6.9921E+00  3.7037E+01  2.6894E+01  2.3425E+01 -3.6826E+01 -2.3143E+01  2.3373E+00  6.3684E-02  3.4733E+00  9.6545E+00
             2.0703E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1587.42960000307        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      632
 NPARAMETR:  9.9347E-01  3.1729E-01  1.5114E-01  1.0668E+00  2.0361E-01  8.8030E-01  6.5106E-01  1.0000E-02  1.1621E+00  7.1512E-01
             2.7890E+00
 PARAMETER:  9.3448E-02 -1.0479E+00 -1.7896E+00  1.6463E-01 -1.4915E+00 -2.7494E-02 -3.2916E-01 -7.5876E+00  2.5025E-01 -2.3530E-01
             1.1257E+00
 GRADIENT:  -4.7420E+00  1.4623E+01 -2.5207E+01  4.3291E+01  5.9845E+00 -9.4395E-01  2.0722E+00  0.0000E+00 -1.9696E+01  4.2339E+00
             6.5629E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1590.79437291584        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      807
 NPARAMETR:  9.9309E-01  2.5882E-01  1.2572E-01  9.6584E-01  1.7688E-01  8.8326E-01  4.6176E-01  1.0000E-02  1.3321E+00  7.1696E-01
             2.7401E+00
 PARAMETER:  9.3070E-02 -1.2516E+00 -1.9737E+00  6.5239E-02 -1.6323E+00 -2.4131E-02 -6.7270E-01 -1.1159E+01  3.8674E-01 -2.3273E-01
             1.1080E+00
 GRADIENT:  -3.3394E-01  1.3554E-01 -6.8868E-01  3.9593E-01 -3.2002E-01  3.6587E-01  7.7336E-01  0.0000E+00 -7.5596E-01  2.8529E-01
            -1.8750E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1591.12846767004        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      986
 NPARAMETR:  9.9346E-01  2.6336E-01  1.2811E-01  9.7460E-01  1.7903E-01  8.8241E-01  1.2082E-01  1.0000E-02  1.3213E+00  7.1844E-01
             2.7466E+00
 PARAMETER:  9.3436E-02 -1.2342E+00 -1.9549E+00  7.4276E-02 -1.6202E+00 -2.5094E-02 -2.0135E+00 -9.1884E+00  3.7865E-01 -2.3067E-01
             1.1104E+00
 GRADIENT:   2.9912E-01  8.1976E-01  1.3234E+00  2.4547E+00 -3.8002E+00  2.7547E-02  4.7217E-02  0.0000E+00 -7.3124E-01  1.3237E-01
            -8.1851E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1591.16384823790        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1161
 NPARAMETR:  9.9329E-01  2.6123E-01  1.2603E-01  9.6655E-01  1.7751E-01  8.8266E-01  1.3240E-02  1.0000E-02  1.3340E+00  7.1927E-01
             2.7474E+00
 PARAMETER:  9.3272E-02 -1.2424E+00 -1.9712E+00  6.5974E-02 -1.6287E+00 -2.4813E-02 -4.2245E+00 -6.8070E+00  3.8822E-01 -2.2952E-01
             1.1107E+00
 GRADIENT:   8.9727E-02  6.1235E-02  7.1975E-02  9.9176E-04 -1.5099E-01  8.3739E-02  5.8702E-04  0.0000E+00  2.2840E-02  6.1201E-02
             8.9080E-02

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1591.16397198291        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1253
 NPARAMETR:  9.9326E-01  2.6115E-01  1.2603E-01  9.6653E-01  1.7751E-01  8.8243E-01  1.0000E-02  1.0000E-02  1.3339E+00  7.1907E-01
             2.7472E+00
 PARAMETER:  9.3232E-02 -1.2427E+00 -1.9713E+00  6.5962E-02 -1.6287E+00 -2.5074E-02 -4.7645E+00 -6.1570E+00  3.8812E-01 -2.2980E-01
             1.1106E+00
 GRADIENT:  -6.2624E-03 -1.7117E-03  1.3911E-03  8.8513E-03 -7.5919E-03 -6.8766E-03  0.0000E+00  0.0000E+00 -4.7952E-03 -4.5524E-03
            -9.5842E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1253
 NO. OF SIG. DIGITS IN FINAL EST.:  3.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.5318E-04 -3.5453E-05  2.8539E-04 -1.2131E-02  3.6128E-03
 SE:             2.8882E-02  9.9629E-05  2.1918E-04  2.5591E-02  2.5750E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7367E-01  7.2195E-01  1.9290E-01  6.3549E-01  8.8842E-01

 ETASHRINKSD(%)  3.2430E+00  9.9666E+01  9.9266E+01  1.4266E+01  1.3733E+01
 ETASHRINKVR(%)  6.3808E+00  9.9999E+01  9.9995E+01  2.6496E+01  2.5580E+01
 EBVSHRINKSD(%)  3.0045E+00  9.9643E+01  9.9358E+01  1.1045E+01  1.4487E+01
 EBVSHRINKVR(%)  5.9188E+00  9.9999E+01  9.9996E+01  2.0871E+01  2.6876E+01
 RELATIVEINF(%)  9.3980E+01  3.8429E-04  3.5900E-04  2.5364E+01  4.3859E+00
 EPSSHRINKSD(%)  2.6712E+01
 EPSSHRINKVR(%)  4.6288E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1591.1639719829122     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -672.22543877823955     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.33
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.47
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1591.164       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  2.61E-01  1.26E-01  9.67E-01  1.78E-01  8.82E-01  1.00E-02  1.00E-02  1.33E+00  7.19E-01  2.75E+00
 


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
+        1.37E+03
 
 TH 2
+       -3.85E+01  2.00E+03
 
 TH 3
+       -1.03E+02  3.78E+03  2.82E+04
 
 TH 4
+       -5.96E+00 -1.34E+01 -1.14E+03  5.35E+02
 
 TH 5
+        2.46E+02 -7.22E+03 -3.15E+04 -5.88E+02  5.02E+04
 
 TH 6
+        4.22E+00 -2.41E+01  6.89E+01 -1.17E+01 -3.45E+00  2.26E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.25E+01 -2.20E+01  3.20E+02 -1.78E+01  6.16E+01 -2.75E+00  0.00E+00  0.00E+00  6.48E+01
 
 TH10
+       -4.71E+00 -2.32E+01  9.84E+01  1.16E+01  2.03E+01  2.47E+00  0.00E+00  0.00E+00  7.53E+00  2.09E+02
 
 TH11
+       -2.25E+01  2.65E-01 -6.17E+01 -3.21E+00  6.96E+01  4.40E+00  0.00E+00  0.00E+00  6.32E+00  1.42E+01  6.15E+01
 
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
 #CPUT: Total CPU Time in Seconds,       25.874
Stop Time:
Thu Sep 30 00:18:18 CDT 2021
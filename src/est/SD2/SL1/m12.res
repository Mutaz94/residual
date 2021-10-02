Fri Oct  1 11:31:12 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat12.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m12.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2100.92074646900        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3121E+02 -2.8648E+01 -3.2504E+01  2.6249E+01  3.0746E+01  5.3896E+01 -1.1884E+01  1.0857E+01  5.5294E+00  3.2292E+00
            -2.7182E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2106.62549214606        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:      179
 NPARAMETR:  9.9702E-01  1.1005E+00  1.1061E+00  9.9571E-01  1.0821E+00  1.0068E+00  1.0860E+00  9.4539E-01  9.9669E-01  9.8600E-01
             1.0561E+00
 PARAMETER:  9.7012E-02  1.9575E-01  2.0080E-01  9.5704E-02  1.7887E-01  1.0674E-01  1.8250E-01  4.3838E-02  9.6684E-02  8.5899E-02
             1.5454E-01
 GRADIENT:  -4.5888E+00 -2.3333E+00 -1.0875E+01  1.9044E+01  2.0167E+01  1.1528E+00 -7.6719E+00  2.1407E+00  3.1796E-01 -9.4248E+00
             1.3001E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2107.51814454850        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      358
 NPARAMETR:  1.0008E+00  1.1258E+00  1.1416E+00  9.7614E-01  1.1051E+00  9.9903E-01  1.1523E+00  9.0079E-01  9.8770E-01  1.0661E+00
             1.0393E+00
 PARAMETER:  1.0079E-01  2.1852E-01  2.3246E-01  7.5849E-02  1.9990E-01  9.9030E-02  2.4180E-01 -4.4804E-03  8.7621E-02  1.6401E-01
             1.3858E-01
 GRADIENT:   4.4231E+00  3.8509E+00  1.1583E+00  4.5808E+00  3.4322E+00 -1.8132E+00  3.3702E-01 -5.4920E-01 -7.2500E-01 -6.0153E-01
             9.8771E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2107.61072294303        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  9.9870E-01  1.0797E+00  1.0845E+00  9.9727E-01  1.0566E+00  1.0035E+00  1.1984E+00  8.0948E-01  9.6505E-01  1.0284E+00
             1.0374E+00
 PARAMETER:  9.8695E-02  1.7672E-01  1.8107E-01  9.7267E-02  1.5506E-01  1.0349E-01  2.8101E-01 -1.1136E-01  6.4429E-02  1.2801E-01
             1.3674E-01
 GRADIENT:  -1.1776E-02 -2.5301E-01 -4.5672E-02 -2.9362E-01  2.6750E-01  4.0954E-03 -2.3877E-03 -2.1443E-02 -4.0016E-02 -4.3614E-02
             6.4573E-03

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2107.61151954512        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      711
 NPARAMETR:  9.9823E-01  1.0276E+00  1.1162E+00  1.0317E+00  1.0452E+00  1.0030E+00  1.2485E+00  8.3063E-01  9.3949E-01  1.0238E+00
             1.0373E+00
 PARAMETER:  9.8227E-02  1.2725E-01  2.0991E-01  1.3118E-01  1.4425E-01  1.0299E-01  3.2195E-01 -8.5565E-02  3.7582E-02  1.2350E-01
             1.3665E-01
 GRADIENT:  -1.8663E-03  8.7358E-01  2.1650E-01  8.4663E-01 -5.5050E-01  7.0394E-03 -7.3531E-02 -2.1684E-02 -8.9701E-02 -9.8184E-03
            -7.4541E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2107.61153869117        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      891
 NPARAMETR:  9.9811E-01  1.0179E+00  1.1211E+00  1.0381E+00  1.0429E+00  1.0030E+00  1.2588E+00  8.3359E-01  9.3449E-01  1.0227E+00
             1.0373E+00
 PARAMETER:  9.8110E-02  1.1774E-01  2.1433E-01  1.3737E-01  1.4198E-01  1.0295E-01  3.3020E-01 -8.2018E-02  3.2245E-02  1.2243E-01
             1.3659E-01
 GRADIENT:  -6.3688E-02  1.0913E+00  1.5130E-01  1.1771E+00 -5.7283E-01  2.7952E-02 -7.3695E-02 -1.0954E-02 -1.4813E-01  5.8617E-03
            -1.2519E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2107.61321003147        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1075             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9880E-01  1.0146E+00  1.1226E+00  1.0393E+00  1.0424E+00  1.0034E+00  1.2632E+00  8.3270E-01  9.3384E-01  1.0223E+00
             1.0374E+00
 PARAMETER:  9.8797E-02  1.1452E-01  2.1561E-01  1.3851E-01  1.4156E-01  1.0336E-01  3.3366E-01 -8.3079E-02  3.1551E-02  1.2203E-01
             1.3668E-01
 GRADIENT:   3.9993E+02  4.0210E+01  3.3992E+00  1.0953E+02  8.3770E+00  5.3692E+01  1.5441E+01  4.5845E-02  5.5689E+00  9.0490E-01
             1.3180E+00

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2107.61328578191        NO. OF FUNC. EVALS.:  90
 CUMULATIVE NO. OF FUNC. EVALS.:     1165
 NPARAMETR:  9.9879E-01  1.0145E+00  1.1224E+00  1.0393E+00  1.0425E+00  1.0034E+00  1.2632E+00  8.3354E-01  9.3385E-01  1.0223E+00
             1.0374E+00
 PARAMETER:  9.8787E-02  1.1444E-01  2.1549E-01  1.3858E-01  1.4164E-01  1.0335E-01  3.3362E-01 -8.2079E-02  3.1563E-02  1.2208E-01
             1.3670E-01
 GRADIENT:   1.4916E+00  2.6949E-01  2.9075E-02  9.0529E-02 -1.2178E-01  2.0101E-01  6.3123E-02 -1.5153E-02  3.0446E-02 -7.9573E-03
            -2.0097E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1165
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.1239E-04 -5.3518E-03 -2.7928E-02  1.5040E-04 -2.8255E-02
 SE:             2.9871E-02  2.0435E-02  1.1783E-02  2.3796E-02  2.2272E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8631E-01  7.9340E-01  1.7779E-02  9.9496E-01  2.0458E-01

 ETASHRINKSD(%)  1.0000E-10  3.1541E+01  6.0525E+01  2.0281E+01  2.5385E+01
 ETASHRINKVR(%)  1.0000E-10  5.3133E+01  8.4417E+01  3.6449E+01  4.4327E+01
 EBVSHRINKSD(%)  3.6851E-01  3.1813E+01  6.4222E+01  2.0833E+01  2.2772E+01
 EBVSHRINKVR(%)  7.3567E-01  5.3505E+01  8.7199E+01  3.7326E+01  4.0359E+01
 RELATIVEINF(%)  9.8578E+01  2.4240E+00  1.8985E+00  3.4700E+00  1.1934E+01
 EPSSHRINKSD(%)  3.3525E+01
 EPSSHRINKVR(%)  5.5811E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2107.6132857819098     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1188.6747525772371     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.11
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2107.613       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.99E-01  1.01E+00  1.12E+00  1.04E+00  1.04E+00  1.00E+00  1.26E+00  8.34E-01  9.34E-01  1.02E+00  1.04E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.141
Stop Time:
Fri Oct  1 11:31:32 CDT 2021
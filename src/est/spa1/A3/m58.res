Thu Sep 30 00:23:09 CDT 2021
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
$DATA ../../../../data/spa1/A3/dat58.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m58.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   871.887679287521        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.3505E+02  6.7718E+01  1.8627E+02  4.2142E+01  1.9601E+02  5.0277E+01 -8.0255E+01 -1.8941E+02 -5.2349E+01 -1.1203E+02
            -5.3641E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1291.40151331068        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0732E+00  1.0673E+00  9.3233E-01  1.1795E+00  9.2667E-01  7.8237E-01  1.0016E+00  9.9836E-01  9.4815E-01  9.7310E-01
             6.6555E+00
 PARAMETER:  1.7060E-01  1.6515E-01  2.9934E-02  2.6508E-01  2.3847E-02 -1.4543E-01  1.0164E-01  9.8356E-02  4.6755E-02  7.2736E-02
             1.9954E+00
 GRADIENT:   1.6545E+02  1.2763E+01 -7.0087E+00  3.2036E+01 -1.6264E+01 -3.9259E+00  1.2027E+01  6.0266E+00  2.3539E+01  1.7578E+01
             3.8207E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1373.97333485047        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  9.5427E-01  6.6970E-01  2.5172E-01  1.2030E+00  3.6003E-01  7.7670E-01  6.0750E-01  9.8103E-02  1.5509E+00  6.3665E-02
             5.1863E+00
 PARAMETER:  5.3193E-02 -3.0092E-01 -1.2795E+00  2.8483E-01 -9.2157E-01 -1.5270E-01 -3.9841E-01 -2.2217E+00  5.3881E-01 -2.6541E+00
             1.7460E+00
 GRADIENT:  -8.1034E+01  2.3183E+01 -1.2315E+01  6.2815E+01  1.4215E+01 -2.4099E+01  5.5580E+00  1.9199E-01  5.7222E+01  2.5657E-01
             3.0521E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1440.58272670273        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  8.9494E-01  4.2568E-01  2.6770E-01  1.2349E+00  3.1406E-01  8.8268E-01  6.0238E-01  3.7066E-02  1.1385E+00  1.1253E-01
             3.5350E+00
 PARAMETER: -1.0994E-02 -7.5406E-01 -1.2179E+00  3.1101E-01 -1.0582E+00 -2.4798E-02 -4.0687E-01 -3.1951E+00  2.2967E-01 -2.0845E+00
             1.3627E+00
 GRADIENT:  -1.3972E+02  2.6792E+01  8.6155E+00  9.9921E+01  8.8165E+00 -3.6548E+00 -3.4473E+00 -2.2397E-02 -1.0791E+00 -7.1201E-01
            -3.6264E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1442.65953046330        NO. OF FUNC. EVALS.: 102
 CUMULATIVE NO. OF FUNC. EVALS.:      332
 NPARAMETR:  9.2898E-01  4.2416E-01  1.8767E-01  1.1372E+00  2.4964E-01  9.3394E-01  1.1458E+00  1.0589E-01  1.2401E+00  4.3733E-02
             3.4691E+00
 PARAMETER:  2.6332E-02 -7.5766E-01 -1.5730E+00  2.2853E-01 -1.2877E+00  3.1661E-02  2.3611E-01 -2.1454E+00  3.1517E-01 -3.0297E+00
             1.3439E+00
 GRADIENT:  -6.2719E+01  4.0505E+01  1.5589E+01  6.6213E+01 -1.1260E+02  1.6247E+01 -1.1720E+01 -2.2731E-01 -5.1096E+00 -1.6629E-01
            -2.7961E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1451.56541129368        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      508
 NPARAMETR:  9.6709E-01  4.5585E-01  2.4121E-01  1.1304E+00  2.9662E-01  8.7919E-01  1.4125E+00  8.1966E-02  1.0845E+00  5.4986E-02
             3.5574E+00
 PARAMETER:  6.6541E-02 -6.8559E-01 -1.3221E+00  2.2258E-01 -1.1153E+00 -2.8759E-02  4.4535E-01 -2.4014E+00  1.8111E-01 -2.8007E+00
             1.3690E+00
 GRADIENT:   3.2961E+01  9.7622E+00  5.3450E+00  3.0195E-01 -1.6078E+01  4.4471E+00 -2.2916E+00 -1.8025E-03  2.3917E-01  3.8091E-02
             7.7394E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1452.46438222670        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      683
 NPARAMETR:  9.5440E-01  3.9357E-01  2.5006E-01  1.1493E+00  2.9195E-01  8.6511E-01  1.6928E+00  3.7931E-02  1.0590E+00  5.9237E-02
             3.5298E+00
 PARAMETER:  5.3326E-02 -8.3249E-01 -1.2861E+00  2.3915E-01 -1.1312E+00 -4.4899E-02  6.2641E-01 -3.1720E+00  1.5729E-01 -2.7262E+00
             1.3612E+00
 GRADIENT:   3.3170E+00 -1.0122E+00  9.3276E-01 -2.7145E+00 -4.5657E-01  8.9412E-01 -3.7737E-01 -3.2027E-03  1.1354E+00  3.9869E-02
             3.9284E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1452.49669721460        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      799
 NPARAMETR:  9.5292E-01  3.9526E-01  2.4968E-01  1.1515E+00  2.9206E-01  8.6282E-01  1.7070E+00  3.7519E-02  1.0526E+00  2.9569E-02
             3.5097E+00
 PARAMETER:  5.1779E-02 -8.2820E-01 -1.2876E+00  2.4107E-01 -1.1308E+00 -4.7546E-02  6.3475E-01 -3.1829E+00  1.5128E-01 -3.4210E+00
             1.3555E+00
 GRADIENT:   2.3861E+01  5.2718E+00  1.3853E+01  1.6270E+01  3.6679E+01  1.5659E+00  8.4069E-01 -8.7505E-04  1.0151E+00  1.8481E-02
             1.1548E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1452.50470560667        NO. OF FUNC. EVALS.: 155
 CUMULATIVE NO. OF FUNC. EVALS.:      954
 NPARAMETR:  9.5292E-01  3.9636E-01  2.4924E-01  1.1487E+00  2.9219E-01  8.6301E-01  1.7066E+00  3.8760E-02  1.0531E+00  1.2556E-02
             3.5153E+00
 PARAMETER:  5.1781E-02 -8.2544E-01 -1.2893E+00  2.3866E-01 -1.1303E+00 -4.7328E-02  6.3452E-01 -3.1504E+00  1.5178E-01 -4.2776E+00
             1.3571E+00
 GRADIENT:  -4.7549E-01 -3.1325E-01 -3.3352E-01 -8.6229E-01 -1.3643E-01 -5.0992E-02  3.0049E-02 -4.0156E-03 -6.5860E-02  1.8211E-03
             2.3809E-01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1452.50551869162        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1011
 NPARAMETR:  9.5298E-01  3.9764E-01  2.4891E-01  1.1485E+00  2.9214E-01  8.6314E-01  1.7011E+00  4.0063E-02  1.0544E+00  1.0000E-02
             3.5146E+00
 PARAMETER:  5.1835E-02 -8.2220E-01 -1.2906E+00  2.3846E-01 -1.1305E+00 -4.7182E-02  6.3126E-01 -3.1173E+00  1.5296E-01 -4.8236E+00
             1.3569E+00
 GRADIENT:  -4.3139E-01  5.8048E-02 -1.0646E-02 -3.5160E-01 -9.6509E-01 -5.5945E-02  2.7646E-02 -4.3230E-03 -4.0360E-03  0.0000E+00
             4.5517E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1011
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.7586E-03  2.9353E-02 -8.3257E-04 -2.4497E-02  4.0898E-04
 SE:             2.8478E-02  1.9732E-02  8.2116E-04  2.5441E-02  3.3380E-04
 N:                     100         100         100         100         100

 P VAL.:         9.2283E-01  1.3686E-01  3.1063E-01  3.3560E-01  2.2050E-01

 ETASHRINKSD(%)  4.5951E+00  3.3894E+01  9.7249E+01  1.4770E+01  9.8882E+01
 ETASHRINKVR(%)  8.9791E+00  5.6300E+01  9.9924E+01  2.7358E+01  9.9987E+01
 EBVSHRINKSD(%)  4.4900E+00  3.5751E+01  9.7141E+01  1.4324E+01  9.8838E+01
 EBVSHRINKVR(%)  8.7785E+00  5.8721E+01  9.9918E+01  2.6597E+01  9.9986E+01
 RELATIVEINF(%)  9.0798E+01  8.0249E+00  5.3467E-03  4.2303E+01  5.6336E-04
 EPSSHRINKSD(%)  2.1608E+01
 EPSSHRINKVR(%)  3.8548E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1452.5055186916222     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -533.56698548694953     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.30
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     9.37
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1452.506       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.53E-01  3.98E-01  2.49E-01  1.15E+00  2.92E-01  8.63E-01  1.70E+00  4.01E-02  1.05E+00  1.00E-02  3.51E+00
 


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
+        1.50E+03
 
 TH 2
+       -8.19E+01  9.83E+02
 
 TH 3
+       -7.25E+01  2.13E+03  9.82E+03
 
 TH 4
+       -3.51E+01  1.70E+02 -3.64E+02  5.46E+02
 
 TH 5
+        2.23E+02 -3.57E+03 -1.27E+04 -2.67E+02  1.91E+04
 
 TH 6
+        1.21E+00 -7.90E+00  3.95E+01 -1.43E+01  5.30E+00  2.20E+02
 
 TH 7
+       -3.49E-01  4.08E+01 -3.71E+01 -7.43E-01  2.10E+01  1.11E+00  1.26E+01
 
 TH 8
+       -4.95E-01 -1.11E+00 -1.49E+01 -5.22E-01  2.02E+01 -3.93E-02  3.82E-01 -2.62E+00
 
 TH 9
+        9.83E+00 -1.66E+01  4.76E+01 -1.16E+01  1.44E+02 -9.42E-01  7.77E+00  1.57E-02  9.48E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.35E+01 -3.86E+00 -1.05E+02 -1.22E+01  1.13E+02  4.34E+00  5.30E+00  9.32E-01  5.50E+00  0.00E+00  4.35E+01
 
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
 #CPUT: Total CPU Time in Seconds,       25.756
Stop Time:
Thu Sep 30 00:23:36 CDT 2021

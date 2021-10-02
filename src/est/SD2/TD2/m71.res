Fri Oct  1 14:57:37 CDT 2021
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
$DATA ../../../../data/SD2/TD2/dat71.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m71.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2034.14549661207        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9149E+02  3.4570E+00  7.1229E+01 -4.1656E+01 -1.8071E+01  3.9765E+01 -1.4274E+01 -1.3261E+01 -4.4866E+00 -3.0183E+01
            -1.1920E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2042.17261609770        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      110
 NPARAMETR:  9.4312E-01  1.0402E+00  8.9991E-01  1.0378E+00  9.2628E-01  8.9369E-01  1.0519E+00  9.9844E-01  9.9543E-01  1.0746E+00
             9.8373E-01
 PARAMETER:  4.1439E-02  1.3941E-01 -5.4652E-03  1.3714E-01  2.3419E-02 -1.2402E-02  1.5064E-01  9.8439E-02  9.5419E-02  1.7191E-01
             8.3595E-02
 GRADIENT:  -2.2448E+01  4.0763E+01  6.1340E+01 -1.3696E+01 -6.7740E+01 -4.1791E+01 -1.2377E+01 -2.0457E+00 -7.1494E-01 -7.5584E+00
            -1.6558E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2051.74480319232        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      288
 NPARAMETR:  9.5118E-01  9.2759E-01  6.3336E-01  1.1060E+00  7.5463E-01  9.6270E-01  1.4291E+00  6.7244E-01  9.0548E-01  9.8630E-01
             9.7426E-01
 PARAMETER:  4.9946E-02  2.4831E-02 -3.5672E-01  2.0073E-01 -1.8152E-01  6.1984E-02  4.5706E-01 -2.9685E-01  7.1330E-04  8.6203E-02
             7.3919E-02
 GRADIENT:  -1.8875E+00  2.4260E+01 -1.9020E+01  5.2431E+01 -1.9650E+00 -9.6240E+00  8.9254E+00  7.5239E+00  8.0212E-01  1.4931E+01
            -4.5200E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2055.02868778719        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      467
 NPARAMETR:  9.5186E-01  9.0986E-01  6.3007E-01  1.0755E+00  7.5799E-01  9.8383E-01  1.3479E+00  4.6170E-01  9.1789E-01  9.2932E-01
             9.8575E-01
 PARAMETER:  5.0662E-02  5.5391E-03 -3.6193E-01  1.7282E-01 -1.7709E-01  8.3702E-02  3.9856E-01 -6.7283E-01  1.4321E-02  2.6701E-02
             8.5646E-02
 GRADIENT:  -2.6601E-02 -6.4855E+00 -1.7315E+00 -4.9274E+00  4.5795E+00 -7.2107E-01 -3.6893E-01  1.8522E+00 -6.6945E-02  1.1326E+00
             2.1639E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2055.75035485705        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      642
 NPARAMETR:  9.5241E-01  9.6215E-01  5.9220E-01  1.0453E+00  7.5492E-01  9.8674E-01  1.2996E+00  1.4846E-01  9.3811E-01  9.3344E-01
             9.8389E-01
 PARAMETER:  5.1238E-02  6.1417E-02 -4.2390E-01  1.4427E-01 -1.8114E-01  8.6650E-02  3.6202E-01 -1.8075E+00  3.6113E-02  3.1122E-02
             8.3760E-02
 GRADIENT:  -2.7548E-02  1.8906E-01  5.6190E-01 -2.7292E-02  1.7917E-01  7.8707E-03 -1.6724E-01  7.7156E-02 -2.0567E-01 -4.1690E-01
            -1.5317E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2055.78520296541        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      817
 NPARAMETR:  9.5238E-01  9.6212E-01  5.8848E-01  1.0446E+00  7.5298E-01  9.8675E-01  1.2995E+00  2.6020E-02  9.3983E-01  9.3782E-01
             9.8426E-01
 PARAMETER:  5.1211E-02  6.1389E-02 -4.3021E-01  1.4361E-01 -1.8371E-01  8.6658E-02  3.6201E-01 -3.5489E+00  3.7944E-02  3.5798E-02
             8.4138E-02
 GRADIENT:  -1.3956E-01 -3.9546E-01 -4.8688E-01  1.7132E-01  6.2631E-01 -1.2273E-02  4.2128E-02  2.0732E-03  1.3493E-01  1.3328E-01
             1.2066E-01

0ITERATION NO.:   29    OBJECTIVE VALUE:  -2055.78645221218        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      944
 NPARAMETR:  9.5247E-01  9.6353E-01  5.8800E-01  1.0438E+00  7.5288E-01  9.8681E-01  1.2984E+00  1.0000E-02  9.3961E-01  9.3691E-01
             9.8417E-01
 PARAMETER:  5.1298E-02  6.2845E-02 -4.3103E-01  1.4290E-01 -1.8385E-01  8.6727E-02  3.6112E-01 -4.5648E+00  3.7712E-02  3.4828E-02
             8.4047E-02
 GRADIENT:   2.8346E-02  7.7120E-02  5.2398E-03 -2.5349E-02 -1.0159E-01  6.9231E-03  4.3525E-03  0.0000E+00 -3.8592E-02  1.7500E-02
            -3.6963E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      944
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.8770E-04 -2.1376E-03 -4.7579E-04 -6.9305E-05 -9.1201E-03
 SE:             2.9884E-02  2.1969E-02  2.0897E-04  2.5783E-02  2.3117E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7363E-01  9.2249E-01  2.2796E-02  9.9786E-01  6.9319E-01

 ETASHRINKSD(%)  1.0000E-10  2.6401E+01  9.9300E+01  1.3624E+01  2.2556E+01
 ETASHRINKVR(%)  1.0000E-10  4.5831E+01  9.9995E+01  2.5393E+01  4.0025E+01
 EBVSHRINKSD(%)  3.4315E-01  2.5954E+01  9.9388E+01  1.3924E+01  2.2370E+01
 EBVSHRINKVR(%)  6.8512E-01  4.5172E+01  9.9996E+01  2.5908E+01  3.9736E+01
 RELATIVEINF(%)  9.9150E+01  7.0644E+00  9.5019E-04  1.2374E+01  9.0242E+00
 EPSSHRINKSD(%)  3.4343E+01
 EPSSHRINKVR(%)  5.6892E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2055.7864522121763     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1136.8479190075036     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.94
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2055.786       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.52E-01  9.64E-01  5.88E-01  1.04E+00  7.53E-01  9.87E-01  1.30E+00  1.00E-02  9.40E-01  9.37E-01  9.84E-01
 


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
 #CPUT: Total CPU Time in Seconds,       13.980
Stop Time:
Fri Oct  1 14:57:53 CDT 2021

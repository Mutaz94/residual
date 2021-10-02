Sat Oct  2 00:33:21 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat42.csv ignore=@
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
Current Date:        2 OCT 2021
Days until program expires : 197
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m42.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -612.122964741968        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8261E+02  8.6495E+01  4.9274E+01  7.2586E+01  8.1236E+01  4.6491E+01 -1.3992E+01 -9.2756E+00 -4.2055E+01 -7.2676E+01
            -2.0116E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1383.33924554264        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0250E+00  9.7271E-01  1.0529E+00  1.0281E+00  9.9452E-01  8.4101E-01  9.0568E-01  9.2977E-01  9.7019E-01  8.5389E-01
             2.8513E+00
 PARAMETER:  1.2473E-01  7.2327E-02  1.5158E-01  1.2770E-01  9.4504E-02 -7.3150E-02  9.3147E-04  2.7183E-02  6.9735E-02 -5.7958E-02
             1.1478E+00
 GRADIENT:  -2.1111E+01  3.5946E+00 -4.9233E+00  4.2622E+00  9.9070E+00 -4.3455E+01  4.7356E+00  4.1106E+00 -4.2834E+00  7.9025E+00
            -5.5962E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1393.10587112597        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0265E+00  7.6285E-01  5.8006E-01  1.1364E+00  6.1887E-01  9.1892E-01  8.5293E-01  4.5764E-01  9.4121E-01  2.6037E-01
             3.0013E+00
 PARAMETER:  1.2612E-01 -1.7069E-01 -4.4462E-01  2.2789E-01 -3.7986E-01  1.5441E-02 -5.9083E-02 -6.8167E-01  3.9414E-02 -1.2456E+00
             1.1990E+00
 GRADIENT:  -3.4913E+01  4.3075E+01  1.8122E+01  6.9789E+01 -4.2028E+01 -1.3775E+01 -3.5875E+00  1.9534E+00 -4.1961E+00  3.6895E-01
            -2.5615E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1398.01668114042        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.0387E+00  8.5071E-01  6.3446E-01  1.0528E+00  7.0556E-01  9.4784E-01  8.2181E-01  1.8257E-01  9.7516E-01  2.1817E-01
             3.1630E+00
 PARAMETER:  1.3799E-01 -6.1682E-02 -3.5498E-01  1.5149E-01 -2.4876E-01  4.6433E-02 -9.6250E-02 -1.6006E+00  7.4843E-02 -1.4225E+00
             1.2515E+00
 GRADIENT:   7.4543E+00 -2.5018E+00  7.9725E-01 -1.0175E+01 -3.2023E+00  2.8156E+00  8.2109E-01  3.2879E-01  4.8567E-01  8.4528E-01
             5.6744E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1399.50071590075        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  1.0380E+00  8.5390E-01  7.7533E-01  1.0746E+00  8.0498E-01  9.4328E-01  6.1157E-01  7.2426E-02  9.8532E-01  1.3523E-01
             3.2306E+00
 PARAMETER:  1.3734E-01 -5.7936E-02 -1.5446E-01  1.7191E-01 -1.1694E-01  4.1611E-02 -3.9173E-01 -2.5252E+00  8.5209E-02 -1.9008E+00
             1.2727E+00
 GRADIENT:   6.8668E+00 -2.6380E+00 -4.6590E+00 -8.5021E-02  5.4228E+00  2.0241E+00 -3.1516E-01  4.9183E-02 -1.9291E+00  2.5743E-01
             6.2483E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1399.50545532361        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      394
 NPARAMETR:  1.0369E+00  8.5766E-01  7.9327E-01  1.0738E+00  8.1646E-01  9.4146E-01  6.0382E-01  6.8097E-02  9.9197E-01  1.3163E-01
             3.2250E+00
 PARAMETER:  1.3623E-01 -5.3550E-02 -1.3160E-01  1.7124E-01 -1.0277E-01  3.9672E-02 -4.0448E-01 -2.5868E+00  9.1937E-02 -1.9278E+00
             1.2709E+00
 GRADIENT:  -5.6465E+01 -4.8520E+00 -3.6794E+00 -1.4001E+01  2.9426E+00 -2.4609E+00 -6.0964E-01  3.8010E-02 -2.0653E+00  2.0111E-01
            -5.7354E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1401.03809214102        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      571
 NPARAMETR:  1.0576E+00  6.3134E-01  8.8268E-01  1.2299E+00  7.8391E-01  9.4588E-01  6.9502E-01  1.2502E-02  8.9875E-01  4.1600E-02
             3.2604E+00
 PARAMETER:  1.5602E-01 -3.5992E-01 -2.4796E-02  3.0697E-01 -1.4346E-01  4.4360E-02 -2.6382E-01 -4.2819E+00 -6.7528E-03 -3.0797E+00
             1.2819E+00
 GRADIENT:  -6.8208E+00 -1.1024E-01 -2.6811E+00  8.9534E-01  4.9505E+00  6.8615E-01 -6.0395E-02  1.4051E-03 -1.6149E-01  1.8363E-02
            -4.4525E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1401.19179382284        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      746
 NPARAMETR:  1.0583E+00  4.9041E-01  8.4821E-01  1.3066E+00  7.1537E-01  9.4416E-01  9.1156E-01  1.0000E-02  8.4851E-01  1.8805E-02
             3.2544E+00
 PARAMETER:  1.5667E-01 -6.1251E-01 -6.4622E-02  3.6745E-01 -2.3495E-01  4.2537E-02  7.4075E-03 -5.5784E+00 -6.4277E-02 -3.8736E+00
             1.2800E+00
 GRADIENT:  -1.6798E+00  1.6443E+00  1.6406E+00  3.3912E+00 -3.2320E+00  2.2673E-01 -3.4686E-02  0.0000E+00 -2.8042E-01  3.1604E-03
            -5.3402E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1401.20448456720        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      927
 NPARAMETR:  1.0583E+00  4.4769E-01  8.4810E-01  1.3274E+00  7.0494E-01  9.4302E-01  9.5063E-01  1.0000E-02  8.3538E-01  1.0000E-02
             3.2543E+00
 PARAMETER:  1.5665E-01 -7.0365E-01 -6.4758E-02  3.8325E-01 -2.4965E-01  4.1328E-02  4.9370E-02 -6.1973E+00 -7.9868E-02 -5.2354E+00
             1.2800E+00
 GRADIENT:   7.3372E-01 -3.1429E-01 -5.9735E-01 -1.4333E+00  8.8528E-01 -6.4230E-03 -3.7208E-02  0.0000E+00 -3.6541E-01  0.0000E+00
            -2.9604E-01

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1401.20545733591        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:     1027
 NPARAMETR:  1.0583E+00  4.4813E-01  8.4864E-01  1.3278E+00  7.0467E-01  9.4303E-01  9.6146E-01  1.0000E-02  8.3676E-01  1.0000E-02
             3.2546E+00
 PARAMETER:  1.5646E-01 -7.0293E-01 -6.4447E-02  3.8362E-01 -2.4983E-01  4.1328E-02  6.1697E-02 -6.1973E+00 -7.8678E-02 -5.2354E+00
             1.2802E+00
 GRADIENT:  -2.2100E-01 -1.8839E-02 -1.1704E-01  1.2406E-01  1.4962E-01 -2.1528E-03  7.4506E-04  0.0000E+00 -4.3215E-02  0.0000E+00
             4.3607E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1027
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -4.0328E-04 -8.0878E-03  1.0397E-04 -9.4099E-03 -4.6407E-05
 SE:             2.8731E-02  7.2915E-03  1.5644E-04  2.4339E-02  2.4172E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8880E-01  2.6734E-01  5.0631E-01  6.9904E-01  8.4776E-01

 ETASHRINKSD(%)  3.7463E+00  7.5573E+01  9.9476E+01  1.8460E+01  9.9190E+01
 ETASHRINKVR(%)  7.3522E+00  9.4033E+01  9.9997E+01  3.3512E+01  9.9993E+01
 EBVSHRINKSD(%)  3.7352E+00  7.5757E+01  9.9427E+01  1.8085E+01  9.9162E+01
 EBVSHRINKVR(%)  7.3310E+00  9.4123E+01  9.9997E+01  3.2900E+01  9.9993E+01
 RELATIVEINF(%)  8.5383E+01  1.1720E-01  1.8063E-04  2.4576E+00  1.9445E-04
 EPSSHRINKSD(%)  2.1717E+01
 EPSSHRINKVR(%)  3.8718E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1401.2054573359062     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -666.05463077216803     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.84
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1401.205       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  4.48E-01  8.48E-01  1.33E+00  7.05E-01  9.43E-01  9.62E-01  1.00E-02  8.36E-01  1.00E-02  3.25E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.874
Stop Time:
Sat Oct  2 00:33:35 CDT 2021
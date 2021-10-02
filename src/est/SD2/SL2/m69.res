Fri Oct  1 12:29:35 CDT 2021
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
$DATA ../../../../data/SD2/SL2/dat69.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m69.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2070.72094604880        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2996E+02  5.9867E+01 -5.2022E+01  1.7862E+02  1.3932E+02  4.2921E+01 -9.0384E-01  5.9193E+00 -3.1588E+00 -1.6707E+01
            -8.0777E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2083.28738793232        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0342E+00  9.8059E-01  1.0173E+00  9.6660E-01  9.2336E-01  1.0216E+00  1.0064E+00  9.8756E-01  1.0244E+00  1.0069E+00
             1.0973E+00
 PARAMETER:  1.3365E-01  8.0400E-02  1.1719E-01  6.6031E-02  2.0260E-02  1.2134E-01  1.0637E-01  8.7481E-02  1.2411E-01  1.0687E-01
             1.9285E-01
 GRADIENT:   8.0451E+00  2.9959E+00  7.2200E-01 -3.5371E+00  8.9653E+00 -2.2379E+00 -9.3078E-01  5.4532E+00 -4.0121E+00  2.8896E+00
             3.5588E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2085.44627341582        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  1.0192E+00  6.8392E-01  8.0641E-01  1.1429E+00  7.2229E-01  1.0357E+00  1.5295E+00  4.5916E-01  9.0173E-01  9.2378E-01
             1.0659E+00
 PARAMETER:  1.1899E-01 -2.7991E-01 -1.1517E-01  2.3353E-01 -2.2533E-01  1.3510E-01  5.2497E-01 -6.7836E-01 -3.4361E-03  2.0717E-02
             1.6378E-01
 GRADIENT:  -1.8271E+01  8.8076E+00 -2.8859E+01  4.9606E+01  1.4469E+01  3.7146E+00  4.3915E+00  2.1687E+00  2.0615E+00  1.6117E+01
            -1.4124E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2087.65318425474        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  1.0316E+00  7.7828E-01  7.8156E-01  1.0593E+00  7.3985E-01  1.0296E+00  1.3487E+00  3.7959E-01  9.3594E-01  8.3925E-01
             1.0880E+00
 PARAMETER:  1.3107E-01 -1.5067E-01 -1.4646E-01  1.5765E-01 -2.0131E-01  1.2919E-01  3.9917E-01 -8.6865E-01  3.3797E-02 -7.5248E-02
             1.8431E-01
 GRADIENT:   3.8480E+00 -2.8409E+00 -1.5659E+00 -1.7164E+00  3.7880E+00  1.1048E+00 -2.3244E-02  4.7733E-01  7.3435E-01 -3.0143E-01
             1.0422E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2087.87487125225        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  1.0311E+00  8.4619E-01  7.2182E-01  1.0146E+00  7.3529E-01  1.0277E+00  1.2669E+00  1.2016E-01  9.6436E-01  8.3446E-01
             1.0865E+00
 PARAMETER:  1.3059E-01 -6.7008E-02 -2.2598E-01  1.1454E-01 -2.0749E-01  1.2730E-01  3.3659E-01 -2.0189E+00  6.3712E-02 -8.0969E-02
             1.8294E-01
 GRADIENT:   4.8732E-01 -1.3661E+00 -2.8155E+00  1.5770E-03  2.8350E+00 -1.0555E-01  9.7368E-02  5.5963E-02  4.4073E-01  6.7141E-01
             3.8849E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2087.89763950755        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      878
 NPARAMETR:  1.0307E+00  8.4538E-01  7.2187E-01  1.0154E+00  7.3406E-01  1.0281E+00  1.2693E+00  1.9639E-02  9.6252E-01  8.3383E-01
             1.0864E+00
 PARAMETER:  1.3027E-01 -6.7972E-02 -2.2591E-01  1.1524E-01 -2.0916E-01  1.2769E-01  3.3845E-01 -3.8302E+00  6.1800E-02 -8.1721E-02
             1.8290E-01
 GRADIENT:  -1.3856E-01  1.0513E-01  1.4533E-01 -2.6877E-01 -3.8685E-01  5.9535E-02  2.3558E-02  1.0066E-03 -5.5319E-02  2.4711E-02
             3.7426E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2087.89941164516        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:     1045
 NPARAMETR:  1.0327E+00  8.4502E-01  7.2267E-01  1.0156E+00  7.3435E-01  1.0284E+00  1.2698E+00  1.0000E-02  9.6267E-01  8.3447E-01
             1.0864E+00
 PARAMETER:  1.3219E-01 -6.8400E-02 -2.2480E-01  1.1550E-01 -2.0878E-01  1.2801E-01  3.3889E-01 -4.6525E+00  6.1951E-02 -8.0964E-02
             1.8285E-01
 GRADIENT:   3.9711E+00  8.3713E-02  3.8010E-01 -3.7700E-01 -4.9195E-01  1.9458E-01  5.8270E-02  0.0000E+00  1.1513E-02  1.2825E-02
            -4.7157E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1045
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.8594E-04 -5.3308E-04 -3.9355E-04 -1.5290E-03 -8.9949E-03
 SE:             2.9859E-02  2.0037E-02  1.9398E-04  2.5969E-02  2.3660E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9236E-01  9.7877E-01  4.2478E-02  9.5305E-01  7.0381E-01

 ETASHRINKSD(%)  1.0000E-10  3.2874E+01  9.9350E+01  1.3002E+01  2.0737E+01
 ETASHRINKVR(%)  1.0000E-10  5.4941E+01  9.9996E+01  2.4313E+01  3.7173E+01
 EBVSHRINKSD(%)  3.7133E-01  3.2931E+01  9.9407E+01  1.2995E+01  2.0434E+01
 EBVSHRINKVR(%)  7.4129E-01  5.5018E+01  9.9996E+01  2.4302E+01  3.6693E+01
 RELATIVEINF(%)  9.8887E+01  4.9135E+00  5.1481E-04  1.0786E+01  9.1766E+00
 EPSSHRINKSD(%)  3.3514E+01
 EPSSHRINKVR(%)  5.5796E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2087.8994116451604     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1168.9608784404877     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.47
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2087.899       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  8.45E-01  7.23E-01  1.02E+00  7.34E-01  1.03E+00  1.27E+00  1.00E-02  9.63E-01  8.34E-01  1.09E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.516
Stop Time:
Fri Oct  1 12:29:52 CDT 2021

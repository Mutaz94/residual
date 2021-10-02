Fri Oct  1 18:12:27 CDT 2021
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
$DATA ../../../../data/SD3/A3/dat31.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m31.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   675.523821422809        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9955E+02  1.5007E+02  3.1331E+02  4.2014E+01  3.7144E+02  1.0676E+01 -2.0663E+02 -3.1774E+02 -1.3421E+02 -2.2701E+02
            -5.2791E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1565.74467058871        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.7612E-01  9.9173E-01  8.8763E-01  1.1260E+00  8.8050E-01  8.9598E-01  9.5535E-01  9.8043E-01  9.6444E-01  8.8490E-01
             5.3160E+00
 PARAMETER:  7.5832E-02  9.1691E-02 -1.9203E-02  2.1868E-01 -2.7265E-02 -9.8396E-03  5.4326E-02  8.0238E-02  6.3794E-02 -2.2276E-02
             1.7707E+00
 GRADIENT:  -9.7545E+01 -2.8449E+01 -3.0234E+01  1.4324E+01  3.9494E+01 -2.8317E+01  1.1361E+01  7.4824E+00  1.5996E+01  2.4406E+01
             4.0101E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1589.45387288749        NO. OF FUNC. EVALS.:  81
 CUMULATIVE NO. OF FUNC. EVALS.:      165
 NPARAMETR:  9.5539E-01  5.8755E-01  3.0620E-01  1.3280E+00  3.6296E-01  9.5897E-01  1.0817E+00  3.9195E-01  1.2798E+00  2.8162E-01
             4.8606E+00
 PARAMETER:  5.4366E-02 -4.3179E-01 -1.0835E+00  3.8369E-01 -9.1347E-01  5.8101E-02  1.7849E-01 -8.3662E-01  3.4668E-01 -1.1672E+00
             1.6812E+00
 GRADIENT:  -1.2224E+02  9.7139E+01  1.3666E+01  1.3394E+02 -6.0611E+01 -2.0866E+01 -5.0497E+00  1.7877E+00  1.8653E+01 -1.4424E-02
             3.5106E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1617.31674185329        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      261
 NPARAMETR:  9.4016E-01  3.5772E-01  1.3598E-01  1.4117E+00  1.9980E-01  1.0055E+00  1.6387E+00  5.8171E-02  2.0774E+00  1.6021E-01
             3.7791E+00
 PARAMETER:  3.8299E-02 -9.2799E-01 -1.8952E+00  4.4481E-01 -1.5105E+00  1.0547E-01  5.9392E-01 -2.7444E+00  8.3109E-01 -1.7313E+00
             1.4295E+00
 GRADIENT:  -5.4362E+01  1.1460E+02 -3.6576E+01  1.3400E+02 -1.6017E+02 -5.5509E+00  9.7470E+00 -1.5855E-01 -2.3039E+01 -4.6254E+00
             1.6446E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1702.35228141652        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      437
 NPARAMETR:  9.6323E-01  3.6231E-01  2.3807E-01  1.1447E+00  2.7763E-01  1.0033E+00  1.2146E+00  1.0000E-02  1.3575E+00  5.7562E-01
             3.0104E+00
 PARAMETER:  6.2541E-02 -9.1524E-01 -1.3352E+00  2.3515E-01 -1.1815E+00  1.0333E-01  2.9444E-01 -6.6244E+00  4.0567E-01 -4.5231E-01
             1.2021E+00
 GRADIENT:  -3.3330E+01 -1.7390E+01 -1.9072E+01  1.5651E+01  8.3829E+01 -9.7431E+00 -6.8275E+00  0.0000E+00  3.1432E+00 -1.3777E+00
            -3.0159E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1708.94584136592        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      612
 NPARAMETR:  9.7743E-01  3.0232E-01  1.8218E-01  1.0652E+00  2.2375E-01  1.0296E+00  1.2677E+00  1.0000E-02  1.4992E+00  5.6699E-01
             3.0233E+00
 PARAMETER:  7.7169E-02 -1.0963E+00 -1.6028E+00  1.6315E-01 -1.3972E+00  1.2912E-01  3.3723E-01 -9.0408E+00  5.0493E-01 -4.6741E-01
             1.2064E+00
 GRADIENT:  -1.8593E+00  3.0997E+00 -4.1304E-01  3.1370E+00 -2.6527E+00 -1.3704E+00 -1.7380E+00  0.0000E+00  8.7784E-03  2.2269E-01
            -5.0784E+00

0ITERATION NO.:   28    OBJECTIVE VALUE:  -1709.00360626325        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.7857E-01  2.9851E-01  1.8202E-01  1.0612E+00  2.2301E-01  1.0332E+00  1.3029E+00  1.0000E-02  1.4995E+00  5.5953E-01
             3.0348E+00
 PARAMETER:  7.8333E-02 -1.1090E+00 -1.6037E+00  1.5940E-01 -1.4006E+00  1.3265E-01  3.6456E-01 -9.3358E+00  5.0511E-01 -4.8067E-01
             1.2101E+00
 GRADIENT:  -8.8459E-03 -4.3906E-01  5.6843E-01  1.3312E-01 -7.0480E-01  4.7784E-02 -1.9538E-01  0.0000E+00  1.9334E-01 -7.9784E-02
            -1.0957E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      704
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2340E-03  1.8357E-02  4.0834E-06 -1.1335E-02  1.3971E-02
 SE:             2.8918E-02  1.9891E-02  2.2093E-04  2.6935E-02  2.0811E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6596E-01  3.5606E-01  9.8525E-01  6.7388E-01  5.0202E-01

 ETASHRINKSD(%)  3.1213E+00  3.3364E+01  9.9260E+01  9.7643E+00  3.0279E+01
 ETASHRINKVR(%)  6.1451E+00  5.5596E+01  9.9995E+01  1.8575E+01  5.1390E+01
 EBVSHRINKSD(%)  2.7858E+00  3.2928E+01  9.9271E+01  7.2155E+00  3.0516E+01
 EBVSHRINKVR(%)  5.4941E+00  5.5014E+01  9.9995E+01  1.3910E+01  5.1720E+01
 RELATIVEINF(%)  9.4317E+01  9.3953E+00  4.5398E-04  4.9360E+01  2.5201E+00
 EPSSHRINKSD(%)  2.4183E+01
 EPSSHRINKVR(%)  4.2518E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1709.0036062632471     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -606.27736641764000     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.69
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1709.004       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.79E-01  2.99E-01  1.82E-01  1.06E+00  2.23E-01  1.03E+00  1.30E+00  1.00E-02  1.50E+00  5.60E-01  3.03E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       13.738
Stop Time:
Fri Oct  1 18:12:42 CDT 2021
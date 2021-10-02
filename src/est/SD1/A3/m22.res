Fri Oct  1 01:06:01 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat22.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
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

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m22.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1316.36169359240        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0934E+02  2.0212E+02  1.7046E+02  1.1568E+02  2.7333E+02  6.4441E+01 -1.3261E+02 -1.3197E+02  2.6884E+01 -9.0051E+01
            -4.6508E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2823.08077233210        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.4455E-01  9.4501E-01  9.5779E-01  1.0195E+00  8.7192E-01  7.9308E-01  9.7904E-01  9.3690E-01  8.4723E-01  9.5189E-01
             2.9991E+00
 PARAMETER:  4.2953E-02  4.3436E-02  5.6871E-02  1.1936E-01 -3.7061E-02 -1.3183E-01  7.8816E-02  3.4825E-02 -6.5787E-02  5.0694E-02
             1.1983E+00
 GRADIENT:  -4.1785E+01  3.9122E+00  8.8153E+00 -3.4184E+01 -2.8465E+01 -2.2469E+01  3.6334E+00  1.0857E+01  4.4856E+00  1.0218E+01
             4.6355E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2836.78001677571        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  9.4360E-01  6.4644E-01  5.7367E-01  1.2081E+00  5.5964E-01  8.3042E-01  1.0549E+00  5.0318E-01  7.6798E-01  7.3846E-01
             2.8961E+00
 PARAMETER:  4.1948E-02 -3.3627E-01 -4.5570E-01  2.8909E-01 -4.8046E-01 -8.5823E-02  1.5346E-01 -5.8680E-01 -1.6399E-01 -2.0319E-01
             1.1634E+00
 GRADIENT:  -3.6920E+01  6.7593E+01 -2.1776E+01  1.7254E+02  3.6518E+01 -8.3680E+00 -7.1346E+00  8.6107E+00 -3.0266E+01  3.9232E+00
             4.1641E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2886.17655981827        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      341
 NPARAMETR:  9.4842E-01  5.6257E-01  4.7393E-01  1.2361E+00  4.8293E-01  8.3462E-01  1.1375E+00  5.1835E-02  9.5239E-01  6.7551E-01
             2.4955E+00
 PARAMETER:  4.7038E-02 -4.7523E-01 -6.4670E-01  3.1198E-01 -6.2789E-01 -8.0773E-02  2.2882E-01 -2.8597E+00  5.1219E-02 -2.9228E-01
             1.0145E+00
 GRADIENT:  -4.0702E+01  4.7566E+01 -5.2907E+01  1.4211E+02  3.6645E+01 -1.0127E+01 -1.2865E+01  9.1555E-02  8.6719E+00 -2.7604E+00
             1.7302E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2913.90109222737        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      518
 NPARAMETR:  9.6062E-01  3.6044E-01  2.8558E-01  1.1778E+00  3.0552E-01  8.6287E-01  1.5029E+00  1.0000E-02  9.7073E-01  5.3231E-01
             2.2484E+00
 PARAMETER:  5.9825E-02 -9.2042E-01 -1.1532E+00  2.6367E-01 -1.0857E+00 -4.7492E-02  5.0741E-01 -5.6505E+00  7.0293E-02 -5.3054E-01
             9.1021E-01
 GRADIENT:   1.1762E+01  3.6371E+01 -1.1864E+01  1.0684E+02 -1.5106E+01  1.9011E+00  1.0302E+01  0.0000E+00 -1.3536E+01 -1.9237E+01
             3.9344E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2930.30859636721        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      693
 NPARAMETR:  9.5630E-01  2.2902E-01  1.5667E-01  9.5429E-01  1.9886E-01  8.6213E-01  1.5008E+00  1.0000E-02  1.1737E+00  6.7497E-01
             2.1038E+00
 PARAMETER:  5.5312E-02 -1.3740E+00 -1.7536E+00  5.3211E-02 -1.5151E+00 -4.8347E-02  5.0601E-01 -9.7765E+00  2.6016E-01 -2.9308E-01
             8.4377E-01
 GRADIENT:   6.8131E-01  3.1456E+00 -6.2170E-01  3.2963E+00 -2.4931E+00  1.1963E+00  3.2913E+00  0.0000E+00 -2.1036E+00 -6.3059E-01
             4.9332E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2930.48014943251        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      875
 NPARAMETR:  9.5614E-01  2.2210E-01  1.4945E-01  9.3544E-01  1.9277E-01  8.5959E-01  1.4875E+00  1.0000E-02  1.2028E+00  6.8333E-01
             2.0933E+00
 PARAMETER:  5.5146E-02 -1.4046E+00 -1.8008E+00  3.3266E-02 -1.5463E+00 -5.1295E-02  4.9707E-01 -1.0090E+01  2.8469E-01 -2.8078E-01
             8.3872E-01
 GRADIENT:   1.8044E-01  1.8495E+00  2.4779E+00  9.3855E-01 -6.8926E+00 -1.3329E-02  1.1592E-01  0.0000E+00  8.3338E-03  7.0080E-02
            -3.9370E-01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2930.48115340400        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      970
 NPARAMETR:  9.5612E-01  2.2200E-01  1.4926E-01  9.3451E-01  1.9286E-01  8.5964E-01  1.4870E+00  1.0000E-02  1.2030E+00  6.8316E-01
             2.0936E+00
 PARAMETER:  5.5132E-02 -1.4051E+00 -1.8021E+00  3.2266E-02 -1.5458E+00 -5.1239E-02  4.9673E-01 -1.0090E+01  2.8482E-01 -2.8103E-01
             8.3890E-01
 GRADIENT:   9.6794E-02  1.6476E+00 -1.4081E-01 -2.1418E-02 -2.1389E+00  5.6277E-03 -1.2689E-03  0.0000E+00 -6.7226E-02 -6.8109E-02
             2.5293E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      970
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4928E-03  8.0110E-03  1.1828E-04 -4.4015E-03  5.6189E-03
 SE:             2.9426E-02  2.5883E-02  2.7586E-04  2.7615E-02  2.6451E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5954E-01  7.5693E-01  6.6810E-01  8.7336E-01  8.3177E-01

 ETASHRINKSD(%)  1.4176E+00  1.3290E+01  9.9076E+01  7.4868E+00  1.1385E+01
 ETASHRINKVR(%)  2.8152E+00  2.4814E+01  9.9991E+01  1.4413E+01  2.1474E+01
 EBVSHRINKSD(%)  1.5344E+00  1.2103E+01  9.9116E+01  5.8389E+00  1.2009E+01
 EBVSHRINKVR(%)  3.0453E+00  2.2741E+01  9.9992E+01  1.1337E+01  2.2577E+01
 RELATIVEINF(%)  9.6953E+01  1.7206E+01  4.1658E-04  2.6081E+01  4.3383E+00
 EPSSHRINKSD(%)  2.0154E+01
 EPSSHRINKVR(%)  3.6247E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2930.4811534039986     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1276.3917936355879     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.48
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2930.481       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.56E-01  2.22E-01  1.49E-01  9.35E-01  1.93E-01  8.60E-01  1.49E+00  1.00E-02  1.20E+00  6.83E-01  2.09E+00
 


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
 #CPUT: Total CPU Time in Seconds,       26.540
Stop Time:
Fri Oct  1 01:06:29 CDT 2021
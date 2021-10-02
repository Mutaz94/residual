Fri Oct  1 03:45:57 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat35.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      980
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

 TOT. NO. OF OBS RECS:      880
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
 RAW OUTPUT FILE (FILE): m35.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1157.11224208972        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5759E+02  1.0725E+02 -1.4653E+01  1.6430E+02  1.8396E+02  6.6500E+01 -9.3346E+01 -1.3953E+02 -9.4258E+01 -4.2041E+01
            -4.9855E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2832.62276606111        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1292E+00  1.1065E+00  1.2755E+00  9.9544E-01  1.0159E+00  8.9775E-01  1.0703E+00  9.1527E-01  1.0634E+00  1.1271E+00
             2.4848E+00
 PARAMETER:  2.2155E-01  2.0124E-01  3.4334E-01  9.5432E-02  1.1582E-01 -7.8584E-03  1.6795E-01  1.1468E-02  1.6146E-01  2.1966E-01
             1.0102E+00
 GRADIENT:   3.1310E+02  6.0752E+01  1.2755E+01  4.6312E+01 -5.8588E+01 -2.2473E+01  9.3060E+00  5.3584E+00  7.5123E+00 -3.6125E+00
             3.7644E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2841.70648140608        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.1193E+00  1.2735E+00  1.5127E+00  9.1315E-01  1.2100E+00  9.4501E-01  6.6966E-01  5.9139E-01  1.2038E+00  1.3094E+00
             2.5096E+00
 PARAMETER:  2.1269E-01  3.4178E-01  5.1391E-01  9.1497E-03  2.9064E-01  4.3435E-02 -3.0098E-01 -4.2528E-01  2.8547E-01  3.6954E-01
             1.0201E+00
 GRADIENT:   2.6748E+02  9.4303E+01  1.2058E+01  6.7432E+01 -1.8696E+01  9.9119E-01 -6.7819E+00  1.1393E+00  1.0195E+01 -9.9868E+00
             5.9324E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2845.15905300416        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  1.0707E+00  1.2246E+00  1.3631E+00  9.1102E-01  1.1558E+00  9.2214E-01  7.7196E-01  4.3654E-01  1.1235E+00  1.2969E+00
             2.4810E+00
 PARAMETER:  1.6830E-01  3.0259E-01  4.0975E-01  6.8150E-03  2.4479E-01  1.8943E-02 -1.5882E-01 -7.2889E-01  2.1644E-01  3.5994E-01
             1.0087E+00
 GRADIENT:   1.2774E+02  5.2758E+01  4.0493E+00  3.4254E+01 -1.2117E+01 -4.2507E+00 -3.6423E+00  9.7388E-01  2.4886E+00 -5.2978E-01
             4.0563E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2851.75353960447        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      409
 NPARAMETR:  1.0735E+00  1.5734E+00  1.5205E+00  6.8456E-01  1.4727E+00  9.4664E-01  7.1034E-01  2.2927E-01  1.3564E+00  1.5238E+00
             2.4455E+00
 PARAMETER:  1.7089E-01  5.5326E-01  5.1902E-01 -2.7898E-01  4.8710E-01  4.5167E-02 -2.4200E-01 -1.3728E+00  4.0481E-01  5.2118E-01
             9.9425E-01
 GRADIENT:  -2.6244E+00  2.1201E+00  2.0448E-02  2.8965E+00 -1.7403E+00 -2.8556E+00  9.3608E-01  1.3411E-01 -3.5304E-01 -1.4774E-01
             4.0844E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2851.88545267106        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      584
 NPARAMETR:  1.0745E+00  1.6435E+00  1.4819E+00  6.3510E-01  1.5198E+00  9.5359E-01  6.8115E-01  1.3776E-01  1.4374E+00  1.5558E+00
             2.4410E+00
 PARAMETER:  1.7186E-01  5.9685E-01  4.9331E-01 -3.5398E-01  5.1860E-01  5.2475E-02 -2.8397E-01 -1.8822E+00  4.6282E-01  5.4201E-01
             9.9241E-01
 GRADIENT:  -1.9704E-01 -6.3815E-01 -1.8673E-01 -5.8035E-01  2.6710E-01 -7.4949E-02  5.2341E-02  4.6647E-02 -2.2502E-03  7.2522E-02
             4.8482E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2851.91671692010        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      765             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0750E+00  1.6293E+00  1.4920E+00  6.4425E-01  1.5113E+00  9.5386E-01  6.8362E-01  1.2173E-02  1.4244E+00  1.5510E+00
             2.4406E+00
 PARAMETER:  1.7232E-01  5.8815E-01  5.0015E-01 -3.3967E-01  5.1296E-01  5.2757E-02 -2.8035E-01 -4.3086E+00  4.5372E-01  5.3888E-01
             9.9225E-01
 GRADIENT:   1.4694E+02  1.5771E+02  1.3156E+00  2.3992E+01  2.8537E+01  8.9564E+00  3.0634E+00  5.2438E-04  5.7140E+00  7.4628E+00
             1.7527E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2851.91704270085        NO. OF FUNC. EVALS.: 143
 CUMULATIVE NO. OF FUNC. EVALS.:      908
 NPARAMETR:  1.0751E+00  1.6295E+00  1.4923E+00  6.4463E-01  1.5110E+00  9.5382E-01  6.8355E-01  1.0000E-02  1.4241E+00  1.5508E+00
             2.4405E+00
 PARAMETER:  1.7239E-01  5.8825E-01  5.0033E-01 -3.3908E-01  5.1278E-01  5.2721E-02 -2.8045E-01 -6.0019E+00  4.5356E-01  5.3878E-01
             9.9221E-01
 GRADIENT:   1.4714E+02  1.5856E+02  1.3461E+00  2.4401E+01  2.8381E+01  8.9381E+00  3.0353E+00  0.0000E+00  5.7111E+00  7.4367E+00
             1.7383E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2851.91704768844        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:     1002
 NPARAMETR:  1.0750E+00  1.6293E+00  1.4921E+00  6.4460E-01  1.5109E+00  9.5378E-01  6.8345E-01  1.0000E-02  1.4241E+00  1.5507E+00
             2.4405E+00
 PARAMETER:  1.7229E-01  5.8817E-01  5.0020E-01 -3.3912E-01  5.1270E-01  5.2676E-02 -2.8059E-01 -4.5232E+00  4.5356E-01  5.3871E-01
             9.9220E-01
 GRADIENT:   1.4684E+02  1.5839E+02  1.3458E+00  2.4315E+01  2.8372E+01  8.9237E+00  3.0290E+00  1.8832E-04  5.7057E+00  7.4278E+00
             1.7360E+01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2851.91704768844        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1060
 NPARAMETR:  1.0750E+00  1.6293E+00  1.4921E+00  6.4460E-01  1.5109E+00  9.5378E-01  6.8345E-01  1.0000E-02  1.4241E+00  1.5507E+00
             2.4405E+00
 PARAMETER:  1.7229E-01  5.8817E-01  5.0020E-01 -3.3912E-01  5.1270E-01  5.2676E-02 -2.8059E-01 -4.5232E+00  4.5356E-01  5.3871E-01
             9.9220E-01
 GRADIENT:   9.1491E-01 -6.8144E-01  1.8261E-04 -2.3346E-01 -1.5174E-01  7.4055E-03  7.9695E-03  9.4159E-05  5.3199E-02  7.6342E-02
            -1.0344E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1060
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0480E-03 -3.3316E-02 -8.7516E-05  1.9059E-02 -1.8407E-02
 SE:             2.9517E-02  1.8704E-02  5.1491E-05  2.3666E-02  2.6740E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7168E-01  7.4871E-02  8.9198E-02  4.2062E-01  4.9122E-01

 ETASHRINKSD(%)  1.1136E+00  3.7340E+01  9.9827E+01  2.0717E+01  1.0417E+01
 ETASHRINKVR(%)  2.2148E+00  6.0738E+01  1.0000E+02  3.7143E+01  1.9749E+01
 EBVSHRINKSD(%)  1.3751E+00  3.6929E+01  9.9814E+01  2.2135E+01  9.0396E+00
 EBVSHRINKVR(%)  2.7313E+00  6.0220E+01  1.0000E+02  3.9371E+01  1.7262E+01
 RELATIVEINF(%)  9.7190E+01  5.7374E+00  1.5708E-04  9.5022E+00  3.1176E+01
 EPSSHRINKSD(%)  1.6735E+01
 EPSSHRINKVR(%)  3.0670E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          880
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1617.3318184402240     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2851.9170476884397     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1234.5852292482157     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.42
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2851.917       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.07E+00  1.63E+00  1.49E+00  6.45E-01  1.51E+00  9.54E-01  6.83E-01  1.00E-02  1.42E+00  1.55E+00  2.44E+00
 


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
1THERE ARE ERROR MESSAGES IN FILE PRDERR                                                                  
 #CPUT: Total CPU Time in Seconds,       24.494
Stop Time:
Fri Oct  1 03:46:23 CDT 2021
Fri Oct  1 12:36:51 CDT 2021
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
$DATA ../../../../data/SD2/SL2/dat90.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m90.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2052.15776408448        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7697E+02  3.2320E+01  1.5574E+01  5.8484E+01  1.5835E+01  3.4022E+01 -1.6067E+00  8.4620E-01 -2.5369E+00 -2.0901E+01
            -4.9487E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2055.36808021156        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  9.7851E-01  9.9643E-01  9.7041E-01  1.0078E+00  9.8494E-01  9.9702E-01  1.0113E+00  9.9114E-01  1.0228E+00  1.0510E+00
             1.0678E+00
 PARAMETER:  7.8274E-02  9.6419E-02  6.9966E-02  1.0781E-01  8.4821E-02  9.7014E-02  1.1127E-01  9.1097E-02  1.2253E-01  1.4970E-01
             1.6559E-01
 GRADIENT:  -1.2588E+00 -6.0445E+00  1.7590E+00 -8.0839E+00  1.9177E+00 -2.9852E+00 -2.3440E+00  4.9966E+00 -3.3127E+00 -8.3728E+00
             7.6069E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2056.96318668974        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      330
 NPARAMETR:  9.7882E-01  1.0882E+00  8.3706E-01  9.4701E-01  9.6894E-01  9.9635E-01  9.2651E-01  5.5487E-01  1.0971E+00  1.1490E+00
             1.0638E+00
 PARAMETER:  7.8597E-02  1.8449E-01 -7.7863E-02  4.5551E-02  6.8452E-02  9.6339E-02  2.3674E-02 -4.8903E-01  1.9266E-01  2.3886E-01
             1.6187E-01
 GRADIENT:  -2.8463E+00 -5.0272E+00  1.5577E+00  5.7832E-01 -3.1486E+00 -3.4905E+00 -3.8542E+00  8.0649E-02  1.4102E+00  4.9305E+00
             4.7580E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2058.48125335808        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      510
 NPARAMETR:  9.8591E-01  1.3303E+00  5.9580E-01  7.9032E-01  9.4497E-01  1.0107E+00  8.8771E-01  3.0740E-01  1.1907E+00  1.0118E+00
             1.0474E+00
 PARAMETER:  8.5811E-02  3.8537E-01 -4.1785E-01 -1.3531E-01  4.3398E-02  1.1064E-01 -1.9115E-02 -1.0796E+00  2.7452E-01  1.1171E-01
             1.4631E-01
 GRADIENT:   6.9315E+00  6.3333E+00 -8.9734E-01  7.8003E+00 -3.8236E+00  4.8627E-01 -2.2907E+00  4.5381E-01 -1.3754E+00  1.5119E-03
            -1.5918E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2058.77600805190        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      689             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8458E-01  1.4550E+00  5.5589E-01  7.0557E-01  1.0040E+00  1.0096E+00  8.5378E-01  9.1523E-02  1.2909E+00  1.0487E+00
             1.0483E+00
 PARAMETER:  8.4464E-02  4.7497E-01 -4.8718E-01 -2.4875E-01  1.0402E-01  1.0955E-01 -5.8081E-02 -2.2912E+00  3.5536E-01  1.4753E-01
             1.4713E-01
 GRADIENT:   3.9375E+02  3.5669E+02  7.5792E+00  8.9757E+01  6.5138E+00  3.9580E+01  5.7036E+00  5.1945E-02  2.0785E+01  5.3933E-01
             8.3819E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2058.78643758093        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      826
 NPARAMETR:  9.8266E-01  1.4542E+00  5.5437E-01  7.0639E-01  1.0036E+00  1.0097E+00  8.5242E-01  7.1241E-02  1.2869E+00  1.0541E+00
             1.0487E+00
 PARAMETER:  8.2504E-02  4.7442E-01 -4.8992E-01 -2.4759E-01  1.0362E-01  1.0964E-01 -5.9670E-02 -2.5417E+00  3.5227E-01  1.5273E-01
             1.4760E-01
 GRADIENT:  -9.1063E-01 -1.2246E-02  1.1833E-01 -3.6793E-02 -1.4199E-01 -5.6659E-02 -1.3836E-01  1.9598E-02 -2.3865E-01  1.4976E-01
             5.3703E-03

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2058.79756139111        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1002
 NPARAMETR:  9.8330E-01  1.4536E+00  5.5195E-01  7.0649E-01  1.0014E+00  1.0104E+00  8.5315E-01  1.7542E-02  1.2871E+00  1.0505E+00
             1.0487E+00
 PARAMETER:  8.3158E-02  4.7403E-01 -4.9430E-01 -2.4745E-01  1.0145E-01  1.1036E-01 -5.8815E-02 -3.9432E+00  3.5239E-01  1.4923E-01
             1.4754E-01
 GRADIENT:   4.6308E-01 -3.3733E-01 -1.5195E-01  5.0041E-02 -3.4759E-02  2.1283E-01 -9.0867E-02  1.2459E-03 -5.0906E-02  7.8661E-03
             2.3592E-02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2058.79893942667        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:     1099
 NPARAMETR:  9.8376E-01  1.4523E+00  5.5217E-01  7.0631E-01  1.0015E+00  1.0101E+00  8.5391E-01  1.0000E-02  1.2880E+00  1.0504E+00
             1.0487E+00
 PARAMETER:  8.3631E-02  4.7317E-01 -4.9390E-01 -2.4771E-01  1.0147E-01  1.1008E-01 -5.7929E-02 -4.9010E+00  3.5306E-01  1.4920E-01
             1.4751E-01
 GRADIENT:   1.5070E+00 -1.9329E+00 -2.9358E-01 -7.9637E-01  3.1898E-01  1.0615E-01  3.7866E-02  0.0000E+00  1.6256E-01  5.1032E-02
             3.0433E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1099
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.9885E-04 -2.7659E-02 -3.1151E-04  2.0175E-02 -2.9914E-02
 SE:             2.9868E-02  2.2241E-02  1.3370E-04  2.4792E-02  2.3087E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8935E-01  2.1365E-01  1.9814E-02  4.1577E-01  1.9508E-01

 ETASHRINKSD(%)  1.0000E-10  2.5490E+01  9.9552E+01  1.6943E+01  2.2656E+01
 ETASHRINKVR(%)  1.0000E-10  4.4483E+01  9.9998E+01  3.1015E+01  4.0179E+01
 EBVSHRINKSD(%)  3.6172E-01  2.5452E+01  9.9599E+01  1.7462E+01  2.1270E+01
 EBVSHRINKVR(%)  7.2213E-01  4.4426E+01  9.9998E+01  3.1875E+01  3.8016E+01
 RELATIVEINF(%)  9.9201E+01  4.5128E+00  3.3755E-04  6.5615E+00  1.1616E+01
 EPSSHRINKSD(%)  3.3994E+01
 EPSSHRINKVR(%)  5.6432E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2058.7989394266697     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1139.8604062219970     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.13
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2058.799       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  1.45E+00  5.52E-01  7.06E-01  1.00E+00  1.01E+00  8.54E-01  1.00E-02  1.29E+00  1.05E+00  1.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.180
Stop Time:
Fri Oct  1 12:37:08 CDT 2021

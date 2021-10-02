Fri Oct  1 14:20:57 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat67.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m67.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2112.68745849180        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1769E+02 -8.9681E+01 -2.7621E+01 -6.9422E+01  5.0633E+01  4.0481E+01 -1.5561E+01  8.2479E+00  8.5212E+00  5.4405E+00
            -2.2090E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2117.47829340193        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:      143
 NPARAMETR:  9.7687E-01  1.0058E+00  1.0366E+00  1.0044E+00  9.9679E-01  1.0104E+00  1.3049E+00  8.7672E-01  9.8733E-01  9.9977E-01
             1.0021E+00
 PARAMETER:  7.6601E-02  1.0579E-01  1.3595E-01  1.0437E-01  9.6789E-02  1.1033E-01  3.6610E-01 -3.1567E-02  8.7244E-02  9.9766E-02
             1.0206E-01
 GRADIENT:   3.6544E+02 -3.6336E+01  9.3519E+00 -4.1763E+01  1.5602E+00  5.2795E+01  2.3496E+01  2.9093E+00  2.0596E+01  6.8929E+00
             5.5611E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2119.05771955624        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      321
 NPARAMETR:  9.9632E-01  1.0058E+00  9.7931E-01  1.0044E+00  9.9678E-01  1.0344E+00  1.3187E+00  6.9642E-01  9.0319E-01  9.9976E-01
             1.0030E+00
 PARAMETER:  9.6312E-02  1.0581E-01  7.9092E-02  1.0438E-01  9.6779E-02  1.3382E-01  3.7662E-01 -2.6180E-01 -1.8274E-03  9.9756E-02
             1.0296E-01
 GRADIENT:   2.9510E-01 -8.5235E+01 -1.3270E+00 -1.2491E+02  2.3373E+01  1.3442E+00 -2.5133E-01  2.1050E-01  2.8915E-03  2.8550E+00
            -2.2191E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2123.11402012576        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      457
 NPARAMETR:  9.7783E-01  1.1206E+00  9.7922E-01  1.0773E+00  9.7930E-01  1.0153E+00  1.2962E+00  6.9886E-01  8.9858E-01  9.8045E-01
             1.0038E+00
 PARAMETER:  7.7581E-02  2.1384E-01  7.9002E-02  1.7444E-01  7.9081E-02  1.1520E-01  3.5948E-01 -2.5830E-01 -6.9408E-03  8.0254E-02
             1.0376E-01
 GRADIENT:   3.6175E+02  1.2980E+02  9.5390E+00  1.9752E+02 -1.1863E+00  5.6464E+01  2.5800E+01 -1.4639E+00  8.9400E+00  9.4965E-01
            -2.3205E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2125.49825598137        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      594
 NPARAMETR:  9.9811E-01  1.0761E+00  9.7532E-01  1.0526E+00  9.7591E-01  1.0328E+00  1.2377E+00  7.3134E-01  8.7948E-01  9.6975E-01
             1.0057E+00
 PARAMETER:  9.8104E-02  1.7331E-01  7.5012E-02  1.5124E-01  7.5618E-02  1.3223E-01  3.1325E-01 -2.1287E-01 -2.8425E-02  6.9278E-02
             1.0572E-01
 GRADIENT:   2.5718E+00  2.7168E-01  6.7948E+00 -7.0722E+00 -2.7358E+00  4.2490E-01 -7.9790E-01 -7.6871E-01 -2.1973E+00  2.3341E-01
            -9.7681E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2125.77518986751        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      770
 NPARAMETR:  9.9698E-01  1.0541E+00  8.6683E-01  1.0615E+00  9.0509E-01  1.0312E+00  1.2530E+00  5.8441E-01  8.8388E-01  8.9765E-01
             1.0045E+00
 PARAMETER:  9.6973E-02  1.5271E-01 -4.2917E-02  1.5966E-01  2.7955E-04  1.3075E-01  3.2558E-01 -4.3714E-01 -2.3429E-02 -7.9709E-03
             1.0444E-01
 GRADIENT:  -1.0970E+00  2.1415E+00  2.7973E+00  2.3375E+00 -3.4952E+00 -3.8525E-01 -5.5892E-01  2.8061E-01  4.7575E-01 -2.1006E+00
            -3.6813E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2126.03871470404        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      951
 NPARAMETR:  9.9826E-01  1.0974E+00  7.4793E-01  1.0240E+00  8.5903E-01  1.0321E+00  1.2120E+00  1.8510E-01  9.0127E-01  8.8829E-01
             1.0026E+00
 PARAMETER:  9.8258E-02  1.9291E-01 -1.9045E-01  1.2370E-01 -5.1953E-02  1.3157E-01  2.9225E-01 -1.5869E+00 -3.9529E-03 -1.8454E-02
             1.0255E-01
 GRADIENT:  -7.0013E-01  1.3936E+00  3.1062E+00  1.5303E+00 -7.1456E+00 -5.8967E-01 -7.1188E-01  3.5046E-02  6.0288E-01  3.4272E-01
             1.0482E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2126.23116131872        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1126
 NPARAMETR:  9.9932E-01  1.2120E+00  7.1400E-01  9.5286E-01  9.0000E-01  1.0348E+00  1.1365E+00  5.1537E-02  9.3776E-01  9.0012E-01
             1.0027E+00
 PARAMETER:  9.9324E-02  2.9224E-01 -2.3687E-01  5.1718E-02 -5.3640E-03  1.3418E-01  2.2794E-01 -2.8655E+00  3.5744E-02 -5.2266E-03
             1.0267E-01
 GRADIENT:   5.5688E-02 -7.1242E-02 -7.6862E-02 -7.2238E-02  1.2930E-01  4.4015E-02  1.8166E-02  6.5164E-03 -1.6939E-02  4.9971E-03
            -1.4588E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2126.23423077636        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:     1285
 NPARAMETR:  1.0000E+00  1.2119E+00  7.1400E-01  9.5298E-01  8.9987E-01  1.0352E+00  1.1366E+00  2.1949E-02  9.3793E-01  9.0026E-01
             1.0027E+00
 PARAMETER:  1.0000E-01  2.9215E-01 -2.3687E-01  5.1834E-02 -5.5096E-03  1.3463E-01  2.2807E-01 -3.7190E+00  3.5917E-02 -5.0683E-03
             1.0271E-01
 GRADIENT:   1.4534E+00  6.6809E-02  1.2112E-01 -6.9916E-02 -4.6740E-02  2.2394E-01  2.0397E-02  1.1926E-03  6.1266E-03 -1.9545E-02
            -8.0275E-03

0ITERATION NO.:   44    OBJECTIVE VALUE:  -2126.23469877986        NO. OF FUNC. EVALS.: 128
 CUMULATIVE NO. OF FUNC. EVALS.:     1413
 NPARAMETR:  1.0000E+00  1.2116E+00  7.1387E-01  9.5293E-01  8.9985E-01  1.0355E+00  1.1367E+00  1.0000E-02  9.3794E-01  9.0037E-01
             1.0027E+00
 PARAMETER:  1.0003E-01  2.9194E-01 -2.3705E-01  5.1784E-02 -5.5230E-03  1.3485E-01  2.2816E-01 -4.6587E+00  3.5925E-02 -4.9496E-03
             1.0271E-01
 GRADIENT:   1.5183E+00 -2.3201E-01 -1.3753E-02 -2.2683E-01  1.7016E-01  3.0899E-01  2.6012E-02  0.0000E+00  2.1560E-02  7.9282E-03
             1.3415E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1413
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.4728E-04 -7.2851E-03 -4.1219E-04  4.4356E-03 -1.5926E-02
 SE:             2.9873E-02  2.3033E-02  1.7373E-04  2.4203E-02  2.2703E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9072E-01  7.5178E-01  1.7665E-02  8.5459E-01  4.8299E-01

 ETASHRINKSD(%)  1.0000E-10  2.2838E+01  9.9418E+01  1.8916E+01  2.3943E+01
 ETASHRINKVR(%)  1.0000E-10  4.0461E+01  9.9997E+01  3.4254E+01  4.2153E+01
 EBVSHRINKSD(%)  3.2051E-01  2.2475E+01  9.9489E+01  1.9607E+01  2.3172E+01
 EBVSHRINKVR(%)  6.3999E-01  3.9899E+01  9.9997E+01  3.5370E+01  4.0975E+01
 RELATIVEINF(%)  9.9152E+01  4.7468E+00  3.6426E-04  5.3762E+00  7.6171E+00
 EPSSHRINKSD(%)  3.3547E+01
 EPSSHRINKVR(%)  5.5840E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2126.2346987798596     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1207.2961655751869     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.16
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2126.235       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.21E+00  7.14E-01  9.53E-01  9.00E-01  1.04E+00  1.14E+00  1.00E-02  9.38E-01  9.00E-01  1.00E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.201
Stop Time:
Fri Oct  1 14:21:20 CDT 2021
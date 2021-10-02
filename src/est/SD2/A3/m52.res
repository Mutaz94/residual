Fri Oct  1 10:36:59 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat52.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m52.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   12.2592309805499        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1844E+02  3.9232E+01  1.6440E+02 -7.4208E+01  1.6222E+02  5.6378E+01 -9.9187E+01 -1.1439E+02 -7.4866E+01 -1.4941E+02
            -3.7725E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1455.14324378259        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0728E+00  1.0309E+00  9.5008E-01  1.2284E+00  9.8124E-01  7.3047E-01  1.0588E+00  9.3428E-01  1.0616E+00  9.8406E-01
             5.3069E+00
 PARAMETER:  1.7029E-01  1.3044E-01  4.8792E-02  3.0572E-01  8.1058E-02 -2.1407E-01  1.5718E-01  3.2025E-02  1.5975E-01  8.3936E-02
             1.7690E+00
 GRADIENT:   9.2227E+01  8.0301E+00 -2.0438E+01  4.2917E+01 -5.8834E+00 -3.0946E+01  1.1017E+01  7.6576E+00  2.7368E+01  2.1651E+01
             3.3372E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1527.85525971416        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  9.9851E-01  6.4166E-01  2.2449E-01  1.3119E+00  3.1971E-01  8.8460E-01  9.3354E-01  1.0000E-02  1.0042E+00  3.9682E-01
             3.7960E+00
 PARAMETER:  9.8510E-02 -3.4370E-01 -1.3939E+00  3.7150E-01 -1.0403E+00 -2.2622E-02  3.1228E-02 -5.1256E+00  1.0417E-01 -8.2427E-01
             1.4339E+00
 GRADIENT:  -6.8502E+01  9.0161E+01 -5.6978E+01  2.3993E+02  6.6936E-01 -7.4974E+00 -1.4821E+00  0.0000E+00 -6.0952E+01  7.5339E+00
             1.5941E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1570.66160198439        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  9.5177E-01  5.2488E-01  2.2692E-01  1.1963E+00  2.8633E-01  9.5358E-01  1.1228E+00  1.0000E-02  1.1963E+00  2.6690E-01
             2.9565E+00
 PARAMETER:  5.0568E-02 -5.4458E-01 -1.3831E+00  2.7926E-01 -1.1506E+00  5.2472E-02  2.1582E-01 -5.9896E+00  2.7923E-01 -1.2209E+00
             1.1840E+00
 GRADIENT:  -1.0825E+02  9.4174E+01  8.2116E+01  7.5997E+01 -9.4491E+01  1.1304E+01 -1.6955E+01  0.0000E+00 -6.3712E+00 -6.2918E+00
            -6.6139E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1583.19700674012        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      410
 NPARAMETR:  1.0177E+00  4.3186E-01  2.4151E-01  1.2037E+00  2.8521E-01  8.6209E-01  1.6475E+00  1.0000E-02  1.1595E+00  1.5261E-01
             2.9676E+00
 PARAMETER:  1.1756E-01 -7.3966E-01 -1.3208E+00  2.8538E-01 -1.1545E+00 -4.8396E-02  5.9929E-01 -5.3465E+00  2.4797E-01 -1.7799E+00
             1.1878E+00
 GRADIENT:   2.2072E+01  2.6369E+01  2.8768E+01  2.4222E+01 -5.4469E+01 -1.3839E+01 -1.5692E+00  0.0000E+00 -1.8483E-01 -1.8715E+00
            -1.6962E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1586.90400071379        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      588
 NPARAMETR:  1.0040E+00  2.9895E-01  2.5591E-01  1.2210E+00  2.7681E-01  8.5422E-01  2.0963E+00  1.0000E-02  1.1208E+00  4.5892E-01
             2.9216E+00
 PARAMETER:  1.0397E-01 -1.1075E+00 -1.2629E+00  2.9971E-01 -1.1844E+00 -5.7567E-02  8.4016E-01 -7.4785E+00  2.1404E-01 -6.7889E-01
             1.1721E+00
 GRADIENT:  -4.6144E+00 -8.8384E-01 -1.9962E+01 -1.2426E+01  4.4863E+01 -1.3440E+01  3.7645E+00  0.0000E+00 -5.8677E-01  4.9765E+00
            -2.7942E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1588.44038201364        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      764
 NPARAMETR:  1.0046E+00  2.5005E-01  2.3395E-01  1.2129E+00  2.5187E-01  8.8680E-01  2.2201E+00  1.0000E-02  1.1596E+00  4.3136E-01
             2.9319E+00
 PARAMETER:  1.0454E-01 -1.2861E+00 -1.3527E+00  2.9301E-01 -1.2788E+00 -2.0139E-02  8.9756E-01 -7.8285E+00  2.4806E-01 -7.4081E-01
             1.1756E+00
 GRADIENT:  -6.6897E-01  1.0648E+00  3.9265E+00 -2.8588E-01 -6.6134E+00 -1.1758E-01 -1.6524E-01  0.0000E+00 -8.8469E-02 -3.3786E-01
            -1.5289E-01

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1588.44812943405        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      821
 NPARAMETR:  1.0048E+00  2.4877E-01  2.3309E-01  1.2120E+00  2.5146E-01  8.8716E-01  2.2266E+00  1.0000E-02  1.1616E+00  4.3479E-01
             2.9309E+00
 PARAMETER:  1.0476E-01 -1.2912E+00 -1.3563E+00  2.9227E-01 -1.2805E+00 -1.9730E-02  9.0046E-01 -7.8629E+00  2.4979E-01 -7.3289E-01
             1.1753E+00
 GRADIENT:   1.0542E-01  5.5882E-01  3.7706E-01 -5.8188E-01 -1.2144E+00  1.4830E-02  6.0102E-02  0.0000E+00  1.4625E-01 -8.7764E-03
             2.1750E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      821
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.3470E-03  4.7149E-02 -2.1084E-04 -1.9048E-02  1.8430E-02
 SE:             2.8835E-02  1.7295E-02  2.2073E-04  2.6728E-02  1.5183E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3513E-01  6.4080E-03  3.3948E-01  4.7605E-01  2.2481E-01

 ETASHRINKSD(%)  3.3991E+00  4.2059E+01  9.9261E+01  1.0458E+01  4.9135E+01
 ETASHRINKVR(%)  6.6826E+00  6.6429E+01  9.9995E+01  1.9822E+01  7.4128E+01
 EBVSHRINKSD(%)  3.2786E+00  4.8984E+01  9.9179E+01  8.9998E+00  4.5960E+01
 EBVSHRINKVR(%)  6.4497E+00  7.3974E+01  9.9993E+01  1.7190E+01  7.0797E+01
 RELATIVEINF(%)  9.3013E+01  8.9149E+00  3.4693E-04  3.8294E+01  1.1970E+00
 EPSSHRINKSD(%)  2.5662E+01
 EPSSHRINKVR(%)  4.4738E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1588.4481294340483     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -669.50959622937557     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.61
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1588.448       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  2.49E-01  2.33E-01  1.21E+00  2.51E-01  8.87E-01  2.23E+00  1.00E-02  1.16E+00  4.35E-01  2.93E+00
 


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
 #CPUT: Total CPU Time in Seconds,       12.655
Stop Time:
Fri Oct  1 10:37:13 CDT 2021
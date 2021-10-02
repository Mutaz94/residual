Fri Oct  1 09:59:47 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat48.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m48.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1012.26374682114        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5125E+02  1.0049E+02  1.0193E+02  6.3237E+01  1.0588E+02  1.4882E+01 -5.0369E+01 -2.9320E+01 -2.0852E+01 -1.3306E+02
            -1.9225E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1637.26001928849        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0852E+00  8.8904E-01  8.7972E-01  1.0779E+00  8.6654E-01  1.2613E+00  1.1201E+00  8.7781E-01  1.1318E+00  1.4654E+00
             1.9646E+00
 PARAMETER:  1.8173E-01 -1.7616E-02 -2.8147E-02  1.7498E-01 -4.3242E-02  3.3216E-01  2.1339E-01 -3.0328E-02  2.2377E-01  4.8213E-01
             7.7527E-01
 GRADIENT:   3.1769E+02  2.0973E+01  1.8972E+00  4.2893E+01 -6.1707E+00  7.9812E+01 -2.8412E+00  1.0038E+01  2.4138E+01  3.2921E+01
            -1.8618E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1656.61973544900        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0513E+00  5.7599E-01  3.6984E-01  1.2551E+00  4.3337E-01  1.2419E+00  1.6854E+00  6.1667E-02  1.2023E+00  8.0705E-01
             1.9628E+00
 PARAMETER:  1.5005E-01 -4.5167E-01 -8.9469E-01  3.2724E-01 -7.3616E-01  3.1663E-01  6.2200E-01 -2.6860E+00  2.8423E-01 -1.1436E-01
             7.7435E-01
 GRADIENT:   2.1063E+02  4.6496E+01 -5.9125E+01  2.3149E+02  1.5473E+02  7.5406E+01  2.6021E+01  1.0002E-01  4.7693E+01  1.0786E+01
            -1.3808E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1686.49652709288        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      336
 NPARAMETR:  1.0078E+00  5.3125E-01  4.5907E-01  1.2386E+00  4.5854E-01  1.0256E+00  1.4756E+00  4.6324E-02  9.7568E-01  7.6377E-01
             2.1967E+00
 PARAMETER:  1.0779E-01 -5.3252E-01 -6.7855E-01  3.1396E-01 -6.7971E-01  1.2532E-01  4.8907E-01 -2.9721E+00  7.5384E-02 -1.6949E-01
             8.8694E-01
 GRADIENT:  -3.1416E+00  3.8011E+01  2.0932E+01  7.0835E+01 -2.1086E+01 -1.2509E+01 -4.8178E-01  2.8659E-02  3.7620E-01 -8.3535E+00
            -4.8814E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1695.78660994811        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      511
 NPARAMETR:  1.0066E+00  3.1843E-01  3.6390E-01  1.2281E+00  3.5403E-01  1.0562E+00  1.8153E+00  1.0000E-02  9.6624E-01  7.2493E-01
             2.2926E+00
 PARAMETER:  1.0653E-01 -1.0444E+00 -9.1088E-01  3.0546E-01 -9.3838E-01  1.5468E-01  6.9622E-01 -4.6429E+00  6.5662E-02 -2.2168E-01
             9.2967E-01
 GRADIENT:  -1.4046E+00  4.3235E+00  2.1704E+00  3.5712E-01 -6.6777E+00  6.5862E-01  1.8101E+00  0.0000E+00  4.9693E-01  1.0770E+00
             1.0091E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1696.29206037958        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      687
 NPARAMETR:  1.0057E+00  2.1947E-01  4.0702E-01  1.2983E+00  3.6396E-01  1.0475E+00  1.9359E+00  1.0000E-02  9.4178E-01  8.1331E-01
             2.2815E+00
 PARAMETER:  1.0564E-01 -1.4165E+00 -7.9890E-01  3.6104E-01 -9.1072E-01  1.4643E-01  7.6056E-01 -5.0885E+00  4.0017E-02 -1.0664E-01
             9.2483E-01
 GRADIENT:   7.2050E+00  4.4606E+00  1.1860E+01  1.0531E+01 -2.3687E+01 -7.7029E-01 -5.2388E-01  0.0000E+00  8.2498E-01  6.6880E+00
            -6.0729E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1697.84551461237        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      865
 NPARAMETR:  9.9140E-01  7.6056E-02  4.5626E-01  1.3859E+00  3.8055E-01  1.0467E+00  3.6920E+00  1.0000E-02  8.9766E-01  8.2094E-01
             2.3007E+00
 PARAMETER:  9.1366E-02 -2.4763E+00 -6.8470E-01  4.2637E-01 -8.6615E-01  1.4569E-01  1.4062E+00 -6.8495E+00 -7.9588E-03 -9.7305E-02
             9.3323E-01
 GRADIENT:  -3.9471E+00  8.9323E-01  4.5474E+00  1.0510E+01 -8.1514E+00  8.7307E-01 -2.2603E-01  0.0000E+00  4.3920E-01  3.2773E-01
            -2.2788E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1698.15260044020        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1041
 NPARAMETR:  9.9001E-01  2.5293E-02  4.6413E-01  1.4072E+00  3.8073E-01  1.0434E+00  7.3307E+00  1.0000E-02  8.8916E-01  8.2973E-01
             2.3135E+00
 PARAMETER:  8.9956E-02 -3.5772E+00 -6.6759E-01  4.4161E-01 -8.6566E-01  1.4244E-01  2.0921E+00 -8.9975E+00 -1.7475E-02 -8.6651E-02
             9.3876E-01
 GRADIENT:  -1.0049E+00  4.1390E-01  4.6195E-01  2.8498E+00 -1.2114E+00  3.8011E-01  4.5607E-01  0.0000E+00  1.5539E+00  6.2514E-01
             2.2481E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1699.17686504257        NO. OF FUNC. EVALS.: 149
 CUMULATIVE NO. OF FUNC. EVALS.:     1190
 NPARAMETR:  9.8564E-01  1.0000E-02  4.7014E-01  1.4106E+00  3.8325E-01  1.0422E+00  1.3132E+01  1.0000E-02  8.7850E-01  8.2416E-01
             2.3048E+00
 PARAMETER:  8.5539E-02 -4.7501E+00 -6.5472E-01  4.4400E-01 -8.5906E-01  1.4134E-01  2.6751E+00 -1.1355E+01 -2.9538E-02 -9.3395E-02
             9.3499E-01
 GRADIENT:   6.3227E+01  0.0000E+00  2.4759E+01  1.4815E+02  3.2392E+01  9.0377E+00  6.3426E+01  0.0000E+00  6.3160E+00  8.9034E+00
             8.1047E+00

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1699.17686504257        NO. OF FUNC. EVALS.:  68
 CUMULATIVE NO. OF FUNC. EVALS.:     1258
 NPARAMETR:  9.8467E-01  1.0000E-02  4.7290E-01  1.4165E+00  3.8074E-01  1.0437E+00  1.2799E+01  1.0000E-02  8.7938E-01  8.2497E-01
             2.3257E+00
 PARAMETER:  8.5539E-02 -4.7501E+00 -6.5472E-01  4.4400E-01 -8.5906E-01  1.4134E-01  2.6751E+00 -1.1355E+01 -2.9538E-02 -9.3395E-02
             9.3499E-01
 GRADIENT:   1.0847E+03  0.0000E+00 -1.5067E+02 -2.3522E+02  1.0177E+02 -3.8678E+02  3.9194E+01  0.0000E+00 -1.0888E+03 -1.0824E+03
            -1.1622E+02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1258
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.6729E-03  9.0130E-03 -6.0092E-05 -1.1559E-02  6.8129E-04
 SE:             2.9407E-02  5.5476E-03  2.0788E-04  2.7478E-02  2.2157E-02
 N:                     100         100         100         100         100

 P VAL.:         8.7374E-01  1.0423E-01  7.7253E-01  6.7399E-01  9.7547E-01

 ETASHRINKSD(%)  1.4836E+00  8.1415E+01  9.9304E+01  7.9443E+00  2.5773E+01
 ETASHRINKVR(%)  2.9452E+00  9.6546E+01  9.9995E+01  1.5257E+01  4.4903E+01
 EBVSHRINKSD(%)  1.5025E+00  8.4528E+01  9.9269E+01  5.9808E+00  2.1399E+01
 EBVSHRINKVR(%)  2.9825E+00  9.7606E+01  9.9995E+01  1.1604E+01  3.8220E+01
 RELATIVEINF(%)  9.6703E+01  2.0160E+00  3.7898E-04  3.7595E+01  4.5795E+00
 EPSSHRINKSD(%)  2.7698E+01
 EPSSHRINKVR(%)  4.7724E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1699.1768650425729     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -780.23833183790020     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.35
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1699.177       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.86E-01  1.00E-02  4.70E-01  1.41E+00  3.83E-01  1.04E+00  1.31E+01  1.00E-02  8.79E-01  8.24E-01  2.30E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.394
Stop Time:
Fri Oct  1 10:00:09 CDT 2021
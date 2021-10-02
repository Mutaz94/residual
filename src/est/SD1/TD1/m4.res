Fri Oct  1 04:50:23 CDT 2021
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
$DATA ../../../../data/SD1/TD1/dat4.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m4.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3734.94703390813        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0288E+02  2.3926E+01 -5.6384E+01  1.6172E+02  1.4664E+02  2.7335E+01  7.8745E+00 -1.1864E+01 -2.5184E+01 -1.7030E+01
            -1.8793E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3748.21190606004        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  1.0064E+00  1.1385E+00  1.1701E+00  9.1358E-01  1.0412E+00  1.2078E+00  9.5324E-01  1.0858E+00  1.2159E+00  1.1361E+00
             1.1198E+00
 PARAMETER:  1.0641E-01  2.2967E-01  2.5712E-01  9.6159E-03  1.4037E-01  2.8879E-01  5.2113E-02  1.8235E-01  2.9549E-01  2.2758E-01
             2.1316E-01
 GRADIENT:   4.3995E+01  2.4786E+01  3.2384E+01 -1.1891E+01 -2.9243E+01  4.0428E+01  1.0849E+01 -1.6024E+01  2.1471E+01  1.0002E+00
             6.4820E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3752.94146964395        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      355             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7917E-01  1.1627E+00  1.2390E+00  8.9387E-01  1.1169E+00  1.0756E+00  7.9231E-01  1.4247E+00  1.1174E+00  1.1749E+00
             1.1312E+00
 PARAMETER:  7.8950E-02  2.5070E-01  3.1427E-01 -1.2197E-02  2.1053E-01  1.7292E-01 -1.3280E-01  4.5397E-01  2.1098E-01  2.6116E-01
             2.2332E-01
 GRADIENT:   3.5875E+02  1.8758E+02  2.2546E+01  3.9535E+01  9.6709E+01  8.7788E+01  4.1543E-01  1.1279E+00  1.4716E+01  1.1852E+01
             8.6290E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3753.24260673789        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      536
 NPARAMETR:  9.8015E-01  1.1588E+00  1.2390E+00  8.9386E-01  1.1043E+00  1.0778E+00  8.3675E-01  1.4247E+00  1.1139E+00  1.1654E+00
             1.1313E+00
 PARAMETER:  7.9946E-02  2.4735E-01  3.1427E-01 -1.2207E-02  1.9920E-01  1.7495E-01 -7.8230E-02  4.5397E-01  2.0789E-01  2.5308E-01
             2.2334E-01
 GRADIENT:   3.6350E+00  1.7980E+00  1.0979E+01 -3.1876E+01  5.1515E+00  5.7837E-01 -1.1733E+00 -1.7391E+00 -2.5753E-01 -3.5579E-03
             8.5280E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3753.49582394785        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:      700
 NPARAMETR:  9.7653E-01  1.1583E+00  1.2390E+00  9.0125E-01  1.1009E+00  1.0754E+00  8.4140E-01  1.4336E+00  1.1124E+00  1.1646E+00
             1.1311E+00
 PARAMETER:  7.6254E-02  2.4696E-01  3.1427E-01 -3.9747E-03  1.9609E-01  1.7271E-01 -7.2685E-02  4.6017E-01  2.0648E-01  2.5241E-01
             2.2321E-01
 GRADIENT:  -3.4410E+00  8.8520E+00  1.0083E+01 -2.1247E+01  2.9858E+00 -3.4257E-01 -7.7861E-01 -1.1030E+00  5.0838E-01  3.8005E-01
             8.5590E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3753.69603931602        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  9.7814E-01  1.1583E+00  1.2390E+00  9.1585E-01  1.0958E+00  1.0760E+00  8.5754E-01  1.4493E+00  1.1006E+00  1.1647E+00
             1.1311E+00
 PARAMETER:  7.7900E-02  2.4699E-01  3.1427E-01  1.2093E-02  1.9151E-01  1.7329E-01 -5.3686E-02  4.7108E-01  1.9585E-01  2.5245E-01
             2.2317E-01
 GRADIENT:  -3.6193E-01  2.2967E+01  7.8032E+00 -1.9000E-01  1.1254E-01 -1.2136E-01  4.5040E-01 -1.1261E-01 -1.2616E-01  1.4726E+00
             8.6524E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3753.76597920935        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1058
 NPARAMETR:  9.7904E-01  1.1247E+00  1.2389E+00  9.1753E-01  1.0951E+00  1.0778E+00  8.5552E-01  1.4542E+00  1.1018E+00  1.1573E+00
             1.0363E+00
 PARAMETER:  7.8817E-02  2.1751E-01  3.1426E-01  1.3926E-02  1.9086E-01  1.7496E-01 -5.6046E-02  4.7449E-01  1.9696E-01  2.4605E-01
             1.3562E-01
 GRADIENT:   3.0542E+00 -9.9117E+00  5.1292E+00 -1.7132E+01  1.8659E+01  4.1558E-01 -4.7532E+00 -2.2709E+00 -9.4353E-02  5.3219E-01
            -9.4676E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3754.86567988980        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:     1224             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7929E-01  1.1310E+00  1.2404E+00  9.2329E-01  1.0879E+00  1.0674E+00  8.6101E-01  1.4911E+00  1.1028E+00  1.1518E+00
             1.1178E+00
 PARAMETER:  7.9071E-02  2.2310E-01  3.1546E-01  2.0191E-02  1.8425E-01  1.6523E-01 -4.9644E-02  4.9949E-01  1.9784E-01  2.4135E-01
             2.1136E-01
 GRADIENT:   3.6745E+02  1.6349E+02  1.7956E+01  6.4759E+01  7.8031E+01  8.2461E+01  4.5252E+00  7.1434E+00  1.7694E+01  1.2679E+01
             7.0222E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3756.09607926426        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1410             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7878E-01  1.1241E+00  1.2261E+00  9.2772E-01  1.0784E+00  1.0782E+00  8.6527E-01  1.4929E+00  1.0926E+00  1.1390E+00
             1.0814E+00
 PARAMETER:  7.8550E-02  2.1697E-01  3.0382E-01  2.4977E-02  1.7545E-01  1.7526E-01 -4.4718E-02  5.0075E-01  1.8857E-01  2.3012E-01
             1.7823E-01
 GRADIENT:   3.9177E+02  1.7088E+02  1.4566E+01  7.1936E+01  7.7012E+01  9.7870E+01  3.2887E+00  8.2124E+00  1.5274E+01  1.0593E+01
             2.7726E+00

0ITERATION NO.:   44    OBJECTIVE VALUE:  -3756.11309486100        NO. OF FUNC. EVALS.: 132
 CUMULATIVE NO. OF FUNC. EVALS.:     1542
 NPARAMETR:  9.7842E-01  1.1216E+00  1.2261E+00  9.3405E-01  1.0758E+00  1.0773E+00  9.0016E-01  1.4929E+00  1.0953E+00  1.1390E+00
             1.0816E+00
 PARAMETER:  7.8181E-02  2.1475E-01  3.0382E-01  3.1779E-02  1.7306E-01  1.7442E-01 -5.1847E-03  5.0075E-01  1.9101E-01  2.3012E-01
             1.7843E-01
 GRADIENT:  -7.4948E+04  1.7451E+04  2.4694E+04 -3.4035E+01  2.1656E+04 -3.3357E-01  2.4341E+00 -2.4992E+02 -2.2264E+01  9.5514E-01
            -1.7884E+01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1542
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.7284E-04 -3.6380E-02 -2.4547E-02  1.5531E-02 -3.2495E-02
 SE:             2.9922E-02  2.1083E-02  1.8710E-02  2.7018E-02  2.5176E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8473E-01  8.4419E-02  1.8954E-01  5.6539E-01  1.9680E-01

 ETASHRINKSD(%)  1.0000E-10  2.9370E+01  3.7318E+01  9.4863E+00  1.5656E+01
 ETASHRINKVR(%)  1.0000E-10  5.0115E+01  6.0710E+01  1.8073E+01  2.8861E+01
 EBVSHRINKSD(%)  2.6981E-01  2.8893E+01  3.8034E+01  9.8981E+00  1.4311E+01
 EBVSHRINKVR(%)  5.3888E-01  4.9437E+01  6.1602E+01  1.8816E+01  2.6573E+01
 RELATIVEINF(%)  9.9459E+01  2.8733E+01  3.1650E+01  5.5598E+01  4.2726E+01
 EPSSHRINKSD(%)  2.1509E+01
 EPSSHRINKVR(%)  3.8392E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3756.1130948609957     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2102.0237350925850     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    45.08
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3756.113       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.78E-01  1.12E+00  1.23E+00  9.34E-01  1.08E+00  1.08E+00  9.00E-01  1.49E+00  1.10E+00  1.14E+00  1.08E+00
 


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
 #CPUT: Total CPU Time in Seconds,       45.133
Stop Time:
Fri Oct  1 04:51:09 CDT 2021

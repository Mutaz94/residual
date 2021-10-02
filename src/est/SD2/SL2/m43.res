Fri Oct  1 12:18:57 CDT 2021
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
$DATA ../../../../data/SD2/SL2/dat43.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m43.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2097.48180421347        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2556E+02 -2.4537E+01 -2.1481E+01  3.0783E+01  4.7566E+01  4.3235E+01  1.2863E+01  8.1651E+00  5.3792E+01  2.5924E+00
            -5.7616E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2104.37490225406        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8224E-01  1.0627E+00  1.0153E+00  9.8834E-01  1.0231E+00  1.0043E+00  9.2752E-01  9.5782E-01  7.4630E-01  9.7131E-01
             1.1812E+00
 PARAMETER:  8.2084E-02  1.6085E-01  1.1515E-01  8.8270E-02  1.2287E-01  1.0425E-01  2.4755E-02  5.6900E-02 -1.9263E-01  7.0891E-02
             2.6654E-01
 GRADIENT:  -2.0637E+01 -2.6721E+01 -8.4640E+00 -3.0530E+01  3.0773E+01  1.8642E+00 -2.7456E+00  2.5792E+00 -5.2483E+00 -4.5209E+00
             6.8922E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2107.48019405338        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.8593E-01  8.7670E-01  8.6528E-01  1.1022E+00  8.5297E-01  9.8430E-01  1.2141E+00  6.8698E-01  6.0188E-01  8.7844E-01
             1.1251E+00
 PARAMETER:  8.5834E-02 -3.1592E-02 -4.4706E-02  1.9733E-01 -5.9028E-02  8.4176E-02  2.9403E-01 -2.7545E-01 -4.0770E-01 -2.9604E-02
             2.1787E-01
 GRADIENT:  -1.1547E+01  2.5810E+00 -1.9433E+01  7.7539E+00  2.5098E+01 -6.2919E+00  2.1394E+00  1.4801E+00 -2.0183E+01  2.5419E+00
             3.3069E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2110.64868624630        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  9.9098E-01  8.7491E-01  8.3319E-01  1.0982E+00  8.1991E-01  1.0054E+00  1.1210E+00  5.6754E-01  7.0453E-01  8.4823E-01
             1.0729E+00
 PARAMETER:  9.0938E-02 -3.3631E-02 -8.2492E-02  1.9366E-01 -9.8557E-02  1.0538E-01  2.1425E-01 -4.6644E-01 -2.5023E-01 -6.4608E-02
             1.7035E-01
 GRADIENT:   4.9642E-01  2.7709E+00  1.3948E+00  7.1038E-01 -1.1462E+00  1.9301E+00 -6.9509E-01  4.6050E-02 -1.7067E+00  3.2671E-01
            -2.7724E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2110.77938949993        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.8896E-01  7.3068E-01  9.0137E-01  1.1892E+00  7.9495E-01  1.0020E+00  1.3187E+00  6.0032E-01  6.6765E-01  8.2650E-01
             1.0801E+00
 PARAMETER:  8.8901E-02 -2.1377E-01 -3.8418E-03  2.7329E-01 -1.2947E-01  1.0202E-01  3.7664E-01 -4.1029E-01 -3.0399E-01 -9.0559E-02
             1.7707E-01
 GRADIENT:   2.9158E-01  7.9864E+00  9.5835E+00  4.1541E+00 -1.2353E+01  1.3154E+00  4.8316E-01 -1.3602E+00 -3.9611E-01 -2.7486E+00
             2.6819E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2111.22592707788        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      883
 NPARAMETR:  9.8598E-01  5.1892E-01  1.2395E+00  1.3424E+00  8.6846E-01  1.0007E+00  1.6871E+00  9.7203E-01  6.0584E-01  9.1878E-01
             1.0785E+00
 PARAMETER:  8.5885E-02 -5.5601E-01  3.1474E-01  3.9447E-01 -4.1036E-02  1.0069E-01  6.2301E-01  7.1631E-02 -4.0114E-01  1.5295E-02
             1.7562E-01
 GRADIENT:   3.3443E+00  1.1089E+01  1.7668E+01  8.0600E+00 -2.5324E+01  2.3319E+00 -1.8721E-01 -9.8758E-01 -2.1414E+00 -1.2430E+00
             1.5818E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2114.02355665913        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1060
 NPARAMETR:  9.7593E-01  1.6766E-01  1.4139E+00  1.5672E+00  8.5897E-01  9.9150E-01  3.2610E+00  1.0980E+00  5.7339E-01  9.6782E-01
             1.0785E+00
 PARAMETER:  7.5634E-02 -1.6858E+00  4.4632E-01  5.4926E-01 -5.2021E-02  9.1466E-02  1.2820E+00  1.9350E-01 -4.5618E-01  6.7293E-02
             1.7553E-01
 GRADIENT:  -5.3258E+00  4.9999E+00 -7.9359E+00  4.2863E+01  7.1309E+00  1.0803E+00  1.3066E+00 -1.5670E+00  2.6521E-02  1.7772E+00
             2.1065E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2115.18250203342        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1235
 NPARAMETR:  9.7755E-01  7.1743E-02  1.6241E+00  1.6239E+00  8.9173E-01  9.8396E-01  4.7478E+00  1.3268E+00  5.4880E-01  9.6845E-01
             1.0692E+00
 PARAMETER:  7.7292E-02 -2.5347E+00  5.8494E-01  5.8482E-01 -1.4597E-02  8.3830E-02  1.6577E+00  3.8278E-01 -5.0003E-01  6.7939E-02
             1.6690E-01
 GRADIENT:   9.1613E-01  4.7213E-01  1.4008E+00  2.6536E+00  2.6789E-01 -1.4400E+00 -5.8640E-01 -3.4304E-01 -2.6099E+00 -1.5475E+00
            -2.9519E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2117.85723255075        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1412
 NPARAMETR:  9.7479E-01  2.0396E-02  1.4347E+00  1.6320E+00  8.2155E-01  9.9693E-01  8.1393E+00  1.1908E+00  5.5254E-01  9.2224E-01
             1.0805E+00
 PARAMETER:  7.4466E-02 -3.7924E+00  4.6096E-01  5.8979E-01 -9.6559E-02  9.6927E-02  2.1967E+00  2.7459E-01 -4.9322E-01  1.9050E-02
             1.7742E-01
 GRADIENT:  -1.7415E+00 -2.4649E+00 -1.6186E+00  2.7615E+00 -6.8115E+00  4.2026E+00 -5.3393E-01  1.2123E+00  5.9013E+00  4.1992E+00
             5.2311E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2118.07422776967        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:     1511
 NPARAMETR:  9.7407E-01  2.0803E-02  1.4402E+00  1.6305E+00  8.2364E-01  9.9018E-01  8.2115E+00  1.1921E+00  5.4859E-01  9.1061E-01
             1.0776E+00
 PARAMETER:  7.3723E-02 -3.7727E+00  4.6478E-01  5.8886E-01 -9.4027E-02  9.0130E-02  2.2055E+00  2.7573E-01 -5.0040E-01  6.3641E-03
             1.7471E-01
 GRADIENT:   3.3831E+02  4.4164E+01 -2.7541E+00  8.6174E+02  2.5904E+01  3.8163E+01  2.6740E+02 -6.0231E+00  6.2521E+00 -1.4622E+01
            -8.0342E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2118.08499030812        NO. OF FUNC. EVALS.: 110
 CUMULATIVE NO. OF FUNC. EVALS.:     1621
 NPARAMETR:  9.7435E-01  2.0519E-02  1.4464E+00  1.6306E+00  8.2514E-01  9.8578E-01  8.1852E+00  1.1962E+00  5.4671E-01  9.0348E-01
             1.0756E+00
 PARAMETER:  7.3018E-02 -3.7824E+00  4.6853E-01  5.8835E-01 -9.2092E-02  8.5146E-02  2.2046E+00  2.7797E-01 -5.0439E-01 -1.6159E-03
             1.7273E-01
 GRADIENT:  -5.2279E+00  5.1498E+01 -1.5391E+02 -2.4024E+02  7.1775E+02 -4.7487E-01  8.5505E+01 -1.1230E+00 -1.4210E+02 -3.9143E+02
            -3.7935E+02
 NUMSIGDIG:         1.3         2.3         2.3         2.3         2.3         1.6         2.3         1.7         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1621
 NO. OF SIG. DIGITS IN FINAL EST.:  1.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.1277E-03  1.8924E-02 -2.6837E-02 -1.2000E-02 -2.9725E-02
 SE:             2.9908E-02  9.2725E-03  1.8270E-02  2.8172E-02  2.0379E-02
 N:                     100         100         100         100         100

 P VAL.:         9.1671E-01  4.1267E-02  1.4185E-01  6.7014E-01  1.4468E-01

 ETASHRINKSD(%)  1.0000E-10  6.8936E+01  3.8794E+01  5.6218E+00  3.1727E+01
 ETASHRINKVR(%)  1.0000E-10  9.0350E+01  6.2538E+01  1.0928E+01  5.3388E+01
 EBVSHRINKSD(%)  3.7102E-01  7.8889E+01  4.1107E+01  5.3214E+00  2.8669E+01
 EBVSHRINKVR(%)  7.4066E-01  9.5543E+01  6.5316E+01  1.0360E+01  4.9118E+01
 RELATIVEINF(%)  9.9151E+01  2.9452E+00  7.4457E+00  5.1173E+01  1.1077E+01
 EPSSHRINKSD(%)  3.3413E+01
 EPSSHRINKVR(%)  5.5662E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2118.0849903081230     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1199.1464571034503     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.41
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2118.085       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.73E-01  2.06E-02  1.45E+00  1.63E+00  8.25E-01  9.85E-01  8.20E+00  1.19E+00  5.46E-01  9.03E-01  1.08E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.450
Stop Time:
Fri Oct  1 12:19:23 CDT 2021

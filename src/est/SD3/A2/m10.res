Fri Oct  1 17:38:57 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat10.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m10.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -616.502465930248        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6405E+02  1.1416E+02  7.1410E+01  9.4415E+01  1.2121E+02  1.2279E+01 -3.0390E+01 -2.6126E+01  5.4060E+00 -5.9626E+01
            -3.4873E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1758.02992820273        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  1.0323E+00  1.0145E+00  1.1107E+00  1.0240E+00  1.0025E+00  1.0919E+00  8.3616E-01  8.4977E-01  9.1359E-01  8.1361E-01
             1.8940E+00
 PARAMETER:  1.3177E-01  1.1441E-01  2.0496E-01  1.2369E-01  1.0251E-01  1.8791E-01 -7.8932E-02 -6.2784E-02  9.6253E-03 -1.0627E-01
             7.3869E-01
 GRADIENT:   2.4528E+02  7.7397E+01  3.9085E+01  6.2534E+01 -9.5737E+00  2.9463E+01 -7.6045E+00 -4.4068E+00 -1.3621E+01 -2.6434E+01
            -6.2790E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1799.21211352183        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  9.8490E-01  9.9508E-01  8.6749E-01  1.0214E+00  9.4405E-01  1.0487E+00  9.6089E-01  1.0992E-01  1.1808E+00  1.1370E+00
             2.0352E+00
 PARAMETER:  8.4781E-02  9.5070E-02 -4.2153E-02  1.2113E-01  4.2419E-02  1.4753E-01  6.0108E-02 -2.1080E+00  2.6618E-01  2.2842E-01
             8.1060E-01
 GRADIENT:   1.0628E+02  1.1633E+01 -1.6666E+01  6.0644E+01  4.5277E+01  1.3973E+01  1.6333E+01  1.6272E-01  4.7958E+01  3.3109E+01
            -4.2651E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1854.41754613359        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      234
 NPARAMETR:  9.2648E-01  5.3357E-01  3.9204E-01  1.2108E+00  4.2804E-01  1.0249E+00  9.3980E-01  5.9089E-02  7.2866E-01  6.5105E-01
             2.5297E+00
 PARAMETER:  2.3638E-02 -5.2816E-01 -8.3638E-01  2.9126E-01 -7.4854E-01  1.2458E-01  3.7911E-02 -2.7287E+00 -2.1654E-01 -3.2917E-01
             1.0281E+00
 GRADIENT:  -8.4714E+01  7.5602E+01 -3.9123E+01  2.1285E+02  6.0360E+01 -1.2921E+01 -7.9734E+00  1.1368E-01 -4.4190E+01  2.0903E+00
            -5.6403E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1869.76210945989        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:      368
 NPARAMETR:  9.7078E-01  5.2937E-01  4.5799E-01  1.1821E+00  4.6129E-01  1.0659E+00  1.0342E+00  5.2654E-02  7.8364E-01  6.3750E-01
             2.7067E+00
 PARAMETER:  7.0346E-02 -5.3608E-01 -6.8090E-01  2.6733E-01 -6.7372E-01  1.6383E-01  1.3359E-01 -2.8440E+00 -1.4380E-01 -3.5021E-01
             1.0957E+00
 GRADIENT:  -3.9640E+01  1.4716E+01  4.6626E+00  1.4012E+01 -2.1613E+01  4.8350E+00 -4.1035E+00  5.9329E-02 -9.0546E+00 -1.4048E+00
             2.5171E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1871.08343129053        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      545
 NPARAMETR:  9.8924E-01  5.5694E-01  5.0698E-01  1.1778E+00  5.0442E-01  1.0522E+00  1.1345E+00  5.3684E-02  8.1164E-01  6.4348E-01
             2.6577E+00
 PARAMETER:  8.9182E-02 -4.8529E-01 -5.7928E-01  2.6366E-01 -5.8436E-01  1.5090E-01  2.2622E-01 -2.8246E+00 -1.0870E-01 -3.4087E-01
             1.0775E+00
 GRADIENT:  -1.0861E+00 -1.5100E+00 -2.2295E+00 -2.5116E+00  4.2614E+00  1.3971E+00  4.8643E-01  5.8523E-02  6.9622E-01  1.6897E-01
             4.1104E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1871.14139203578        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      682
 NPARAMETR:  9.8927E-01  5.3921E-01  4.8931E-01  1.1810E+00  4.8662E-01  1.0510E+00  1.1307E+00  1.0000E-02  8.1149E-01  6.3802E-01
             2.6472E+00
 PARAMETER:  8.9212E-02 -5.1764E-01 -6.1476E-01  2.6635E-01 -6.2027E-01  1.4976E-01  2.2284E-01 -4.5876E+00 -1.0888E-01 -3.4938E-01
             1.0735E+00
 GRADIENT:   5.2397E+01  1.5405E+01  1.2859E+01  3.8204E+01  4.1563E+01  9.6774E+00  4.9609E-01  0.0000E+00  1.0120E+00  5.4280E-01
             1.2880E+01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1871.14327851444        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:      775
 NPARAMETR:  9.8949E-01  5.3904E-01  4.8911E-01  1.1810E+00  4.8676E-01  1.0499E+00  1.1328E+00  1.0000E-02  8.1122E-01  6.3922E-01
             2.6471E+00
 PARAMETER:  8.9430E-02 -5.1797E-01 -6.1516E-01  2.6636E-01 -6.1999E-01  1.4872E-01  2.2467E-01 -4.5418E+00 -1.0922E-01 -3.4751E-01
             1.0735E+00
 GRADIENT:  -6.0801E-01 -1.1339E-01 -1.6541E-01 -3.2801E-02  1.4278E-01  3.8534E-01 -6.9047E-02  2.1890E-04  7.0453E-02 -7.4358E-02
             1.1392E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      775
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1738E-03  6.3536E-03 -1.8454E-04 -1.0658E-02 -2.1811E-04
 SE:             2.9319E-02  1.8549E-02  1.8185E-04  2.5848E-02  2.0901E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6806E-01  7.3195E-01  3.1019E-01  6.8009E-01  9.9167E-01

 ETASHRINKSD(%)  1.7784E+00  3.7858E+01  9.9391E+01  1.3405E+01  2.9978E+01
 ETASHRINKVR(%)  3.5252E+00  6.1384E+01  9.9996E+01  2.5014E+01  5.0969E+01
 EBVSHRINKSD(%)  1.7795E+00  3.8033E+01  9.9318E+01  1.3292E+01  3.0087E+01
 EBVSHRINKVR(%)  3.5273E+00  6.1601E+01  9.9995E+01  2.4817E+01  5.1122E+01
 RELATIVEINF(%)  9.6311E+01  4.8984E+00  3.4698E-04  4.8909E+01  1.7807E+00
 EPSSHRINKSD(%)  2.3301E+01
 EPSSHRINKVR(%)  4.1172E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1871.1432785144409     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -768.41703866883381     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.13
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1871.143       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.89E-01  5.39E-01  4.89E-01  1.18E+00  4.87E-01  1.05E+00  1.13E+00  1.00E-02  8.11E-01  6.39E-01  2.65E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.181
Stop Time:
Fri Oct  1 17:39:11 CDT 2021
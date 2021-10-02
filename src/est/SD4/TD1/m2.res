Sat Oct  2 04:14:32 CDT 2021
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
$DATA ../../../../data/SD4/TD1/dat2.csv ignore=@
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
Current Date:        2 OCT 2021
Days until program expires : 197
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
 NO. OF DATA RECS IN DATA SET:      500
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      400
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
 RAW OUTPUT FILE (FILE): m2.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1655.78779585399        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4381E+02 -1.7318E+01 -1.5436E+01  9.0780E-01 -2.1311E+01  3.3628E+01  1.1912E+01  1.8960E+01  3.2628E+01  2.9860E+00
            -4.3584E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1667.33420501824        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  9.6904E-01  9.9883E-01  1.3126E+00  1.0659E+00  1.1429E+00  8.9487E-01  8.6888E-01  7.3943E-01  8.1824E-01  1.1907E+00
             1.0814E+00
 PARAMETER:  6.8554E-02  9.8825E-02  3.7198E-01  1.6382E-01  2.3354E-01 -1.1082E-02 -4.0551E-02 -2.0188E-01 -1.0060E-01  2.7453E-01
             1.7829E-01
 GRADIENT:   3.1481E+02  4.7794E+01  1.3113E+01  1.0353E+02 -1.9556E+01 -1.4831E+01 -9.0028E-01  1.9503E+00 -1.2809E+01 -9.9117E-02
            -8.1083E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1668.87326328760        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      247
 NPARAMETR:  9.7097E-01  1.0051E+00  1.3911E+00  1.0651E+00  1.2243E+00  9.3300E-01  8.4130E-01  6.5684E-01  9.2463E-01  1.2754E+00
             1.1907E+00
 PARAMETER:  7.0545E-02  1.0505E-01  4.3008E-01  1.6309E-01  3.0237E-01  3.0649E-02 -7.2802E-02 -3.2031E-01  2.1638E-02  3.4324E-01
             2.7457E-01
 GRADIENT:  -2.2502E+01  4.5102E+00 -1.7432E+00  1.2634E+01  2.7260E+00 -2.7893E+01  4.7229E+00  1.6433E-01  8.4984E+00  2.1417E+00
             3.6145E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1672.00342272512        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      424
 NPARAMETR:  9.7862E-01  1.0256E+00  1.4051E+00  1.0404E+00  1.2373E+00  9.9670E-01  5.8574E-01  7.3234E-01  9.7023E-01  1.3073E+00
             1.0955E+00
 PARAMETER:  7.8386E-02  1.2529E-01  4.4012E-01  1.3957E-01  3.1294E-01  9.6693E-02 -4.3488E-01 -2.1150E-01  6.9776E-02  3.6799E-01
             1.9125E-01
 GRADIENT:  -4.5291E-01 -4.0872E-01 -7.1080E-02  6.1001E-01 -5.7822E-01 -4.0054E-01  1.1465E-01  2.2078E-01 -2.6752E-01  9.1433E-02
             1.0632E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1672.10957308940        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      601
 NPARAMETR:  9.7812E-01  1.1614E+00  1.3387E+00  9.4806E-01  1.2776E+00  9.9727E-01  5.0152E-01  7.4266E-01  1.0699E+00  1.3247E+00
             1.0943E+00
 PARAMETER:  7.7882E-02  2.4961E-01  3.9168E-01  4.6666E-02  3.4497E-01  9.7269E-02 -5.9011E-01 -1.9752E-01  1.6752E-01  3.8122E-01
             1.9007E-01
 GRADIENT:  -3.5572E+00 -2.2179E+00 -8.5198E-01 -6.7782E-01  1.0748E-01 -5.1370E-01 -3.1615E-01  4.7881E-01  3.9873E-01 -3.1989E-01
            -3.6955E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1672.29203266410        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      777
 NPARAMETR:  9.8322E-01  1.3234E+00  1.1841E+00  8.4704E-01  1.2980E+00  1.0030E+00  5.9399E-01  6.0952E-01  1.1340E+00  1.3194E+00
             1.0959E+00
 PARAMETER:  8.3080E-02  3.8017E-01  2.6895E-01 -6.6003E-02  3.6083E-01  1.0303E-01 -4.2089E-01 -3.9509E-01  2.2574E-01  3.7715E-01
             1.9156E-01
 GRADIENT:   5.2336E+00  3.4454E+00  3.0333E-01  5.0740E+00 -1.9906E+00  1.1523E+00  5.7294E-01  1.6075E-01  1.0456E+00  1.3896E+00
             5.3105E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1672.38583189686        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      953
 NPARAMETR:  9.8163E-01  1.4856E+00  1.0052E+00  7.4259E-01  1.3130E+00  1.0009E+00  6.1464E-01  3.7337E-01  1.2098E+00  1.2845E+00
             1.0979E+00
 PARAMETER:  8.1455E-02  4.9584E-01  1.0516E-01 -1.9761E-01  3.7231E-01  1.0090E-01 -3.8672E-01 -8.8519E-01  2.9043E-01  3.5037E-01
             1.9336E-01
 GRADIENT:  -8.9529E-01  1.0222E+01 -1.9477E-01  8.5555E+00 -3.0321E-01 -2.5118E-01 -3.2167E-01 -1.3592E-02 -1.9261E+00 -6.0726E-01
            -1.3343E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1672.52762128771        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1135             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8305E-01  1.6580E+00  8.6447E-01  6.1973E-01  1.3590E+00  1.0024E+00  6.0638E-01  1.2688E-01  1.3726E+00  1.2936E+00
             1.0991E+00
 PARAMETER:  8.2901E-02  6.0561E-01 -4.5643E-02 -3.7847E-01  4.0676E-01  1.0237E-01 -4.0024E-01 -1.9645E+00  4.1671E-01  3.5743E-01
             1.9445E-01
 GRADIENT:   3.3808E+02  4.2366E+02  2.9546E-01  7.1084E+01  1.4679E+01  3.2916E+01  1.0492E+01  1.7408E-02  1.2842E+01  3.1769E+00
             1.8726E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1672.54276088457        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1315             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8226E-01  1.6614E+00  8.6872E-01  6.1718E-01  1.3639E+00  1.0019E+00  5.8988E-01  1.7692E-01  1.3916E+00  1.3002E+00
             1.0987E+00
 PARAMETER:  8.2099E-02  6.0765E-01 -4.0733E-02 -3.8259E-01  4.1035E-01  1.0190E-01 -4.2784E-01 -1.6320E+00  4.3045E-01  3.6250E-01
             1.9417E-01
 GRADIENT:   3.3662E+02  4.2817E+02 -2.3896E-01  7.1750E+01  1.5331E+01  3.2701E+01  9.6573E+00  3.0900E-02  1.3637E+01  3.2381E+00
             1.7078E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1672.54509910711        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1494
 NPARAMETR:  9.8311E-01  1.6619E+00  8.6708E-01  6.1715E-01  1.3648E+00  1.0023E+00  5.9085E-01  1.0000E-02  1.3924E+00  1.3013E+00
             1.0992E+00
 PARAMETER:  8.2969E-02  6.0799E-01 -4.2621E-02 -3.8264E-01  4.1098E-01  1.0234E-01 -4.2619E-01 -4.8892E+00  4.3104E-01  3.6336E-01
             1.9457E-01
 GRADIENT:   1.1025E+00 -4.3167E+00 -2.0180E-01  2.2256E-01  1.0068E-01  5.5582E-02  3.0454E-02  0.0000E+00  1.4829E-01  4.3014E-02
             1.0082E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1672.54532861148        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1670
 NPARAMETR:  9.8318E-01  1.6635E+00  8.6832E-01  6.1647E-01  1.3647E+00  1.0024E+00  5.9149E-01  1.0000E-02  1.3921E+00  1.3016E+00
             1.0989E+00
 PARAMETER:  8.3031E-02  6.0810E-01 -4.2193E-02 -3.8312E-01  4.1104E-01  1.0241E-01 -4.2588E-01 -4.8892E+00  4.3073E-01  3.6332E-01
             1.9446E-01
 GRADIENT:  -8.2201E-04 -4.1478E-01 -3.9072E-02  8.4985E-02  2.0190E-02 -4.2990E-04 -1.0052E-02  0.0000E+00 -2.8685E-03 -9.8102E-03
             1.3984E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1670
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.7242E-04 -3.7215E-02 -2.0570E-04  1.7176E-02 -4.1895E-02
 SE:             2.9804E-02  1.8122E-02  9.5139E-05  2.3928E-02  2.3384E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9538E-01  4.0011E-02  3.0614E-02  4.7288E-01  7.3196E-02

 ETASHRINKSD(%)  1.5388E-01  3.9290E+01  9.9681E+01  1.9839E+01  2.1660E+01
 ETASHRINKVR(%)  3.0752E-01  6.3143E+01  9.9999E+01  3.5741E+01  3.8629E+01
 EBVSHRINKSD(%)  4.9999E-01  3.7671E+01  9.9718E+01  2.1277E+01  1.8594E+01
 EBVSHRINKVR(%)  9.9748E-01  6.1150E+01  9.9999E+01  3.8026E+01  3.3730E+01
 RELATIVEINF(%)  9.8862E+01  2.1531E+00  1.8830E-04  3.9666E+00  2.0585E+01
 EPSSHRINKSD(%)  4.1120E+01
 EPSSHRINKVR(%)  6.5331E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1672.5453286114771     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -937.39450204773891     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.70
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1672.545       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.83E-01  1.66E+00  8.67E-01  6.17E-01  1.36E+00  1.00E+00  5.91E-01  1.00E-02  1.39E+00  1.30E+00  1.10E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.735
Stop Time:
Sat Oct  2 04:14:55 CDT 2021

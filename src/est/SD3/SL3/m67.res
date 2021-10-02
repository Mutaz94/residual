Fri Oct  1 20:07:44 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat67.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      698
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

 TOT. NO. OF OBS RECS:      598
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1622.50123230121        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2160E+02 -1.1437E+02  4.5414E+01 -1.3284E+01  1.0096E+02  3.9361E+01 -4.6506E+01 -5.3382E+01 -3.5394E+01  1.0158E+01
            -1.5611E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2076.54583395743        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0146E+00  1.3354E+00  9.6357E-01  9.4096E-01  1.0734E+00  1.0426E+00  1.1495E+00  9.3194E-01  9.8391E-01  7.9432E-01
             1.9225E+00
 PARAMETER:  1.1449E-01  3.8921E-01  6.2886E-02  3.9140E-02  1.7087E-01  1.4173E-01  2.3932E-01  2.9515E-02  8.3781E-02 -1.3027E-01
             7.5363E-01
 GRADIENT:   1.5162E+02  1.1930E+02  1.2698E+01  4.9620E+01 -1.1366E+01  2.5422E+01  1.0486E+01  3.3485E-01 -1.0962E+01 -1.0699E+01
            -3.6325E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2078.09353633311        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      263
 NPARAMETR:  1.0219E+00  1.5038E+00  9.3886E-01  8.5872E-01  1.1536E+00  9.9724E-01  9.7258E-01  8.6866E-01  1.1978E+00  9.9440E-01
             1.9417E+00
 PARAMETER:  1.2170E-01  5.0800E-01  3.6913E-02 -5.2310E-02  2.4290E-01  9.7236E-02  7.2198E-02 -4.0806E-02  2.8046E-01  9.4383E-02
             7.6357E-01
 GRADIENT:   4.1661E+01  7.1623E+01  1.3706E+01  5.0130E+01 -4.2210E+01 -1.2815E+01 -1.1546E+00 -1.2535E-01  4.1821E+00  3.1257E+00
            -2.4324E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2082.08018797406        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      441
 NPARAMETR:  9.9978E-01  1.5522E+00  9.2458E-01  7.7859E-01  1.2370E+00  1.0298E+00  9.3803E-01  8.8175E-01  1.2213E+00  1.0122E+00
             1.9743E+00
 PARAMETER:  9.9779E-02  5.3965E-01  2.1584E-02 -1.5027E-01  3.1266E-01  1.2932E-01  3.6026E-02 -2.5846E-02  2.9992E-01  1.1208E-01
             7.8023E-01
 GRADIENT:  -5.7117E+00  6.5404E+00  4.0228E+00  1.0561E+01 -2.6124E+00  8.3730E-01 -2.8044E-01 -3.9895E-01  4.8425E-01  2.6790E-01
            -9.3931E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2083.40477784621        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      616
 NPARAMETR:  1.0046E+00  1.9042E+00  6.3282E-01  5.4452E-01  1.3955E+00  1.0319E+00  8.2809E-01  4.1856E-01  1.5434E+00  1.1239E+00
             1.9703E+00
 PARAMETER:  1.0455E-01  7.4405E-01 -3.5757E-01 -5.0784E-01  4.3328E-01  1.3136E-01 -8.8631E-02 -7.7093E-01  5.3401E-01  2.1679E-01
             7.7818E-01
 GRADIENT:   3.1665E+00  6.4413E+00 -2.2305E+00  6.5056E+00  2.0792E+00  1.1926E+00 -1.9441E-02  6.3751E-02 -9.4573E-01  1.6454E-01
             1.3120E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2083.53263092601        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      792
 NPARAMETR:  1.0037E+00  2.0575E+00  5.4480E-01  4.3968E-01  1.4989E+00  1.0300E+00  7.9048E-01  2.7359E-01  1.7871E+00  1.1840E+00
             1.9639E+00
 PARAMETER:  1.0369E-01  8.2151E-01 -5.0733E-01 -7.2170E-01  5.0473E-01  1.2957E-01 -1.3511E-01 -1.1961E+00  6.8059E-01  2.6892E-01
             7.7492E-01
 GRADIENT:   1.5300E+00  9.8469E-01 -1.7450E+00  4.0793E+00  5.9456E+00  3.9856E-01 -4.5630E-01  4.3108E-02 -6.0484E-01 -1.7751E-02
            -3.1994E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2083.56756681771        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      972
 NPARAMETR:  1.0033E+00  2.0826E+00  5.3585E-01  4.1711E-01  1.5093E+00  1.0294E+00  7.8637E-01  1.6303E-01  1.8433E+00  1.1937E+00
             1.9635E+00
 PARAMETER:  1.0328E-01  8.3363E-01 -5.2390E-01 -7.7441E-01  5.1164E-01  1.2902E-01 -1.4033E-01 -1.7138E+00  7.1154E-01  2.7707E-01
             7.7474E-01
 GRADIENT:   1.0547E+00 -1.6457E+00  1.1330E+00 -1.6017E+00 -2.0907E+00  2.7203E-01 -2.5591E-01  9.2965E-03 -1.2680E+00  3.0736E-01
             8.1775E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2083.58532652500        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1151             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0030E+00  2.0836E+00  5.2847E-01  4.1581E-01  1.5112E+00  1.0291E+00  7.8630E-01  3.9446E-02  1.8634E+00  1.1914E+00
             1.9632E+00
 PARAMETER:  1.0302E-01  8.3410E-01 -5.3778E-01 -7.7753E-01  5.1289E-01  1.2865E-01 -1.4042E-01 -3.1328E+00  7.2238E-01  2.7513E-01
             7.7457E-01
 GRADIENT:   1.1217E+02  3.5421E+02  9.4085E-01  2.6184E+01  2.0744E+01  1.9114E+01  3.6898E+00  1.6762E-03  8.4409E+00  1.6708E+00
             9.3945E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2083.58621370941        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:     1318
 NPARAMETR:  1.0030E+00  2.0836E+00  5.2874E-01  4.1621E-01  1.5102E+00  1.0291E+00  7.8618E-01  1.0000E-02  1.8631E+00  1.1908E+00
             1.9629E+00
 PARAMETER:  1.0303E-01  8.3409E-01 -5.3726E-01 -7.7657E-01  5.1227E-01  1.2866E-01 -1.4056E-01 -5.1185E+00  7.2222E-01  2.7466E-01
             7.7440E-01
 GRADIENT:   5.3504E-01 -4.1597E+00 -9.4944E-03 -1.9187E-01 -6.3576E-02  9.7899E-02 -2.9833E-02  0.0000E+00  1.1356E-01  3.5267E-02
            -1.0613E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1318
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.1334E-04 -2.9703E-02 -1.0351E-04  2.9599E-02 -3.1251E-02
 SE:             2.9592E-02  2.4477E-02  6.3414E-05  2.0615E-02  2.3295E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7807E-01  2.2495E-01  1.0260E-01  1.5106E-01  1.7975E-01

 ETASHRINKSD(%)  8.6185E-01  1.7997E+01  9.9788E+01  3.0937E+01  2.1958E+01
 ETASHRINKVR(%)  1.7163E+00  3.2756E+01  1.0000E+02  5.2303E+01  3.9095E+01
 EBVSHRINKSD(%)  1.1088E+00  1.7541E+01  9.9803E+01  3.3977E+01  2.0313E+01
 EBVSHRINKVR(%)  2.2054E+00  3.2005E+01  1.0000E+02  5.6410E+01  3.6500E+01
 RELATIVEINF(%)  9.7735E+01  9.1746E+00  1.4522E-04  5.6986E+00  1.9691E+01
 EPSSHRINKSD(%)  2.5778E+01
 EPSSHRINKVR(%)  4.4911E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          598
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1099.0504857127885     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2083.5862137094086     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -984.53572799662015     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.43
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2083.586       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  2.08E+00  5.29E-01  4.16E-01  1.51E+00  1.03E+00  7.86E-01  1.00E-02  1.86E+00  1.19E+00  1.96E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       23.475
Stop Time:
Fri Oct  1 20:08:09 CDT 2021

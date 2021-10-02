Fri Oct  1 06:37:35 CDT 2021
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
$DATA ../../../../data/SD1/D/dat43.csv ignore=@
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
 (2E4.0,E22.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:   29061.7485859350        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   8.2290E+02  4.6552E+02 -4.4103E+00  4.3712E+02 -1.8731E+01 -1.7810E+03 -1.1744E+03 -2.7601E+01 -1.5941E+03 -2.6413E+02
            -6.0092E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -770.817251339107        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0169E+00  1.5418E+00  9.5696E-01  1.5867E+00  9.7881E-01  2.4696E+00  2.4746E+00  9.8091E-01  1.8439E+00  1.1002E+00
             1.3830E+01
 PARAMETER:  1.1681E-01  5.3293E-01  5.6007E-02  5.6164E-01  7.8585E-02  1.0041E+00  1.0061E+00  8.0726E-02  7.1188E-01  1.9553E-01
             2.7268E+00
 GRADIENT:  -8.7040E+01  1.9137E+01 -1.8496E+01  1.0188E+02 -8.1616E+00  4.4648E+01 -3.4186E+01  4.1565E+00  1.4021E+01  2.1012E+01
             5.7105E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -834.012849852625        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  9.5079E-01  1.6587E+00  1.2784E+01  1.8073E+00  2.0129E+00  2.3773E+00  6.4912E+00  5.9590E-01  3.1182E+00  4.6416E-01
             1.2974E+01
 PARAMETER:  4.9534E-02  6.0605E-01  2.6482E+00  6.9182E-01  7.9957E-01  9.6597E-01  1.9704E+00 -4.1768E-01  1.2372E+00 -6.6753E-01
             2.6629E+00
 GRADIENT:  -8.3454E+01  3.2139E+01 -4.4514E+00  2.6126E+01 -9.5905E+00  5.0875E+01  7.8927E+01  8.7092E-02  6.3551E+01  3.5574E+00
             5.6951E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -966.203636055353        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.1324E+00  7.6826E-01  1.9850E+01  1.3710E+00  2.2659E+00  2.1359E+00  3.3556E+00  3.3183E-01  1.5428E+00  6.9458E-01
             1.0178E+01
 PARAMETER:  2.2430E-01 -1.6363E-01  3.0882E+00  4.1553E-01  9.1796E-01  8.5891E-01  1.3106E+00 -1.0031E+00  5.3360E-01 -2.6444E-01
             2.4202E+00
 GRADIENT:   2.2081E+00 -4.0155E+01 -8.2884E-01 -2.4135E+01  2.8913E+01  1.8172E+01 -4.2566E+01  1.3851E-02 -8.8110E+00  7.8481E+00
             3.6737E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1013.91586159058        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      299
 NPARAMETR:  1.0428E+00  1.1974E+00  6.9082E+00  1.0411E+00  1.9558E+00  2.1045E+00  3.3794E+00  4.9743E-01  1.7108E+00  2.6541E-01
             8.0905E+00
 PARAMETER:  1.4192E-01  2.8016E-01  2.0327E+00  1.4032E-01  7.7079E-01  8.4408E-01  1.3177E+00 -5.9831E-01  6.3693E-01 -1.2265E+00
             2.1907E+00
 GRADIENT:  -4.8347E+00 -8.9570E-01  4.2453E+00  2.6196E+00 -9.0063E+00 -1.5116E+00  9.6258E+00 -5.3556E-03  3.0059E+00  8.6326E-01
            -9.0969E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1015.81003926368        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.0614E+00  1.7199E+00  1.6015E+00  6.4287E-01  1.7364E+00  2.1208E+00  2.7343E+00  4.0790E-01  1.0481E+00  1.5404E-01
             8.1693E+00
 PARAMETER:  1.5954E-01  6.4227E-01  5.7095E-01 -3.4181E-01  6.5180E-01  8.5178E-01  1.1059E+00 -7.9674E-01  1.4696E-01 -1.7706E+00
             2.2004E+00
 GRADIENT:   3.8726E+00  6.9121E+00 -5.7538E-01  2.3685E+00 -6.3827E+00  4.6043E+00  1.4671E+00  1.0593E-01  2.8575E+00  4.0933E-01
             4.6518E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1019.77209455574        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      553
 NPARAMETR:  1.1136E+00  1.8070E+00  2.5238E+00  6.3414E-01  1.9699E+00  2.2673E+00  3.0327E+00  3.4735E-01  7.3570E-01  1.5953E-01
             8.3471E+00
 PARAMETER:  2.0756E-01  6.9166E-01  1.0258E+00 -3.5549E-01  7.7800E-01  9.1861E-01  1.2095E+00 -9.5743E-01 -2.0693E-01 -1.7355E+00
             2.2219E+00
 GRADIENT:   9.1954E+00 -2.2125E+00 -3.9922E-01 -6.0530E+00  9.5855E-01  1.7326E+00  5.2082E+00  5.6925E-02  3.2212E+00  3.4764E-01
             4.9725E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1021.80374147380        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      728
 NPARAMETR:  1.0773E+00  1.7845E+00  2.8255E+00  6.4357E-01  1.9946E+00  2.2477E+00  3.0911E+00  1.0000E-02  1.3664E-01  1.1641E-01
             8.3368E+00
 PARAMETER:  1.7447E-01  6.7914E-01  1.1387E+00 -3.4072E-01  7.9046E-01  9.0992E-01  1.2285E+00 -4.6015E+00 -1.8904E+00 -2.0507E+00
             2.2207E+00
 GRADIENT:  -4.1308E+00  8.8637E-01  1.3252E+00 -8.4735E-01 -2.3383E+00 -9.5537E-01 -7.0661E-01  0.0000E+00  1.6135E-01  1.6209E-01
             3.8234E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1022.03990366853        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      903
 NPARAMETR:  1.0875E+00  1.7874E+00  2.4297E+00  6.3881E-01  1.9495E+00  2.2545E+00  3.0762E+00  1.0000E-02  2.1141E-02  6.5439E-02
             8.3333E+00
 PARAMETER:  1.8393E-01  6.8075E-01  9.8776E-01 -3.4815E-01  7.6755E-01  9.1294E-01  1.2237E+00 -8.5632E+00 -3.7566E+00 -2.6266E+00
             2.2203E+00
 GRADIENT:  -1.1723E-01  5.3066E-01  1.7292E-01 -2.0511E-02 -9.6397E-01  2.1566E-01 -4.3688E-01  0.0000E+00  4.3126E-03  5.3618E-02
            -1.1082E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1022.07099350781        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1078
 NPARAMETR:  1.0881E+00  1.7770E+00  2.4476E+00  6.4212E-01  1.9514E+00  2.2528E+00  3.0902E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.3372E+00
 PARAMETER:  1.8440E-01  6.7492E-01  9.9512E-01 -3.4298E-01  7.6855E-01  9.1216E-01  1.2282E+00 -2.3529E+01 -1.0835E+01 -4.6171E+00
             2.2207E+00
 GRADIENT:   1.5950E-02 -3.6463E-02  1.4010E-02 -5.0013E-02 -6.6493E-02 -4.6974E-02 -2.0211E-02  0.0000E+00  0.0000E+00  0.0000E+00
            -1.3567E-01

0ITERATION NO.:   46    OBJECTIVE VALUE:  -1022.07099350781        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1100
 NPARAMETR:  1.0881E+00  1.7770E+00  2.4476E+00  6.4212E-01  1.9514E+00  2.2528E+00  3.0902E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.3372E+00
 PARAMETER:  1.8440E-01  6.7492E-01  9.9512E-01 -3.4298E-01  7.6855E-01  9.1216E-01  1.2282E+00 -2.3529E+01 -1.0835E+01 -4.6171E+00
             2.2207E+00
 GRADIENT:   1.5950E-02 -3.6463E-02  1.4010E-02 -5.0013E-02 -6.6493E-02 -4.6974E-02 -2.0211E-02  0.0000E+00  0.0000E+00  0.0000E+00
            -1.3567E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1100
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.5383E-03  8.0043E-04 -1.3417E-05 -5.2252E-04 -2.6300E-05
 SE:             2.9061E-02  2.8180E-02  2.9216E-05  1.2490E-04  1.4868E-04
 N:                     100         100         100         100         100

 P VAL.:         7.6891E-01  9.7734E-01  6.4608E-01  2.8726E-05  8.5960E-01

 ETASHRINKSD(%)  2.6408E+00  5.5946E+00  9.9902E+01  9.9582E+01  9.9502E+01
 ETASHRINKVR(%)  5.2119E+00  1.0876E+01  1.0000E+02  9.9998E+01  9.9998E+01
 EBVSHRINKSD(%)  2.2253E+00  3.9109E+00  9.9888E+01  9.9673E+01  9.9453E+01
 EBVSHRINKVR(%)  4.4010E+00  7.6688E+00  1.0000E+02  9.9999E+01  9.9997E+01
 RELATIVEINF(%)  9.5389E+01  4.0832E+01  2.7148E-05  3.9057E-04  7.0843E-04
 EPSSHRINKSD(%)  6.7343E+00
 EPSSHRINKVR(%)  1.3015E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1022.0709935078147     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       632.01836626059605     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.66
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1022.071       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.09E+00  1.78E+00  2.45E+00  6.42E-01  1.95E+00  2.25E+00  3.09E+00  1.00E-02  1.00E-02  1.00E-02  8.34E+00
 


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
 #CPUT: Total CPU Time in Seconds,       27.733
Stop Time:
Fri Oct  1 06:38:04 CDT 2021

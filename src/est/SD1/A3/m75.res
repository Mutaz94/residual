Fri Oct  1 01:27:48 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat75.csv ignore=@
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
 (2E4.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m75.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1002.25090165089        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1251E+02  1.6570E+02  2.1657E+02 -9.9649E+01  2.7028E+02  6.0673E+01 -1.3899E+02 -1.7558E+02 -6.4938E+01 -1.4420E+02
            -5.1680E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2814.17987469636        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0318E+00  8.8975E-01  8.4661E-01  1.1582E+00  7.9859E-01  8.5212E-01  8.8797E-01  1.0242E+00  1.0526E+00  9.4074E-01
             2.3616E+00
 PARAMETER:  1.3129E-01 -1.6809E-02 -6.6510E-02  2.4689E-01 -1.2491E-01 -6.0029E-02 -1.8815E-02  1.2392E-01  1.5127E-01  3.8915E-02
             9.5934E-01
 GRADIENT:   2.0675E+02  4.9447E+01  2.8578E+01  1.4758E+01  7.1677E-02 -1.5609E+01  8.6808E+00  2.3073E+00  1.4860E+00  2.9325E+00
            -1.3576E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2824.28894010670        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      202
 NPARAMETR:  1.0336E+00  6.7343E-01  6.5234E-01  1.2927E+00  5.9130E-01  9.6816E-01  6.5026E-01  8.4172E-01  1.0772E+00  8.0824E-01
             2.3305E+00
 PARAMETER:  1.3301E-01 -2.9538E-01 -3.2719E-01  3.5676E-01 -4.2542E-01  6.7644E-02 -3.3039E-01 -7.2302E-02  1.7439E-01 -1.1290E-01
             9.4610E-01
 GRADIENT:   1.0123E+02  6.9947E+01  4.9219E+01  4.8604E+01 -5.7173E+01  2.4894E+01 -1.0375E+01  3.3057E+00  6.0229E+00 -2.2290E+01
            -1.6061E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2835.85008233660        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      380
 NPARAMETR:  1.0083E+00  6.0400E-01  5.6333E-01  1.3034E+00  5.5565E-01  9.7293E-01  3.1342E-01  5.6219E-01  1.0598E+00  9.4521E-01
             2.4614E+00
 PARAMETER:  1.0823E-01 -4.0417E-01 -4.7388E-01  3.6500E-01 -4.8762E-01  7.2557E-02 -1.0602E+00 -4.7592E-01  1.5804E-01  4.3654E-02
             1.0007E+00
 GRADIENT:   4.0539E+01 -8.3333E+00 -1.9454E+01  4.8461E+01  6.2577E+01  3.0349E+01 -2.6471E+00  2.4208E+00  1.9214E-02 -5.2474E+00
            -4.1408E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2843.31531670592        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      555
 NPARAMETR:  9.9037E-01  4.5892E-01  4.2312E-01  1.2765E+00  4.0909E-01  8.9333E-01  6.5431E-02  3.5233E-01  1.0770E+00  9.2876E-01
             2.5033E+00
 PARAMETER:  9.0326E-02 -6.7888E-01 -7.6010E-01  3.4409E-01 -7.9383E-01 -1.2797E-02 -2.6268E+00 -9.4319E-01  1.7416E-01  2.6099E-02
             1.0176E+00
 GRADIENT:   2.4475E-01 -2.0250E-01 -1.3832E+00 -4.7845E-01  1.8409E+00  9.8712E-01 -2.3898E-01  9.1257E-01 -5.0497E-01  1.0449E+00
            -1.1308E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2843.47203533505        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      730
 NPARAMETR:  9.9000E-01  4.6402E-01  4.2919E-01  1.2789E+00  4.1376E-01  8.9054E-01  5.4839E-02  1.9903E-01  1.0736E+00  9.3307E-01
             2.5130E+00
 PARAMETER:  8.9949E-02 -6.6783E-01 -7.4584E-01  3.4601E-01 -7.8247E-01 -1.5929E-02 -2.8034E+00 -1.5143E+00  1.7101E-01  3.0728E-02
             1.0215E+00
 GRADIENT:  -8.0396E-01  5.2563E-01  5.8895E-01  2.1852E+00 -4.0970E-01  1.7849E-01 -1.6170E-01  9.9742E-02 -3.2359E-01  1.0652E-01
            -9.9049E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2843.47840877294        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      905
 NPARAMETR:  9.9021E-01  4.6361E-01  4.2874E-01  1.2778E+00  4.1347E-01  8.9081E-01  5.1542E-02  1.6324E-01  1.0747E+00  9.3297E-01
             2.5141E+00
 PARAMETER:  9.0157E-02 -6.6870E-01 -7.4691E-01  3.4515E-01 -7.8316E-01 -1.5628E-02 -2.8653E+00 -1.7125E+00  1.7208E-01  3.0621E-02
             1.0219E+00
 GRADIENT:  -1.6096E-01  2.0323E-01  2.7551E-01  7.8710E-01  1.1276E-01  3.3038E-01 -1.4314E-01  4.4358E-02  3.8348E-02 -1.7278E-01
            -1.7125E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2851.49023997630        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1091
 NPARAMETR:  9.8691E-01  4.4656E-01  4.1893E-01  1.3110E+00  3.9989E-01  9.2804E-01  1.3141E+00  1.0000E-02  1.0769E+00  8.4105E-01
             2.4322E+00
 PARAMETER:  8.6824E-02 -7.0618E-01 -7.7006E-01  3.7078E-01 -8.1657E-01  2.5319E-02  3.7312E-01 -1.0703E+01  1.7412E-01 -7.3103E-02
             9.8880E-01
 GRADIENT:  -6.9608E+00  7.9139E+00  5.0142E+01  4.6576E+01 -8.0033E+00  1.4484E+01  2.6001E+01  0.0000E+00 -1.2558E+01  1.8904E+01
             2.6885E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2877.50804906638        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1270
 NPARAMETR:  9.8346E-01  3.1539E-01  2.6275E-01  1.2562E+00  2.7471E-01  9.2771E-01  1.1551E+00  8.1292E-01  1.2367E+00  6.3028E-01
             2.3041E+00
 PARAMETER:  8.3319E-02 -1.0540E+00 -1.2365E+00  3.2807E-01 -1.1920E+00  2.4965E-02  2.4418E-01 -1.0712E-01  3.1241E-01 -3.6160E-01
             9.3468E-01
 GRADIENT:  -1.5400E+01  6.3640E+00  3.2396E+01  4.7512E+01 -2.4668E+01  9.1126E+00 -4.7571E-01  7.4502E+00 -6.4941E+00  1.3314E+01
             1.6799E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2889.21453304594        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1445
 NPARAMETR:  9.8958E-01  2.3062E-01  1.6183E-01  1.0922E+00  2.0045E-01  9.0599E-01  1.2651E+00  1.1954E+00  1.4931E+00  4.9535E-01
             2.1833E+00
 PARAMETER:  8.9526E-02 -1.3670E+00 -1.7212E+00  1.8824E-01 -1.5072E+00  1.2732E-03  3.3514E-01  2.7848E-01  5.0088E-01 -6.0249E-01
             8.8082E-01
 GRADIENT:   4.6561E+00 -2.1183E+00  5.8620E+00 -3.2751E+00 -1.5906E+01 -9.4858E-01  5.5629E-01 -4.7676E-01 -2.9771E+00  3.1732E+00
             7.4649E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2889.52950727580        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1621
 NPARAMETR:  9.8766E-01  2.3977E-01  1.6951E-01  1.1177E+00  2.0815E-01  9.0850E-01  1.2749E+00  1.2153E+00  1.4846E+00  4.4092E-01
             2.1770E+00
 PARAMETER:  8.7585E-02 -1.3281E+00 -1.6748E+00  2.1123E-01 -1.4695E+00  4.0342E-03  3.4287E-01  2.9496E-01  4.9511E-01 -7.1890E-01
             8.7793E-01
 GRADIENT:  -5.5825E-02  1.1503E+00 -1.7495E+00  2.3692E+00  3.4318E-01 -1.9965E-02 -1.3322E-01  3.3910E-02 -1.2078E-01  2.3784E-01
             6.7110E-01

0ITERATION NO.:   52    OBJECTIVE VALUE:  -2889.53161143347        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1678
 NPARAMETR:  9.8789E-01  2.3986E-01  1.6997E-01  1.1160E+00  2.0839E-01  9.0835E-01  1.2766E+00  1.2161E+00  1.4838E+00  4.3776E-01
             2.1768E+00
 PARAMETER:  8.7812E-02 -1.3277E+00 -1.6722E+00  2.0972E-01 -1.4684E+00  3.8721E-03  3.4420E-01  2.9563E-01  4.9460E-01 -7.2609E-01
             8.7788E-01
 GRADIENT:   5.2943E-01  5.1935E-01 -6.9225E-01  4.8850E-01  2.4882E-01 -6.5331E-02 -2.8414E-02 -4.6191E-03 -4.3372E-02  2.1145E-02
             4.3873E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1678
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1683E-03  1.0483E-02  7.2972E-03 -2.4519E-03  1.7648E-02
 SE:             2.9400E-02  2.5405E-02  2.3772E-02  2.8203E-02  1.6259E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6830E-01  6.7987E-01  7.5887E-01  9.3072E-01  2.7775E-01

 ETASHRINKSD(%)  1.5059E+00  1.4889E+01  2.0360E+01  5.5178E+00  4.5529E+01
 ETASHRINKVR(%)  2.9890E+00  2.7561E+01  3.6575E+01  1.0731E+01  7.0329E+01
 EBVSHRINKSD(%)  1.6528E+00  1.4122E+01  1.9276E+01  4.7693E+00  4.6921E+01
 EBVSHRINKVR(%)  3.2783E+00  2.6250E+01  3.4836E+01  9.3111E+00  7.1826E+01
 RELATIVEINF(%)  9.6661E+01  2.1232E+01  1.1593E+01  6.1921E+01  3.4178E+00
 EPSSHRINKSD(%)  2.1217E+01
 EPSSHRINKVR(%)  3.7932E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2889.5316114334682     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1235.4422516650575     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    43.04
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2889.532       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.88E-01  2.40E-01  1.70E-01  1.12E+00  2.08E-01  9.08E-01  1.28E+00  1.22E+00  1.48E+00  4.38E-01  2.18E+00
 


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
 #CPUT: Total CPU Time in Seconds,       43.090
Stop Time:
Fri Oct  1 01:28:33 CDT 2021
Fri Oct  1 08:08:06 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD1/All/dat95.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]

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
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
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
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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
 RAW OUTPUT FILE (FILE): m95.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   50204.8916157203        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   9.8785E+02  8.1374E+02 -1.4225E+03 -2.0618E+03 -2.9211E+03 -1.7309E+03 -9.7547E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -651.606192059809        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  1.3244E+00  1.7776E+00  2.4148E+01  1.7957E+00  3.4936E+00  1.7686E+00  1.1703E+01
 PARAMETER:  3.8097E-01  6.7529E-01  3.2842E+00  6.8538E-01  1.3509E+00  6.7022E-01  2.5599E+00
 GRADIENT:   1.3586E+02  3.3582E+01  9.0825E-01 -5.7582E+01  4.6344E+01 -1.4640E-03 -6.8679E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -662.322984691000        NO. OF FUNC. EVALS.:  53
 CUMULATIVE NO. OF FUNC. EVALS.:      112
 NPARAMETR:  1.0825E+00  1.5313E+00  2.0684E+01  1.9388E+00  3.1629E+00  3.6734E+00  1.1456E+01
 PARAMETER:  1.7925E-01  5.2609E-01  3.1294E+00  7.6205E-01  1.2515E+00  1.4011E+00  2.5385E+00
 GRADIENT:   2.4116E+01  1.1071E+00  1.2624E+00 -4.1099E+00 -7.2913E+00  1.4273E-02 -4.6786E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -671.399091225851        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      164
 NPARAMETR:  1.0397E+00  1.6063E+00  9.2196E+00  1.9869E+00  3.2856E+00  2.5775E+00  1.2044E+01
 PARAMETER:  1.3896E-01  5.7392E-01  2.3213E+00  7.8659E-01  1.2896E+00  1.0468E+00  2.5886E+00
 GRADIENT:  -8.1813E+00  7.3135E+00  1.7330E+00  3.1984E+00  1.1814E+01  2.2922E+01  4.8535E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -732.177772967540        NO. OF FUNC. EVALS.:  56
 CUMULATIVE NO. OF FUNC. EVALS.:      220
 NPARAMETR:  1.0725E+00  1.5214E+00  2.6926E+00  1.8701E+00  3.3898E+00  1.2570E+00  1.2605E+01
 PARAMETER:  1.6997E-01  5.1963E-01  1.0905E+00  7.2601E-01  1.3208E+00  3.2872E-01  2.6341E+00
 GRADIENT:   5.8590E+00  2.6092E+00  9.3079E+00  5.7092E+00  2.3096E+01  1.7022E+01  1.6261E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -740.751141619884        NO. OF FUNC. EVALS.:  89
 CUMULATIVE NO. OF FUNC. EVALS.:      309
 NPARAMETR:  1.0705E+00  1.5189E+00  2.6364E+00  1.8664E+00  3.4123E+00  4.2829E-01  1.2418E+01
 PARAMETER:  1.6810E-01  5.1798E-01  1.0694E+00  7.2399E-01  1.3274E+00 -7.4796E-01  2.6191E+00
 GRADIENT:   9.6447E+00  6.0138E+00  1.7988E+00  3.9038E+00  2.8182E+01  1.4491E+00  1.4013E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -742.927436389214        NO. OF FUNC. EVALS.:  88
 CUMULATIVE NO. OF FUNC. EVALS.:      397
 NPARAMETR:  1.0692E+00  1.5244E+00  2.6199E+00  1.8572E+00  3.4111E+00  1.0554E-01  1.2181E+01
 PARAMETER:  1.6694E-01  5.2158E-01  1.0631E+00  7.1907E-01  1.3270E+00 -2.1487E+00  2.5999E+00
 GRADIENT:   1.3678E+01  9.5042E+00 -1.4276E+00  1.3650E+00  2.9389E+01  7.9080E-02  1.0962E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -744.641697113912        NO. OF FUNC. EVALS.:  90
 CUMULATIVE NO. OF FUNC. EVALS.:      487
 NPARAMETR:  1.0162E+00  1.5325E+00  2.6496E+00  1.8433E+00  3.4376E+00  1.0000E-02  1.1633E+01
 PARAMETER:  1.1603E-01  5.2690E-01  1.0744E+00  7.1155E-01  1.3348E+00 -4.7574E+00  2.5538E+00
 GRADIENT:  -3.0844E+00  1.5776E+01  1.6586E+00 -2.8845E+00  3.4850E+01  0.0000E+00  4.4137E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -745.391522874819        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      603
 NPARAMETR:  1.0354E+00  1.5798E+00  2.6600E+00  1.9068E+00  3.6245E+00  1.0000E-02  1.1826E+01
 PARAMETER:  1.3474E-01  5.5728E-01  1.0783E+00  7.4545E-01  1.3877E+00 -4.5581E+00  2.5703E+00
 GRADIENT:  -1.9591E+00 -8.8262E-01 -8.3788E-01  2.9579E-01  1.6638E+00  0.0000E+00  2.3058E+01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -745.562091919650        NO. OF FUNC. EVALS.:  83
 CUMULATIVE NO. OF FUNC. EVALS.:      686
 NPARAMETR:  1.0336E+00  1.5845E+00  2.6706E+00  1.9122E+00  3.6280E+00  1.0000E-02  1.1667E+01
 PARAMETER:  1.3309E-01  5.6024E-01  1.0823E+00  7.4825E-01  1.3887E+00 -4.5567E+00  2.5568E+00
 GRADIENT:  -1.2848E-01  6.0393E-01  1.8493E-01  3.7270E-01  1.6817E+00  0.0000E+00  5.8997E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      686
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3954E-02 -7.7831E-03 -8.6410E-05
 SE:             2.7699E-02  2.9735E-02  1.0249E-04
 N:                     100         100         100

 P VAL.:         6.1442E-01  7.9352E-01  3.9919E-01

 ETASHRINKSD(%)  7.2059E+00  3.8368E-01  9.9657E+01
 ETASHRINKVR(%)  1.3893E+01  7.6589E-01  9.9999E+01
 EBVSHRINKSD(%)  9.8918E+00  1.4166E+00  9.9609E+01
 EBVSHRINKVR(%)  1.8805E+01  2.8132E+00  9.9998E+01
 RELATIVEINF(%)  8.1079E+01  9.6014E+01  1.5079E-03
 EPSSHRINKSD(%)  6.4799E+00
 EPSSHRINKVR(%)  1.2540E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -745.56209191964979     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       908.52726784876097     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    13.38
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -745.562       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.03E+00  1.58E+00  2.67E+00  1.91E+00  3.63E+00  1.00E-02  1.17E+01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       13.449
Stop Time:
Fri Oct  1 08:08:21 CDT 2021

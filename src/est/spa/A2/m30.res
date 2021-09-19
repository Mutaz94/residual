Sat Sep 18 09:46:40 CDT 2021
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
$DATA ../../../../data/spa/A2/dat30.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m30.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -524.136081937352        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.4376E+01  6.4187E+01  7.0865E+01  1.4420E+01  1.2989E+02  1.0872E+01 -6.1551E+01 -3.8155E+01 -1.1476E+02 -1.3948E+02
            -1.9746E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1304.39592269897        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0266E+00  8.6518E-01  8.8804E-01  1.0871E+00  8.4444E-01  9.1430E-01  1.1207E+00  9.9201E-01  1.2860E+00  1.1772E+00
             3.3789E+00
 PARAMETER:  1.2630E-01 -4.4820E-02 -1.8735E-02  1.8349E-01 -6.9076E-02  1.0405E-02  2.1392E-01  9.1978E-02  3.5153E-01  2.6314E-01
             1.3176E+00
 GRADIENT:  -5.7694E+00 -5.1474E+00 -8.3131E+00 -7.2874E+00  1.0782E+01 -1.2608E+01  9.9053E-01  6.8122E+00  1.3536E+01  9.5355E+00
             6.2773E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1309.38593297748        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0244E+00  5.5518E-01  4.5195E-01  1.3354E+00  4.6381E-01  9.9360E-01  1.8412E+00  4.3593E-01  1.2617E+00  7.2605E-01
             3.1354E+00
 PARAMETER:  1.2410E-01 -4.8847E-01 -6.9418E-01  3.8921E-01 -6.6828E-01  9.3582E-02  7.1040E-01 -7.3028E-01  3.3245E-01 -2.2013E-01
             1.2428E+00
 GRADIENT:  -2.3124E+01  3.5885E+01 -4.3284E+01  1.3025E+02  3.2863E+01  7.3048E+00  1.8141E+01  2.3586E+00  2.0110E+01  1.1421E+01
             3.4166E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1326.13725960611        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0268E+00  5.4476E-01  3.2073E-01  1.1363E+00  3.7404E-01  9.8730E-01  9.5700E-01  2.3423E-01  1.1765E+00  5.4587E-01
             2.9024E+00
 PARAMETER:  1.2649E-01 -5.0740E-01 -1.0371E+00  2.2779E-01 -8.8341E-01  8.7215E-02  5.6048E-02 -1.3514E+00  2.6255E-01 -5.0537E-01
             1.1655E+00
 GRADIENT:  -8.0285E+00  1.1431E+01  6.0049E+00  2.9782E+01 -2.7752E+00 -6.0431E-02 -4.3176E+00 -4.0153E-01 -4.4596E+00 -1.2716E+00
            -1.5155E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1328.98157022733        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  1.0299E+00  6.1655E-01  1.8225E-01  9.3844E-01  3.0130E-01  9.9766E-01  1.0617E+00  6.9203E-01  1.3123E+00  3.6716E-01
             2.8879E+00
 PARAMETER:  1.2944E-01 -3.8361E-01 -1.6024E+00  3.6465E-02 -1.0996E+00  9.7661E-02  1.5984E-01 -2.6812E-01  3.7182E-01 -9.0196E-01
             1.1605E+00
 GRADIENT:   2.2131E+01  3.1481E+01  2.1406E+01 -1.7495E+01 -6.8771E+01 -3.9693E+00  9.9546E+00 -5.4394E+00  3.2252E+00  3.3732E+00
             2.9399E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1341.34246283301        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  9.9644E-01  7.0439E-01  1.5511E-01  8.6063E-01  3.2387E-01  9.8271E-01  6.9304E-01  1.6659E+00  1.4501E+00  2.9923E-01
             2.5718E+00
 PARAMETER:  9.6433E-02 -2.5042E-01 -1.7637E+00 -5.0095E-02 -1.0274E+00  8.2562E-02 -2.6666E-01  6.1035E-01  4.7162E-01 -1.1066E+00
             1.0446E+00
 GRADIENT:  -8.4412E+00 -2.7929E+01 -1.3549E+01 -1.9608E+01  3.7264E+01 -1.8038E+00 -1.5403E+00 -2.7558E+00 -1.1832E+00  3.9665E+00
             3.1869E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1344.28060670067        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      443
 NPARAMETR:  9.9937E-01  6.7421E-01  1.6302E-01  8.9893E-01  3.1515E-01  9.8016E-01  7.5350E-01  1.8190E+00  1.4649E+00  2.5668E-01
             2.3014E+00
 PARAMETER:  9.9373E-02 -2.9421E-01 -1.7139E+00 -6.5554E-03 -1.0547E+00  7.9962E-02 -1.8303E-01  6.9827E-01  4.8176E-01 -1.2599E+00
             9.3350E-01
 GRADIENT:   3.0753E-01  5.0225E-01 -2.5458E-01  3.7637E+00 -1.9056E+00 -1.3403E+00  3.2723E-01 -2.6370E+00 -8.6463E-01  2.7815E+00
            -2.3426E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1345.99182329206        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      517
 NPARAMETR:  9.9881E-01  6.9675E-01  1.6433E-01  8.8936E-01  3.2354E-01  9.8325E-01  8.0531E-01  1.8658E+00  1.4609E+00  4.8017E-02
             2.3270E+00
 PARAMETER:  9.8805E-02 -2.6133E-01 -1.7059E+00 -1.7255E-02 -1.0284E+00  8.3106E-02 -1.1653E-01  7.2371E-01  4.7906E-01 -2.9362E+00
             9.4459E-01
 GRADIENT:   1.9406E-01 -1.1301E+00 -7.0871E-01  4.9985E-01  2.6311E+00  4.6916E-01  1.3624E-01 -3.0553E-01  5.8812E-01  8.9133E-02
             2.1281E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1346.15080070914        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      673
 NPARAMETR:  1.0017E+00  7.1068E-01  1.6792E-01  8.8862E-01  3.2936E-01  9.8125E-01  8.0046E-01  1.8975E+00  1.4638E+00  3.4351E-02
             2.3200E+00
 PARAMETER:  1.0169E-01 -2.4153E-01 -1.6843E+00 -1.8081E-02 -1.0106E+00  8.1067E-02 -1.2256E-01  7.4051E-01  4.8104E-01 -3.2711E+00
             9.4157E-01
 GRADIENT:   3.3843E-01  2.3746E-01  9.2796E-02  2.7249E-01  7.9904E-01 -7.7967E-02  3.0583E-01  1.5683E-01 -5.0140E-02  4.2291E-02
            -1.2851E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1346.17150849972        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      849
 NPARAMETR:  1.0016E+00  7.0924E-01  1.6774E-01  8.8862E-01  3.2885E-01  9.8160E-01  7.9722E-01  1.8960E+00  1.4654E+00  1.0000E-02
             2.3207E+00
 PARAMETER:  1.0156E-01 -2.4356E-01 -1.6853E+00 -1.8086E-02 -1.0122E+00  8.1430E-02 -1.2662E-01  7.3974E-01  4.8214E-01 -4.6882E+00
             9.4187E-01
 GRADIENT:  -1.1939E-03  9.6246E-03 -1.7171E-02 -4.4399E-02 -3.1205E-02  2.3670E-03 -1.1254E-02 -1.3056E-03 -1.1473E-02  0.0000E+00
            -1.8954E-02

0ITERATION NO.:   47    OBJECTIVE VALUE:  -1346.17151304774        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      906
 NPARAMETR:  1.0016E+00  7.0922E-01  1.6777E-01  8.8869E-01  3.2885E-01  9.8159E-01  7.9733E-01  1.8960E+00  1.4654E+00  1.0000E-02
             2.3208E+00
 PARAMETER:  1.0156E-01 -2.4359E-01 -1.6852E+00 -1.8004E-02 -1.0121E+00  8.1423E-02 -1.2648E-01  7.3974E-01  4.8213E-01 -4.6871E+00
             9.4191E-01
 GRADIENT:   1.3235E-03 -1.4987E-03 -7.0932E-04 -3.0056E-03  3.2444E-03  3.8361E-04  3.1452E-04  1.0604E-03  8.6122E-04  0.0000E+00
             1.6973E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      906
 NO. OF SIG. DIGITS IN FINAL EST.:  4.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5057E-03 -1.5238E-02  3.3095E-03 -6.3911E-05  1.4979E-04
 SE:             2.9188E-02  1.8357E-02  2.2661E-02  2.6912E-02  3.1980E-04
 N:                     100         100         100         100         100

 P VAL.:         9.5886E-01  4.0648E-01  8.8389E-01  9.9811E-01  6.3950E-01

 ETASHRINKSD(%)  2.2164E+00  3.8502E+01  2.4082E+01  9.8423E+00  9.8929E+01
 ETASHRINKVR(%)  4.3836E+00  6.2180E+01  4.2365E+01  1.8716E+01  9.9989E+01
 EBVSHRINKSD(%)  2.3351E+00  3.6200E+01  2.6098E+01  9.5003E+00  9.8897E+01
 EBVSHRINKVR(%)  4.6157E+00  5.9296E+01  4.5384E+01  1.8098E+01  9.9988E+01
 RELATIVEINF(%)  9.2279E+01  1.5101E+00  2.2274E+01  4.0303E+01  4.1102E-04
 EPSSHRINKSD(%)  4.1352E+01
 EPSSHRINKVR(%)  6.5604E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1346.1715130477398     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -611.02068648400166     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:     9.61
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     7.05
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1346.172       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  7.09E-01  1.68E-01  8.89E-01  3.29E-01  9.82E-01  7.97E-01  1.90E+00  1.47E+00  1.00E-02  2.32E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        5.58E+02
 
 TH 2
+        1.13E+02  1.82E+03
 
 TH 3
+        5.11E+01  1.58E+03  6.32E+03
 
 TH 4
+       -1.62E+02  1.73E+02 -6.34E+02  2.00E+02
 
 TH 5
+       -8.25E+02 -6.68E+03 -6.26E+03 -4.24E+02  2.49E+04
 
 TH 6
+       -2.49E-01 -3.40E+01 -5.65E+00 -7.68E+00  1.21E+02  7.57E-01
 
 TH 7
+       -5.65E+00 -5.65E+01  3.53E+00 -1.31E+01  2.03E+02  1.30E+00  2.31E+00
 
 TH 8
+        8.95E+00  2.88E+01 -2.68E+01  8.73E+00 -1.06E+02 -7.61E-01 -1.46E+00  1.08E+00
 
 TH 9
+       -1.45E+00 -4.53E+01  4.12E+01 -1.77E+01  1.57E+02  1.24E+00  2.25E+00 -1.53E+00  2.44E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        2.08E+00 -7.01E+00  2.95E+00 -2.95E+00  2.29E+01  1.84E-01  3.05E-01 -1.74E-01  3.31E-01  0.00E+00  5.58E-02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.10E+03
 
 TH 2
+       -1.14E+00  1.49E+03
 
 TH 3
+       -1.82E+02  1.58E+03  6.11E+03
 
 TH 4
+       -3.37E+01  2.16E+02 -4.08E+02  5.42E+02
 
 TH 5
+        1.08E+02 -4.27E+03 -5.63E+03 -1.01E+02  1.62E+04
 
 TH 6
+        7.66E-02 -1.38E+01  4.91E+00 -5.65E+00  7.97E+01  1.92E+02
 
 TH 7
+       -1.10E+00 -3.36E+01  1.93E+00 -9.13E-01  1.15E+02  3.97E+00  5.43E+01
 
 TH 8
+        2.29E+00  1.00E+01 -3.18E+01  1.00E+00 -4.88E+01  3.21E+00  6.18E+00  1.89E+01
 
 TH 9
+        6.95E+00 -1.70E+01  3.75E+01  3.47E+00  8.26E+01  4.11E+00  1.75E+01 -3.40E+00  5.57E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.62E+01 -2.25E+01 -8.04E+00 -4.89E+00  4.23E+00 -1.96E+00  6.49E+00  8.65E+00  6.83E+00  0.00E+00  3.81E+01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.10E+03
 
 TH 2
+       -2.36E+02  1.43E+03
 
 TH 3
+       -7.09E+02  1.51E+03  6.02E+03
 
 TH 4
+       -3.47E+02  5.65E+02  2.04E+02  5.37E+02
 
 TH 5
+        2.58E+02 -3.40E+03 -5.80E+03 -7.45E+02  1.09E+04
 
 TH 6
+        6.41E+01 -4.73E+01 -2.63E+02 -3.26E+01  1.70E+02  1.07E+02
 
 TH 7
+        1.34E+00 -3.24E+00  1.74E+02 -2.92E+01 -3.16E+01 -7.73E+00  4.98E+01
 
 TH 8
+        8.07E+01 -2.51E+01 -2.21E+02 -3.64E+01  5.00E+01  2.80E+01  1.65E+00  3.22E+01
 
 TH 9
+        8.65E+01 -1.21E+02  1.71E+02 -1.12E+02 -1.16E+01  1.34E+01  3.20E+01  1.68E+01  1.14E+02
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        1.12E+02 -1.58E+02  9.72E+01 -1.62E+02  3.40E+00  1.71E+01  2.58E+01  2.19E+01  1.01E+02  0.00E+00  1.18E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       16.743
Stop Time:
Sat Sep 18 09:46:58 CDT 2021
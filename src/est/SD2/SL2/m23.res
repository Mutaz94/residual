Fri Oct  1 12:12:21 CDT 2021
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
$DATA ../../../../data/SD2/SL2/dat23.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m23.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2119.53081872894        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3104E+02  3.8615E+01 -2.8542E+01  1.2047E+02  2.2044E+00  6.1766E+01  8.3166E+00  1.4211E+01  3.4128E+01  8.2866E+00
            -7.0590E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2128.76504575313        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0159E+00  1.0775E+00  1.1441E+00  9.4676E-01  1.0985E+00  9.7416E-01  9.7516E-01  9.1440E-01  8.7643E-01  9.7664E-01
             1.0875E+00
 PARAMETER:  1.1581E-01  1.7466E-01  2.3462E-01  4.5291E-02  1.9397E-01  7.3817E-02  7.4847E-02  1.0509E-02 -3.1903E-02  7.6365E-02
             1.8393E-01
 GRADIENT:  -5.9885E+00  9.4926E-01 -1.9358E-01 -2.0058E+00 -3.9629E+00 -2.6082E+00 -1.6629E+00  5.3246E+00 -4.6880E+00 -1.3244E+01
            -4.1993E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2131.74298556628        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      369
 NPARAMETR:  1.0163E+00  1.0423E+00  1.3738E+00  9.7861E-01  1.2041E+00  9.6187E-01  8.5652E-01  6.5503E-01  9.4922E-01  1.2740E+00
             1.0867E+00
 PARAMETER:  1.1616E-01  1.4142E-01  4.1756E-01  7.8374E-02  2.8571E-01  6.1123E-02 -5.4883E-02 -3.2308E-01  4.7885E-02  3.4219E-01
             1.8319E-01
 GRADIENT:  -1.8822E+00  2.9939E+00 -1.7759E+00  5.8870E+00  1.1760E+00 -7.1081E+00  2.0193E+00  1.6078E+00  7.6157E-01  5.6444E+00
            -6.4513E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2132.70447064262        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  1.0188E+00  1.2186E+00  1.1781E+00  8.5554E-01  1.2114E+00  9.8694E-01  7.0622E-01  2.8146E-01  1.0722E+00  1.2319E+00
             1.0897E+00
 PARAMETER:  1.1863E-01  2.9770E-01  2.6389E-01 -5.6021E-02  2.9182E-01  8.6850E-02 -2.4782E-01 -1.1678E+00  1.6970E-01  3.0860E-01
             1.8594E-01
 GRADIENT:   1.6920E-01 -1.5729E+00 -5.9423E-01 -3.1783E-01  3.5084E-01  2.4482E+00 -7.1564E-01  2.9128E-01 -3.7142E-01 -3.9185E-02
             6.8960E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2132.85777594002        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      730             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0210E+00  1.3200E+00  1.0905E+00  7.8984E-01  1.2302E+00  9.8281E-01  7.2090E-01  4.2210E-02  1.1144E+00  1.2229E+00
             1.0882E+00
 PARAMETER:  1.2077E-01  3.7766E-01  1.8667E-01 -1.3592E-01  3.0721E-01  8.2663E-02 -2.2726E-01 -3.0651E+00  2.0827E-01  3.0120E-01
             1.8456E-01
 GRADIENT:   4.9344E+02  2.4674E+02  9.4894E-01  6.2182E+01  1.4767E+01  4.6267E+01  6.4685E+00  1.0177E-02  9.9315E+00  1.8564E+00
             1.5454E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2132.86090244619        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      887
 NPARAMETR:  1.0198E+00  1.3203E+00  1.0911E+00  7.9007E-01  1.2302E+00  9.8146E-01  7.2221E-01  3.1867E-02  1.1182E+00  1.2252E+00
             1.0885E+00
 PARAMETER:  1.1960E-01  3.7785E-01  1.8720E-01 -1.3563E-01  3.0715E-01  8.1283E-02 -2.2544E-01 -3.3462E+00  2.1170E-01  3.0308E-01
             1.8478E-01
 GRADIENT:   6.7258E-01 -3.2686E-02 -5.1546E-02  1.8065E-01 -1.7565E-01 -6.0628E-02  3.3331E-02  4.2913E-03  4.9231E-02  9.0398E-03
             9.7547E-03

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2132.86113636251        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  1.0194E+00  1.3206E+00  1.0922E+00  7.8980E-01  1.2309E+00  9.8156E-01  7.2075E-01  2.1158E-02  1.1190E+00  1.2261E+00
             1.0885E+00
 PARAMETER:  1.1919E-01  3.7809E-01  1.8821E-01 -1.3598E-01  3.0777E-01  8.1390E-02 -2.2746E-01 -3.7557E+00  2.1241E-01  3.0387E-01
             1.8480E-01
 GRADIENT:  -2.5807E-01 -1.1107E-01 -1.8834E-02  8.3315E-02 -1.0412E-01 -1.8202E-02  4.6140E-03  1.8843E-03 -1.8789E-03  4.7605E-03
             9.1517E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2132.86297690677        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1238
 NPARAMETR:  1.0211E+00  1.3201E+00  1.0928E+00  7.8943E-01  1.2314E+00  9.8199E-01  7.2031E-01  1.0000E-02  1.1198E+00  1.2267E+00
             1.0885E+00
 PARAMETER:  1.2089E-01  3.7772E-01  1.8870E-01 -1.3644E-01  3.0818E-01  8.1824E-02 -2.2808E-01 -5.1038E+00  2.1316E-01  3.0437E-01
             1.8481E-01
 GRADIENT:   3.7197E+00 -1.3761E+00 -9.6430E-02 -8.4680E-01  2.1499E-01  1.5807E-01  5.3094E-02  0.0000E+00  9.2031E-02  2.7729E-02
             2.6323E-02

0ITERATION NO.:   36    OBJECTIVE VALUE:  -2132.86297690677        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1260
 NPARAMETR:  1.0211E+00  1.3201E+00  1.0928E+00  7.8943E-01  1.2314E+00  9.8199E-01  7.2031E-01  1.0000E-02  1.1198E+00  1.2267E+00
             1.0885E+00
 PARAMETER:  1.2089E-01  3.7772E-01  1.8870E-01 -1.3644E-01  3.0818E-01  8.1824E-02 -2.2808E-01 -5.1038E+00  2.1316E-01  3.0437E-01
             1.8481E-01
 GRADIENT:   3.7197E+00 -1.3761E+00 -9.6430E-02 -8.4680E-01  2.1499E-01  1.5807E-01  5.3094E-02  0.0000E+00  9.2031E-02  2.7729E-02
             2.6323E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1260
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.0803E-04 -2.5775E-02 -2.3097E-04  1.2890E-02 -3.2146E-02
 SE:             2.9857E-02  1.7228E-02  1.0086E-04  2.4930E-02  2.4148E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9444E-01  1.3462E-01  2.2019E-02  6.0512E-01  1.8311E-01

 ETASHRINKSD(%)  1.0000E-10  4.2284E+01  9.9662E+01  1.6483E+01  1.9103E+01
 ETASHRINKVR(%)  1.0000E-10  6.6689E+01  9.9999E+01  3.0249E+01  3.4556E+01
 EBVSHRINKSD(%)  3.8815E-01  4.0979E+01  9.9671E+01  1.7480E+01  1.5912E+01
 EBVSHRINKVR(%)  7.7480E-01  6.5165E+01  9.9999E+01  3.1905E+01  2.9293E+01
 RELATIVEINF(%)  9.8842E+01  1.3063E+00  1.9940E-04  2.7933E+00  1.6743E+01
 EPSSHRINKSD(%)  3.1611E+01
 EPSSHRINKVR(%)  5.3230E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2132.8629769067675     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1213.9244437020948     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.54
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2132.863       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.32E+00  1.09E+00  7.89E-01  1.23E+00  9.82E-01  7.20E-01  1.00E-02  1.12E+00  1.23E+00  1.09E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.584
Stop Time:
Fri Oct  1 12:12:42 CDT 2021
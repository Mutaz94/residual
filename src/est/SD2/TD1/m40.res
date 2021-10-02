Fri Oct  1 14:11:17 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat40.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m40.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2122.12489305000        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5773E+02  2.9172E+01 -4.8010E+01  1.2443E+02  4.6366E+01  9.0141E+01 -2.2905E+00  1.0114E+01 -2.5937E+00  1.6005E+01
            -3.9929E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2128.64565552985        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8796E-01  1.0678E+00  1.1331E+00  9.5642E-01  1.0548E+00  7.9550E-01  1.0274E+00  9.5231E-01  1.0606E+00  9.1392E-01
             1.1225E+00
 PARAMETER:  8.7888E-02  1.6560E-01  2.2499E-01  5.5440E-02  1.5336E-01 -1.2879E-01  1.2705E-01  5.1135E-02  1.5886E-01  9.9855E-03
             2.1553E-01
 GRADIENT:  -5.4962E+01  1.1993E+00 -5.0613E+00  1.5105E+01  1.0957E+01 -3.4161E+01 -1.1159E+00  1.5016E+00 -1.0207E+00 -3.7291E+00
             4.7454E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2130.17016279148        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      355
 NPARAMETR:  9.8483E-01  1.2473E+00  1.0995E+00  8.5017E-01  1.1225E+00  8.0764E-01  9.8273E-01  8.4963E-01  1.1482E+00  9.6111E-01
             1.0901E+00
 PARAMETER:  8.4716E-02  3.2095E-01  1.9486E-01 -6.2314E-02  2.1556E-01 -1.1364E-01  8.2577E-02 -6.2951E-02  2.3816E-01  6.0330E-02
             1.8625E-01
 GRADIENT:  -6.6500E+01  2.1981E+01  9.5818E+00  1.7837E+01  6.4833E+00 -2.8716E+01  3.0431E+00 -1.6139E+00 -2.4417E+00 -6.1373E+00
             2.4005E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2134.23011942033        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  1.0075E+00  1.3734E+00  7.8625E-01  7.4739E-01  1.0547E+00  8.6913E-01  9.2189E-01  4.0583E-01  1.2189E+00  9.4602E-01
             1.0471E+00
 PARAMETER:  1.0751E-01  4.1728E-01 -1.4048E-01 -1.9116E-01  1.5325E-01 -4.0265E-02  1.8674E-02 -8.0183E-01  2.9791E-01  4.4506E-02
             1.4598E-01
 GRADIENT:   5.8334E+00  6.7883E+00 -3.9202E-01  8.4960E+00 -8.4960E+00  2.3533E+00 -2.8095E-02  5.7298E-01 -2.3188E+00  4.3673E+00
            -2.2929E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2135.19211089261        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  1.0058E+00  1.6910E+00  6.0073E-01  5.3884E-01  1.1629E+00  8.6234E-01  7.8713E-01  1.5701E-01  1.5583E+00  9.4787E-01
             1.0531E+00
 PARAMETER:  1.0575E-01  6.2531E-01 -4.0961E-01 -5.1834E-01  2.5089E-01 -4.8110E-02 -1.3936E-01 -1.7515E+00  5.4357E-01  4.6464E-02
             1.5174E-01
 GRADIENT:  -3.5968E+00  3.1176E-01 -3.4660E+00  8.4619E+00  7.9914E+00 -1.4639E+00 -2.6040E+00  8.6062E-02  2.4947E-01 -2.2990E+00
             1.8311E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2135.33403081882        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      890             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0076E+00  1.7048E+00  5.9924E-01  5.2024E-01  1.1694E+00  8.6581E-01  7.9271E-01  2.9257E-02  1.5833E+00  9.6675E-01
             1.0503E+00
 PARAMETER:  1.0756E-01  6.3345E-01 -4.1209E-01 -5.5347E-01  2.5648E-01 -4.4092E-02 -1.3229E-01 -3.4316E+00  5.5951E-01  6.6187E-02
             1.4903E-01
 GRADIENT:   4.6277E+02  7.2716E+02  2.6235E+00  1.1914E+02  1.2386E+01  3.6770E+01  8.8009E+00  4.3280E-03  2.5425E+01  5.4131E-01
             1.5180E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2135.34082309427        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1073             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0076E+00  1.7051E+00  6.0204E-01  5.2199E-01  1.1704E+00  8.6577E-01  7.9203E-01  1.0000E-02  1.5846E+00  9.6797E-01
             1.0502E+00
 PARAMETER:  1.0752E-01  6.3361E-01 -4.0743E-01 -5.5011E-01  2.5731E-01 -4.4139E-02 -1.3316E-01 -4.5322E+00  5.6035E-01  6.7449E-02
             1.4893E-01
 GRADIENT:   4.6257E+02  7.2968E+02  2.7000E+00  1.2026E+02  1.2714E+01  3.6762E+01  8.7501E+00  1.6843E-04  2.5768E+01  3.9961E-01
             1.3270E+00

0ITERATION NO.:   34    OBJECTIVE VALUE:  -2135.34277642875        NO. OF FUNC. EVALS.: 131
 CUMULATIVE NO. OF FUNC. EVALS.:     1204
 NPARAMETR:  1.0075E+00  1.7042E+00  6.0109E-01  5.2245E-01  1.1713E+00  8.6576E-01  7.9194E-01  1.0000E-02  1.5857E+00  9.6894E-01
             1.0503E+00
 PARAMETER:  1.0752E-01  6.3309E-01 -4.0902E-01 -5.4923E-01  2.5814E-01 -4.4144E-02 -1.3327E-01 -4.5447E+00  5.6101E-01  6.8449E-02
             1.4904E-01
 GRADIENT:   1.0118E-02  3.8005E-01 -2.6030E-01 -1.6170E-01  2.7279E-01  1.8576E-03  1.9255E-02  1.1110E-05  1.2361E-01 -2.9674E-02
             5.2528E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1204
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.8751E-04 -3.2515E-02 -2.4050E-04  2.8532E-02 -3.5837E-02
 SE:             2.9825E-02  2.3145E-02  9.6932E-05  2.3319E-02  2.2603E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8963E-01  1.6007E-01  1.3096E-02  2.2112E-01  1.1286E-01

 ETASHRINKSD(%)  8.0852E-02  2.2460E+01  9.9675E+01  2.1880E+01  2.4276E+01
 ETASHRINKVR(%)  1.6164E-01  3.9875E+01  9.9999E+01  3.8972E+01  4.2658E+01
 EBVSHRINKSD(%)  4.7598E-01  2.1862E+01  9.9707E+01  2.3398E+01  2.2701E+01
 EBVSHRINKVR(%)  9.4969E-01  3.8944E+01  9.9999E+01  4.1322E+01  4.0249E+01
 RELATIVEINF(%)  9.8956E+01  5.5698E+00  1.6710E-04  5.6224E+00  1.5491E+01
 EPSSHRINKSD(%)  3.3265E+01
 EPSSHRINKVR(%)  5.5465E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2135.3427764287540     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1216.4042432240813     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.17
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2135.343       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.70E+00  6.01E-01  5.22E-01  1.17E+00  8.66E-01  7.92E-01  1.00E-02  1.59E+00  9.69E-01  1.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.216
Stop Time:
Fri Oct  1 14:11:38 CDT 2021

Fri Oct  1 09:57:38 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat40.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1406.53984460996        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6293E+02  8.7176E+01  1.0745E+01  1.5133E+02  1.2221E+02  9.1288E+01 -3.8585E+01 -5.7857E+00 -1.9121E+01 -8.9975E+01
            -1.2804E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1757.17321165583        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.1286E+00  9.5893E-01  1.0212E+00  1.0351E+00  8.7223E-01  9.8899E-01  1.1387E+00  8.6965E-01  1.0892E+00  1.3614E+00
             2.3155E+00
 PARAMETER:  2.2097E-01  5.8063E-02  1.2098E-01  1.3451E-01 -3.6699E-02  8.8926E-02  2.2985E-01 -3.9666E-02  1.8542E-01  4.0849E-01
             9.3961E-01
 GRADIENT:   4.3481E+02  4.0360E+01  1.0795E+01  4.5976E+01 -5.7179E+01  3.2468E+01  4.2506E+00  7.2964E+00  1.5856E+01  2.5115E+01
             1.1043E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1780.27104564125        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0382E+00  1.0249E+00  7.7474E-01  9.5529E-01  8.5492E-01  9.2695E-01  1.0602E+00  5.4581E-02  1.1275E+00  1.1531E+00
             2.2312E+00
 PARAMETER:  1.3745E-01  1.2455E-01 -1.5523E-01  5.4258E-02 -5.6752E-02  2.4149E-02  1.5847E-01 -2.8081E+00  2.2004E-01  2.4247E-01
             9.0254E-01
 GRADIENT:   1.9005E+02  1.4417E+01 -1.2838E+01  2.2608E+01  9.0173E+00  3.7595E+01  4.3103E-01  3.9196E-02  1.7788E+01  5.6056E+00
             9.0517E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1790.74247014131        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      271
 NPARAMETR:  9.9550E-01  7.9907E-01  9.2410E-01  1.0780E+00  8.2116E-01  8.3791E-01  1.3852E+00  1.0084E-01  9.4998E-01  1.1372E+00
             2.0612E+00
 PARAMETER:  9.5494E-02 -1.2431E-01  2.1061E-02  1.7509E-01 -9.7038E-02 -7.6844E-02  4.2584E-01 -2.1942E+00  4.8685E-02  2.2859E-01
             8.2331E-01
 GRADIENT:  -3.7356E+01  5.5225E+00  1.0652E+01 -2.4554E+01 -1.9452E+01 -2.7636E+00 -2.6434E+00  1.1258E-01  7.1289E-01 -4.6849E+00
             2.2802E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1795.53968625305        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      446
 NPARAMETR:  9.9447E-01  4.4130E-01  1.0922E+00  1.3338E+00  7.9558E-01  8.3826E-01  2.0267E+00  7.1899E-02  8.7376E-01  1.2043E+00
             1.9772E+00
 PARAMETER:  9.4454E-02 -7.1803E-01  1.8821E-01  3.8805E-01 -1.2868E-01 -7.6426E-02  8.0641E-01 -2.5325E+00 -3.4955E-02  2.8589E-01
             7.8170E-01
 GRADIENT:  -2.1007E+01  1.2020E+01 -3.3789E+00  3.8532E+01 -4.3557E-01 -1.3487E+00 -5.4009E-02  5.4680E-02 -8.5828E-01 -9.9241E-01
            -1.2687E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1798.68899044637        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      622
 NPARAMETR:  9.9853E-01  1.4721E-01  1.2238E+00  1.4959E+00  7.6355E-01  8.3823E-01  3.0139E+00  1.0000E-02  8.3594E-01  1.2233E+00
             2.0082E+00
 PARAMETER:  9.8531E-02 -1.8159E+00  3.0195E-01  5.0276E-01 -1.6977E-01 -7.6463E-02  1.2032E+00 -5.6658E+00 -7.9198E-02  3.0159E-01
             7.9724E-01
 GRADIENT:   8.3424E+00  2.2714E+00  5.5105E+00  8.3394E+00 -9.4006E+00  4.3996E-01 -1.1025E-01  0.0000E+00 -2.2787E-01 -1.0686E+00
            -3.9232E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1799.51316808014        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      797
 NPARAMETR:  9.9201E-01  3.2403E-02  1.2789E+00  1.5678E+00  7.6471E-01  8.3665E-01  4.6250E+00  1.0000E-02  8.1584E-01  1.2478E+00
             2.0078E+00
 PARAMETER:  9.1981E-02 -3.3295E+00  3.4601E-01  5.4967E-01 -1.6826E-01 -7.8346E-02  1.6315E+00 -1.0977E+01 -1.0354E-01  3.2136E-01
             7.9704E-01
 GRADIENT:  -4.3482E+00  4.4079E-01 -1.7386E-01  1.0828E+01 -7.9908E-01  2.2525E-01 -4.0319E-02  0.0000E+00 -6.6029E-01  1.2124E-01
             3.3368E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1799.70588336780        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:      961
 NPARAMETR:  9.9305E-01  1.0000E-02  1.2754E+00  1.5740E+00  7.5859E-01  8.3551E-01  6.3647E+00  1.0000E-02  8.1314E-01  1.2438E+00
             2.0068E+00
 PARAMETER:  9.3026E-02 -4.5584E+00  3.4326E-01  5.5359E-01 -1.7630E-01 -7.9711E-02  1.9508E+00 -1.5508E+01 -1.0685E-01  3.1817E-01
             7.9657E-01
 GRADIENT:   8.6414E-01  0.0000E+00  3.6259E-02 -1.3936E+00  9.6976E-02 -6.5850E-02 -7.4728E-03  0.0000E+00  1.7395E-01 -4.6198E-02
             1.8317E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      961
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.1033E-04 -1.5222E-03 -4.8380E-05 -8.7248E-03 -2.6738E-02
 SE:             2.9406E-02  9.5750E-04  1.0840E-04  2.8435E-02  2.3262E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8073E-01  1.1188E-01  6.5539E-01  7.5897E-01  2.5039E-01

 ETASHRINKSD(%)  1.4864E+00  9.6792E+01  9.9637E+01  4.7405E+00  2.2068E+01
 ETASHRINKVR(%)  2.9507E+00  9.9897E+01  9.9999E+01  9.2562E+00  3.9267E+01
 EBVSHRINKSD(%)  1.6966E+00  9.6913E+01  9.9584E+01  4.1830E+00  1.9928E+01
 EBVSHRINKVR(%)  3.3645E+00  9.9905E+01  9.9998E+01  8.1909E+00  3.5885E+01
 RELATIVEINF(%)  8.9105E+01  3.4259E-03  2.0367E-04  3.7694E+00  6.8639E+00
 EPSSHRINKSD(%)  2.8173E+01
 EPSSHRINKVR(%)  4.8409E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1799.7058833677952     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -880.76735016312250     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.89
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1799.706       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  1.00E-02  1.28E+00  1.57E+00  7.59E-01  8.36E-01  6.36E+00  1.00E-02  8.13E-01  1.24E+00  2.01E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.950
Stop Time:
Fri Oct  1 09:57:54 CDT 2021
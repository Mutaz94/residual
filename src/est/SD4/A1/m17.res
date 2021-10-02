Fri Oct  1 23:54:18 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat17.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m17.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1384.89335082454        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5366E+02 -2.0009E+00  4.1162E+01 -1.1104E+01  7.1648E+01  4.1045E+01 -3.3119E+01 -2.6257E+01 -3.8397E+01 -5.7029E+01
            -4.3867E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1458.92454817993        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0744E+00  1.0471E+00  7.8177E-01  1.0707E+00  8.6359E-01  1.0586E+00  1.2779E+00  1.1000E+00  1.0890E+00  1.2340E+00
             2.7157E+00
 PARAMETER:  1.7175E-01  1.4605E-01 -1.4620E-01  1.6833E-01 -4.6653E-02  1.5692E-01  3.4522E-01  1.9534E-01  1.8529E-01  3.1023E-01
             1.0990E+00
 GRADIENT:   1.2651E+02  1.4951E+01 -2.0895E+01  4.7237E+01 -1.6279E+01  3.7381E+01  1.0473E+01  1.1348E+01  2.4563E+01  2.8801E+01
             1.6441E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1478.11083942977        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      199
 NPARAMETR:  1.0518E+00  7.5258E-01  7.0636E-01  1.2342E+00  6.6503E-01  1.0141E+00  2.0957E+00  8.7178E-01  9.2694E-01  8.9651E-01
             2.3924E+00
 PARAMETER:  1.5046E-01 -1.8425E-01 -2.4764E-01  3.1039E-01 -3.0792E-01  1.1396E-01  8.3987E-01 -3.7220E-02  2.4131E-02 -9.2477E-03
             9.7231E-01
 GRADIENT:  -4.5504E+00  3.8620E+01  1.7744E+00  3.3786E+01 -4.1118E+01  1.4927E+01  2.3341E+01  1.0634E+01  2.2938E+01  1.0263E+01
             1.2271E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1507.39663487744        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      378
 NPARAMETR:  1.0301E+00  6.5320E-01  6.3952E-01  1.2322E+00  6.3009E-01  9.5895E-01  1.9162E+00  4.8640E-01  8.5493E-01  8.9783E-01
             1.7225E+00
 PARAMETER:  1.2962E-01 -3.2588E-01 -3.4704E-01  3.0880E-01 -3.6189E-01  5.8085E-02  7.5033E-01 -6.2073E-01 -5.6741E-02 -7.7748E-03
             6.4375E-01
 GRADIENT:  -3.5612E+01  9.6253E+00 -6.2829E+00  2.4604E+01  4.2338E+00 -1.0023E+01  1.1917E+00  1.0817E+00 -2.2619E-02 -8.1419E-01
             2.5513E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1508.40260706310        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      554
 NPARAMETR:  1.0428E+00  5.1648E-01  6.3757E-01  1.2849E+00  5.8828E-01  9.8062E-01  2.1888E+00  4.5635E-01  8.3292E-01  8.9784E-01
             1.7141E+00
 PARAMETER:  1.4188E-01 -5.6071E-01 -3.5009E-01  3.5069E-01 -4.3055E-01  8.0434E-02  8.8335E-01 -6.8449E-01 -8.2821E-02 -7.7617E-03
             6.3890E-01
 GRADIENT:  -1.7828E+00  1.2515E-01  1.6587E+00 -3.0481E+00 -4.7746E-01  2.8798E-01 -1.0719E-01  3.0824E-01  2.5571E-01 -1.2074E+00
             1.2512E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1508.45540110071        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      729
 NPARAMETR:  1.0432E+00  4.7063E-01  6.2572E-01  1.3074E+00  5.6879E-01  9.7903E-01  2.3051E+00  4.1726E-01  8.2643E-01  9.1198E-01
             1.7056E+00
 PARAMETER:  1.4231E-01 -6.5368E-01 -3.6884E-01  3.6806E-01 -4.6424E-01  7.8808E-02  9.3514E-01 -7.7403E-01 -9.0644E-02  7.8659E-03
             6.3392E-01
 GRADIENT:   3.6817E-01  6.6337E-02 -2.0790E-01  6.2373E-01  2.5400E-02 -3.9017E-02 -6.4022E-02  1.5585E-01 -1.9691E-01  1.8304E-01
            -2.1179E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1508.51455220849        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      909
 NPARAMETR:  1.0449E+00  5.1619E-01  5.8069E-01  1.2732E+00  5.5139E-01  9.8072E-01  2.1596E+00  3.0025E-01  8.3344E-01  8.8256E-01
             1.7056E+00
 PARAMETER:  1.4389E-01 -5.6128E-01 -4.4353E-01  3.4156E-01 -4.9532E-01  8.0534E-02  8.6993E-01 -1.1031E+00 -8.2188E-02 -2.4924E-02
             6.3390E-01
 GRADIENT:   2.2069E-01  1.1757E+00  1.5404E+00  1.3290E+00 -2.7458E+00 -8.8527E-02  1.1831E-01  1.8784E-02 -3.1889E-01  3.2138E-01
            -1.7126E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1508.51907841677        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1086
 NPARAMETR:  1.0451E+00  5.1183E-01  5.7972E-01  1.2733E+00  5.5083E-01  9.8091E-01  2.1708E+00  2.9962E-01  8.3384E-01  8.8051E-01
             1.7060E+00
 PARAMETER:  1.4413E-01 -5.6976E-01 -4.4522E-01  3.4157E-01 -4.9634E-01  8.0721E-02  8.7511E-01 -1.1052E+00 -8.1716E-02 -2.7249E-02
             6.3416E-01
 GRADIENT:   9.4864E-01 -1.7687E-01 -2.2512E-01 -1.0210E+00  3.0005E-01  2.5242E-02  1.7404E-01  2.1695E-02  7.0950E-02  1.5044E-01
             7.1696E-02

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1508.51915399668        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1143
 NPARAMETR:  1.0450E+00  5.1201E-01  5.7978E-01  1.2735E+00  5.5079E-01  9.8090E-01  2.1699E+00  2.9633E-01  8.3375E-01  8.7983E-01
             1.7059E+00
 PARAMETER:  1.4403E-01 -5.6941E-01 -4.4511E-01  3.4175E-01 -4.9641E-01  8.0714E-02  8.7467E-01 -1.1163E+00 -8.1826E-02 -2.8031E-02
             6.3410E-01
 GRADIENT:   7.0636E-01 -2.9301E-02  1.5777E-01 -5.1097E-01 -5.0121E-02  1.8500E-02  1.2722E-01 -3.4240E-03  3.3287E-03 -6.4344E-02
            -6.7293E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1143
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.2862E-04  2.8453E-02 -1.2475E-02 -2.4481E-02  4.7670E-03
 SE:             2.9562E-02  1.9623E-02  5.7819E-03  2.4698E-02  2.1057E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7494E-01  1.4706E-01  3.0959E-02  3.2157E-01  8.2090E-01

 ETASHRINKSD(%)  9.6255E-01  3.4262E+01  8.0630E+01  1.7260E+01  2.9457E+01
 ETASHRINKVR(%)  1.9158E+00  5.6785E+01  9.6248E+01  3.1541E+01  5.0237E+01
 EBVSHRINKSD(%)  1.2670E+00  3.6915E+01  8.1249E+01  1.6027E+01  2.6196E+01
 EBVSHRINKVR(%)  2.5180E+00  6.0202E+01  9.6484E+01  2.9485E+01  4.5530E+01
 RELATIVEINF(%)  9.6776E+01  7.1411E+00  2.6007E-01  1.8337E+01  3.2458E+00
 EPSSHRINKSD(%)  4.0352E+01
 EPSSHRINKVR(%)  6.4421E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1508.5191539966816     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -773.36832743294337     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.65
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1508.519       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  5.12E-01  5.80E-01  1.27E+00  5.51E-01  9.81E-01  2.17E+00  2.96E-01  8.34E-01  8.80E-01  1.71E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.680
Stop Time:
Fri Oct  1 23:54:34 CDT 2021

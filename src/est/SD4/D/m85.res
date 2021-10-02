Sat Oct  2 05:57:00 CDT 2021
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
$DATA ../../../../data/SD4/D/dat85.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m85.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   20755.6161067013        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   8.1346E+02  4.9060E+02 -4.6587E+01  3.8460E+02  1.4094E+02 -2.4907E+03 -1.0584E+03 -2.9504E+01 -1.7510E+03 -5.4965E+02
            -3.8372E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -496.609557488144        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1930E+00  1.1562E+00  8.9988E-01  1.5409E+00  1.5218E+00  1.4412E+00  1.0343E+00  9.4610E-01  8.2718E-01  9.5383E-01
             1.5739E+01
 PARAMETER:  2.7647E-01  2.4518E-01 -5.4900E-03  5.3238E-01  5.1991E-01  4.6546E-01  1.3371E-01  4.4595E-02 -8.9736E-02  5.2732E-02
             2.8561E+00
 GRADIENT:  -6.2945E+01  3.1803E+01 -8.6864E+00  6.6711E+01 -4.6498E+00 -4.4326E+00  1.8746E+00  3.5645E+00  7.7005E+00  7.2303E-01
             5.9211E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -510.032379447224        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.2167E+00  8.7238E-01  1.1196E+00  1.4562E+00  1.8902E+00  1.3255E+00  1.0424E+00  3.0940E-01  4.4691E-01  3.0836E+00
             1.5767E+01
 PARAMETER:  2.9617E-01 -3.6526E-02  2.1293E-01  4.7581E-01  7.3670E-01  3.8178E-01  1.4148E-01 -1.0731E+00 -7.0541E-01  1.2261E+00
             2.8579E+00
 GRADIENT:   2.0648E+00  6.1162E+00  7.7233E-01  6.9697E-01 -8.2332E+00  3.1414E+00  1.9117E+00  2.0718E-01  3.4435E+00  2.3680E+00
             7.1546E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -519.854264557462        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  1.0735E+00  5.6994E-01  9.7681E-01  1.4928E+00  5.4460E+00  1.4208E+00  1.6051E+00  4.1569E-02  4.1596E-01  1.0161E+01
             1.3875E+01
 PARAMETER:  1.7097E-01 -4.6223E-01  7.6537E-02  5.0064E-01  1.7949E+00  4.5119E-01  5.7317E-01 -3.0804E+00 -7.7716E-01  2.4185E+00
             2.7301E+00
 GRADIENT:  -3.3041E+01  1.0358E+01  4.3304E+00  1.5778E+01 -5.8545E-01  1.5448E+01  2.2611E+00  1.6295E-03  4.5227E+00  5.0427E+00
             1.6919E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -533.684161046878        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      303
 NPARAMETR:  1.0089E+00  3.4972E-02  5.3132E-01  1.4970E+00  4.2050E+00  1.2208E+00  1.7288E+00  1.0000E-02  1.8287E-02  2.2741E+00
             1.3178E+01
 PARAMETER:  1.0885E-01 -3.2532E+00 -5.3238E-01  5.0347E-01  1.5363E+00  2.9947E-01  6.4745E-01 -6.0209E+00 -3.9015E+00  9.2160E-01
             2.6786E+00
 GRADIENT:   1.1370E+01  9.8027E-01  6.3795E+00  5.7943E+01 -5.9603E+00 -4.5218E+01  7.9441E-03  0.0000E+00  1.2022E-02 -8.3043E-01
            -5.7929E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -566.557466480652        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      375
 NPARAMETR:  7.4619E-01  1.0000E-02  8.6236E-02  7.6042E-01  4.3473E+00  1.7197E+00  7.8522E-02  1.0000E-02  1.0000E-02  2.1734E-01
             1.2595E+01
 PARAMETER: -1.9277E-01 -6.5014E+00 -2.3507E+00 -1.7389E-01  1.5696E+00  6.4216E-01 -2.4444E+00 -1.2468E+01 -8.1582E+00 -1.4263E+00
             2.6333E+00
 GRADIENT:   5.6491E+01  0.0000E+00 -5.7460E+00  3.4478E+01 -2.5989E+00  3.5069E+01  6.1692E-05  0.0000E+00  0.0000E+00  5.9325E-01
            -3.7808E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -578.582767793737        NO. OF FUNC. EVALS.: 142
 CUMULATIVE NO. OF FUNC. EVALS.:      517
 NPARAMETR:  5.4229E-01  1.0000E-02  3.9135E-02  4.2406E-01  5.9195E+00  1.6311E+00  1.0000E-02  1.0000E-02  1.0000E-02  7.9031E-02
             1.3444E+01
 PARAMETER: -5.1196E-01 -7.9696E+00 -3.1407E+00 -7.5787E-01  1.8783E+00  5.8925E-01 -4.9809E+00 -1.4211E+01 -1.0765E+01 -2.4379E+00
             2.6985E+00
 GRADIENT:   4.2486E+00  0.0000E+00  2.4571E+01 -3.3165E+01 -2.4693E+00  3.6472E+01  0.0000E+00  0.0000E+00  0.0000E+00  1.8400E-02
             2.6973E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -582.798223170755        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      692
 NPARAMETR:  4.5664E-01  1.0000E-02  2.6047E-02  3.1329E-01  8.0877E+00  1.4171E+00  1.0000E-02  1.0000E-02  1.0000E-02  4.5520E-02
             1.2940E+01
 PARAMETER: -6.8387E-01 -8.9850E+00 -3.5478E+00 -1.0606E+00  2.1903E+00  4.4859E-01 -5.6702E+00 -1.5434E+01 -1.1986E+01 -2.9896E+00
             2.6603E+00
 GRADIENT:  -7.0347E-01  0.0000E+00 -4.6612E-01  2.0030E+00  7.0800E-01 -6.1749E-01  0.0000E+00  0.0000E+00  0.0000E+00  1.8839E-04
            -4.5174E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -583.005512395469        NO. OF FUNC. EVALS.: 148
 CUMULATIVE NO. OF FUNC. EVALS.:      840
 NPARAMETR:  4.3695E-01  1.0000E-02  2.3550E-02  2.9110E-01  7.7125E+00  1.4060E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.7492E-02
             1.2828E+01
 PARAMETER: -7.2794E-01 -9.1269E+00 -3.6486E+00 -1.1341E+00  2.1428E+00  4.4076E-01 -5.9577E+00 -1.5641E+01 -1.2238E+01 -3.9460E+00
             2.6516E+00
 GRADIENT:  -5.2548E+00  0.0000E+00 -2.8956E+00  6.4810E+00  1.0048E+00 -2.5868E+00  0.0000E+00  0.0000E+00  0.0000E+00  7.6729E-05
            -4.2818E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -583.197369971652        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1017
 NPARAMETR:  4.4214E-01  1.0000E-02  2.3572E-02  2.9332E-01  6.5688E+00  1.4201E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.2921E+01
 PARAMETER: -7.1612E-01 -9.1269E+00 -3.6477E+00 -1.1265E+00  1.9823E+00  4.5076E-01 -5.9577E+00 -1.5641E+01 -1.2238E+01 -5.2977E+00
             2.6588E+00
 GRADIENT:  -8.2363E-01  0.0000E+00  1.0823E+00 -1.2939E+00  4.2428E-03  1.8719E-01  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
             7.7392E-01

0ITERATION NO.:   47    OBJECTIVE VALUE:  -583.201131875815        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1074
 NPARAMETR:  4.4272E-01  1.0000E-02  2.3552E-02  2.9352E-01  6.5145E+00  1.4200E+00  1.0000E-02  1.0000E-02  1.0000E-02  1.0000E-02
             1.2915E+01
 PARAMETER: -7.1481E-01 -9.1269E+00 -3.6485E+00 -1.1258E+00  1.9740E+00  4.5066E-01 -5.9577E+00 -1.5641E+01 -1.2238E+01 -5.3919E+00
             2.6584E+00
 GRADIENT:   4.2995E-01  0.0000E+00 -5.4088E-02 -4.4335E-01 -7.3219E-02  2.2276E-02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
             3.7604E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1074
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.4351E-03  6.2106E-06  8.3213E-05 -1.9586E-04  3.6619E-06
 SE:             2.8385E-02  4.7198E-06  2.3339E-04  2.8312E-04  3.4366E-05
 N:                     100         100         100         100         100

 P VAL.:         9.3163E-01  1.8822E-01  7.2144E-01  4.8905E-01  9.1514E-01

 ETASHRINKSD(%)  4.9082E+00  9.9984E+01  9.9218E+01  9.9052E+01  9.9885E+01
 ETASHRINKVR(%)  9.5755E+00  1.0000E+02  9.9994E+01  9.9991E+01  1.0000E+02
 EBVSHRINKSD(%)  5.0528E+00  9.9978E+01  9.9140E+01  9.8919E+01  9.9840E+01
 EBVSHRINKVR(%)  9.8502E+00  1.0000E+02  9.9993E+01  9.9988E+01  1.0000E+02
 RELATIVEINF(%)  3.0986E+00  5.2001E-07  2.7964E-05  4.4242E-05  3.3634E-05
 EPSSHRINKSD(%)  5.6993E+00
 EPSSHRINKVR(%)  1.1074E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -583.20113187581467     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       151.94969468792351     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.39
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -583.201       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.43E-01  1.00E-02  2.36E-02  2.94E-01  6.51E+00  1.42E+00  1.00E-02  1.00E-02  1.00E-02  1.00E-02  1.29E+01
 


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
 #CPUT: Total CPU Time in Seconds,       12.431
Stop Time:
Sat Oct  2 05:57:13 CDT 2021
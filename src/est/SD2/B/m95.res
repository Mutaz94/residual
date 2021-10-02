Fri Oct  1 08:43:04 CDT 2021
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
$DATA ../../../../data/SD2/B/dat95.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2109.47343099407        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9141E+02 -4.6314E+01 -4.3098E+01 -5.1286E+01  6.3972E+01  4.3988E+01 -7.9260E+00  2.0491E+01 -6.4732E+01  1.4081E+01
             3.7682E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2125.71531418382        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  1.0044E+00  9.5685E-01  1.1145E+00  1.0909E+00  9.8242E-01  9.7333E-01  1.0256E+00  8.9521E-01  1.3374E+00  9.2103E-01
             9.1715E-01
 PARAMETER:  1.0443E-01  5.5890E-02  2.0841E-01  1.8698E-01  8.2259E-02  7.2964E-02  1.2525E-01 -1.0695E-02  3.9070E-01  1.7741E-02
             1.3513E-02
 GRADIENT:   5.6730E+00 -9.5719E+00 -1.7151E+00 -1.2100E+01  1.0536E+01 -3.1371E+00  8.1792E+00  1.2564E+01  2.4177E+01 -4.5189E+00
            -3.4020E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2132.19219901141        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  1.0023E+00  8.8726E-01  1.0505E+00  1.1374E+00  9.2922E-01  1.0151E+00  9.6779E-01  4.1610E-01  1.3073E+00  1.0127E+00
             9.2520E-01
 PARAMETER:  1.0228E-01 -1.9615E-02  1.4924E-01  2.2871E-01  2.6593E-02  1.1494E-01  6.7264E-02 -7.7683E-01  3.6799E-01  1.1258E-01
             2.2258E-02
 GRADIENT:   1.9047E+00 -2.8161E+00 -7.0713E-01 -4.6090E+00 -6.3673E+00  1.3597E+01  5.3693E+00  3.4926E+00  2.5513E+01  3.5801E+00
            -2.1044E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2135.21854504855        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  1.0008E+00  7.9664E-01  1.0801E+00  1.2006E+00  9.1598E-01  9.7754E-01  9.3899E-01  2.8195E-01  1.1336E+00  1.0590E+00
             9.5396E-01
 PARAMETER:  1.0079E-01 -1.2735E-01  1.7702E-01  2.8281E-01  1.2245E-02  7.7286E-02  3.7047E-02 -1.1660E+00  2.2536E-01  1.5735E-01
             5.2865E-02
 GRADIENT:   3.8870E-01  4.8475E+00 -1.8965E+00 -1.9650E+00  4.5565E-01 -4.2153E-03  1.8302E+00  1.6359E+00 -6.3441E+00  5.4267E+00
             5.1670E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2136.76457720578        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      701
 NPARAMETR:  9.9781E-01  6.3447E-01  1.0928E+00  1.2884E+00  8.6982E-01  9.7114E-01  4.2190E-01  9.4098E-02  1.1173E+00  1.0915E+00
             9.4488E-01
 PARAMETER:  9.7804E-02 -3.5496E-01  1.8874E-01  3.5337E-01 -3.9468E-02  7.0720E-02 -7.6300E-01 -2.2634E+00  2.1090E-01  1.8754E-01
             4.3301E-02
 GRADIENT:  -1.4930E+00 -4.2221E+00 -2.8409E+00 -6.8540E+00  1.7859E+00 -1.5046E+00  4.1719E-01  1.6745E-01  7.2470E-01  2.0664E+00
            -2.9472E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2137.17570052618        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  9.9930E-01  6.9577E-01  1.0954E+00  1.2537E+00  8.9148E-01  9.7570E-01  5.5404E-02  2.3665E-02  1.1646E+00  1.1018E+00
             9.4840E-01
 PARAMETER:  9.9303E-02 -2.6274E-01  1.9110E-01  3.2613E-01 -1.4872E-02  7.5399E-02 -2.7931E+00 -3.6437E+00  2.5242E-01  1.9692E-01
             4.7018E-02
 GRADIENT:  -1.3327E-02 -2.6285E-02  7.4256E-01  4.4182E-01 -4.4609E-01 -6.4404E-03  1.0894E-02  1.0520E-02  1.0191E+00  2.8744E-01
            -6.5462E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2137.18256132050        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1052
 NPARAMETR:  9.9929E-01  6.9304E-01  1.0936E+00  1.2549E+00  8.8975E-01  9.7561E-01  2.0288E-02  1.0477E-02  1.1597E+00  1.0992E+00
             9.4844E-01
 PARAMETER:  9.9290E-02 -2.6666E-01  1.8948E-01  3.2702E-01 -1.6819E-02  7.5305E-02 -3.7977E+00 -4.4586E+00  2.4812E-01  1.9455E-01
             4.7065E-02
 GRADIENT:  -4.4714E-04  3.5280E-02 -1.3712E-01 -1.2122E-01 -1.3575E-02 -3.3524E-02  1.8888E-03  2.0997E-03 -1.5885E-01 -7.1166E-03
            -6.0718E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2137.18464933949        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1233
 NPARAMETR:  9.9993E-01  6.9470E-01  1.0937E+00  1.2537E+00  8.8974E-01  9.7591E-01  1.0000E-02  1.0000E-02  1.1604E+00  1.0993E+00
             9.4849E-01
 PARAMETER:  9.9927E-02 -2.6427E-01  1.8957E-01  3.2609E-01 -1.6824E-02  7.5617E-02 -5.2965E+00 -4.5552E+00  2.4875E-01  1.9467E-01
             4.7120E-02
 GRADIENT:   1.4230E+00  3.6232E-01  6.6611E-01 -2.7254E-01 -1.1094E+00  8.0941E-02  0.0000E+00  0.0000E+00 -2.6949E-01  2.2940E-02
            -5.7377E-02

0ITERATION NO.:   36    OBJECTIVE VALUE:  -2137.18464933949        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1255
 NPARAMETR:  9.9993E-01  6.9470E-01  1.0937E+00  1.2537E+00  8.8974E-01  9.7591E-01  1.0000E-02  1.0000E-02  1.1604E+00  1.0993E+00
             9.4849E-01
 PARAMETER:  9.9927E-02 -2.6427E-01  1.8957E-01  3.2609E-01 -1.6824E-02  7.5617E-02 -5.2965E+00 -4.5552E+00  2.4875E-01  1.9467E-01
             4.7120E-02
 GRADIENT:   1.4230E+00  3.6232E-01  6.6611E-01 -2.7254E-01 -1.1094E+00  8.0941E-02  0.0000E+00  0.0000E+00 -2.6949E-01  2.2940E-02
            -5.7377E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1255
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.5701E-04 -3.7222E-04 -3.9523E-04 -2.5856E-03 -1.6610E-02
 SE:             2.9904E-02  1.3539E-04  2.0750E-04  2.9733E-02  2.6260E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7980E-01  5.9714E-03  5.6816E-02  9.3070E-01  5.2705E-01

 ETASHRINKSD(%)  1.0000E-10  9.9546E+01  9.9305E+01  3.9205E-01  1.2026E+01
 ETASHRINKVR(%)  1.0000E-10  9.9998E+01  9.9995E+01  7.8257E-01  2.2605E+01
 EBVSHRINKSD(%)  3.0898E-01  9.9598E+01  9.9309E+01  9.2515E-01  8.8685E+00
 EBVSHRINKVR(%)  6.1700E-01  9.9998E+01  9.9995E+01  1.8417E+00  1.6950E+01
 RELATIVEINF(%)  9.8921E+01  2.1120E-04  1.7136E-03  1.8857E+01  1.7220E+01
 EPSSHRINKSD(%)  3.2577E+01
 EPSSHRINKVR(%)  5.4542E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2137.1846493394892     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1218.2461161348165     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.30
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2137.185       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  6.95E-01  1.09E+00  1.25E+00  8.90E-01  9.76E-01  1.00E-02  1.00E-02  1.16E+00  1.10E+00  9.48E-01
 


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
 #CPUT: Total CPU Time in Seconds,       18.347
Stop Time:
Fri Oct  1 08:43:24 CDT 2021
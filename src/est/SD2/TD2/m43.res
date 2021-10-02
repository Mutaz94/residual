Fri Oct  1 14:48:38 CDT 2021
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
$DATA ../../../../data/SD2/TD2/dat43.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2147.70800207357        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3586E+02 -6.1136E+00 -5.3971E+00  3.3600E+01  2.6487E+01  3.9850E+01  7.8073E+00  7.9901E+00  5.1901E+01 -9.9914E+00
             7.0352E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2156.42009658899        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.6893E-01  1.0274E+00  9.5382E-01  1.0099E+00  1.0310E+00  1.0219E+00  9.7634E-01  9.3917E-01  7.0046E-01  1.1065E+00
             8.6728E-01
 PARAMETER:  6.8437E-02  1.2707E-01  5.2716E-02  1.0990E-01  1.3051E-01  1.2163E-01  7.6059E-02  3.7237E-02 -2.5602E-01  2.0120E-01
            -4.2388E-02
 GRADIENT:  -3.3589E+01 -1.7919E+01 -3.2515E+01  1.5263E+01  5.5923E+01  4.4726E+00 -1.7560E+01  7.7682E+00 -1.1679E+01 -5.8877E+00
            -3.7967E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2160.43415659618        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  9.6684E-01  8.4520E-01  9.7997E-01  1.1297E+00  9.3551E-01  1.0370E+00  1.4037E+00  6.5861E-01  5.7403E-01  1.1829E+00
             8.8091E-01
 PARAMETER:  6.6273E-02 -6.8185E-02  7.9765E-02  2.2199E-01  3.3332E-02  1.3631E-01  4.3911E-01 -3.1762E-01 -4.5507E-01  2.6793E-01
            -2.6801E-02
 GRADIENT:  -3.3274E+01  2.0356E+01 -1.5813E+01  3.8574E+01  1.2726E+01  1.0375E+01  2.8879E-01  1.6320E+00 -1.4210E+01  1.1563E+01
            -2.0607E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2164.29655292937        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  9.8338E-01  7.4788E-01  9.1925E-01  1.1784E+00  8.3765E-01  1.0070E+00  1.3764E+00  4.4195E-01  6.6137E-01  1.0168E+00
             9.0798E-01
 PARAMETER:  8.3236E-02 -1.9051E-01  1.5808E-02  2.6415E-01 -7.7155E-02  1.0702E-01  4.1950E-01 -7.1655E-01 -3.1345E-01  1.1671E-01
             3.4706E-03
 GRADIENT:   1.9875E+00  1.3410E+01  5.5458E+00  2.2203E+01 -9.3564E+00 -1.0390E-01 -3.8081E+00 -2.7786E-01 -1.5100E+00 -1.1476E-01
            -1.7235E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2165.18260227851        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.7983E-01  5.2191E-01  1.0189E+00  1.3082E+00  8.1633E-01  1.0074E+00  1.8284E+00  5.5027E-01  6.0539E-01  1.0356E+00
             9.1057E-01
 PARAMETER:  7.9627E-02 -5.5025E-01  1.1873E-01  3.6868E-01 -1.0294E-01  1.0740E-01  7.0344E-01 -4.9734E-01 -4.0188E-01  1.3493E-01
             6.3120E-03
 GRADIENT:   2.3913E+00  3.3104E+00  1.5330E+00  1.0239E+01 -4.5382E+00  1.1056E+00 -2.2176E+00 -9.1742E-01 -3.4684E+00  1.6788E+00
             5.8249E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2165.43591133816        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      880
 NPARAMETR:  9.7551E-01  3.7828E-01  1.1707E+00  1.4077E+00  8.3911E-01  1.0009E+00  2.2554E+00  8.1733E-01  5.9738E-01  1.0358E+00
             9.0698E-01
 PARAMETER:  7.5208E-02 -8.7211E-01  2.5756E-01  4.4197E-01 -7.5415E-02  1.0086E-01  9.1333E-01 -1.0171E-01 -4.1520E-01  1.3517E-01
             2.3672E-03
 GRADIENT:  -7.6603E-01  5.1238E+00  2.6583E+00  1.7861E+01 -4.1644E+00 -6.6143E-01 -3.0116E-01  7.8957E-03  4.3461E-01 -7.7621E-01
            -5.7482E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2165.52332984286        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1055
 NPARAMETR:  9.7376E-01  2.9572E-01  1.2361E+00  1.4580E+00  8.4352E-01  9.9905E-01  2.6407E+00  8.8756E-01  5.8724E-01  1.0382E+00
             9.0575E-01
 PARAMETER:  7.3410E-02 -1.1183E+00  3.1195E-01  4.7704E-01 -7.0169E-02  9.9047E-02  1.0710E+00 -1.9283E-02 -4.3233E-01  1.3749E-01
             1.0032E-03
 GRADIENT:  -1.1313E+00  3.9882E+00  3.9154E+00  9.9081E+00 -2.8879E+00 -9.0385E-01  1.6375E+00 -6.0692E-01 -2.5484E-03 -2.1066E+00
            -1.8458E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2165.60318862319        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1237
 NPARAMETR:  9.7372E-01  2.5965E-01  1.2553E+00  1.4762E+00  8.4401E-01  1.0005E+00  2.7674E+00  9.1189E-01  5.8655E-01  1.0524E+00
             9.0724E-01
 PARAMETER:  7.3364E-02 -1.2484E+00  3.2734E-01  4.8950E-01 -6.9590E-02  1.0051E-01  1.1179E+00  7.7640E-03 -4.3350E-01  1.5104E-01
             2.6516E-03
 GRADIENT:   3.8709E-01  1.0346E+00  1.0398E+00 -4.0215E+00 -1.9219E-01  2.1343E-02  2.9262E-01  8.1961E-02 -5.9299E-01 -2.6469E-01
            -3.6263E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2165.61376396673        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1419
 NPARAMETR:  9.7422E-01  2.5829E-01  1.2525E+00  1.4755E+00  8.4243E-01  1.0007E+00  2.7922E+00  9.0288E-01  5.8840E-01  1.0547E+00
             9.0756E-01
 PARAMETER:  7.3877E-02 -1.2537E+00  3.2518E-01  4.8897E-01 -7.1463E-02  1.0074E-01  1.1268E+00 -2.1675E-03 -4.3035E-01  1.5325E-01
             3.0043E-03
 GRADIENT:   1.6136E+00  8.8905E-01  1.8115E+00 -8.6309E+00 -8.9619E-01  1.1923E-01  9.8817E-01 -1.0905E-01  4.1450E-01  9.3892E-02
            -1.0246E-01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2165.61446490155        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1478
 NPARAMETR:  9.7407E-01  2.5763E-01  1.2518E+00  1.4761E+00  8.4270E-01  1.0007E+00  2.7843E+00  9.0378E-01  5.8812E-01  1.0546E+00
             9.0759E-01
 PARAMETER:  7.3728E-02 -1.2562E+00  3.2459E-01  4.8939E-01 -7.1141E-02  1.0068E-01  1.1240E+00 -1.1675E-03 -4.3083E-01  1.5312E-01
             3.0339E-03
 GRADIENT:  -3.5010E-01  3.1702E-01  8.1827E-01  3.3300E+00  2.8954E-01 -3.2450E-02 -2.0741E-01 -7.0721E-03 -8.0516E-02  5.9650E-02
            -9.0510E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1478
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3328E-03  3.1812E-02 -3.2208E-02 -2.8510E-02 -2.0201E-02
 SE:             2.9942E-02  1.7513E-02  1.5816E-02  2.4278E-02  2.2453E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6449E-01  6.9297E-02  4.1712E-02  2.4028E-01  3.6827E-01

 ETASHRINKSD(%)  1.0000E-10  4.1328E+01  4.7014E+01  1.8664E+01  2.4779E+01
 ETASHRINKVR(%)  1.0000E-10  6.5576E+01  7.1925E+01  3.3845E+01  4.3418E+01
 EBVSHRINKSD(%)  2.7911E-01  4.9371E+01  5.1028E+01  1.3794E+01  2.0629E+01
 EBVSHRINKVR(%)  5.5745E-01  7.4367E+01  7.6017E+01  2.5685E+01  3.7002E+01
 RELATIVEINF(%)  9.8922E+01  4.3486E+00  5.5275E+00  1.2776E+01  1.5733E+01
 EPSSHRINKSD(%)  3.4420E+01
 EPSSHRINKVR(%)  5.6992E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2165.6144649015482     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1246.6759316968755     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.11
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2165.614       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.74E-01  2.58E-01  1.25E+00  1.48E+00  8.43E-01  1.00E+00  2.78E+00  9.04E-01  5.88E-01  1.05E+00  9.08E-01
 


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
 #CPUT: Total CPU Time in Seconds,       23.151
Stop Time:
Fri Oct  1 14:49:03 CDT 2021

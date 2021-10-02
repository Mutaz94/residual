Sat Oct  2 00:28:25 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat26.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m26.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -944.114845037983        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2253E+02  3.0571E+01  2.3393E+01  2.9857E+01  8.2211E+01  5.9285E+01 -2.8974E+01 -2.3668E+01 -4.5735E+01 -3.0440E+01
            -1.2870E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1375.34288350685        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0924E+00  9.9088E-01  9.9413E-01  1.0403E+00  9.4156E-01  1.0267E+00  1.0515E+00  1.0555E+00  1.1549E+00  9.3260E-01
             2.2460E+00
 PARAMETER:  1.8836E-01  9.0843E-02  9.4111E-02  1.3955E-01  3.9784E-02  1.2632E-01  1.5021E-01  1.5405E-01  2.4399E-01  3.0223E-02
             9.0913E-01
 GRADIENT:   3.2750E+02  5.6399E+00  7.6387E+00  7.3155E+00 -5.4270E+00  3.9114E+01  1.4541E+00 -4.2654E+00  7.9895E+00  5.9337E+00
            -7.0042E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1386.57118198337        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0176E+00  8.8038E-01  8.3639E-01  1.0931E+00  8.0197E-01  8.9496E-01  9.8070E-01  1.1067E+00  1.0841E+00  7.1713E-01
             2.2440E+00
 PARAMETER:  1.1742E-01 -2.7400E-02 -7.8658E-02  1.8900E-01 -1.2068E-01 -1.0978E-02  8.0512E-02  2.0138E-01  1.8075E-01 -2.3250E-01
             9.0825E-01
 GRADIENT:   1.3163E+02  8.9904E+00  3.9771E+00  2.2151E+01 -9.8011E+00  9.3479E+00 -5.6581E+00  3.6507E+00  1.9788E+00  8.5539E-01
            -7.3758E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1389.65937795695        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:      258
 NPARAMETR:  9.8091E-01  8.6945E-01  4.4269E-01  1.0569E+00  5.7239E-01  8.5031E-01  1.1920E+00  6.3995E-01  1.0012E+00  4.9035E-01
             2.3210E+00
 PARAMETER:  8.0721E-02 -3.9893E-02 -7.1488E-01  1.5532E-01 -4.5793E-01 -6.2157E-02  2.7562E-01 -3.4637E-01  1.0123E-01 -6.1263E-01
             9.4199E-01
 GRADIENT:  -7.9438E+01  7.8887E+00 -1.5814E+01  3.8207E+01  2.4998E+01 -1.5364E+01  1.7922E+00  7.1984E-01  4.1145E+00  2.6109E+00
            -4.7799E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1395.47932879268        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      434
 NPARAMETR:  1.0084E+00  7.6564E-01  3.3527E-01  1.0451E+00  4.6199E-01  8.8479E-01  1.2013E+00  4.6017E-01  9.1224E-01  3.0847E-01
             2.6051E+00
 PARAMETER:  1.0838E-01 -1.6705E-01 -9.9282E-01  1.4414E-01 -6.7221E-01 -2.2408E-02  2.8342E-01 -6.7615E-01  8.1454E-03 -1.0761E+00
             1.0575E+00
 GRADIENT:  -3.7767E+00 -6.8397E+00 -5.2745E+00  5.1965E+00  1.8503E+01  3.9380E+00 -8.1909E-01 -1.0905E+00 -4.3936E-01  4.9707E-01
             1.8719E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1399.39066295829        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      613
 NPARAMETR:  1.0001E+00  6.5154E-01  2.2485E-01  1.0015E+00  3.5265E-01  9.0378E-01  1.2081E+00  6.3150E-01  9.0359E-01  2.2078E-01
             2.3560E+00
 PARAMETER:  1.0006E-01 -3.2841E-01 -1.3923E+00  1.0151E-01 -9.4228E-01 -1.1707E-03  2.8906E-01 -3.5966E-01 -1.3767E-03 -1.4106E+00
             9.5696E-01
 GRADIENT:  -5.1216E+00 -2.0077E+01 -9.1739E+00 -7.2069E+00  3.0442E+01  6.0263E+00 -3.2949E+00 -4.1429E+00 -6.9573E+00  4.1926E-01
            -6.8376E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1411.70480645111        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      797
 NPARAMETR:  9.9525E-01  8.1474E-01  2.2071E-01  9.4009E-01  3.9452E-01  8.5216E-01  1.0848E+00  1.4821E+00  1.0769E+00  2.7144E-01
             1.9701E+00
 PARAMETER:  9.5234E-02 -1.0489E-01 -1.4109E+00  3.8221E-02 -8.3009E-01 -5.9979E-02  1.8140E-01  4.9345E-01  1.7412E-01 -1.2040E+00
             7.7809E-01
 GRADIENT:   1.4230E+01  1.0336E+01  1.2359E+01 -1.9472E+00 -2.5923E+01 -6.9403E+00  6.3448E+00  5.4695E+00  6.3080E+00  1.5909E+00
            -7.0857E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1415.55258304536        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      972
 NPARAMETR:  9.8646E-01  1.2240E+00  1.9836E-01  7.6062E-01  5.4615E-01  8.6227E-01  8.9232E-01  1.6661E+00  1.0615E+00  1.8901E-01
             2.1326E+00
 PARAMETER:  8.6371E-02  3.0214E-01 -1.5177E+00 -1.7362E-01 -5.0486E-01 -4.8185E-02 -1.3935E-02  6.1050E-01  1.5967E-01 -1.5659E+00
             8.5734E-01
 GRADIENT:  -4.3308E+00  3.2146E+01  8.3747E-01  3.2377E+01 -1.4293E+01  1.2763E+00 -4.0446E+00  4.2502E-02 -1.0369E+01  3.8878E-01
            -5.9473E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1422.31013145999        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1148
 NPARAMETR:  9.9133E-01  1.9017E+00  1.2099E-01  4.0866E-01  8.7118E-01  8.6863E-01  7.4810E-01  1.9351E+00  1.6681E+00  3.5906E-02
             2.3666E+00
 PARAMETER:  9.1296E-02  7.4275E-01 -2.0120E+00 -7.9488E-01 -3.7905E-02 -4.0833E-02 -1.9022E-01  7.6015E-01  6.1169E-01 -3.2268E+00
             9.6145E-01
 GRADIENT:  -1.0595E+01  7.3027E+01  3.0631E+00  2.4240E+01 -1.2237E+01  3.8517E+00 -3.7498E+00  1.8807E-01 -4.9929E+00  1.8982E-02
             2.7899E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1431.47229006243        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1324
 NPARAMETR:  9.9344E-01  2.2530E+00  3.7277E-02  1.5652E-01  1.1280E+00  8.4762E-01  7.1356E-01  1.1936E+00  3.4525E+00  1.0000E-02
             2.4265E+00
 PARAMETER:  9.3423E-02  9.1227E-01 -3.1894E+00 -1.7546E+00  2.2049E-01 -6.5324E-02 -2.3749E-01  2.7700E-01  1.3391E+00 -6.2221E+00
             9.8643E-01
 GRADIENT:  -1.6434E+00  8.2237E-02 -2.0795E+00 -6.2868E-03 -9.9205E-01 -2.3685E+00  2.8544E+00  1.1324E+00 -2.5923E-01  0.0000E+00
             7.7428E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1432.36992168162        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1502
 NPARAMETR:  9.9428E-01  2.2291E+00  4.4212E-02  1.6811E-01  1.1113E+00  8.5258E-01  7.0792E-01  5.2876E-01  3.2591E+00  1.0000E-02
             2.4249E+00
 PARAMETER:  9.4261E-02  9.0160E-01 -3.0188E+00 -1.6831E+00  2.0553E-01 -5.9488E-02 -2.4542E-01 -5.3723E-01  1.2815E+00 -5.8354E+00
             9.8579E-01
 GRADIENT:  -1.1161E+00 -2.9044E-01  2.3421E+00 -2.4241E+00 -2.7853E+00 -7.1330E-01  5.0153E-01  5.3667E-01  1.0518E+00  0.0000E+00
            -2.1928E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1432.78799471166        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1679
 NPARAMETR:  9.9526E-01  2.2176E+00  4.3703E-02  1.7569E-01  1.0996E+00  8.6125E-01  7.0310E-01  7.5363E-02  3.1657E+00  1.0000E-02
             2.4377E+00
 PARAMETER:  9.5251E-02  8.9641E-01 -3.0303E+00 -1.6390E+00  1.9494E-01 -4.9369E-02 -2.5226E-01 -2.4854E+00  1.2524E+00 -5.5468E+00
             9.9104E-01
 GRADIENT:   2.5551E+00 -1.5218E+00  8.3166E-01 -8.9683E-01 -9.5796E-01  2.7988E+00 -1.0686E+00  1.6780E-02  6.5830E-01  0.0000E+00
             1.8672E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1432.83951626039        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1856
 NPARAMETR:  9.9396E-01  2.2097E+00  4.3505E-02  1.7982E-01  1.0924E+00  8.5440E-01  7.0715E-01  2.8351E-02  3.1230E+00  1.0000E-02
             2.4286E+00
 PARAMETER:  9.3943E-02  8.9287E-01 -3.0349E+00 -1.6158E+00  1.8833E-01 -5.7354E-02 -2.4651E-01 -3.4631E+00  1.2388E+00 -5.4442E+00
             9.8731E-01
 GRADIENT:   3.6827E-01 -2.5572E+00 -1.9078E-01 -4.0983E-02  4.5373E-01  3.8415E-02  8.9607E-03  2.4970E-03  1.4941E-01  0.0000E+00
             8.0248E-02

0ITERATION NO.:   63    OBJECTIVE VALUE:  -1432.84179134807        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1954
 NPARAMETR:  9.9387E-01  2.2076E+00  4.3419E-02  1.8009E-01  1.0915E+00  8.5424E-01  7.0718E-01  1.0000E-02  3.1250E+00  1.0000E-02
             2.4277E+00
 PARAMETER:  9.3851E-02  8.9190E-01 -3.0369E+00 -1.6143E+00  1.8753E-01 -5.7538E-02 -2.4646E-01 -5.4170E+00  1.2394E+00 -5.4442E+00
             9.8695E-01
 GRADIENT:   5.0183E-01 -4.9121E+00 -4.6341E-01 -3.0482E-02  9.5533E-01  3.0215E-02  4.1891E-03  0.0000E+00  3.2052E-01  0.0000E+00
            -1.1890E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1954
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.5132E-04 -2.0769E-02  1.1135E-04  2.8288E-02 -3.4465E-04
 SE:             2.9088E-02  2.6509E-02  4.8374E-05  1.9300E-02  2.0212E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8214E-01  4.3335E-01  2.1339E-02  1.4273E-01  8.8161E-02

 ETASHRINKSD(%)  2.5518E+00  1.1193E+01  9.9838E+01  3.5344E+01  9.9323E+01
 ETASHRINKVR(%)  5.0385E+00  2.1133E+01  1.0000E+02  5.8196E+01  9.9995E+01
 EBVSHRINKSD(%)  2.7499E+00  1.2145E+01  9.9804E+01  3.0836E+01  9.9272E+01
 EBVSHRINKVR(%)  5.4241E+00  2.2815E+01  1.0000E+02  5.2164E+01  9.9995E+01
 RELATIVEINF(%)  9.1490E+01  2.7258E+01  3.1238E-04  1.7806E+01  1.5815E-03
 EPSSHRINKSD(%)  3.0822E+01
 EPSSHRINKVR(%)  5.2144E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1432.8417913480685     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -697.69096478433028     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1432.842       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.94E-01  2.21E+00  4.34E-02  1.80E-01  1.09E+00  8.54E-01  7.07E-01  1.00E-02  3.12E+00  1.00E-02  2.43E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.477
Stop Time:
Sat Oct  2 00:28:52 CDT 2021
Fri Oct  1 06:59:38 CDT 2021
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
$DATA ../../../../data/SD1/D/dat62.csv ignore=@
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
 (2E4.0,E22.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m62.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   29265.0895031044        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3575E+02  4.9321E+02 -7.7191E+01  2.2547E+02  3.8203E+02 -2.0679E+03 -1.0242E+03 -1.0077E+02 -2.1045E+03 -6.6186E+02
            -5.9832E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1004.36930618708        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.4798E+00  1.8219E+00  9.8648E-01  2.5244E+00  6.6745E-01  5.0153E+00  3.5230E+00  1.0001E+00  3.6066E+00  1.7361E+00
             1.1945E+01
 PARAMETER:  4.9194E-01  6.9987E-01  8.6390E-02  1.0260E+00 -3.0429E-01  1.7125E+00  1.3593E+00  1.0009E-01  1.3828E+00  6.5165E-01
             2.5803E+00
 GRADIENT:   1.7232E+01  6.4003E+01 -1.5423E+01  9.6086E+01 -7.7853E+01  1.3655E+02 -1.9043E+01  3.6508E+00  4.2385E+01  6.4488E+00
             4.1184E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1110.11897681259        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.3208E+00  4.7343E+00  6.0591E+01  3.0212E+00  3.3978E+00  3.7610E+00  1.3251E+01  6.7308E-01  3.3752E+00  2.8570E+00
             1.1767E+01
 PARAMETER:  3.7824E-01  1.6548E+00  4.2041E+00  1.2056E+00  1.3231E+00  1.4247E+00  2.6841E+00 -2.9589E-01  1.3165E+00  1.1498E+00
             2.5653E+00
 GRADIENT:   4.7452E+00  4.5989E+01 -3.7989E+00  8.8548E+01  4.3108E+01  1.3071E+02  1.1613E+02  2.8835E-03  5.7249E+01  7.2157E+01
             4.3367E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1259.32488691274        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      235
 NPARAMETR:  1.3498E+00  1.1408E+00  3.0866E+01  2.0180E+00  1.9078E+00  2.7268E+00  6.3751E+00  5.2708E+00  2.6906E+00  1.6154E+00
             1.0542E+01
 PARAMETER:  3.9999E-01  2.3175E-01  3.5296E+00  8.0210E-01  7.4597E-01  1.1031E+00  1.9524E+00  1.7622E+00  1.0898E+00  5.7959E-01
             2.4554E+00
 GRADIENT:   1.6962E+01  1.0276E+01 -2.6517E-01  6.7804E+01 -3.4971E+01  3.9738E+01  2.2278E+01  3.8864E+00  2.2786E+01  4.4213E+01
             3.6940E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1306.72215545574        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      307
 NPARAMETR:  1.1206E+00  1.6902E+00  7.2497E+00  6.7201E-01  2.0276E+00  2.4551E+00  4.3648E+00  2.8575E+00  1.8114E+00  7.7678E-01
             8.2223E+00
 PARAMETER:  2.1385E-01  6.2484E-01  2.0810E+00 -2.9748E-01  8.0687E-01  9.9816E-01  1.5736E+00  1.1500E+00  6.9410E-01 -1.5260E-01
             2.2069E+00
 GRADIENT:  -2.5170E+01 -1.0016E+01 -7.4360E-02 -2.0445E+01  3.9755E+00 -4.3826E+00  6.7578E+00 -2.5877E-02  1.0566E+01  9.7054E+00
             6.0906E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1315.62189014769        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      384
 NPARAMETR:  1.2201E+00  1.7645E+00  5.1110E+00  7.4143E-01  1.9830E+00  2.4896E+00  4.3876E+00  1.5735E+00  1.6632E+00  4.5539E-01
             7.9949E+00
 PARAMETER:  2.9897E-01  6.6789E-01  1.7314E+00 -1.9918E-01  7.8461E-01  1.0121E+00  1.5788E+00  5.5329E-01  6.0871E-01 -6.8659E-01
             2.1788E+00
 GRADIENT:   1.5428E+01  3.2924E+00 -2.3587E+00 -6.3187E+00  1.0814E+01  6.9478E+00  2.6636E+00 -6.8945E-02  8.7175E+00  2.7231E+00
            -1.8742E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1337.51942315790        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      503
 NPARAMETR:  1.1694E+00  1.2177E+00  1.1488E+01  1.0908E+00  1.8865E+00  2.7060E+00  6.0919E+00  2.2631E+00  1.3718E+00  3.0576E-01
             8.4244E+00
 PARAMETER:  2.5653E-01  2.9699E-01  2.5413E+00  1.8695E-01  7.3473E-01  1.0955E+00  1.9070E+00  9.1675E-01  4.1613E-01 -1.0850E+00
             2.2311E+00
 GRADIENT:  -2.5146E+01 -8.6325E-01  3.3776E+00 -8.5513E+00 -4.2281E+01 -6.3907E+00 -2.8904E+01 -6.0470E-01  4.9288E+00  7.2073E-01
             2.3651E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1344.98977427659        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      678
 NPARAMETR:  1.2713E+00  8.8081E-01  2.2765E+01  1.2621E+00  2.1254E+00  2.7404E+00  7.6635E+00  2.6206E+00  1.2560E+00  2.6282E-01
             8.3949E+00
 PARAMETER:  3.4003E-01 -2.6912E-02  3.2252E+00  3.3280E-01  8.5398E-01  1.1081E+00  2.1365E+00  1.0634E+00  3.2795E-01 -1.2363E+00
             2.2276E+00
 GRADIENT:  -1.6861E+00  1.7504E-01 -5.4647E-01  2.2517E-01  1.1221E+00 -5.5793E-01  3.3356E-01 -1.4985E-01 -1.0035E+00  5.6089E-01
            -3.5737E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1345.38843498145        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      858
 NPARAMETR:  1.2822E+00  8.0428E-01  3.3080E+01  1.3017E+00  2.1600E+00  2.7462E+00  7.8601E+00  4.4009E+00  1.3158E+00  2.3065E-01
             8.4068E+00
 PARAMETER:  3.4859E-01 -1.1780E-01  3.5989E+00  3.6368E-01  8.7011E-01  1.1102E+00  2.1618E+00  1.5818E+00  3.7444E-01 -1.3669E+00
             2.2290E+00
 GRADIENT:   6.2655E-01 -7.0488E-01 -7.7868E-01  8.0819E-01 -9.1535E-01  1.6725E-01  4.9096E-01  1.3890E+00 -5.8246E-01  3.9362E-01
            -9.0217E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1345.59365685991        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:     1017
 NPARAMETR:  1.2798E+00  8.3936E-01  3.6999E+01  1.3028E+00  2.1787E+00  2.7677E+00  7.9190E+00  4.5014E+00  1.3300E+00  8.5751E-02
             8.4236E+00
 PARAMETER:  3.4669E-01 -7.5110E-02  3.7109E+00  3.6454E-01  8.7873E-01  1.1180E+00  2.1693E+00  1.6044E+00  3.8521E-01 -2.3563E+00
             2.2310E+00
 GRADIENT:   2.8973E+01  2.0290E+00  2.1971E-01  1.4957E+01  5.0604E+00  5.1764E+01  1.5829E+02 -6.2656E-01  2.0455E+00  6.6949E-02
             4.3377E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1345.60261522898        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1195
 NPARAMETR:  1.2803E+00  8.3353E-01  3.7021E+01  1.3026E+00  2.1789E+00  2.7530E+00  7.8683E+00  4.5011E+00  1.3301E+00  7.3308E-02
             8.4183E+00
 PARAMETER:  3.4709E-01 -8.2087E-02  3.7115E+00  3.6436E-01  8.7880E-01  1.1127E+00  2.1628E+00  1.6043E+00  3.8525E-01 -2.5131E+00
             2.2304E+00
 GRADIENT:   1.3868E-01  2.9395E-01  1.4079E-01  1.3898E-01  8.9911E-01  1.1768E+00  2.0209E+00 -6.3741E-01  1.8505E-01  4.2748E-02
             1.8187E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1345.62632655472        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1373
 NPARAMETR:  1.2811E+00  8.1059E-01  3.7515E+01  1.3089E+00  2.1771E+00  2.7479E+00  7.9278E+00  4.4761E+00  1.3348E+00  1.9346E-02
             8.4104E+00
 PARAMETER:  3.4771E-01 -1.0999E-01  3.7247E+00  3.6917E-01  8.7797E-01  1.1108E+00  2.1704E+00  1.5988E+00  3.8878E-01 -3.8453E+00
             2.2295E+00
 GRADIENT:   4.1354E-01 -4.1872E-02  1.7704E-01 -7.1798E-02  2.7008E-01  4.9199E-01  2.3447E+00 -6.6456E-01  1.2429E-01  2.9063E-03
            -1.1309E-01

0ITERATION NO.:   59    OBJECTIVE VALUE:  -1345.63022652623        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:     1508
 NPARAMETR:  1.2819E+00  8.1107E-01  3.8253E+01  1.3084E+00  2.1909E+00  2.7749E+00  8.0333E+00  4.4436E+00  1.3400E+00  1.0000E-02
             8.4598E+00
 PARAMETER:  3.4700E-01 -1.0990E-01  3.7094E+00  3.7255E-01  8.7659E-01  1.1114E+00  2.1683E+00  1.6065E+00  3.9531E-01 -4.9332E+00
             2.2298E+00
 GRADIENT:  -1.9081E-01 -6.3317E-03 -4.2652E+00  1.7530E+01 -1.9667E+01 -1.6355E+00 -1.6821E+00  1.1486E+01  8.9153E-02  0.0000E+00
            -7.7182E+00

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1508
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.9188E-03  4.2599E-02 -4.5967E-03 -8.2622E-02  4.1327E-06
 SE:             2.9422E-02  2.3660E-02  3.2444E-03  1.5080E-02  1.5027E-04
 N:                     100         100         100         100         100

 P VAL.:         7.6179E-01  7.1790E-02  1.5653E-01  4.2933E-08  9.7806E-01

 ETASHRINKSD(%)  1.4321E+00  2.0735E+01  8.9131E+01  4.9479E+01  9.9497E+01
 ETASHRINKVR(%)  2.8438E+00  3.7170E+01  9.8819E+01  7.4476E+01  9.9997E+01
 EBVSHRINKSD(%)  2.3588E+00  1.4912E+01  9.0512E+01  5.2106E+01  9.9462E+01
 EBVSHRINKVR(%)  4.6619E+00  2.7600E+01  9.9100E+01  7.7062E+01  9.9997E+01
 RELATIVEINF(%)  9.5209E+01  4.1799E+01  2.5850E-01  1.3337E+01  8.2325E-04
 EPSSHRINKSD(%)  7.3173E+00
 EPSSHRINKVR(%)  1.4099E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1345.6302265262318     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       308.45913324217895     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    48.54
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1345.630       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.28E+00  8.11E-01  3.69E+01  1.31E+00  2.17E+00  2.75E+00  7.91E+00  4.51E+00  1.34E+00  1.00E-02  8.41E+00
 


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
 #CPUT: Total CPU Time in Seconds,       48.600
Stop Time:
Fri Oct  1 07:00:28 CDT 2021

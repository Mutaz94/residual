Thu Sep 30 23:02:31 CDT 2021
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
$DATA ../../../../data/SD1/B/dat7.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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
 (2E4.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m7.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3427.20287463923        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0188E+02  9.0553E+01  8.4463E+01  1.2922E+02  1.4672E+02  1.5063E+01 -4.9228E+01 -4.6230E+02 -9.4242E+01 -2.8012E+01
            -1.6091E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3541.66699378470        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:      143
 NPARAMETR:  1.0475E+00  1.1410E+00  1.2641E+00  1.0730E+00  1.1460E+00  1.3056E+00  1.1839E+00  1.5029E+00  6.1359E-01  1.0776E+00
             1.7816E+00
 PARAMETER:  1.4639E-01  2.3189E-01  3.3438E-01  1.7047E-01  2.3629E-01  3.6669E-01  2.6878E-01  5.0743E-01 -3.8843E-01  1.7477E-01
             6.7750E-01
 GRADIENT:   7.2746E+01  1.6638E+02 -6.1549E+01  4.3657E+02  8.1961E+01  5.0885E+01 -7.3426E+00  8.8411E+00 -5.8715E+01 -9.2302E+00
             7.0759E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3591.49867642035        NO. OF FUNC. EVALS.: 173
 CUMULATIVE NO. OF FUNC. EVALS.:      316
 NPARAMETR:  1.0640E+00  1.1435E+00  1.5193E+00  9.0795E-01  1.2083E+00  9.9177E-01  1.1712E+00  1.8322E+00  7.9713E-01  1.2330E+00
             1.7375E+00
 PARAMETER:  1.6205E-01  2.3407E-01  5.1826E-01  3.4330E-03  2.8921E-01  9.1739E-02  2.5804E-01  7.0549E-01 -1.2673E-01  3.0942E-01
             6.5244E-01
 GRADIENT:   4.3191E+02  6.1928E+01  1.3494E+01  2.0935E+01  3.4953E+01 -3.7478E+01  3.4393E+01  2.2951E+01  1.2253E+01  2.4769E+01
             7.1450E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3597.24179636629        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      390
 NPARAMETR:  1.0641E+00  1.1433E+00  1.5196E+00  9.0598E-01  1.1727E+00  1.0498E+00  9.4814E-01  1.8315E+00  8.4523E-01  1.0829E+00
             1.7368E+00
 PARAMETER:  1.6209E-01  2.3396E-01  5.1845E-01  1.2662E-03  2.5932E-01  1.4865E-01  4.6749E-02  7.0516E-01 -6.8151E-02  1.7966E-01
             6.5202E-01
 GRADIENT:   4.1502E+02  6.8223E+01  2.3597E+01  1.7247E+00  5.3893E+00 -1.2151E-01  2.6965E+00  2.3234E+01  1.0471E+00  1.1333E+00
             7.1299E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3598.63273772575        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      467
 NPARAMETR:  1.0639E+00  1.1428E+00  1.5199E+00  9.0433E-01  1.1480E+00  1.0392E+00  7.1815E-01  1.8290E+00  9.3217E-01  1.0625E+00
             1.7240E+00
 PARAMETER:  1.6198E-01  2.3350E-01  5.1865E-01 -5.6016E-04  2.3800E-01  1.3849E-01 -2.3108E-01  7.0377E-01  2.9755E-02  1.6060E-01
             6.4464E-01
 GRADIENT:   4.2195E+02  7.9373E+01  3.3218E+01 -7.1175E-02 -1.9134E+01 -6.4299E+00 -1.1582E+01  2.1869E+01  1.1679E+00 -1.0212E+01
             7.0236E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3757.17559857838        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      544
 NPARAMETR:  1.0557E+00  1.1079E+00  1.5407E+00  8.6930E-01  1.1055E+00  1.0140E+00  1.0000E-02  1.6648E+00  1.0859E+00  1.2363E+00
             1.0471E+00
 PARAMETER:  1.5419E-01  2.0244E-01  5.3222E-01 -4.0070E-02  2.0034E-01  1.1394E-01 -1.3006E+01  6.0973E-01  1.8238E-01  3.1211E-01
             1.4603E-01
 GRADIENT:   8.5149E+02  2.2725E+02  9.9003E+01 -8.0790E+00  1.8511E+01  1.7362E+01  0.0000E+00 -3.1680E+01 -1.2075E+01 -2.9096E+00
            -6.1042E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3764.99812571603        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      660
 NPARAMETR:  1.0563E+00  1.1104E+00  1.5390E+00  9.0025E-01  1.1406E+00  1.0559E+00  1.0000E-02  1.6767E+00  1.1409E+00  1.3075E+00
             1.0866E+00
 PARAMETER:  1.5474E-01  2.0474E-01  5.3113E-01 -5.0873E-03  2.3160E-01  1.5435E-01 -1.2153E+01  6.1680E-01  2.3178E-01  3.6815E-01
             1.8303E-01
 GRADIENT:   1.4548E+02  3.6508E+01  5.5913E+01 -1.7832E+01 -3.1293E+01 -3.1041E+01  0.0000E+00 -3.3988E+01 -4.8885E+00  1.0336E-01
             1.7299E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3772.85138037200        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      841
 NPARAMETR:  9.8354E-01  1.0998E+00  1.2983E+00  9.1039E-01  1.1706E+00  1.1372E+00  1.0000E-02  2.3688E+00  1.1550E+00  1.3034E+00
             1.0781E+00
 PARAMETER:  8.3407E-02  1.9515E-01  3.6103E-01  6.1191E-03  2.5748E-01  2.2859E-01 -1.2333E+01  9.6238E-01  2.4409E-01  3.6497E-01
             1.7523E-01
 GRADIENT:   1.6812E+00 -7.3192E+00 -5.4799E+00 -6.7752E+00  4.4856E+01  9.8369E+00  0.0000E+00  2.4424E+01  3.1632E-02 -6.4850E+00
             4.4976E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3776.18141897358        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1004
 NPARAMETR:  9.7781E-01  1.0982E+00  1.3436E+00  9.1126E-01  1.1382E+00  1.1051E+00  1.0000E-02  2.0197E+00  1.1567E+00  1.3029E+00
             1.0613E+00
 PARAMETER:  7.7561E-02  1.9363E-01  3.9538E-01  7.0725E-03  2.2949E-01  1.9993E-01 -1.2333E+01  8.0297E-01  2.4556E-01  3.6456E-01
             1.5946E-01
 GRADIENT:   4.2800E+02  1.7988E+02  3.1662E+01  7.0620E+01  1.0753E+02  1.4002E+02  0.0000E+00  1.6626E+01  2.4392E+01  2.0525E+01
            -2.3288E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3776.81953263412        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:     1143
 NPARAMETR:  9.7513E-01  1.0952E+00  1.2957E+00  9.1292E-01  1.1237E+00  1.1025E+00  1.0000E-02  1.9566E+00  1.1518E+00  1.3113E+00
             1.0621E+00
 PARAMETER:  7.4816E-02  1.9098E-01  3.5906E-01  8.8879E-03  2.1665E-01  1.9755E-01 -1.2333E+01  7.7119E-01  2.4131E-01  3.7101E-01
             1.6026E-01
 GRADIENT:  -1.3700E+01  3.3553E+00  8.3014E+00 -3.5643E+00  6.3069E+00 -2.6098E+00  0.0000E+00  2.8820E+00  1.2088E+00 -2.8270E+00
            -2.9495E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -3776.97763028200        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1323
 NPARAMETR:  9.7643E-01  1.0936E+00  1.2899E+00  9.1235E-01  1.1174E+00  1.1159E+00  1.0000E-02  1.8818E+00  1.1471E+00  1.3108E+00
             1.0652E+00
 PARAMETER:  7.6148E-02  1.8945E-01  3.5458E-01  8.2640E-03  2.1099E-01  2.0966E-01 -1.2333E+01  7.3223E-01  2.3727E-01  3.7064E-01
             1.6317E-01
 GRADIENT:  -1.0954E+01 -2.1647E+00  9.6222E+00 -5.9264E+00  2.4159E+00  2.4010E+00  0.0000E+00 -1.2157E-02  4.2617E-01 -2.8807E+00
            -1.2625E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -3777.08006434943        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1507
 NPARAMETR:  9.8391E-01  1.0933E+00  1.2864E+00  9.1553E-01  1.1153E+00  1.1107E+00  1.0000E-02  1.8794E+00  1.1464E+00  1.3242E+00
             1.0657E+00
 PARAMETER:  8.3780E-02  1.8920E-01  3.5188E-01  1.1751E-02  2.0916E-01  2.0501E-01 -1.2333E+01  7.3095E-01  2.3660E-01  3.8081E-01
             1.6360E-01
 GRADIENT:   2.5744E+00  1.7149E+00  9.5028E+00 -2.8068E-01  1.0928E+00  5.7938E-01  0.0000E+00  2.0789E-02  3.7186E-01  2.8131E-01
            -8.0291E-02

0ITERATION NO.:   56    OBJECTIVE VALUE:  -3777.08006434943        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1529
 NPARAMETR:  9.8391E-01  1.0933E+00  1.2864E+00  9.1553E-01  1.1153E+00  1.1107E+00  1.0000E-02  1.8794E+00  1.1464E+00  1.3242E+00
             1.0657E+00
 PARAMETER:  8.3780E-02  1.8920E-01  3.5188E-01  1.1751E-02  2.0916E-01  2.0501E-01 -1.2333E+01  7.3095E-01  2.3660E-01  3.8081E-01
             1.6360E-01
 GRADIENT:   2.5744E+00  1.7149E+00  9.5028E+00 -2.8068E-01  1.0928E+00  5.7938E-01  0.0000E+00  2.0789E-02  3.7186E-01  2.8131E-01
            -8.0291E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1529
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.4877E-04 -1.3109E-03 -3.2109E-02  5.5328E-06 -1.2234E-02
 SE:             2.9967E-02  5.1055E-04  2.1805E-02  2.9571E-02  2.8036E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9338E-01  1.0237E-02  1.4088E-01  9.9985E-01  6.6257E-01

 ETASHRINKSD(%)  1.0000E-10  9.8290E+01  2.6949E+01  9.3349E-01  6.0752E+00
 ETASHRINKVR(%)  1.0000E-10  9.9971E+01  4.6636E+01  1.8583E+00  1.1781E+01
 EBVSHRINKSD(%)  2.3346E-01  9.8883E+01  3.1901E+01  1.3383E+00  5.5673E+00
 EBVSHRINKVR(%)  4.6637E-01  9.9988E+01  5.3626E+01  2.6587E+00  1.0825E+01
 RELATIVEINF(%)  9.9531E+01  5.4334E-03  4.0937E+01  5.4146E+01  5.6264E+01
 EPSSHRINKSD(%)  2.0804E+01
 EPSSHRINKVR(%)  3.7279E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3777.0800643494331     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2122.9907045810223     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    43.02
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3777.080       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  1.09E+00  1.29E+00  9.16E-01  1.12E+00  1.11E+00  1.00E-02  1.88E+00  1.15E+00  1.32E+00  1.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       43.067
Stop Time:
Thu Sep 30 23:03:15 CDT 2021
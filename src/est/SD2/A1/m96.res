Fri Oct  1 09:42:33 CDT 2021
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
$DATA ../../../../data/SD2/A1/dat96.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m96.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1689.30893063756        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0723E+02  5.6366E+01 -3.0760E+01  1.2776E+02  1.1107E+02  3.2534E+01 -1.4967E+01  1.8073E+01  8.6156E+00 -1.8868E+01
            -7.4746E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1830.89538076048        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0962E+00  9.6310E-01  1.1378E+00  1.0386E+00  9.3718E-01  1.2226E+00  1.0197E+00  8.0295E-01  9.7418E-01  9.0094E-01
             2.0366E+00
 PARAMETER:  1.9188E-01  6.2403E-02  2.2906E-01  1.3785E-01  3.5115E-02  3.0101E-01  1.1946E-01 -1.1946E-01  7.3839E-02 -4.3172E-03
             8.1127E-01
 GRADIENT:   3.7519E+02  4.4370E+01  1.4860E+01  4.7704E+01 -3.7039E+01  6.9416E+01  2.7262E+00  8.0284E+00  6.0489E+00  2.6144E+00
             1.4185E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1851.91575646826        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0469E+00  9.0790E-01  6.2997E-01  1.0292E+00  7.3378E-01  1.0508E+00  9.8959E-01  7.8549E-02  9.3148E-01  8.5257E-01
             1.8776E+00
 PARAMETER:  1.4580E-01  3.3745E-03 -3.6209E-01  1.2877E-01 -2.0955E-01  1.4957E-01  8.9540E-02 -2.4440E+00  2.9019E-02 -5.9500E-02
             7.3002E-01
 GRADIENT:   3.1326E+02 -4.7192E-01 -6.2915E+01  7.9948E+01  9.3048E+01  2.1397E+01 -4.4314E+00  1.8739E-01 -3.9035E-01  2.5462E+01
             1.0322E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1875.64757789215        NO. OF FUNC. EVALS.: 146
 CUMULATIVE NO. OF FUNC. EVALS.:      303
 NPARAMETR:  9.5970E-01  6.5537E-01  7.0914E-01  1.1492E+00  6.3436E-01  9.6345E-01  1.2128E+00  1.2547E-01  9.1732E-01  7.1465E-01
             1.6464E+00
 PARAMETER:  5.8862E-02 -3.2255E-01 -2.4370E-01  2.3902E-01 -3.5514E-01  6.2761E-02  2.9295E-01 -1.9757E+00  1.3698E-02 -2.3596E-01
             5.9857E-01
 GRADIENT:  -2.3191E+01  2.7603E+01  3.2256E+01 -1.3119E+01 -4.9534E+01 -1.7499E+01 -4.2895E+00  5.3210E-01  7.5740E+00  3.3707E+00
            -5.7543E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1883.68503013348        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      478
 NPARAMETR:  9.6683E-01  4.0655E-01  5.6596E-01  1.2440E+00  4.9436E-01  1.0003E+00  1.8636E+00  5.9505E-02  8.4343E-01  5.5985E-01
             1.6340E+00
 PARAMETER:  6.6263E-02 -8.0005E-01 -4.6923E-01  3.1830E-01 -6.0448E-01  1.0035E-01  7.2251E-01 -2.7217E+00 -7.0283E-02 -4.8009E-01
             5.9101E-01
 GRADIENT:   1.1538E+00  9.4719E+00  1.1979E+01 -5.0276E+00 -1.9951E+01 -1.2279E+00  1.2502E+00  1.3573E-01  2.7120E+00 -3.2219E+00
            -1.8039E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1886.08902850110        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      655
 NPARAMETR:  9.6040E-01  2.0154E-01  6.8049E-01  1.3746E+00  5.1635E-01  1.0020E+00  2.8830E+00  1.0000E-02  8.0085E-01  6.5779E-01
             1.6419E+00
 PARAMETER:  5.9594E-02 -1.5018E+00 -2.8494E-01  4.1819E-01 -5.6097E-01  1.0201E-01  1.1588E+00 -4.5242E+00 -1.2208E-01 -3.1887E-01
             5.9585E-01
 GRADIENT:   2.2124E+00  4.5159E+00  7.2259E+00 -1.2918E+01 -1.3389E+01  1.5892E+00  7.3972E+00  1.0723E-03 -2.4165E-01 -1.8307E+00
             3.5882E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1887.80421634568        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      833
 NPARAMETR:  9.5498E-01  1.3798E-01  7.9903E-01  1.4503E+00  5.7070E-01  9.9517E-01  2.8673E+00  1.0000E-02  7.8621E-01  7.2225E-01
             1.6316E+00
 PARAMETER:  5.3938E-02 -1.8806E+00 -1.2435E-01  4.7178E-01 -4.6090E-01  9.5159E-02  1.1534E+00 -5.6584E+00 -1.4053E-01 -2.2538E-01
             5.8958E-01
 GRADIENT:  -5.1729E+00  2.8517E+00 -1.0682E+01  1.8543E+01  1.7812E+01 -8.8260E-01  1.1286E+00  0.0000E+00 -1.1104E+00 -4.7319E+00
            -7.4808E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1888.95072227880        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1008
 NPARAMETR:  9.5351E-01  4.4209E-02  7.9979E-01  1.4982E+00  5.4778E-01  9.9598E-01  3.7160E+00  1.0000E-02  7.7271E-01  7.3359E-01
             1.6403E+00
 PARAMETER:  5.2397E-02 -3.0188E+00 -1.2341E-01  5.0426E-01 -5.0188E-01  9.5969E-02  1.4126E+00 -9.3392E+00 -1.5785E-01 -2.0981E-01
             5.9488E-01
 GRADIENT:  -2.4876E+00  1.0076E+00  5.8114E+00  2.1604E+01 -1.1179E+01  1.8935E-01 -5.9855E-01  0.0000E+00 -1.6181E+00 -4.4145E-01
            -2.2302E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1889.53299269625        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1183
 NPARAMETR:  9.5335E-01  1.0000E-02  7.9659E-01  1.5052E+00  5.4251E-01  9.9453E-01  4.8579E+00  1.0000E-02  7.7024E-01  7.3464E-01
             1.6434E+00
 PARAMETER:  5.2230E-02 -4.6551E+00 -1.2742E-01  5.0893E-01 -5.1155E-01  9.4512E-02  1.6806E+00 -1.5043E+01 -1.6105E-01 -2.0838E-01
             5.9677E-01
 GRADIENT:   2.9245E-02  0.0000E+00 -1.8453E-01 -1.2597E+00  5.2212E-01  6.4879E-03 -8.1527E-02  0.0000E+00  6.1935E-02  5.3612E-02
             1.2750E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1889.57647582878        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1361
 NPARAMETR:  9.5288E-01  1.0000E-02  7.9596E-01  1.5102E+00  5.4187E-01  9.9438E-01  1.0221E+01  1.0000E-02  7.6950E-01  7.3387E-01
             1.6434E+00
 PARAMETER:  5.1738E-02 -4.6551E+00 -1.2821E-01  5.1227E-01 -5.1274E-01  9.4363E-02  2.4244E+00 -1.5043E+01 -1.6201E-01 -2.0943E-01
             5.9679E-01
 GRADIENT:  -1.1332E+00  0.0000E+00 -6.7286E-01  9.6407E+00 -9.4813E-01 -6.1466E-02  1.4583E+00  0.0000E+00 -9.2079E-02 -6.2186E-01
            -5.8279E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1889.61176246319        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:     1519
 NPARAMETR:  9.5248E-01  1.0000E-02  7.9579E-01  1.5049E+00  5.4197E-01  9.9408E-01  1.0189E+01  1.0000E-02  7.6921E-01  7.3359E-01
             1.6431E+00
 PARAMETER:  5.1313E-02 -4.6551E+00 -1.2842E-01  5.0869E-01 -5.1255E-01  9.4067E-02  2.4213E+00 -1.5043E+01 -1.6239E-01 -2.0981E-01
             5.9656E-01
 GRADIENT:  -1.9250E+00  0.0000E+00 -3.7169E-02 -2.6812E+00  4.9373E-01 -1.3781E-01  1.3933E+00  0.0000E+00 -1.4727E-01 -7.0213E-01
            -5.6502E-01

0ITERATION NO.:   52    OBJECTIVE VALUE:  -1889.61340917627        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1576
 NPARAMETR:  9.5342E-01  1.0000E-02  7.9557E-01  1.5054E+00  5.4214E-01  9.9463E-01  9.9452E+00  1.0000E-02  7.6941E-01  7.3368E-01
             1.6430E+00
 PARAMETER:  5.2303E-02 -4.6551E+00 -1.2870E-01  5.0905E-01 -5.1224E-01  9.4612E-02  2.3971E+00 -1.5043E+01 -1.6213E-01 -2.0968E-01
             5.9655E-01
 GRADIENT:   2.0780E-01  0.0000E+00 -6.3729E-01 -3.9379E-01  1.0089E+00  4.7462E-02 -5.8879E-02  0.0000E+00  2.8854E-03  5.9561E-03
             3.6518E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1576
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.9002E-04  5.5534E-04 -3.1133E-05 -6.6944E-03 -1.2972E-02
 SE:             2.9670E-02  2.0445E-03  2.0532E-04  2.8812E-02  2.3383E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8413E-01  7.8591E-01  8.7948E-01  8.1627E-01  5.7907E-01

 ETASHRINKSD(%)  6.0212E-01  9.3151E+01  9.9312E+01  3.4771E+00  2.1664E+01
 ETASHRINKVR(%)  1.2006E+00  9.9531E+01  9.9995E+01  6.8334E+00  3.8635E+01
 EBVSHRINKSD(%)  8.4312E-01  9.4094E+01  9.9232E+01  3.4135E+00  2.1184E+01
 EBVSHRINKVR(%)  1.6791E+00  9.9651E+01  9.9994E+01  6.7104E+00  3.7880E+01
 RELATIVEINF(%)  9.3143E+01  1.9671E-02  3.9862E-04  7.6338E+00  4.1974E+00
 EPSSHRINKSD(%)  2.9009E+01
 EPSSHRINKVR(%)  4.9603E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1889.6134091762676     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -970.67487597159493     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.81
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1889.613       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.53E-01  1.00E-02  7.96E-01  1.51E+00  5.42E-01  9.95E-01  9.95E+00  1.00E-02  7.69E-01  7.34E-01  1.64E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.856
Stop Time:
Fri Oct  1 09:42:57 CDT 2021
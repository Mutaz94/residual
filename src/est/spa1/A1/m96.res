Wed Sep 29 22:56:48 CDT 2021
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
$DATA ../../../../data/spa1/A1/dat96.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1822.88277911873        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9018E+02  1.4177E+01  2.3645E+01  7.5540E+01  6.8395E+01  2.8734E+01  8.6178E+00 -1.1888E+02  2.0972E+01  8.1363E-01
            -3.9581E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1852.53979624002        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.0763E-01  1.1591E+00  1.0562E+00  9.3031E-01  9.9387E-01  1.0504E+00  8.3052E-01  1.4846E+00  7.3358E-01  6.5213E-01
             2.3425E+00
 PARAMETER:  3.0839E-03  2.4766E-01  1.5467E-01  2.7760E-02  9.3855E-02  1.4913E-01 -8.5699E-02  4.9517E-01 -2.0982E-01 -3.2751E-01
             9.5124E-01
 GRADIENT:  -7.0409E+01  5.0959E+01  7.3315E+00  2.6846E+01 -7.1355E+01  2.4339E+01 -1.2830E+01  1.7385E+01 -1.9764E+01  1.2680E+01
             2.4272E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1884.51875964925        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  8.9408E-01  9.9557E-01  1.3150E+00  1.0048E+00  1.0644E+00  9.6834E-01  1.5745E+00  1.4992E+00  5.3227E-01  4.8757E-01
             1.8739E+00
 PARAMETER: -1.1956E-02  9.5559E-02  3.7381E-01  1.0478E-01  1.6240E-01  6.7828E-02  5.5392E-01  5.0496E-01 -5.3060E-01 -6.1832E-01
             7.2804E-01
 GRADIENT:  -7.0646E+01  1.3854E+01  1.1367E+01 -3.7137E+01 -1.2656E+01 -1.2011E+01  4.6730E+01  3.8485E+00 -2.5826E+00 -2.6577E+00
             8.7484E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1903.76977859696        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      250
 NPARAMETR:  8.9169E-01  1.0515E+00  5.3745E-01  9.1848E-01  7.2548E-01  9.8763E-01  9.8796E-01  8.2908E-01  8.6362E-01  4.1744E-01
             1.5516E+00
 PARAMETER: -1.4633E-02  1.5022E-01 -5.2092E-01  1.4967E-02 -2.2092E-01  8.7555E-02  8.7887E-02 -8.7441E-02 -4.6627E-02 -7.7361E-01
             5.3926E-01
 GRADIENT:  -1.9386E+02 -2.5083E+01 -1.4045E+01 -1.6319E+01  1.1390E+01 -2.4894E+01 -1.2781E+00  7.2438E+00 -2.4142E-01  1.5831E+00
            -1.5814E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1912.59681967496        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      429
 NPARAMETR:  9.6958E-01  1.1411E+00  5.8373E-01  8.8671E-01  7.8402E-01  1.0112E+00  9.2639E-01  9.4754E-01  9.0979E-01  4.3122E-01
             1.5810E+00
 PARAMETER:  6.9108E-02  2.3197E-01 -4.3832E-01 -2.0236E-02 -1.4332E-01  1.1116E-01  2.3537E-02  4.6114E-02  5.4588E-03 -7.4113E-01
             5.5803E-01
 GRADIENT:  -6.3784E+00  1.0199E+00  4.7954E+00 -5.1793E+00 -1.7497E+01  1.3297E+00 -1.6181E+00  6.8937E+00  2.4583E+00  2.5584E-01
            -5.7009E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1915.40767903413        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      604
 NPARAMETR:  9.6996E-01  1.2394E+00  5.7287E-01  8.1776E-01  8.4010E-01  9.9080E-01  9.0879E-01  4.7594E-01  9.9700E-01  5.1429E-01
             1.6227E+00
 PARAMETER:  6.9497E-02  3.1460E-01 -4.5710E-01 -1.0118E-01 -7.4231E-02  9.0761E-02  4.3606E-03 -6.4246E-01  9.6996E-02 -5.6497E-01
             5.8410E-01
 GRADIENT:  -6.1138E+00 -1.0274E+01 -2.0228E-01 -2.1696E+01 -9.1832E+00 -5.9626E+00  6.3374E+00  2.1412E+00  7.0518E+00  2.7245E-01
             8.6079E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1918.38563843397        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      780
 NPARAMETR:  9.6839E-01  9.9483E-01  1.0002E+00  1.0174E+00  9.5716E-01  1.0027E+00  8.9656E-01  2.0651E-01  9.0982E-01  8.0757E-01
             1.6043E+00
 PARAMETER:  6.7884E-02  9.4813E-02  1.0020E-01  1.1728E-01  5.6220E-02  1.0268E-01 -9.1898E-03 -1.4774E+00  5.4895E-03 -1.1372E-01
             5.7268E-01
 GRADIENT:  -8.6801E-01  1.2148E+01  4.9411E+00  9.4642E+00 -4.5195E+00  5.1367E-01 -6.8155E-01  2.1015E-01 -7.8977E-01 -6.5183E-01
            -3.3210E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1919.55843555108        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      958
 NPARAMETR:  9.6695E-01  6.8566E-01  8.9156E-01  1.1773E+00  7.8632E-01  9.9594E-01  1.3190E+00  8.0128E-02  7.7107E-01  6.9062E-01
             1.6234E+00
 PARAMETER:  6.6394E-02 -2.7738E-01 -1.4781E-02  2.6324E-01 -1.4039E-01  9.5932E-02  3.7684E-01 -2.4241E+00 -1.5998E-01 -2.7016E-01
             5.8455E-01
 GRADIENT:   6.3682E-01 -7.4962E+00 -8.3686E+00 -1.2547E+01  1.2199E+01 -1.0780E+00 -9.4623E-01  6.3041E-02 -8.5112E-01  4.9234E-01
             1.0425E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1919.83290971228        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1133
 NPARAMETR:  9.6517E-01  6.0292E-01  9.4524E-01  1.2393E+00  7.7960E-01  9.9753E-01  1.4723E+00  4.5605E-02  7.4898E-01  7.1858E-01
             1.6054E+00
 PARAMETER:  6.4546E-02 -4.0598E-01  4.3682E-02  3.1455E-01 -1.4898E-01  9.7527E-02  4.8685E-01 -2.9877E+00 -1.8904E-01 -2.3048E-01
             5.7336E-01
 GRADIENT:  -3.6426E-02  3.6493E+00  1.1227E+00  5.3494E+00 -3.0702E+00 -4.3688E-02  7.6283E-01  1.4263E-02 -7.1098E-01 -6.1639E-02
            -3.4347E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1919.88785824167        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1308
 NPARAMETR:  9.6315E-01  5.0305E-01  1.0114E+00  1.3018E+00  7.8242E-01  9.9548E-01  1.6213E+00  1.6298E-02  7.3048E-01  7.5860E-01
             1.6055E+00
 PARAMETER:  6.2450E-02 -5.8706E-01  1.1130E-01  3.6374E-01 -1.4536E-01  9.5474E-02  5.8321E-01 -4.0167E+00 -2.1405E-01 -1.7628E-01
             5.7345E-01
 GRADIENT:  -4.6683E-01  8.7528E-01 -3.4891E-01  2.7799E+00  9.2179E-01 -8.8376E-02  7.0570E-02  1.2788E-03 -1.5768E-01 -6.8930E-02
            -2.1294E-01

0ITERATION NO.:   48    OBJECTIVE VALUE:  -1919.88996194507        NO. OF FUNC. EVALS.: 102
 CUMULATIVE NO. OF FUNC. EVALS.:     1410
 NPARAMETR:  9.6350E-01  5.0402E-01  1.0111E+00  1.3019E+00  7.8164E-01  9.9563E-01  1.6239E+00  1.0000E-02  7.3093E-01  7.5921E-01
             1.6054E+00
 PARAMETER:  6.2913E-02 -5.9105E-01  1.1170E-01  3.6237E-01 -1.4583E-01  9.5800E-02  5.8246E-01 -4.8977E+00 -2.1327E-01 -1.7560E-01
             5.7367E-01
 GRADIENT:   1.3422E-01 -4.3766E-01  3.4794E-01 -2.8115E+00  6.4529E-01  4.2669E-02 -7.7094E-02  0.0000E+00  2.5232E-02 -7.8984E-03
             1.6093E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1410
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.4740E-04  1.3491E-02 -1.4389E-04 -1.2219E-02 -1.3260E-02
 SE:             2.9686E-02  1.6470E-02  1.7583E-04  2.5391E-02  2.1021E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8260E-01  4.1271E-01  4.1316E-01  6.3034E-01  5.2818E-01

 ETASHRINKSD(%)  5.4751E-01  4.4823E+01  9.9411E+01  1.4936E+01  2.9576E+01
 ETASHRINKVR(%)  1.0920E+00  6.9555E+01  9.9997E+01  2.7642E+01  5.0404E+01
 EBVSHRINKSD(%)  8.1873E-01  4.8074E+01  9.9383E+01  1.4084E+01  2.8321E+01
 EBVSHRINKVR(%)  1.6307E+00  7.3037E+01  9.9996E+01  2.6185E+01  4.8621E+01
 RELATIVEINF(%)  9.7058E+01  1.4868E+00  3.0728E-04  5.1242E+00  3.8646E+00
 EPSSHRINKSD(%)  2.8718E+01
 EPSSHRINKVR(%)  4.9188E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1919.8899619450663     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1000.9514287403936     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.47
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     7.09
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1919.890       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.64E-01  5.01E-01  1.01E+00  1.30E+00  7.82E-01  9.96E-01  1.62E+00  1.00E-02  7.31E-01  7.59E-01  1.61E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.40E+03
 
 TH 2
+       -8.78E+01  4.54E+02
 
 TH 3
+        9.04E+00  1.73E+02  3.93E+02
 
 TH 4
+       -7.63E+01  5.05E+02 -1.49E+02  9.20E+02
 
 TH 5
+        2.99E+01 -4.71E+02 -7.84E+02  1.08E+02  1.61E+03
 
 TH 6
+        1.43E+02 -1.09E+01  2.87E+00  2.62E+00 -1.31E-01  1.78E+02
 
 TH 7
+        2.12E-01  9.54E+00  6.41E+00  7.84E+00 -1.51E+01  1.52E+00  2.54E-01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        4.65E+01 -7.32E+00 -9.74E+00  4.55E+00  2.04E+01  4.42E+01  2.80E-01  0.00E+00  1.17E+01
 
 TH10
+       -1.78E+01  8.53E+00  1.67E+01 -6.46E+00 -3.49E+01 -5.30E+00  3.53E-01  0.00E+00 -1.32E+00  1.94E+00
 
 TH11
+       -8.12E+01 -4.86E+00 -9.04E-01 -1.53E+01 -2.31E+00 -2.11E+01  2.80E-01  0.00E+00 -2.87E+00  6.08E+00  3.09E+01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.19E+03
 
 TH 2
+       -2.67E+01  4.72E+02
 
 TH 3
+        3.06E+00  1.76E+02  4.24E+02
 
 TH 4
+       -1.10E+01  4.81E+02 -1.46E+02  9.14E+02
 
 TH 5
+        6.34E+00 -4.57E+02 -7.71E+02  1.05E+02  1.62E+03
 
 TH 6
+        1.25E+00 -5.21E+00  1.92E+00 -4.08E+00 -2.30E+00  1.94E+02
 
 TH 7
+        4.96E-01  2.25E+01  6.91E+00 -2.18E-01 -1.05E+01 -2.16E-01  9.90E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.73E+00 -1.72E+01 -3.67E+00  3.27E+00  1.04E+01 -3.75E-01  1.48E+01  0.00E+00  2.16E+02
 
 TH10
+        1.74E-01  2.02E+01 -2.39E+01 -1.71E+01 -4.29E+01  6.67E-01  7.52E+00  0.00E+00 -9.14E-01  8.89E+01
 
 TH11
+       -1.05E+01 -6.27E+00 -1.71E+01 -1.83E+01  3.64E+00  2.46E+00  2.94E+00  0.00E+00  9.62E+00  3.08E+01  1.72E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.19E+03
 
 TH 2
+        2.25E+01  4.60E+02
 
 TH 3
+        9.36E+00  1.74E+02  3.92E+02
 
 TH 4
+        5.54E+01  4.67E+02 -1.51E+02  9.11E+02
 
 TH 5
+        6.31E-01 -4.70E+02 -7.47E+02  1.06E+02  1.63E+03
 
 TH 6
+       -1.18E+02 -1.81E+01  2.49E+00 -2.19E+01 -1.68E+01  2.26E+02
 
 TH 7
+        4.93E+00  1.81E+01  5.35E+00 -1.88E+00 -6.66E+00 -1.34E+00  8.11E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        5.93E+01 -9.56E+00 -4.09E+01  3.27E+01  6.91E+01  2.01E+01  1.23E+01  0.00E+00  1.40E+02
 
 TH10
+       -2.42E+01  2.67E+01  5.08E+00 -2.64E+01 -8.30E+01  4.30E+00  6.01E+00  0.00E+00 -5.63E+00  9.50E+01
 
 TH11
+        3.24E+02 -3.19E+01 -3.19E+01  5.27E+00  5.44E+01  1.11E+02  6.89E+00  0.00E+00  1.05E+02  4.85E+00  1.19E+03
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       26.655
Stop Time:
Wed Sep 29 22:57:16 CDT 2021

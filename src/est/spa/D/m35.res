Sat Sep 18 15:17:55 CDT 2021
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
$DATA ../../../../data/spa/D/dat35.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 (E4.0,E3.0,E22.0,E4.0,2E2.0)

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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m35.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   13622.9929005405        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   7.0039E+00  1.7923E+02 -1.1469E+02  7.5645E+01  2.4775E+02 -1.2670E+03 -5.7184E+02 -2.1722E+01 -1.1492E+03 -4.6965E+02
            -2.7085E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -679.054894153454        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.7477E+00  1.2613E+00  1.0270E+00  1.7037E+00  1.0657E+00  1.5662E+00  1.1572E+00  9.8148E-01  1.2515E+00  1.0365E+00
             1.4739E+01
 PARAMETER:  6.5829E-01  3.3217E-01  1.2660E-01  6.3280E-01  1.6359E-01  5.4868E-01  2.4600E-01  8.1303E-02  3.2436E-01  1.3589E-01
             2.7905E+00
 GRADIENT:   9.2583E+01  3.3660E+01  1.6467E+00  5.3649E+01 -1.5877E+01  2.0530E+01 -3.9545E+00  3.5372E+00  1.8895E-01  3.6032E+00
             5.9521E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -704.840131510515        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.4796E+00  8.3723E-01  1.5966E+00  1.7219E+00  1.4851E+00  1.3126E+00  2.7453E+00  4.5347E-01  8.6190E-01  1.7166E+00
             1.4170E+01
 PARAMETER:  4.9179E-01 -7.7659E-02  5.6786E-01  6.4345E-01  4.9548E-01  3.7199E-01  1.1099E+00 -6.9083E-01 -4.8614E-02  6.4032E-01
             2.7511E+00
 GRADIENT:   2.4378E+01  2.1948E+01  4.9043E+00  2.1681E+01 -1.2495E+01  2.0315E+00  1.3169E+01  3.4041E-01  3.4526E+00  3.6596E+00
             1.0132E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -727.860902341092        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.1867E+00  4.5967E-01  2.6843E+00  1.5709E+00  4.5725E+00  1.2680E+00  2.0158E+00  5.6041E-01  7.3902E-01  9.4679E+00
             1.1635E+01
 PARAMETER:  2.7120E-01 -6.7725E-01  1.0874E+00  5.5164E-01  1.6201E+00  3.3744E-01  8.0103E-01 -4.7909E-01 -2.0243E-01  2.3479E+00
             2.5540E+00
 GRADIENT:  -4.5194E+01  7.7123E-01  8.6988E+00 -1.6314E+01 -7.7630E+00  1.4887E+01  2.5688E+00 -5.3340E-03  8.3153E+00  1.0723E+01
             3.6669E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -751.383052316748        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      297
 NPARAMETR:  1.1369E+00  1.8299E-01  7.0775E-01  1.4480E+00  4.5339E+00  1.0334E+00  1.5954E+00  2.7881E-02  1.9062E-01  6.3991E+00
             1.0872E+01
 PARAMETER:  2.2828E-01 -1.5983E+00 -2.4567E-01  4.7019E-01  1.6116E+00  1.3290E-01  5.6713E-01 -3.4798E+00 -1.5575E+00  1.9562E+00
             2.4862E+00
 GRADIENT:   3.3699E+01  5.8456E+00  4.7608E+00  3.0994E+01 -1.3603E+01 -2.8486E+01  1.3815E-01 -3.7133E-04  7.2256E-02  7.7092E+00
            -6.7418E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -764.810544180285        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      367
 NPARAMETR:  1.0690E+00  1.1653E-01  4.6558E-01  1.3379E+00  7.3122E+00  1.1173E+00  1.0923E+00  1.0000E-02  7.5530E-02  6.9130E+00
             1.1165E+01
 PARAMETER:  1.6670E-01 -2.0496E+00 -6.6448E-01  3.9107E-01  2.0895E+00  2.1089E-01  1.8826E-01 -5.5192E+00 -2.4832E+00  2.0334E+00
             2.5128E+00
 GRADIENT:   3.4849E+00  4.4825E+00 -1.1807E+01  2.2083E+01 -5.9411E+00 -6.9851E+00  6.9671E-02  0.0000E+00  1.8391E-01  4.7970E+00
            -9.5452E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -766.662401959413        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      438
 NPARAMETR:  1.0527E+00  4.8598E-02  4.6246E-01  1.3734E+00  7.3393E+00  1.1722E+00  1.0913E+00  1.0000E-02  3.6064E-02  7.0547E+00
             1.1108E+01
 PARAMETER:  1.5136E-01 -2.9242E+00 -6.7119E-01  4.1730E-01  2.0932E+00  2.5890E-01  1.8741E-01 -6.1668E+00 -3.2225E+00  2.0537E+00
             2.5076E+00
 GRADIENT:  -9.0715E+00  1.9602E+00 -1.0595E+01  3.5672E+01 -6.7150E+00  8.0888E-01  9.4907E-03  0.0000E+00  3.7453E-02  8.2390E+00
            -1.2356E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -767.855359747522        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      508
 NPARAMETR:  1.0537E+00  1.0123E-02  4.5901E-01  1.3680E+00  6.7776E+00  1.1523E+00  9.9084E-01  1.0000E-02  1.0000E-02  6.6835E+00
             1.1152E+01
 PARAMETER:  1.5233E-01 -4.4930E+00 -6.7868E-01  4.1338E-01  2.0136E+00  2.4178E-01  9.0796E-02 -7.0530E+00 -4.6770E+00  1.9996E+00
             2.5117E+00
 GRADIENT:  -2.1552E-02  2.6088E-01  1.6007E-02 -5.2045E-01 -1.6847E-01  1.7180E+00  4.0979E-04  0.0000E+00  0.0000E+00 -1.4819E+00
            -5.1627E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -767.891807972539        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      581
 NPARAMETR:  1.0549E+00  1.0000E-02  4.6015E-01  1.3706E+00  6.8988E+00  1.1502E+00  9.7840E-01  1.0000E-02  1.0000E-02  6.8095E+00
             1.1165E+01
 PARAMETER:  1.5344E-01 -4.6149E+00 -6.7621E-01  4.1522E-01  2.0313E+00  2.3991E-01  7.8160E-02 -7.1400E+00 -4.7974E+00  2.0183E+00
             2.5128E+00
 GRADIENT:   6.4629E-01  0.0000E+00  9.2899E-01 -1.2356E+00  3.8555E-01  1.1329E-01  4.0608E-04  0.0000E+00  0.0000E+00  8.7708E-02
             1.0342E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -767.897947042590        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      758
 NPARAMETR:  1.0571E+00  1.0000E-02  4.6063E-01  1.3741E+00  6.9064E+00  1.1513E+00  9.7552E-01  1.0000E-02  1.0000E-02  6.8157E+00
             1.1202E+01
 PARAMETER:  1.5552E-01 -4.6178E+00 -6.7515E-01  4.1778E-01  2.0325E+00  2.4086E-01  7.5212E-02 -7.1562E+00 -4.8059E+00  2.0192E+00
             2.5161E+00
 GRADIENT:   6.8525E-03  0.0000E+00  3.9201E-04 -1.4458E-02  2.1181E-03  8.3468E-04  3.9666E-04  0.0000E+00  0.0000E+00 -1.1360E-03
             2.5678E-02

0ITERATION NO.:   46    OBJECTIVE VALUE:  -767.897947042590        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:      816
 NPARAMETR:  1.0571E+00  1.0000E-02  4.6063E-01  1.3741E+00  6.9065E+00  1.1513E+00  9.7561E-01  1.0000E-02  1.0000E-02  6.8149E+00
             1.1202E+01
 PARAMETER:  1.5552E-01 -4.6178E+00 -6.7515E-01  4.1778E-01  2.0325E+00  2.4086E-01  7.5212E-02 -7.1562E+00 -4.8059E+00  2.0192E+00
             2.5161E+00
 GRADIENT:   7.4332E-03  0.0000E+00  9.7038E-04 -9.9031E-03 -1.0260E-03  1.3338E-03 -1.2536E-02  0.0000E+00  0.0000E+00  7.7065E-02
             5.6284E-03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      816
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.5024E-03 -5.7689E-05 -1.1513E-04 -1.6945E-04 -4.1852E-02
 SE:             2.7758E-02  7.0252E-05  8.9085E-05  2.9437E-04  9.5488E-03
 N:                     100         100         100         100         100

 P VAL.:         7.3210E-01  4.1155E-01  1.9625E-01  5.6486E-01  1.1718E-05

 ETASHRINKSD(%)  7.0066E+00  9.9765E+01  9.9702E+01  9.9014E+01  6.8010E+01
 ETASHRINKVR(%)  1.3522E+01  9.9999E+01  9.9999E+01  9.9990E+01  8.9767E+01
 EBVSHRINKSD(%)  7.1525E+00  9.9720E+01  9.9659E+01  9.8929E+01  6.2189E+01
 EBVSHRINKVR(%)  1.3793E+01  9.9999E+01  9.9999E+01  9.9989E+01  8.5703E+01
 RELATIVEINF(%)  1.6585E+01  2.0516E-05  8.4025E-05  1.8774E-04  5.6939E+00
 EPSSHRINKSD(%)  6.4668E+00
 EPSSHRINKVR(%)  1.2515E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -767.89794704258964     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -32.747120478851457     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    10.14
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     8.35
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -767.898       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  1.00E-02  4.61E-01  1.37E+00  6.91E+00  1.15E+00  9.76E-01  1.00E-02  1.00E-02  6.82E+00  1.12E+01
 


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
+        8.54E+02
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+        1.51E+02  0.00E+00  6.63E+02
 
 TH 4
+       -4.46E+02  0.00E+00 -6.55E+02  7.55E+02
 
 TH 5
+       -2.70E+00  0.00E+00  2.39E+01 -2.07E+01  9.45E-01
 
 TH 6
+       -3.02E+01  0.00E+00  6.02E+01 -4.35E+01  2.61E+00  7.81E+00
 
 TH 7
+        3.01E+01  0.00E+00  2.55E+00 -1.32E+01 -2.01E-01 -1.35E+00  1.07E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        1.96E+01  0.00E+00 -1.53E+01  6.74E+00 -7.82E-01 -2.62E+00  7.72E-01  0.00E+00  0.00E+00  1.00E+00
 
 TH11
+       -1.70E+01  0.00E+00  1.63E+01 -8.59E+00  7.94E-01  2.59E+00 -6.81E-01  0.00E+00  0.00E+00 -9.59E-01  9.22E-01
 
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
+        7.20E+02
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -4.56E+01  0.00E+00  7.84E+02
 
 TH 4
+       -1.66E+02  0.00E+00 -5.54E+02  7.00E+02
 
 TH 5
+       -1.02E+01  0.00E+00  2.73E+01 -2.27E+01  2.62E+00
 
 TH 6
+       -5.61E+01  0.00E+00  5.25E+01 -6.49E+01  4.13E+00  1.38E+02
 
 TH 7
+        2.86E+01  0.00E+00  1.03E+00  1.41E+00 -7.22E-01 -1.36E+01  4.50E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        2.31E+01  0.00E+00 -2.08E+01  1.39E+01 -2.95E+00 -1.53E+01 -3.65E-01  0.00E+00  0.00E+00  7.00E+00
 
 TH11
+       -2.23E+01  0.00E+00  1.79E+01 -1.93E+01  1.52E+00  6.75E+00  2.17E-01  0.00E+00  0.00E+00 -2.22E+00  4.95E+00
 
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
+        6.54E+02
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -2.87E+02  0.00E+00  8.16E+02
 
 TH 4
+        4.82E+01  0.00E+00 -6.40E+02  6.52E+02
 
 TH 5
+        9.47E-01  0.00E+00 -1.25E+00  1.70E-02  2.41E-01
 
 TH 6
+       -5.26E+00  0.00E+00  6.09E+01 -7.46E+01  8.79E-02  7.59E+01
 
 TH 7
+        1.60E-02  0.00E+00 -1.96E-02  2.47E-03  6.27E-04 -5.38E-03  2.26E-05
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+       -5.89E-01  0.00E+00 -4.49E+00  4.40E+00 -3.39E-01 -1.08E+00 -1.07E-03  0.00E+00  0.00E+00  7.91E-01
 
 TH11
+       -5.90E+00  0.00E+00  1.13E+01 -1.41E+01 -5.09E-02  6.60E+00 -2.96E-03  0.00E+00  0.00E+00 -1.59E-01  1.84E+01
 
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
 #CPUT: Total CPU Time in Seconds,       18.575
Stop Time:
Sat Sep 18 15:18:15 CDT 2021
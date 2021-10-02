Fri Oct  1 12:45:17 CDT 2021
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
$DATA ../../../../data/SD2/SL3/dat14.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m14.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2053.48995947750        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9839E+02 -7.8168E+01 -5.2885E+01  2.2705E+01  1.4508E+02  2.8030E+01 -4.5260E-01 -6.1779E+00  4.0424E+01  2.2969E+00
            -1.5058E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2058.90856638279        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  1.0666E+00  1.0795E+00  9.5974E-01  9.8461E-01  8.5856E-01  9.7059E-01  9.5385E-01  1.0500E+00  7.6207E-01  8.2597E-01
             1.4363E+00
 PARAMETER:  1.6443E-01  1.7646E-01  5.8906E-02  8.4488E-02 -5.2499E-02  7.0150E-02  5.2750E-02  1.4877E-01 -1.7171E-01 -9.1200E-02
             4.6206E-01
 GRADIENT:   4.4935E+02  2.2585E+01  4.6222E+01 -4.4225E+01 -8.2589E+01 -1.8011E+01 -6.9260E+00 -5.8322E+00 -1.1439E+01  7.0065E+00
             1.3954E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2062.52878771753        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      186
 NPARAMETR:  1.0471E+00  1.0769E+00  6.5224E-01  9.9028E-01  7.0315E-01  9.7997E-01  1.1528E+00  1.0769E+00  7.6794E-01  5.4298E-01
             1.4087E+00
 PARAMETER:  1.4603E-01  1.7407E-01 -3.2734E-01  9.0234E-02 -2.5219E-01  7.9766E-02  2.4222E-01  1.7411E-01 -1.6405E-01 -5.1068E-01
             4.4268E-01
 GRADIENT:   5.6444E+01  4.7063E+01  4.1605E+01 -2.1201E+01 -1.1915E+02 -3.3396E+01  8.3654E+00  7.0884E+00 -2.6759E+00  3.3212E+00
             1.3084E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2082.40568798700        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      363
 NPARAMETR:  1.0231E+00  1.0753E+00  9.2507E-01  1.0098E+00  8.8854E-01  1.0480E+00  1.0452E+00  1.3343E+00  8.1533E-01  6.9187E-01
             1.1540E+00
 PARAMETER:  1.2288E-01  1.7262E-01  2.2109E-02  1.0979E-01 -1.8177E-02  1.4693E-01  1.4420E-01  3.8838E-01 -1.0416E-01 -2.6836E-01
             2.4321E-01
 GRADIENT:   1.1957E+01 -1.3568E+01 -1.1691E+01  9.8648E+00  3.3845E+01 -3.8960E+00  9.2199E-02 -1.7091E-01  1.6334E+00 -6.1896E+00
            -8.2464E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2084.07562054628        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      543
 NPARAMETR:  1.0265E+00  1.3557E+00  6.1803E-01  8.2769E-01  8.4772E-01  1.0649E+00  8.7294E-01  1.0653E+00  9.2922E-01  6.7742E-01
             1.1501E+00
 PARAMETER:  1.2612E-01  4.0431E-01 -3.8122E-01 -8.9118E-02 -6.5210E-02  1.6290E-01 -3.5893E-02  1.6330E-01  2.6585E-02 -2.8946E-01
             2.3984E-01
 GRADIENT:   1.2383E+01  2.0563E+01  7.4080E+00  1.2661E+01 -1.5378E+01  1.1011E+00 -3.2551E+00 -2.1729E+00 -9.5743E-01 -2.7484E+00
            -6.1355E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2084.90498586910        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      719
 NPARAMETR:  1.0181E+00  1.5701E+00  5.6085E-01  6.8989E-01  9.4374E-01  1.0633E+00  7.7968E-01  1.2397E+00  1.0638E+00  7.6961E-01
             1.1588E+00
 PARAMETER:  1.1798E-01  5.5112E-01 -4.7829E-01 -2.7123E-01  4.2096E-02  1.6136E-01 -1.4888E-01  3.1487E-01  1.6188E-01 -1.6187E-01
             2.4742E-01
 GRADIENT:   6.1557E+01  9.0412E-01 -1.2245E+00  6.5295E+00  3.4823E+00  1.4516E+01 -9.0322E-01  5.3232E-01 -7.6024E-01  1.1839E+00
             1.5767E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2084.97203508153        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      898
 NPARAMETR:  1.0182E+00  1.7205E+00  4.9677E-01  5.9896E-01  9.9017E-01  1.0647E+00  7.3030E-01  1.4091E+00  1.1959E+00  7.8126E-01
             1.1592E+00
 PARAMETER:  1.1808E-01  6.4264E-01 -5.9963E-01 -4.1257E-01  9.0125E-02  1.6265E-01 -2.1430E-01  4.4296E-01  2.7890E-01 -1.4685E-01
             2.4775E-01
 GRADIENT:  -5.3425E+00  1.6170E+01  1.6258E+00  8.6066E+00 -4.6246E+00  5.0243E-01 -9.9932E-01 -1.2975E+00  9.5696E-01 -1.0406E+00
             6.3859E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2084.99312139781        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1073
 NPARAMETR:  1.0188E+00  1.7904E+00  4.7224E-01  5.5646E-01  1.0159E+00  1.0634E+00  7.1336E-01  1.5120E+00  1.2698E+00  7.9129E-01
             1.1551E+00
 PARAMETER:  1.1862E-01  6.8243E-01 -6.5027E-01 -4.8616E-01  1.1573E-01  1.6144E-01 -2.3777E-01  5.1343E-01  3.3884E-01 -1.3409E-01
             2.4421E-01
 GRADIENT:  -4.4759E+00  2.2945E+01  2.2511E+00  8.6628E+00 -9.0453E+00 -5.0462E-02 -4.0910E-01 -1.3225E+00  1.5816E+00 -2.2521E+00
             5.4506E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2085.23888074925        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1254
 NPARAMETR:  1.0205E+00  1.8045E+00  4.6629E-01  5.4092E-01  1.0317E+00  1.0631E+00  7.0862E-01  1.6189E+00  1.2756E+00  8.1707E-01
             1.1433E+00
 PARAMETER:  1.2034E-01  6.9027E-01 -6.6296E-01 -5.1449E-01  1.3122E-01  1.6122E-01 -2.4444E-01  5.8176E-01  3.4341E-01 -1.0204E-01
             2.3388E-01
 GRADIENT:  -7.5049E-01  2.2073E+00 -1.4369E+00  4.0401E+00 -1.3281E+00 -1.1040E-01  3.3132E-01 -3.5122E-02  5.4456E-02 -1.2080E-01
            -3.8473E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2085.29192174840        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1439
 NPARAMETR:  1.0224E+00  1.8109E+00  4.8551E-01  5.3501E-01  1.0521E+00  1.0642E+00  7.0105E-01  1.7309E+00  1.2905E+00  8.2990E-01
             1.1429E+00
 PARAMETER:  1.2219E-01  6.9382E-01 -6.2255E-01 -5.2547E-01  1.5078E-01  1.6223E-01 -2.5517E-01  6.4866E-01  3.5505E-01 -8.6444E-02
             2.3354E-01
 GRADIENT:   3.1714E+00 -8.5340E+00 -1.8250E+00  1.9635E+00  5.8964E+00  3.5524E-01 -1.0334E-01 -3.5646E-02  1.6909E-01 -2.4077E-01
             1.4017E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2085.30609192384        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1616
 NPARAMETR:  1.0218E+00  1.8107E+00  4.8898E-01  5.3490E-01  1.0492E+00  1.0640E+00  7.0165E-01  1.7406E+00  1.2899E+00  8.2989E-01
             1.1427E+00
 PARAMETER:  1.2152E-01  6.9374E-01 -6.1543E-01 -5.2568E-01  1.4800E-01  1.6206E-01 -2.5432E-01  6.5425E-01  3.5453E-01 -8.6463E-02
             2.3339E-01
 GRADIENT:   1.8666E+00 -5.4949E+00 -2.2412E-02 -2.9795E-01 -1.0631E+00  2.9876E-01  1.1224E-01 -2.6072E-02  7.2591E-02  1.7617E-01
             7.9550E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2085.30665071112        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1802             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0217E+00  1.8104E+00  4.8973E-01  5.3509E-01  1.0503E+00  1.0640E+00  7.0127E-01  1.7463E+00  1.2896E+00  8.2818E-01
             1.1425E+00
 PARAMETER:  1.2152E-01  6.9357E-01 -6.1389E-01 -5.2532E-01  1.4910E-01  1.6205E-01 -2.5487E-01  6.5751E-01  3.5436E-01 -8.8524E-02
             2.3326E-01
 GRADIENT:   4.0420E+02  5.9852E+02  3.5848E+00  9.3182E+01  9.4810E+00  6.2990E+01  1.0553E+01  1.4402E+00  8.6633E+00  2.3747E-01
             2.2734E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2085.30728631672        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1989
 NPARAMETR:  1.0217E+00  1.8105E+00  4.9058E-01  5.3506E-01  1.0504E+00  1.0640E+00  7.0130E-01  1.7486E+00  1.2897E+00  8.2937E-01
             1.1426E+00
 PARAMETER:  1.2151E-01  6.9361E-01 -6.1217E-01 -5.2537E-01  1.4916E-01  1.6205E-01 -2.5482E-01  6.5884E-01  3.5440E-01 -8.7084E-02
             2.3329E-01
 GRADIENT:   1.8672E+00 -6.0693E+00 -1.6224E-01 -2.0550E-01 -1.0367E-01  2.9742E-01  4.9095E-02 -1.6552E-02  3.9890E-02 -2.1098E-02
             6.6025E-03

0ITERATION NO.:   61    OBJECTIVE VALUE:  -2085.30728631672        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     2011
 NPARAMETR:  1.0217E+00  1.8105E+00  4.9058E-01  5.3506E-01  1.0504E+00  1.0640E+00  7.0130E-01  1.7486E+00  1.2897E+00  8.2937E-01
             1.1426E+00
 PARAMETER:  1.2151E-01  6.9361E-01 -6.1217E-01 -5.2537E-01  1.4916E-01  1.6205E-01 -2.5482E-01  6.5884E-01  3.5440E-01 -8.7084E-02
             2.3329E-01
 GRADIENT:   1.8672E+00 -6.0693E+00 -1.6224E-01 -2.0550E-01 -1.0367E-01  2.9742E-01  4.9095E-02 -1.6552E-02  3.9890E-02 -2.1098E-02
             6.6025E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2011
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.7128E-04 -2.7643E-02 -2.7256E-02  2.6438E-02 -4.1246E-02
 SE:             2.9874E-02  2.3810E-02  1.4308E-02  2.2095E-02  2.0287E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8474E-01  2.4564E-01  5.6792E-02  2.3148E-01  4.2044E-02

 ETASHRINKSD(%)  1.0000E-10  2.0234E+01  5.2065E+01  2.5979E+01  3.2034E+01
 ETASHRINKVR(%)  1.0000E-10  3.6374E+01  7.7022E+01  4.5210E+01  5.3807E+01
 EBVSHRINKSD(%)  3.8057E-01  2.0455E+01  5.4855E+01  2.7679E+01  3.0189E+01
 EBVSHRINKVR(%)  7.5970E-01  3.6725E+01  7.9619E+01  4.7697E+01  5.1264E+01
 RELATIVEINF(%)  9.9218E+01  6.6945E+00  5.8072E+00  5.3688E+00  1.1689E+01
 EPSSHRINKSD(%)  3.4742E+01
 EPSSHRINKVR(%)  5.7414E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2085.3072863167195     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1166.3687531120468     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    32.20
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2085.307       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.81E+00  4.91E-01  5.35E-01  1.05E+00  1.06E+00  7.01E-01  1.75E+00  1.29E+00  8.29E-01  1.14E+00
 


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
 #CPUT: Total CPU Time in Seconds,       32.240
Stop Time:
Fri Oct  1 12:45:51 CDT 2021

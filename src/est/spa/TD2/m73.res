Sat Sep 18 14:51:50 CDT 2021
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
$DATA ../../../../data/spa/TD2/dat73.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m73.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1712.93036546630        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.1723E+01 -2.7937E+01  7.2224E+00 -5.4582E+01 -4.0743E+01  4.9411E+01 -5.0965E+00  2.4653E+00 -7.4400E+00  2.4203E+01
             2.5703E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1720.74669052687        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0070E+00  1.0528E+00  1.0225E+00  1.0021E+00  1.0701E+00  8.4296E-01  1.0450E+00  1.0034E+00  1.0330E+00  8.7982E-01
             9.3520E-01
 PARAMETER:  1.0697E-01  1.5142E-01  1.2228E-01  1.0212E-01  1.6778E-01 -7.0841E-02  1.4402E-01  1.0343E-01  1.3249E-01 -2.8038E-02
             3.3001E-02
 GRADIENT:   3.0611E+01 -8.2819E+00 -6.9633E+00  1.0327E+01  2.7398E+01 -1.1573E+01 -4.3322E+00 -3.8228E+00  4.3799E-01  2.0640E+00
            -6.0680E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1722.07217252161        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:      183
 NPARAMETR:  1.0105E+00  1.0999E+00  9.6233E-01  9.7623E-01  1.0309E+00  8.5819E-01  1.1207E+00  1.0745E+00  1.0327E+00  7.5361E-01
             9.3896E-01
 PARAMETER:  1.1046E-01  1.9521E-01  6.1606E-02  7.5947E-02  1.3042E-01 -5.2931E-02  2.1396E-01  1.7185E-01  1.3223E-01 -1.8288E-01
             3.7018E-02
 GRADIENT:  -1.2290E+01  5.4513E+00  4.1530E+00  7.4498E+00 -1.9207E+00 -8.0499E+00  6.6429E-01 -5.5769E-01  7.4991E-01 -2.2897E+00
            -5.0003E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1723.06109696746        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      360
 NPARAMETR:  1.0194E+00  1.2795E+00  7.4360E-01  8.4579E-01  1.0120E+00  8.8992E-01  1.0030E+00  7.8851E-01  1.1116E+00  7.4026E-01
             9.5410E-01
 PARAMETER:  1.1921E-01  3.4647E-01 -1.9625E-01 -6.7489E-02  1.1197E-01 -1.6623E-02  1.0304E-01 -1.3761E-01  2.0583E-01 -2.0075E-01
             5.3013E-02
 GRADIENT:   7.3810E+00  2.1604E+00  4.6742E+00  7.8332E-01 -7.4764E+00  5.5659E+00 -1.9306E+00 -1.7955E-01 -2.2289E+00  2.8660E-01
             2.5893E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1724.59773238752        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      535
 NPARAMETR:  1.0150E+00  1.6206E+00  4.9815E-01  6.1879E-01  1.0814E+00  8.6673E-01  8.5723E-01  4.1705E-01  1.4030E+00  7.4388E-01
             9.4345E-01
 PARAMETER:  1.1492E-01  5.8277E-01 -5.9685E-01 -3.7998E-01  1.7822E-01 -4.3024E-02 -5.4053E-02 -7.7454E-01  4.3862E-01 -1.9587E-01
             4.1787E-02
 GRADIENT:  -7.9229E+00  3.2831E-01 -5.4056E+00  1.1156E+01  3.9650E+00 -5.3450E+00  9.8548E-01  4.4083E-01  3.1522E+00  1.3799E-01
            -2.1084E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1725.40054534352        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      710
 NPARAMETR:  1.0186E+00  1.8455E+00  4.0759E-01  4.6450E-01  1.1939E+00  8.8047E-01  7.8335E-01  2.5116E-01  1.6773E+00  8.1317E-01
             9.5284E-01
 PARAMETER:  1.1840E-01  7.1277E-01 -7.9749E-01 -6.6680E-01  2.7722E-01 -2.7301E-02 -1.4417E-01 -1.2817E+00  6.1716E-01 -1.0682E-01
             5.1688E-02
 GRADIENT:   2.4105E+00 -6.8488E-01 -5.0954E-01 -5.0799E-01  5.5088E-01  1.0599E+00  1.9434E+00  9.9618E-02 -1.3299E+00 -1.3605E-01
             4.8655E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1725.44746424158        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  1.0177E+00  1.8942E+00  3.9000E-01  4.3283E-01  1.2225E+00  8.7806E-01  7.6285E-01  2.1760E-01  1.7759E+00  8.3563E-01
             9.5287E-01
 PARAMETER:  1.1753E-01  7.3880E-01 -8.4161E-01 -7.3742E-01  3.0086E-01 -3.0043E-02 -1.7069E-01 -1.4251E+00  6.7429E-01 -7.9567E-02
             5.1725E-02
 GRADIENT:   9.0287E-02  5.9462E-02 -9.6883E-02 -9.0990E-02 -6.0570E-02  4.0929E-02  8.0915E-02  6.5397E-02 -6.0787E-03  4.5223E-02
             3.2575E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1725.47717792585        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1066
 NPARAMETR:  1.0177E+00  1.8817E+00  3.9384E-01  4.4059E-01  1.2150E+00  8.7798E-01  7.6687E-01  8.1970E-02  1.7565E+00  8.3075E-01
             9.5258E-01
 PARAMETER:  1.1752E-01  7.3218E-01 -8.3180E-01 -7.1964E-01  2.9475E-01 -3.0130E-02 -1.6544E-01 -2.4014E+00  6.6330E-01 -8.5429E-02
             5.1423E-02
 GRADIENT:   3.2230E-02 -5.9049E-01 -4.2825E-02 -9.5605E-02 -1.3491E-01 -9.6244E-03  9.8134E-02  9.4717E-03  1.4504E-01  1.9219E-02
             2.5340E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1725.48179907640        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1241
 NPARAMETR:  1.0177E+00  1.8845E+00  3.9276E-01  4.3906E-01  1.2165E+00  8.7803E-01  7.6603E-01  1.0000E-02  1.7595E+00  8.3202E-01
             9.5264E-01
 PARAMETER:  1.1752E-01  7.3364E-01 -8.3455E-01 -7.2312E-01  2.9599E-01 -3.0071E-02 -1.6654E-01 -4.6229E+00  6.6501E-01 -8.3896E-02
             5.1486E-02
 GRADIENT:   2.2620E-02  3.5098E-02  1.3745E-02 -1.6459E-02 -4.1833E-03  1.4305E-02  1.6229E-02  0.0000E+00 -2.2284E-02  4.0021E-03
             4.2840E-03

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1725.48179907640        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1263
 NPARAMETR:  1.0177E+00  1.8845E+00  3.9276E-01  4.3906E-01  1.2165E+00  8.7803E-01  7.6603E-01  1.0000E-02  1.7595E+00  8.3202E-01
             9.5264E-01
 PARAMETER:  1.1752E-01  7.3364E-01 -8.3455E-01 -7.2312E-01  2.9599E-01 -3.0071E-02 -1.6654E-01 -4.6229E+00  6.6501E-01 -8.3896E-02
             5.1486E-02
 GRADIENT:   2.2620E-02  3.5098E-02  1.3745E-02 -1.6459E-02 -4.1833E-03  1.4305E-02  1.6229E-02  0.0000E+00 -2.2284E-02  4.0021E-03
             4.2840E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1263
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.7463E-04 -3.2956E-02 -2.4580E-04  3.4663E-02 -4.4264E-02
 SE:             2.9842E-02  2.5431E-02  9.1790E-05  2.2984E-02  2.0293E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8998E-01  1.9502E-01  7.4091E-03  1.3151E-01  2.9165E-02

 ETASHRINKSD(%)  2.5085E-02  1.4802E+01  9.9692E+01  2.3002E+01  3.2016E+01
 ETASHRINKVR(%)  5.0165E-02  2.7412E+01  9.9999E+01  4.0713E+01  5.3782E+01
 EBVSHRINKSD(%)  5.0117E-01  1.4895E+01  9.9729E+01  2.3246E+01  3.1508E+01
 EBVSHRINKVR(%)  9.9983E-01  2.7571E+01  9.9999E+01  4.1089E+01  5.3089E+01
 RELATIVEINF(%)  9.8972E+01  7.7886E+00  9.1490E-05  6.0197E+00  1.1863E+01
 EPSSHRINKSD(%)  4.4882E+01
 EPSSHRINKVR(%)  6.9620E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1725.4817990764000     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -990.33097251266179     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.85
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.77
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1725.482       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.88E+00  3.93E-01  4.39E-01  1.22E+00  8.78E-01  7.66E-01  1.00E-02  1.76E+00  8.32E-01  9.53E-01
 


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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.38E+03
 
 TH 2
+       -6.65E+00  4.05E+02
 
 TH 3
+        5.68E+00  2.14E+02  5.98E+02
 
 TH 4
+       -1.77E+01  2.53E+02 -4.61E+02  1.14E+03
 
 TH 5
+       -7.07E+00 -1.86E+02 -3.72E+02  3.18E+02  5.24E+02
 
 TH 6
+        3.31E+00 -1.07E+00  3.56E+00 -3.13E+00 -1.79E+00  2.48E+02
 
 TH 7
+       -1.52E+00  1.00E+01 -4.13E+01 -1.25E+01 -1.45E-01 -3.42E+00  1.95E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.52E+00 -1.86E+01 -3.60E+01  6.88E+01 -1.02E+01 -1.29E-01  6.64E+00  0.00E+00  3.08E+01
 
 TH10
+       -3.02E+00 -1.52E+01 -3.31E+01 -1.40E+01 -7.44E+01  3.70E+00  2.12E+01  0.00E+00  6.22E+00  7.13E+01
 
 TH11
+       -6.46E+00 -1.70E+01 -2.10E+01 -1.62E+00 -1.30E+01  4.84E+00  8.24E+00  0.00E+00  3.47E+00  2.02E+01  2.26E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       20.695
Stop Time:
Sat Sep 18 14:52:13 CDT 2021
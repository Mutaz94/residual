Sat Sep 18 11:15:30 CDT 2021
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
$DATA ../../../../data/spa/S1/dat73.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1693.16372916404        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   9.4399E+00 -1.4602E+01  4.1402E+01 -7.6065E+01 -8.2619E+01  5.4356E+01 -8.5422E+00 -1.5186E+01 -1.6618E+01  3.6935E+01
            -3.5722E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1710.42951078704        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0111E+00  1.1443E+00  9.8864E-01  8.8608E-01  1.1644E+00  8.4337E-01  1.2085E+00  1.3913E+00  1.0974E+00  5.3102E-01
             1.0150E+00
 PARAMETER:  1.1106E-01  2.3476E-01  8.8571E-02 -2.0953E-02  2.5221E-01 -7.0353E-02  2.8939E-01  4.3023E-01  1.9295E-01 -5.3295E-01
             1.1487E-01
 GRADIENT:   3.0956E+01 -6.8547E+01 -2.2030E+01 -4.7546E+01  1.0458E+02 -4.8117E+00  9.0436E+00 -9.0954E+00  9.2557E-01 -6.3170E+00
            -7.3634E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1714.77859256289        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      163
 NPARAMETR:  1.0162E+00  1.2010E+00  9.6835E-01  8.9352E-01  1.0691E+00  9.0741E-01  1.0242E+00  1.7649E+00  1.1098E+00  3.4250E-01
             1.0470E+00
 PARAMETER:  1.1603E-01  2.8316E-01  6.7837E-02 -1.2588E-02  1.6686E-01  2.8336E-03  1.2396E-01  6.6808E-01  2.0419E-01 -9.7149E-01
             1.4597E-01
 GRADIENT:   4.4628E+01 -1.1041E-01  1.3516E+01 -2.4218E+01 -4.6965E+01  2.3068E+01 -3.8171E+00  6.3913E+00  2.4082E+00 -1.4122E+00
             8.7836E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1716.78015490225        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      234
 NPARAMETR:  1.0048E+00  1.1260E+00  1.0446E+00  9.5801E-01  1.0939E+00  8.5703E-01  1.1171E+00  1.6339E+00  1.0525E+00  4.4963E-01
             1.0204E+00
 PARAMETER:  1.0476E-01  2.1867E-01  1.4365E-01  5.7105E-02  1.8978E-01 -5.4287E-02  2.1076E-01  5.9094E-01  1.5121E-01 -6.9934E-01
             1.2019E-01
 GRADIENT:   9.9003E+00 -3.1332E-01  1.1355E+00 -3.4969E+00  1.6309E+00  1.6862E+00  2.3481E-01  7.3261E-02  6.5162E-01 -1.6838E+00
            -6.5142E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1717.09418453596        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  1.0107E+00  1.1362E+00  1.0835E+00  9.6112E-01  1.1201E+00  8.5492E-01  1.1059E+00  1.7028E+00  1.0631E+00  5.0241E-01
             1.0213E+00
 PARAMETER:  1.1065E-01  2.2771E-01  1.8021E-01  6.0342E-02  2.1344E-01 -5.6745E-02  2.0066E-01  6.3230E-01  1.6118E-01 -5.8834E-01
             1.2108E-01
 GRADIENT:  -1.5515E+01 -5.3050E+00 -2.3881E+00 -3.8963E-01  5.2850E+00 -2.1149E+00  1.1061E+00  6.8455E-01  3.9414E-01 -7.4302E-01
             8.5515E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1717.87081834746        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  1.0195E+00  1.4122E+00  9.2880E-01  7.8881E-01  1.1899E+00  8.6450E-01  9.0886E-01  1.8314E+00  1.2595E+00  5.7528E-01
             1.0151E+00
 PARAMETER:  1.1928E-01  4.4516E-01  2.6140E-02 -1.3723E-01  2.7387E-01 -4.5608E-02  4.4410E-03  7.0510E-01  3.3068E-01 -4.5291E-01
             1.1494E-01
 GRADIENT:   5.9598E+00  8.6229E+00  2.0286E+00  7.6637E+00 -4.0442E+00  1.7737E+00 -3.2881E-01 -1.7043E+00  7.0491E-01  3.4942E-01
            -6.1402E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1717.91964763061        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  1.0194E+00  1.4154E+00  9.2721E-01  7.7958E-01  1.1911E+00  8.6058E-01  9.0684E-01  1.8356E+00  1.2622E+00  5.7558E-01
             1.0151E+00
 PARAMETER:  1.1922E-01  4.4744E-01  2.4428E-02 -1.4900E-01  2.7484E-01 -5.0153E-02  2.2056E-03  7.0739E-01  3.3287E-01 -4.5237E-01
             1.1503E-01
 GRADIENT:   5.5955E+01  3.1842E+01  3.5032E+00  5.7390E+00 -4.6171E+00  3.1628E+00  1.7174E-01 -1.6357E+00  1.8592E+00  4.7929E-01
            -4.1535E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1717.92107572944        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:      896             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0194E+00  1.4153E+00  9.2705E-01  7.7961E-01  1.1912E+00  8.6049E-01  9.0994E-01  1.8353E+00  1.2623E+00  5.7556E-01
             1.0152E+00
 PARAMETER:  1.1925E-01  4.4733E-01  2.4248E-02 -1.4896E-01  2.7495E-01 -5.0257E-02  5.6276E-03  7.0723E-01  3.3293E-01 -4.5241E-01
             1.1507E-01
 GRADIENT:   5.6049E+01  3.1607E+01  3.3964E+00  5.7356E+00 -4.2799E+00  3.1192E+00  5.2455E-01 -1.5477E+00  2.0672E+00  5.0386E-01
            -3.8697E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1717.92690727055        NO. OF FUNC. EVALS.: 143
 CUMULATIVE NO. OF FUNC. EVALS.:     1039
 NPARAMETR:  1.0192E+00  1.4150E+00  9.2624E-01  7.7960E-01  1.1914E+00  8.6045E-01  9.0946E-01  1.8353E+00  1.2620E+00  5.7517E-01
             1.0153E+00
 PARAMETER:  1.1900E-01  4.4712E-01  2.3383E-02 -1.4897E-01  2.7516E-01 -5.0303E-02  5.0916E-03  7.0721E-01  3.3270E-01 -4.5309E-01
             1.1515E-01
 GRADIENT:   5.5194E+01  3.0916E+01  3.0321E+00  5.7600E+00 -3.2713E+00  3.1044E+00  4.3995E-01 -1.5070E+00  2.0146E+00  4.4185E-01
            -3.9318E-01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1717.92732033581        NO. OF FUNC. EVALS.: 153
 CUMULATIVE NO. OF FUNC. EVALS.:     1192
 NPARAMETR:  1.0192E+00  1.4150E+00  9.2615E-01  7.7960E-01  1.1915E+00  8.6045E-01  9.0946E-01  1.8353E+00  1.2620E+00  5.7513E-01
             1.0153E+00
 PARAMETER:  1.1900E-01  4.4712E-01  2.3283E-02 -1.4897E-01  2.7518E-01 -5.0303E-02  5.0937E-03  7.0721E-01  3.3269E-01 -4.5316E-01
             1.1515E-01
 GRADIENT:  -4.1718E+05  5.5515E+04 -4.9644E+05 -1.2218E-02 -9.0207E+04 -1.6816E-02 -2.4823E+05  7.0114E+04 -1.4923E+05 -1.0956E+05
            -2.1557E+05

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1192
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -9.5040E-04 -2.1933E-02 -3.4381E-02  1.7644E-02 -4.0923E-02
 SE:             2.9839E-02  2.1298E-02  1.7708E-02  2.3645E-02  1.4928E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7459E-01  3.0310E-01  5.2190E-02  4.5555E-01  6.1189E-03

 ETASHRINKSD(%)  3.5911E-02  2.8650E+01  4.0677E+01  2.0785E+01  4.9989E+01
 ETASHRINKVR(%)  7.1808E-02  4.9092E+01  6.4807E+01  3.7250E+01  7.4989E+01
 EBVSHRINKSD(%)  5.9344E-01  2.8477E+01  4.0490E+01  2.1635E+01  5.0422E+01
 EBVSHRINKVR(%)  1.1834E+00  4.8845E+01  6.4586E+01  3.8590E+01  7.5420E+01
 RELATIVEINF(%)  9.8484E+01  1.8313E+00  2.4787E+00  2.5502E+00  6.4741E+00
 EPSSHRINKSD(%)  4.3595E+01
 EPSSHRINKVR(%)  6.8185E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1717.9273203358148     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -982.77649377207661     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.18
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.17
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1717.927       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.41E+00  9.26E-01  7.80E-01  1.19E+00  8.60E-01  9.09E-01  1.84E+00  1.26E+00  5.75E-01  1.02E+00
 


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
+        8.44E+08
 
 TH 2
+        6.66E+02  3.10E+07
 
 TH 3
+       -7.69E+04  1.48E+04  1.45E+09
 
 TH 4
+        6.63E+04 -1.24E+04  8.67E+04  7.01E+02
 
 TH 5
+       -1.41E+04  2.51E+03  4.09E+08  2.47E+04  1.15E+08
 
 TH 6
+       -2.74E+03  5.21E+02 -3.57E+03 -3.89E+00 -1.01E+03  1.68E+09
 
 TH 7
+       -1.21E+04  2.32E+03 -1.58E+04  8.84E+04 -4.48E+03 -3.64E+03  1.50E+09
 
 TH 8
+        3.29E+02 -1.55E+03  7.16E+03 -6.18E+03  1.31E+03  2.55E+02  1.14E+03  7.35E+06
 
 TH 9
+        2.31E+04 -4.44E+03  3.19E+08  1.92E+04  8.53E+03 -7.89E+02 -3.47E+03 -2.15E+03  7.04E+07
 
 TH10
+        5.24E+03 -1.00E+03  6.87E+03  3.08E+04  1.85E+03 -1.27E+03 -5.61E+03 -4.81E+02  1.52E+03  1.83E+08
 
 TH11
+        3.32E+04 -6.37E+03 -7.98E+04  6.88E+04 -1.47E+04 -2.83E+03 -1.25E+04 -3.10E+03  2.40E+04  5.46E+03  9.08E+08
 
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
 #CPUT: Total CPU Time in Seconds,       21.407
Stop Time:
Sat Sep 18 11:15:53 CDT 2021
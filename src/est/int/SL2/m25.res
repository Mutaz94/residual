Wed Sep 29 02:57:09 CDT 2021
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
$DATA ../../../../data/int/SL2/dat25.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      999
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

 TOT. NO. OF OBS RECS:      899
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
 RAW OUTPUT FILE (FILE): m25.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1903.33327314672        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4663E+02  2.4731E+01  1.1512E+02  7.1327E+01  8.2304E+01  6.2111E+01 -5.9088E+01 -9.4975E+01 -7.3046E+01  1.5642E+01
            -3.7239E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2993.73104314280        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0320E+00  1.2621E+00  9.4229E-01  9.1241E-01  1.0886E+00  7.7055E-01  9.9395E-01  7.5036E-01  1.1107E+00  7.4662E-01
             1.8739E+00
 PARAMETER:  1.3149E-01  3.3278E-01  4.0560E-02  8.3318E-03  1.8491E-01 -1.6065E-01  9.3937E-02 -1.8720E-01  2.0500E-01 -1.9220E-01
             7.2804E-01
 GRADIENT:   2.8757E+02  1.5655E+02  6.1653E+00  2.0791E+01 -2.7409E+01 -6.6508E+01 -3.0554E+00  2.1912E+00 -5.0469E+00 -2.6600E+01
            -3.7202E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3020.46583594993        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0272E+00  1.2293E+00  8.5341E-01  9.1743E-01  1.0799E+00  8.3533E-01  9.1158E-01  3.8215E-02  9.1729E-01  1.1428E+00
             2.0878E+00
 PARAMETER:  1.2679E-01  3.0645E-01 -5.8513E-02  1.3820E-02  1.7689E-01 -7.9927E-02  7.4246E-03 -3.1645E+00  1.3668E-02  2.3348E-01
             8.3612E-01
 GRADIENT:   2.1091E+02  5.4848E+01 -3.1735E+01  9.2283E+00  9.0574E+00 -3.0145E+01 -1.0702E+00  1.0908E-02 -3.5812E+01  3.6789E+01
            -9.1466E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3031.07894429518        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:      248
 NPARAMETR:  9.8002E-01  1.0604E+00  8.7902E-01  1.0016E+00  9.6524E-01  8.9812E-01  1.0534E+00  3.3749E-02  1.0070E+00  8.0637E-01
             2.1370E+00
 PARAMETER:  7.9822E-02  1.5860E-01 -2.8950E-02  1.0159E-01  6.4617E-02 -7.4539E-03  1.5206E-01 -3.2888E+00  1.0696E-01 -1.1521E-01
             8.5940E-01
 GRADIENT:  -4.9322E+01 -1.4619E+01  3.2469E+00 -2.0325E+01 -8.8119E+00 -6.4959E+00  4.3438E-01  4.4219E-03 -1.0767E+01 -1.0027E+00
            -3.8099E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3034.97758802084        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      426
 NPARAMETR:  9.9897E-01  1.3907E+00  9.6684E-01  8.3255E-01  1.2413E+00  9.1112E-01  8.4489E-01  3.9515E-02  1.1877E+00  1.0147E+00
             2.1728E+00
 PARAMETER:  9.8968E-02  4.2982E-01  6.6281E-02 -8.3260E-02  3.1617E-01  6.9139E-03 -6.8547E-02 -3.1311E+00  2.7204E-01  1.1459E-01
             8.7602E-01
 GRADIENT:  -2.7382E-01  2.5672E+00  5.5945E+00  8.6178E+00 -2.1890E+00  7.8566E-02 -1.8294E+00 -5.7182E-03 -7.0942E-02  3.7957E-01
             2.7514E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3036.10019985435        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      602
 NPARAMETR:  9.9865E-01  1.7421E+00  8.5711E-01  6.0884E-01  1.5113E+00  9.1005E-01  7.7212E-01  3.7426E-02  1.4201E+00  1.1620E+00
             2.1623E+00
 PARAMETER:  9.8649E-02  6.5507E-01 -5.4190E-02 -3.9621E-01  5.1297E-01  5.7453E-03 -1.5861E-01 -3.1854E+00  4.5075E-01  2.5013E-01
             8.7117E-01
 GRADIENT:  -1.3860E+00  5.7566E+00  3.0056E-01  5.0680E+00  1.5677E+00 -5.6812E-01 -3.2681E-01 -2.8984E-03 -1.1897E+00 -6.7194E-02
            -1.3805E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3036.39239830728        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      778
 NPARAMETR:  1.0003E+00  1.9918E+00  7.0522E-01  4.4548E-01  1.6992E+00  9.1412E-01  7.3431E-01  2.7481E-02  1.7314E+00  1.2600E+00
             2.1585E+00
 PARAMETER:  1.0032E-01  7.8902E-01 -2.4925E-01 -7.0861E-01  6.3016E-01  1.0207E-02 -2.0882E-01 -3.4943E+00  6.4893E-01  3.3111E-01
             8.6940E-01
 GRADIENT:   2.8160E+00  7.3446E+00  9.3315E-02  4.3242E+00  6.7399E-01  9.8248E-01 -4.1652E-01  5.1038E-04  1.2243E+00 -3.8901E-01
             1.0368E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3036.42101270746        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      954
 NPARAMETR:  9.9910E-01  2.0622E+00  6.5167E-01  3.9685E-01  1.7547E+00  9.1190E-01  7.2813E-01  2.3813E-02  1.8300E+00  1.2926E+00
             2.1551E+00
 PARAMETER:  9.9100E-02  8.2377E-01 -3.2821E-01 -8.2420E-01  6.6231E-01  7.7782E-03 -2.1728E-01 -3.6375E+00  7.0433E-01  3.5663E-01
             8.6786E-01
 GRADIENT:  -3.2789E-01  4.6055E+00  1.7579E-01  2.1935E+00  5.4109E-01  6.0513E-02 -3.6003E-01  7.3739E-04  3.9723E-01  4.1661E-02
            -6.8266E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3036.43214429733        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1139
 NPARAMETR:  9.9933E-01  2.0588E+00  6.5054E-01  3.9483E-01  1.7524E+00  9.1173E-01  7.2945E-01  1.0000E-02  1.8248E+00  1.2923E+00
             2.1555E+00
 PARAMETER:  9.9329E-02  8.2214E-01 -3.2994E-01 -8.2930E-01  6.6098E-01  7.5871E-03 -2.1547E-01 -4.6643E+00  7.0146E-01  3.5645E-01
             8.6802E-01
 GRADIENT:   3.8705E-01 -2.4537E+00  2.5469E-01 -5.7885E-01 -8.5803E-01  3.7469E-02 -4.5878E-02  0.0000E+00 -9.7038E-02  6.6309E-02
            -5.2929E-02

0ITERATION NO.:   44    OBJECTIVE VALUE:  -3036.43252757017        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:     1269
 NPARAMETR:  9.9919E-01  2.0593E+00  6.5057E-01  3.9525E-01  1.7527E+00  9.1165E-01  7.2944E-01  1.0000E-02  1.8247E+00  1.2920E+00
             2.1555E+00
 PARAMETER:  9.9185E-02  8.2234E-01 -3.2991E-01 -8.2823E-01  6.6118E-01  7.5037E-03 -2.1548E-01 -4.6643E+00  7.0143E-01  3.5618E-01
             8.6802E-01
 GRADIENT:  -1.1404E-02 -1.3397E+00  1.9510E-01 -1.1340E-01 -5.3416E-01 -3.0270E-03 -5.7813E-02  0.0000E+00 -4.9363E-02 -2.9565E-03
            -1.0273E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1269
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4027E-03 -2.9264E-02 -5.8254E-05  3.0145E-02 -2.2559E-02
 SE:             2.9513E-02  2.3925E-02  5.8799E-05  2.0953E-02  2.5566E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6209E-01  2.2126E-01  3.2181E-01  1.5023E-01  3.7758E-01

 ETASHRINKSD(%)  1.1273E+00  1.9850E+01  9.9803E+01  2.9805E+01  1.4350E+01
 ETASHRINKVR(%)  2.2420E+00  3.5759E+01  1.0000E+02  5.0727E+01  2.6640E+01
 EBVSHRINKSD(%)  1.3456E+00  1.8696E+01  9.9805E+01  3.3739E+01  1.2419E+01
 EBVSHRINKVR(%)  2.6731E+00  3.3896E+01  1.0000E+02  5.6094E+01  2.3296E+01
 RELATIVEINF(%)  9.7295E+01  9.1456E+00  1.8748E-04  5.7946E+00  2.4956E+01
 EPSSHRINKSD(%)  1.6823E+01
 EPSSHRINKVR(%)  3.0816E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          899
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1652.2514827020016     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3036.4325275701744     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1384.1810448681729     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    31.38
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    12.53
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3036.433       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.99E-01  2.06E+00  6.51E-01  3.95E-01  1.75E+00  9.12E-01  7.29E-01  1.00E-02  1.82E+00  1.29E+00  2.16E+00
 


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
+        1.30E+03
 
 TH 2
+       -9.02E+00  3.37E+02
 
 TH 3
+        5.07E-01  4.83E+01  1.22E+02
 
 TH 4
+       -1.51E+01  3.50E+02 -1.25E+02  9.58E+02
 
 TH 5
+       -3.17E+00 -6.66E+01 -4.20E+01  1.37E+02  1.66E+02
 
 TH 6
+        6.04E+00 -2.33E+00  9.32E-01 -6.58E+00 -1.03E+00  2.26E+02
 
 TH 7
+        3.15E+00 -8.33E+00 -1.13E+01  4.78E+00 -6.13E+00 -3.23E-01  1.83E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        7.78E-01 -6.58E+00 -4.90E+00  4.23E+01  7.91E-01 -4.70E-01  1.52E+01  0.00E+00  1.88E+01
 
 TH10
+        5.95E-01 -1.02E+01  3.59E+00  1.42E+01 -1.28E+01  4.19E-01  2.66E+00  0.00E+00  2.37E+00  6.93E+01
 
 TH11
+       -1.63E+01 -1.34E+01 -5.04E+00 -1.04E+01  6.64E-01  3.05E+00  5.74E+00  0.00E+00  2.85E+00  7.64E+00  2.53E+02
 
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
 #CPUT: Total CPU Time in Seconds,       44.011
Stop Time:
Wed Sep 29 02:57:54 CDT 2021

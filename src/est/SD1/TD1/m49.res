Fri Oct  1 05:06:28 CDT 2021
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
$DATA ../../../../data/SD1/TD1/dat49.csv ignore=@
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
 (2E4.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m49.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3145.08977598134        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0310E+02  5.7827E+01  8.3267E+01  3.6919E+01  1.1381E+02  1.5472E+01 -8.1824E+01 -2.5729E+02 -6.8586E+01 -3.0101E+01
            -8.9640E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3519.40042691446        NO. OF FUNC. EVALS.: 146
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  8.9222E-01  9.6579E-01  1.0013E+00  9.3384E-01  9.5173E-01  7.3803E-01  1.1410E+00  1.1054E+00  1.0468E+00  1.0224E+00
             1.6972E+00
 PARAMETER: -1.4041E-02  6.5194E-02  1.0126E-01  3.1546E-02  5.0527E-02 -2.0376E-01  2.3194E-01  2.0025E-01  1.4569E-01  1.2216E-01
             6.2901E-01
 GRADIENT:  -2.8140E+02 -8.9226E+01  7.1096E+00 -1.4328E+02 -5.1835E+01 -1.9546E+02 -2.9740E+01  2.0639E+01 -3.2508E+00  8.4106E+00
             6.9878E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3587.50107683004        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      337
 NPARAMETR:  8.8688E-01  7.4751E-01  7.2350E-01  1.1555E+00  7.3478E-01  7.7139E-01  1.4238E+00  2.6186E-01  8.0461E-01  7.3858E-01
             1.5211E+00
 PARAMETER: -2.0047E-02 -1.9101E-01 -2.2366E-01  2.4455E-01 -2.0819E-01 -1.5956E-01  4.5333E-01 -1.2399E+00 -1.1740E-01 -2.0303E-01
             5.1941E-01
 GRADIENT:  -2.7672E+02 -3.3472E+01 -6.9630E+01  1.1902E+02  4.8452E+01 -1.7071E+02 -1.5151E+01  7.4524E-04 -7.5219E+01 -1.5827E+01
             5.4997E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3739.87861339807        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      516
 NPARAMETR:  8.9145E-01  8.4105E-01  8.1986E-01  1.0625E+00  8.2900E-01  8.6223E-01  1.3328E+00  3.7934E-01  1.1103E+00  9.1400E-01
             1.1036E+00
 PARAMETER: -1.4901E-02 -7.3100E-02 -9.8628E-02  1.6058E-01 -8.7537E-02 -4.8236E-02  3.8727E-01 -8.6932E-01  2.0462E-01  1.0074E-02
             1.9860E-01
 GRADIENT:  -1.9568E+02 -3.8094E+01 -9.0850E+00  1.1045E+00  1.6262E+01 -9.8264E+01 -1.0130E+01 -9.1948E+00  1.4671E+01 -6.6034E+00
             1.2056E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3752.88862875618        NO. OF FUNC. EVALS.: 201
 CUMULATIVE NO. OF FUNC. EVALS.:      717             RESET HESSIAN, TYPE I
 NPARAMETR:  9.1070E-01  8.6230E-01  8.3243E-01  1.0571E+00  8.3733E-01  9.1160E-01  1.3742E+00  4.3908E-01  1.0916E+00  9.1980E-01
             1.0756E+00
 PARAMETER:  6.4615E-03 -4.8157E-02 -8.3407E-02  1.5549E-01 -7.7538E-02  7.4446E-03  4.1788E-01 -7.2306E-01  1.8766E-01  1.6399E-02
             1.7288E-01
 GRADIENT:   2.5320E+02  3.7841E+01  2.3604E+00  1.5406E+02  5.2013E+01  4.5608E+00  4.1958E+01 -9.8720E+00  3.2780E+01  6.1186E-01
             7.9718E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3757.07438664210        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:      906
 NPARAMETR:  9.1152E-01  8.6247E-01  8.3273E-01  1.0561E+00  8.3742E-01  1.0466E+00  1.3718E+00  4.3826E-01  1.0895E+00  9.3617E-01
             1.0747E+00
 PARAMETER:  7.3545E-03 -4.7958E-02 -8.3046E-02  1.5455E-01 -7.7425E-02  1.4557E-01  4.1611E-01 -7.2494E-01  1.8575E-01  3.4046E-02
             1.7200E-01
 GRADIENT:  -8.6923E+01 -2.2595E+01 -5.7765E+00  4.0610E-01  1.4071E-01  1.7367E+00 -2.3554E+00 -1.0860E+01  7.9478E+00 -2.3699E-01
             7.5787E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3758.91390956128        NO. OF FUNC. EVALS.: 197
 CUMULATIVE NO. OF FUNC. EVALS.:     1103
 NPARAMETR:  9.2209E-01  8.6855E-01  8.3361E-01  1.0560E+00  8.3742E-01  1.0426E+00  1.3758E+00  4.4124E-01  1.0818E+00  9.3762E-01
             1.0636E+00
 PARAMETER:  1.8887E-02 -4.0930E-02 -8.1991E-02  1.5448E-01 -7.7424E-02  1.4175E-01  4.1901E-01 -7.1816E-01  1.7865E-01  3.5591E-02
             1.6168E-01
 GRADIENT:  -6.4018E+01 -1.6119E+01 -5.2047E+00  2.0009E+00 -4.1890E+00  1.9478E+00 -1.5119E+00 -1.1467E+01  5.3120E+00 -1.8736E-01
             5.5254E+01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -3759.19393940597        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:     1202
 NPARAMETR:  9.2394E-01  8.6970E-01  8.3388E-01  1.0556E+00  8.3763E-01  1.0409E+00  1.3756E+00  4.4125E-01  1.0803E+00  9.3808E-01
             1.0612E+00
 PARAMETER:  2.0887E-02 -3.9611E-02 -8.1667E-02  1.5409E-01 -7.7175E-02  1.4012E-01  4.1887E-01 -7.1815E-01  1.7723E-01  3.6077E-02
             1.5941E-01
 GRADIENT:  -1.8685E+05  3.7359E+05 -1.8676E+05  1.2121E+05 -1.8680E+05 -2.6662E+05  8.9186E+04  5.1869E+04  1.0531E+05  3.7359E+05
            -2.3472E+05

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1202
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.9257E-02 -1.0125E-02 -1.0440E-02  9.4738E-03 -2.0913E-02
 SE:             2.9678E-02  2.5283E-02  1.3165E-02  2.7782E-02  2.4718E-02
 N:                     100         100         100         100         100

 P VAL.:         3.2423E-01  6.8882E-01  4.2775E-01  7.3310E-01  3.9751E-01

 ETASHRINKSD(%)  5.7498E-01  1.5298E+01  5.5897E+01  6.9253E+00  1.7193E+01
 ETASHRINKVR(%)  1.1466E+00  2.8256E+01  8.0549E+01  1.3371E+01  3.1430E+01
 EBVSHRINKSD(%)  2.8104E-01  1.5170E+01  6.3334E+01  6.3589E+00  1.8458E+01
 EBVSHRINKVR(%)  5.6128E-01  2.8039E+01  8.6556E+01  1.2313E+01  3.3509E+01
 RELATIVEINF(%)  9.9437E+01  3.9358E+01  6.1047E+00  6.8295E+01  2.3162E+01
 EPSSHRINKSD(%)  2.2736E+01
 EPSSHRINKVR(%)  4.0302E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3759.1939394059686     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2105.1045796375579     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    33.17
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3759.194       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.24E-01  8.70E-01  8.34E-01  1.06E+00  8.38E-01  1.04E+00  1.38E+00  4.41E-01  1.08E+00  9.38E-01  1.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       33.239
Stop Time:
Fri Oct  1 05:07:03 CDT 2021
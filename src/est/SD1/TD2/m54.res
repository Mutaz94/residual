Fri Oct  1 05:44:38 CDT 2021
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
$DATA ../../../../data/SD1/TD2/dat54.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m54.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2908.20028681858        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7486E+02  1.4175E+02  2.6420E+02  9.6041E+01  1.2806E+02  1.4956E+01 -7.9379E+01 -1.0418E+03 -2.9601E+02  1.0841E+01
            -5.0789E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3568.36171379295        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  9.2956E-01  9.2163E-01  8.4646E-01  9.1082E-01  9.6843E-01  8.7998E-01  1.0055E+00  2.3277E+00  1.1291E+00  9.4091E-01
             1.2571E+00
 PARAMETER:  2.6951E-02  1.8391E-02 -6.6693E-02  6.5867E-03  6.7926E-02 -2.7858E-02  1.0551E-01  9.4488E-01  2.2146E-01  3.9096E-02
             3.2882E-01
 GRADIENT:  -3.0357E+01 -8.2661E+01 -6.5630E+00 -4.7487E+01  1.3750E+01 -7.6892E+01  2.9804E+00 -5.0004E+01  3.7119E+00  1.7266E+01
             2.2556E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3584.87275198011        NO. OF FUNC. EVALS.: 147
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  9.4743E-01  1.0616E+00  9.7683E-01  9.6533E-01  1.0350E+00  8.8815E-01  9.8393E-01  2.5467E+00  1.1152E+00  8.9864E-01
             1.3387E+00
 PARAMETER:  4.6000E-02  1.5974E-01  7.6552E-02  6.4717E-02  1.3442E-01 -1.8618E-02  8.3800E-02  1.0348E+00  2.0901E-01 -6.8722E-03
             3.9168E-01
 GRADIENT:  -3.1368E+02  7.5966E-01 -3.3127E+00  4.1552E+01 -7.7552E+01 -1.2607E+02  1.1208E+01 -7.4855E+01 -4.6068E+00  6.1128E+00
             2.9653E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3605.24239921823        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:      425             RESET HESSIAN, TYPE I
 NPARAMETR:  9.5217E-01  1.0922E+00  1.0039E+00  9.5005E-01  1.0553E+00  1.0916E+00  8.1231E-01  2.5970E+00  1.1577E+00  9.5129E-01
             1.3348E+00
 PARAMETER:  5.0987E-02  1.8817E-01  1.0393E-01  4.8761E-02  1.5381E-01  1.8766E-01 -1.0788E-01  1.0544E+00  2.4646E-01  5.0059E-02
             3.8875E-01
 GRADIENT:   1.0710E+02  1.2036E+02  4.5992E+00  9.4258E+01 -4.2015E+01  9.3850E+01  2.9773E+00 -2.7564E+01  1.2364E+01  5.8102E+00
             2.9362E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3605.61817469613        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      603
 NPARAMETR:  9.5218E-01  1.0922E+00  1.0039E+00  9.5005E-01  1.0553E+00  1.1293E+00  8.4029E-01  2.5979E+00  1.1577E+00  9.5126E-01
             1.3345E+00
 PARAMETER:  5.0994E-02  1.8817E-01  1.0393E-01  4.8759E-02  1.5386E-01  2.2161E-01 -7.4014E-02  1.0547E+00  2.4641E-01  5.0037E-02
             3.8857E-01
 GRADIENT:  -1.8501E+02 -2.3014E-01  1.1529E+00  3.9503E+01 -8.3613E+01 -3.1924E-01  1.0666E+00 -7.1642E+01 -7.5237E-01  4.9255E+00
             2.8880E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3642.34801043742        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      719
 NPARAMETR:  1.0141E+00  1.0857E+00  1.0044E+00  9.4874E-01  1.0630E+00  1.0176E+00  8.4339E-01  2.9311E+00  1.1552E+00  9.5062E-01
             1.1937E+00
 PARAMETER:  1.1397E-01  1.8224E-01  1.0439E-01  4.7382E-02  1.6109E-01  1.1746E-01 -7.0331E-02  1.1754E+00  2.4424E-01  4.9355E-02
             2.7707E-01
 GRADIENT:   3.4378E+02  1.4721E+02  5.4684E+00  1.0518E+02 -1.5926E+01  4.3469E+01  3.3391E+00  1.7174E+01  1.4783E+01  4.2713E-01
             1.2131E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3651.61537286380        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:      910
 NPARAMETR:  1.0367E+00  1.0864E+00  1.0044E+00  9.4764E-01  1.0724E+00  1.0674E+00  8.4952E-01  3.3451E+00  1.1561E+00  9.5637E-01
             1.1138E+00
 PARAMETER:  1.3600E-01  1.8283E-01  1.0438E-01  4.6224E-02  1.6991E-01  1.6519E-01 -6.3085E-02  1.3075E+00  2.4504E-01  5.5386E-02
             2.0776E-01
 GRADIENT:  -3.7862E+01  4.7356E+00 -1.5790E+00  3.5279E+01 -6.2704E+01 -4.0770E+00 -3.2746E+00 -3.6510E+00 -3.2862E+00 -6.0344E+00
            -6.3219E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3651.67709292926        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1078
 NPARAMETR:  1.0367E+00  1.0864E+00  1.0047E+00  9.4741E-01  1.0720E+00  1.0799E+00  8.5382E-01  3.3452E+00  1.1561E+00  9.6086E-01
             1.1165E+00
 PARAMETER:  1.3600E-01  1.8283E-01  1.0464E-01  4.5974E-02  1.6949E-01  1.7687E-01 -5.8037E-02  1.3075E+00  2.4504E-01  6.0075E-02
             2.1018E-01
 GRADIENT:  -3.6935E+01  4.3519E+00 -1.5297E+00  3.4856E+01 -6.3401E+01  7.1525E-01 -2.5656E+00 -3.5459E+00 -3.0292E+00 -4.9785E+00
            -9.9173E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1078
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.0119E-02 -4.6442E-02 -2.6080E-02  7.5810E-04 -3.2593E-02
 SE:             2.9863E-02  2.0945E-02  2.6556E-02  2.7250E-02  2.3066E-02
 N:                     100         100         100         100         100

 P VAL.:         5.0049E-01  2.6601E-02  3.2606E-01  9.7781E-01  1.5765E-01

 ETASHRINKSD(%)  1.0000E-10  2.9831E+01  1.1035E+01  8.7076E+00  2.2726E+01
 ETASHRINKVR(%)  1.0000E-10  5.0763E+01  2.0852E+01  1.6657E+01  4.0287E+01
 EBVSHRINKSD(%)  2.6205E-01  3.1833E+01  1.1524E+01  9.0036E+00  2.5936E+01
 EBVSHRINKVR(%)  5.2341E-01  5.3533E+01  2.1719E+01  1.7197E+01  4.5146E+01
 RELATIVEINF(%)  9.9474E+01  1.9097E+01  7.0452E+01  4.9625E+01  2.4825E+01
 EPSSHRINKSD(%)  2.2793E+01
 EPSSHRINKVR(%)  4.0391E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3651.6770929292616     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1997.5877331608508     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    34.41
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3651.677       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.09E+00  1.00E+00  9.47E-01  1.07E+00  1.08E+00  8.54E-01  3.35E+00  1.16E+00  9.61E-01  1.12E+00
 


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
 #CPUT: Total CPU Time in Seconds,       34.483
Stop Time:
Fri Oct  1 05:45:14 CDT 2021
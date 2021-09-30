Wed Sep 29 17:54:56 CDT 2021
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
$DATA ../../../../data/spa/TD1/dat10.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m10.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1650.95098966085        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5289E+02  8.5781E+00 -1.1463E+01  3.8132E+01  1.9010E+00  2.4272E+01  9.4550E+00  6.4076E+00  1.4487E+01  2.2760E+01
            -1.6300E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1655.05224928948        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.7916E-01  1.0309E+00  1.0655E+00  1.0064E+00  1.0150E+00  1.0871E+00  9.6221E-01  9.7447E-01  9.5801E-01  8.9401E-01
             1.0532E+00
 PARAMETER:  7.8944E-02  1.3044E-01  1.6346E-01  1.0642E-01  1.1488E-01  1.8350E-01  6.1479E-02  7.4138E-02  5.7106E-02 -1.2035E-02
             1.5183E-01
 GRADIENT:  -1.0885E+01  1.3545E+01  1.6634E+01 -5.6752E+00 -2.6173E+01  3.8291E+00  2.2942E+00 -2.2383E+00 -2.2649E+00  4.2250E+00
             5.2436E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1655.45196938410        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.8277E-01  9.9719E-01  1.0478E+00  1.0278E+00  9.9552E-01  1.0707E+00  9.1485E-01  9.8728E-01  9.5555E-01  8.2986E-01
             1.0513E+00
 PARAMETER:  8.2624E-02  9.7190E-02  1.4666E-01  1.2742E-01  9.5513E-02  1.6831E-01  1.1004E-02  8.7197E-02  5.4536E-02 -8.6499E-02
             1.5005E-01
 GRADIENT:  -4.2112E+00  9.6035E+00  9.4663E+00  7.0237E-01 -1.3235E+01 -2.1856E+00 -9.9251E-01 -1.8268E+00 -3.2735E+00 -3.0809E+00
            -1.3855E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1655.93257750799        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.8443E-01  8.5747E-01  1.2314E+00  1.1247E+00  1.0282E+00  1.0795E+00  8.0824E-01  1.1456E+00  9.6300E-01  9.1995E-01
             1.0512E+00
 PARAMETER:  8.4308E-02 -5.3769E-02  3.0819E-01  2.1750E-01  1.2783E-01  1.7651E-01 -1.1290E-01  2.3594E-01  6.2297E-02  1.6560E-02
             1.4991E-01
 GRADIENT:   2.6849E+00  4.2799E+00 -1.6967E+00  9.5779E+00 -5.4041E-01  1.8191E+00  2.0230E+00 -2.7025E-01  3.4169E+00  2.9679E+00
             8.8034E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1656.51572601777        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.7961E-01  6.2334E-01  1.4927E+00  1.2737E+00  1.0322E+00  1.0695E+00  5.1395E-01  1.3395E+00  8.9190E-01  9.2304E-01
             1.0503E+00
 PARAMETER:  7.9395E-02 -3.7267E-01  5.0060E-01  3.4196E-01  1.3173E-01  1.6720E-01 -5.6562E-01  3.9232E-01 -1.4404E-02  1.9914E-02
             1.4907E-01
 GRADIENT:  -9.6507E-01  1.8124E+00  3.3207E+00  3.4113E+00 -3.4622E+00 -6.5343E-01  6.3733E-01 -5.3838E-01  1.9675E+00 -2.1048E-01
            -2.3006E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1656.61672572543        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  9.7915E-01  5.3652E-01  1.4953E+00  1.3282E+00  1.0080E+00  1.0706E+00  3.1447E-01  1.3181E+00  8.6166E-01  9.2230E-01
             1.0504E+00
 PARAMETER:  7.8927E-02 -5.2266E-01  5.0233E-01  3.8382E-01  1.0794E-01  1.6824E-01 -1.0569E+00  3.7622E-01 -4.8891E-02  1.9116E-02
             1.4912E-01
 GRADIENT:   9.5277E-02  1.5585E+00  1.0267E+00  4.6481E+00 -2.0911E+00  9.1864E-02  1.9439E-01 -1.3067E-01  1.1500E+00  5.1146E-01
             4.9927E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1656.70307250704        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  9.7904E-01  5.2653E-01  1.4940E+00  1.3306E+00  1.0065E+00  1.0703E+00  9.9292E-02  1.3190E+00  8.5866E-01  9.1982E-01
             1.0505E+00
 PARAMETER:  7.8820E-02 -5.4144E-01  5.0146E-01  3.8565E-01  1.0651E-01  1.6791E-01 -2.2097E+00  3.7686E-01 -5.2383E-02  1.6419E-02
             1.4923E-01
 GRADIENT:   1.7805E-01 -5.9799E-01 -5.1072E-01 -2.4263E+00  9.2140E-01  2.8140E-02  2.3187E-02  5.6692E-02  1.2381E-01 -1.3653E-01
             7.7716E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1656.70473251957        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1238
 NPARAMETR:  9.7889E-01  5.2568E-01  1.4960E+00  1.3324E+00  1.0062E+00  1.0701E+00  6.5941E-02  1.3191E+00  8.5862E-01  9.2141E-01
             1.0503E+00
 PARAMETER:  7.8666E-02 -5.4307E-01  5.0280E-01  3.8695E-01  1.0620E-01  1.6774E-01 -2.6190E+00  3.7698E-01 -5.2424E-02  1.8151E-02
             1.4908E-01
 GRADIENT:  -1.1172E-01  2.1691E-01  9.7016E-03  1.4520E-01 -3.3406E-01 -3.7929E-02  1.0920E-02 -1.5260E-02  1.8460E-01  9.4623E-02
             2.3679E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1656.71426854740        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1423
 NPARAMETR:  9.8010E-01  5.2695E-01  1.4954E+00  1.3293E+00  1.0066E+00  1.0723E+00  1.0000E-02  1.3203E+00  8.5884E-01  9.2088E-01
             1.0503E+00
 PARAMETER:  7.9900E-02 -5.4064E-01  5.0242E-01  3.8464E-01  1.0661E-01  1.6977E-01 -5.6334E+00  3.7786E-01 -5.2169E-02  1.7578E-02
             1.4910E-01
 GRADIENT:   2.2713E+00 -1.0598E+00 -1.3514E-01 -4.6494E+00  2.4249E-01  7.7469E-01  0.0000E+00  6.8209E-02 -3.4744E-02 -1.0427E-02
             5.9309E-02

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1656.71559144547        NO. OF FUNC. EVALS.: 130
 CUMULATIVE NO. OF FUNC. EVALS.:     1553
 NPARAMETR:  9.7978E-01  5.2870E-01  1.4944E+00  1.3300E+00  1.0072E+00  1.0713E+00  1.0000E-02  1.3203E+00  8.5980E-01  9.2084E-01
             1.0503E+00
 PARAMETER:  7.9569E-02 -5.3734E-01  5.0172E-01  3.8517E-01  1.0720E-01  1.6891E-01 -5.6334E+00  3.7783E-01 -5.1052E-02  1.7536E-02
             1.4911E-01
 GRADIENT:   1.5546E+00 -1.4842E-01 -4.6967E-01 -7.2977E-01  5.4300E-01  4.1703E-01  0.0000E+00  7.8855E-02  4.8761E-02 -7.8653E-02
             2.5097E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1553
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.2934E-04 -2.5533E-04 -3.2088E-02 -5.5023E-03 -3.7482E-02
 SE:             2.9868E-02  1.0610E-04  1.7371E-02  2.9196E-02  2.0615E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8853E-01  1.6111E-02  6.4716E-02  8.5052E-01  6.9036E-02

 ETASHRINKSD(%)  1.0000E-10  9.9645E+01  4.1805E+01  2.1882E+00  3.0937E+01
 ETASHRINKVR(%)  1.0000E-10  9.9999E+01  6.6133E+01  4.3285E+00  5.2303E+01
 EBVSHRINKSD(%)  4.0329E-01  9.9670E+01  4.4919E+01  2.8038E+00  2.8848E+01
 EBVSHRINKVR(%)  8.0496E-01  9.9999E+01  6.9661E+01  5.5290E+00  4.9374E+01
 RELATIVEINF(%)  9.8493E+01  6.8276E-05  8.2826E+00  7.2704E+00  9.5211E+00
 EPSSHRINKSD(%)  4.4202E+01
 EPSSHRINKVR(%)  6.8865E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1656.7155914454652     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -921.56476488172700     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.45
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.61
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1656.716       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.80E-01  5.29E-01  1.49E+00  1.33E+00  1.01E+00  1.07E+00  1.00E-02  1.32E+00  8.60E-01  9.21E-01  1.05E+00
 


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
+        1.00E+03
 
 TH 2
+       -2.07E+01  4.51E+02
 
 TH 3
+        1.51E+00  5.90E+01  9.38E+01
 
 TH 4
+       -1.08E+01  5.24E+02 -1.20E+01  8.03E+02
 
 TH 5
+        1.41E+00 -2.38E+02 -1.89E+02 -5.56E+01  6.76E+02
 
 TH 6
+        1.68E-01 -2.41E+00  5.19E-01 -2.34E+00 -2.88E-01  1.71E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+       -2.01E-01 -8.64E+00 -2.62E+01 -3.01E+00 -6.88E+00  1.05E-01  0.00E+00  2.60E+01
 
 TH 9
+        2.53E+00 -1.06E+02  3.95E+00 -1.07E+00  4.64E+00 -1.69E+00  0.00E+00 -7.69E-01  2.42E+02
 
 TH10
+        8.39E-01  5.37E+00  3.06E-01 -2.04E-01 -7.68E+01  3.47E-01  0.00E+00  1.31E+01  3.45E+00  7.53E+01
 
 TH11
+       -6.91E+00 -1.18E+01 -6.25E+00 -9.79E+00 -1.03E+01  2.98E+00  0.00E+00  6.50E+00  1.19E+01  1.50E+01  1.91E+02
 
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
 #CPUT: Total CPU Time in Seconds,       25.116
Stop Time:
Wed Sep 29 17:55:23 CDT 2021

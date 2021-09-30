Wed Sep 29 23:58:32 CDT 2021
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
$DATA ../../../../data/spa1/A3/dat10.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   40.2748975191132        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7894E+02  8.8264E+01  1.2128E+02  7.4954E+01  2.2452E+02  7.8382E+00 -6.5627E+01 -1.6081E+02 -1.0101E+02 -1.1877E+02
            -3.7212E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1432.45897117919        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  9.8414E-01  9.1574E-01  9.5607E-01  1.1193E+00  9.4817E-01  8.9691E-01  9.8988E-01  9.3388E-01  1.0297E+00  9.6314E-01
             4.9406E+00
 PARAMETER:  8.4018E-02  1.1975E-02  5.5079E-02  2.1269E-01  4.6781E-02 -8.7986E-03  8.9830E-02  3.1592E-02  1.2924E-01  6.2443E-02
             1.6975E+00
 GRADIENT:  -6.4508E+01 -2.5336E+01 -2.3247E+01 -1.9090E+01  5.9288E+00 -2.3044E+01  1.1228E+01  7.9356E+00  2.8081E+01  2.5099E+01
             3.1322E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1472.30951916698        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.8453E-01  5.9959E-01  3.4825E-01  1.2795E+00  3.9111E-01  9.4537E-01  1.0394E+00  5.8444E-02  9.6819E-01  2.9388E-01
             4.3611E+00
 PARAMETER:  8.4409E-02 -4.1151E-01 -9.5483E-01  3.4645E-01 -8.3878E-01  4.3820E-02  1.3861E-01 -2.7397E+00  6.7674E-02 -1.1246E+00
             1.5727E+00
 GRADIENT:  -7.2490E+01  7.2484E+01  5.6670E+00  1.6976E+02 -5.1179E+01 -2.5946E+01  5.1997E+00  8.7980E-02 -2.1665E+00  5.3451E+00
             2.3072E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1514.40534271979        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  9.7211E-01  4.6564E-01  1.7787E-01  1.1731E+00  2.5687E-01  1.0980E+00  2.8592E-01  1.0000E-02  1.3919E+00  4.0659E-01
             2.9814E+00
 PARAMETER:  7.1711E-02 -6.6435E-01 -1.6267E+00  2.5965E-01 -1.2592E+00  1.9350E-01 -1.1521E+00 -7.0965E+00  4.3067E-01 -7.9994E-01
             1.1924E+00
 GRADIENT:  -4.1538E+00  7.6787E+01 -3.9447E+01  1.5752E+02  6.7495E+01  1.6853E+01 -1.8460E+00  0.0000E+00 -6.1242E+00 -2.1657E+01
            -3.1405E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1532.22219287126        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      405
 NPARAMETR:  9.9568E-01  4.0731E-01  2.2744E-01  1.1054E+00  2.7424E-01  1.0547E+00  1.8375E-01  1.0000E-02  1.2435E+00  4.7518E-01
             2.8581E+00
 PARAMETER:  9.5667E-02 -7.9819E-01 -1.3809E+00  2.0019E-01 -1.1938E+00  1.5321E-01 -1.5942E+00 -7.9707E+00  3.1797E-01 -6.4406E-01
             1.1502E+00
 GRADIENT:   8.1541E+00  2.8531E+01  1.7200E+01  2.3821E+01 -2.8092E+01  2.5743E+00 -3.2066E-01  0.0000E+00 -5.2657E+00 -1.5016E+01
            -6.7409E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1537.36609614801        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      580
 NPARAMETR:  9.9375E-01  3.4464E-01  1.8586E-01  1.0425E+00  2.3524E-01  1.0484E+00  1.0080E-01  1.0000E-02  1.2858E+00  5.6413E-01
             2.9658E+00
 PARAMETER:  9.3734E-02 -9.6524E-01 -1.5828E+00  1.4160E-01 -1.3471E+00  1.4726E-01 -2.1946E+00 -9.4248E+00  3.5137E-01 -4.7247E-01
             1.1872E+00
 GRADIENT:  -2.2696E-01  3.4098E+00  6.6328E-01 -2.9966E-01 -3.3967E+00  7.4943E-01  2.8041E-02  0.0000E+00 -9.9663E-01 -6.6707E-01
            -1.8393E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1537.41406122726        NO. OF FUNC. EVALS.: 114
 CUMULATIVE NO. OF FUNC. EVALS.:      694
 NPARAMETR:  9.9401E-01  3.3614E-01  1.8559E-01  1.0435E+00  2.3394E-01  1.0456E+00  2.1528E-02  1.0000E-02  1.2853E+00  5.6660E-01
             2.9683E+00
 PARAMETER:  9.3993E-02 -9.9022E-01 -1.5842E+00  1.4258E-01 -1.3527E+00  1.4460E-01 -3.7384E+00 -9.5173E+00  3.5097E-01 -4.6810E-01
             1.1880E+00
 GRADIENT:   3.5181E+01  5.9900E+00  2.0192E+01  1.1364E+01  9.9909E+01  4.8646E+00  2.5333E-03  0.0000E+00  4.3321E+00  8.7932E-01
             1.2710E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1537.41431000215        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:      793
 NPARAMETR:  9.9404E-01  3.3524E-01  1.8563E-01  1.0437E+00  2.3380E-01  1.0455E+00  1.0045E-02  1.0000E-02  1.2843E+00  5.6619E-01
             2.9692E+00
 PARAMETER:  9.4019E-02 -9.9292E-01 -1.5840E+00  1.4279E-01 -1.3533E+00  1.4449E-01 -4.5007E+00 -9.5173E+00  3.5024E-01 -4.6883E-01
             1.1883E+00
 GRADIENT:   5.1171E-01 -9.4469E-01 -2.3186E+00 -1.2713E-01  3.4800E+00 -1.8173E-02  3.1401E-04  0.0000E+00 -4.9064E-01 -1.1049E-01
             1.0130E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1537.41804132256        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      972
 NPARAMETR:  9.9378E-01  3.3551E-01  1.8591E-01  1.0440E+00  2.3377E-01  1.0456E+00  1.0000E-02  1.0000E-02  1.2868E+00  5.6729E-01
             2.9654E+00
 PARAMETER:  9.3763E-02 -9.9210E-01 -1.5825E+00  1.4303E-01 -1.3534E+00  1.4460E-01 -4.5445E+00 -9.5173E+00  3.5214E-01 -4.6688E-01
             1.1870E+00
 GRADIENT:   7.7981E-02  7.9806E-02  1.1193E-01 -3.2751E-02 -5.6517E-01  1.1147E-02  2.1572E-05  0.0000E+00  3.8007E-02 -4.4158E-04
            -6.1329E-02

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1537.41804132256        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      994
 NPARAMETR:  9.9378E-01  3.3551E-01  1.8591E-01  1.0440E+00  2.3377E-01  1.0456E+00  1.0000E-02  1.0000E-02  1.2868E+00  5.6729E-01
             2.9654E+00
 PARAMETER:  9.3763E-02 -9.9210E-01 -1.5825E+00  1.4303E-01 -1.3534E+00  1.4460E-01 -4.5445E+00 -9.5173E+00  3.5214E-01 -4.6688E-01
             1.1870E+00
 GRADIENT:   7.7981E-02  7.9806E-02  1.1193E-01 -3.2751E-02 -5.6517E-01  1.1147E-02  2.1572E-05  0.0000E+00  3.8007E-02 -4.4158E-04
            -6.1329E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      994
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.6263E-04 -8.5152E-05  1.9146E-04 -1.0170E-02  2.6999E-03
 SE:             2.9085E-02  1.1647E-04  2.3274E-04  2.6784E-02  2.2018E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7634E-01  4.6471E-01  4.1072E-01  7.0417E-01  9.0241E-01

 ETASHRINKSD(%)  2.5609E+00  9.9610E+01  9.9220E+01  1.0272E+01  2.6236E+01
 ETASHRINKVR(%)  5.0563E+00  9.9998E+01  9.9994E+01  1.9488E+01  4.5589E+01
 EBVSHRINKSD(%)  2.4219E+00  9.9600E+01  9.9270E+01  8.3315E+00  2.6603E+01
 EBVSHRINKVR(%)  4.7851E+00  9.9998E+01  9.9995E+01  1.5969E+01  4.6129E+01
 RELATIVEINF(%)  9.5060E+01  2.8777E-04  3.3318E-04  3.7986E+01  1.9607E+00
 EPSSHRINKSD(%)  2.4955E+01
 EPSSHRINKVR(%)  4.3683E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1537.4180413225613     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -618.47950811788860     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.58
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     8.20
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1537.418       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.94E-01  3.36E-01  1.86E-01  1.04E+00  2.34E-01  1.05E+00  1.00E-02  1.00E-02  1.29E+00  5.67E-01  2.97E+00
 


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
+        9.82E+02
 
 TH 2
+       -5.12E+01  1.56E+03
 
 TH 3
+       -6.37E+01  3.71E+03  1.63E+04
 
 TH 4
+       -1.61E+01  1.42E+02 -5.37E+02  5.21E+02
 
 TH 5
+        2.02E+02 -6.28E+03 -2.17E+04 -4.33E+02  3.42E+04
 
 TH 6
+        2.17E+00 -1.15E+01  3.69E+01 -8.33E+00 -1.04E+00  1.64E+02
 
 TH 7
+        1.82E-02  1.24E-02 -7.20E-02  5.53E-02  8.43E-02  8.77E-04  9.81E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        8.39E+00 -4.15E+01  1.43E+02 -8.03E+00  3.88E+01 -1.52E+00  3.15E-03  0.00E+00  7.98E+01
 
 TH10
+       -6.78E+00 -5.13E+01  1.29E+01  6.18E+00  2.01E+02  3.42E+00  1.28E-02  0.00E+00  6.35E+00  1.70E+02
 
 TH11
+       -1.54E+01 -6.58E+00 -5.11E+01 -7.00E+00  5.08E+01  2.54E+00  2.15E-03  0.00E+00  5.59E+00  2.53E+01  5.45E+01
 
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
 #CPUT: Total CPU Time in Seconds,       22.845
Stop Time:
Wed Sep 29 23:59:05 CDT 2021
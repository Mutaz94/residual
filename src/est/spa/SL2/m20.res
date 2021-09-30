Wed Sep 29 15:39:40 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat20.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m20.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1664.94317611197        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1987E+02  5.7932E+00 -5.3179E+01  9.5898E+01  9.6785E+01  7.0283E+01  5.4879E-01  8.4994E+00  6.9222E+00  9.2035E+00
             1.5841E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1669.43213956402        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  9.7980E-01  1.0402E+00  1.0815E+00  9.8612E-01  9.4589E-01  1.0212E+00  1.0105E+00  9.6862E-01  1.0252E+00  9.3873E-01
             9.4872E-01
 PARAMETER:  7.9596E-02  1.3941E-01  1.7831E-01  8.6024E-02  4.4366E-02  1.2101E-01  1.1046E-01  6.8118E-02  1.2487E-01  3.6776E-02
             4.7360E-02
 GRADIENT:   2.0308E+01  2.9220E+01  2.6113E+01  4.3413E+00 -5.0127E+01  3.5100E+00  9.0336E-02  3.9177E-01 -2.2767E+00  3.9064E+00
            -9.9301E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1670.63186655911        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      357
 NPARAMETR:  9.8453E-01  9.2421E-01  7.6294E-01  1.0513E+00  7.6764E-01  9.9231E-01  1.1594E+00  5.6282E-01  9.5893E-01  7.4281E-01
             9.5101E-01
 PARAMETER:  8.4409E-02  2.1189E-02 -1.7058E-01  1.5007E-01 -1.6444E-01  9.2276E-02  2.4791E-01 -4.7479E-01  5.8061E-02 -1.9731E-01
             4.9765E-02
 GRADIENT:   2.6802E+01  2.8467E+01  5.7278E+00  3.6869E+01 -3.2969E+01 -9.0715E+00 -1.7461E+00  2.0507E+00  1.9955E+00  3.1258E+00
            -8.1623E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1672.24412127854        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      535
 NPARAMETR:  9.7232E-01  9.9373E-01  7.8241E-01  9.8465E-01  8.2556E-01  1.0153E+00  1.1083E+00  4.8091E-01  9.7963E-01  7.8467E-01
             9.7331E-01
 PARAMETER:  7.1930E-02  9.3715E-02 -1.4538E-01  8.4528E-02 -9.1689E-02  1.1519E-01  2.0283E-01 -6.3207E-01  7.9422E-02 -1.4249E-01
             7.2943E-02
 GRADIENT:  -7.1942E-01 -9.8114E-01 -9.8726E-01 -9.6897E-01 -7.0664E-01  7.9971E-01 -6.2457E-01  6.1896E-01 -1.8366E+00  1.2597E+00
             1.6015E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1672.42959719292        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      711
 NPARAMETR:  9.7314E-01  1.1416E+00  6.9054E-01  8.8874E-01  8.4624E-01  1.0141E+00  1.0084E+00  2.1596E-01  1.0581E+00  7.8362E-01
             9.7032E-01
 PARAMETER:  7.2771E-02  2.3243E-01 -2.7028E-01 -1.7955E-02 -6.6957E-02  1.1398E-01  1.0841E-01 -1.4327E+00  1.5645E-01 -1.4384E-01
             6.9871E-02
 GRADIENT:  -7.1340E-01  6.5240E-01 -1.4173E+00  2.1039E+00  1.4415E+00 -3.1223E-02  2.6959E-01  8.1939E-02 -2.2906E-01  3.2306E-01
             6.5356E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1672.43523040021        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      886
 NPARAMETR:  9.7344E-01  1.1783E+00  6.7789E-01  8.6410E-01  8.5740E-01  1.0143E+00  9.8303E-01  1.6399E-01  1.0811E+00  7.8893E-01
             9.7027E-01
 PARAMETER:  7.3078E-02  2.6405E-01 -2.8877E-01 -4.6069E-02 -5.3846E-02  1.1416E-01  8.2888E-02 -1.7080E+00  1.7802E-01 -1.3707E-01
             6.9824E-02
 GRADIENT:  -1.7384E-01 -3.1890E-01 -5.7507E-01  1.2797E-02  6.9080E-01  1.3537E-02  9.5967E-02  4.9376E-02  2.6889E-02  1.6694E-01
             3.4690E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1672.43739891779        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1063
 NPARAMETR:  9.7364E-01  1.1935E+00  6.7151E-01  8.5372E-01  8.6156E-01  1.0142E+00  9.7317E-01  1.1575E-01  1.0909E+00  7.9092E-01
             9.7043E-01
 PARAMETER:  7.3283E-02  2.7689E-01 -2.9823E-01 -5.8151E-02 -4.9016E-02  1.1412E-01  7.2808E-02 -2.0563E+00  1.8704E-01 -1.3456E-01
             6.9986E-02
 GRADIENT:   2.0630E-01 -7.3377E-01 -1.4633E-01 -8.8039E-01  2.8269E-01 -1.2623E-02  2.6060E-02  2.4287E-02  1.1551E-01  8.9590E-02
             7.5160E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1672.45706969412        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1241
 NPARAMETR:  9.7369E-01  1.1682E+00  6.7543E-01  8.6897E-01  8.5155E-01  1.0142E+00  9.8935E-01  1.7402E-02  1.0764E+00  7.8618E-01
             9.7066E-01
 PARAMETER:  7.3335E-02  2.5550E-01 -2.9241E-01 -4.0449E-02 -6.0696E-02  1.1413E-01  8.9296E-02 -3.9512E+00  1.7362E-01 -1.4057E-01
             7.0218E-02
 GRADIENT:   3.5007E-01 -1.2741E+00  5.2174E-02 -1.0822E+00  4.0024E-01  1.1084E-02  2.2795E-02  3.9518E-04  9.9433E-02  4.2791E-02
             3.5665E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1672.45896505376        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1404
 NPARAMETR:  9.7475E-01  1.1684E+00  6.7516E-01  8.6950E-01  8.5129E-01  1.0161E+00  9.8932E-01  1.0000E-02  1.0761E+00  7.8606E-01
             9.7065E-01
 PARAMETER:  7.4421E-02  2.5562E-01 -2.9280E-01 -3.9840E-02 -6.1007E-02  1.1598E-01  8.9263E-02 -4.6720E+00  1.7337E-01 -1.4072E-01
             7.0210E-02
 GRADIENT:   2.6563E+00 -5.9979E-01 -4.1597E-03 -2.5584E-01  3.5893E-01  7.5696E-01  1.5917E-02  0.0000E+00  9.7848E-02  4.7823E-02
             1.6883E-02

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1672.45896505376        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1426
 NPARAMETR:  9.7475E-01  1.1684E+00  6.7516E-01  8.6950E-01  8.5129E-01  1.0161E+00  9.8932E-01  1.0000E-02  1.0761E+00  7.8606E-01
             9.7065E-01
 PARAMETER:  7.4421E-02  2.5562E-01 -2.9280E-01 -3.9840E-02 -6.1007E-02  1.1598E-01  8.9263E-02 -4.6720E+00  1.7337E-01 -1.4072E-01
             7.0210E-02
 GRADIENT:   2.6563E+00 -5.9979E-01 -4.1597E-03 -2.5584E-01  3.5893E-01  7.5696E-01  1.5917E-02  0.0000E+00  9.7848E-02  4.7823E-02
             1.6883E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1426
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.2279E-04 -1.3084E-02 -3.8136E-04  7.1383E-03 -1.9373E-02
 SE:             2.9857E-02  2.1808E-02  1.7107E-04  2.4993E-02  2.2453E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9405E-01  5.4852E-01  2.5796E-02  7.7517E-01  3.8821E-01

 ETASHRINKSD(%)  1.0000E-10  2.6942E+01  9.9427E+01  1.6271E+01  2.4781E+01
 ETASHRINKVR(%)  1.0000E-10  4.6625E+01  9.9997E+01  2.9895E+01  4.3421E+01
 EBVSHRINKSD(%)  3.8988E-01  2.6521E+01  9.9494E+01  1.6595E+01  2.4395E+01
 EBVSHRINKVR(%)  7.7824E-01  4.6009E+01  9.9997E+01  3.0436E+01  4.2840E+01
 RELATIVEINF(%)  9.9103E+01  3.1394E+00  3.0395E-04  5.1960E+00  5.7389E+00
 EPSSHRINKSD(%)  4.4434E+01
 EPSSHRINKVR(%)  6.9124E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1672.4589650537589     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -937.30813849002072     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.75
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.88
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1672.459       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.75E-01  1.17E+00  6.75E-01  8.69E-01  8.51E-01  1.02E+00  9.89E-01  1.00E-02  1.08E+00  7.86E-01  9.71E-01
 


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
+        1.12E+03
 
 TH 2
+       -5.01E+00  4.69E+02
 
 TH 3
+        1.24E+01  2.78E+02  6.74E+02
 
 TH 4
+       -1.14E+01  3.20E+02 -3.13E+02  8.88E+02
 
 TH 5
+       -2.55E+00 -4.61E+02 -8.18E+02  3.70E+02  1.41E+03
 
 TH 6
+       -6.90E-01 -1.06E+00  3.28E+00 -2.70E+00 -8.97E-01  1.90E+02
 
 TH 7
+        7.74E-01  2.41E+01 -1.25E+01 -7.73E+00 -9.85E+00  3.99E-01  6.59E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.60E+00 -2.41E+01 -2.88E+01  3.68E+01 -2.08E+00  4.28E-01  1.91E+01  0.00E+00  8.97E+01
 
 TH10
+       -6.77E-01 -1.64E+01 -6.67E+01 -1.69E+01 -7.04E+01 -4.12E-02  1.72E+01  0.00E+00  1.04E+01  1.17E+02
 
 TH11
+       -7.08E+00 -1.41E+01 -3.63E+01 -3.41E+00  7.72E+00  1.00E+00  7.72E+00  0.00E+00  5.33E+00  2.46E+01  2.27E+02
 
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
 #CPUT: Total CPU Time in Seconds,       23.699
Stop Time:
Wed Sep 29 15:40:05 CDT 2021

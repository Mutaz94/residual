Wed Sep 29 04:11:55 CDT 2021
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
$DATA ../../../../data/int/SL3/dat33.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      992
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

 TOT. NO. OF OBS RECS:      892
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
 RAW OUTPUT FILE (FILE): m33.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1061.66422057368        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2400E+02  2.4979E+02 -5.4397E+00  8.7173E+01  1.7156E+02  4.2212E+01 -1.8042E+02 -2.2919E+02 -1.0250E+02 -5.5771E+01
            -4.8609E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2675.17453100126        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  9.3092E-01  9.1821E-01  1.6308E+00  1.1163E+00  1.0775E+00  7.5830E-01  1.6713E+00  1.1430E+00  8.8276E-01  1.0886E+00
             3.1254E+00
 PARAMETER:  2.8414E-02  1.4670E-02  5.8905E-01  2.0998E-01  1.7463E-01 -1.7667E-01  6.1359E-01  2.3362E-01 -2.4697E-02  1.8493E-01
             1.2396E+00
 GRADIENT:  -1.1319E+02  1.9861E+01  5.2650E+00  3.5923E+01 -1.5017E+01 -9.0764E+01  3.8108E+01 -1.3278E+00  1.6692E+01  6.2755E+00
             4.3781E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2710.44029742166        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.4539E-01  7.3705E-01  7.4319E+00  1.2722E+00  1.8199E+00  9.0211E-01  1.1825E+00  3.2343E+00  7.9270E-01  1.4580E+00
             2.9304E+00
 PARAMETER:  4.3839E-02 -2.0510E-01  2.1058E+00  3.4073E-01  6.9878E-01 -3.0158E-03  2.6766E-01  1.2738E+00 -1.3230E-01  4.7707E-01
             1.1751E+00
 GRADIENT:  -1.2921E+01 -1.7859E+01 -1.9062E+00  2.5525E+01  7.5267E+01 -1.3547E+01 -4.0804E+00  2.8976E+01  3.4066E+00 -1.9314E+01
             3.4179E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2744.12840435531        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  9.2605E-01  1.0079E+00  1.7554E+00  1.0346E+00  1.1276E+00  9.1161E-01  1.3566E+00  2.0790E+00  6.8324E-01  1.3221E+00
             2.5098E+00
 PARAMETER:  2.3172E-02  1.0789E-01  6.6271E-01  1.3402E-01  2.2008E-01  7.4571E-03  4.0495E-01  8.3191E-01 -2.8091E-01  3.7922E-01
             1.0202E+00
 GRADIENT:  -3.4704E+01  9.8825E+00  1.2228E+01 -1.5716E+01 -4.1045E+01 -1.0805E+01  1.1663E+01 -9.8086E+00 -1.0728E+01  2.6767E+01
             8.2444E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2752.51510518465        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  9.3313E-01  9.1131E-01  1.6870E+00  1.0896E+00  1.0878E+00  9.3501E-01  1.2739E+00  2.4600E+00  7.9708E-01  1.0101E+00
             2.3891E+00
 PARAMETER:  3.0785E-02  7.1242E-03  6.2296E-01  1.8585E-01  1.8411E-01  3.2804E-02  3.4211E-01  1.0002E+00 -1.2680E-01  1.1006E-01
             9.7090E-01
 GRADIENT:  -9.9411E-01  1.2132E-01 -8.9453E-01  1.5095E+00  1.0932E+00  5.2500E-01 -1.2761E+00  1.4158E+00 -1.0209E+00  1.0299E+00
             1.3828E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2759.02047604359        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      481
 NPARAMETR:  9.6878E-01  8.8011E-01  2.4367E+00  1.1492E+00  1.1992E+00  9.5532E-01  1.3986E+00  2.9216E+00  7.2809E-01  1.0654E+00
             2.4039E+00
 PARAMETER:  6.8280E-02 -2.7704E-02  9.9065E-01  2.3904E-01  2.8165E-01  5.4290E-02  4.3550E-01  1.1721E+00 -2.1734E-01  1.6333E-01
             9.7709E-01
 GRADIENT:   1.7067E+01  6.9801E+00 -3.0376E+00  3.7953E+00 -8.3880E+00  3.6599E+00  2.0629E+00 -3.2113E+00 -1.5879E+00 -1.2916E+00
             1.5063E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2759.16568867444        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:      647             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6673E-01  8.7931E-01  2.4491E+00  1.1482E+00  1.2039E+00  9.4975E-01  1.3844E+00  2.9503E+00  7.2979E-01  1.0713E+00
             2.4071E+00
 PARAMETER:  6.6166E-02 -2.8614E-02  9.9574E-01  2.3821E-01  2.8557E-01  4.8447E-02  4.2527E-01  1.1819E+00 -2.1499E-01  1.6886E-01
             9.7842E-01
 GRADIENT:   8.4906E+01  1.2527E+01  8.6707E+00  5.4100E+01  1.4075E+01  8.0894E+00  7.1926E+00  6.6138E+00  1.1106E+00  4.9784E-01
             2.2638E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2759.22065587000        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      805             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6220E-01  8.7344E-01  2.4459E+00  1.1477E+00  1.2032E+00  9.4604E-01  1.3753E+00  2.9682E+00  7.3862E-01  1.0708E+00
             2.4092E+00
 PARAMETER:  6.1463E-02 -3.5311E-02  9.9440E-01  2.3780E-01  2.8497E-01  4.4531E-02  4.1864E-01  1.1879E+00 -2.0297E-01  1.6839E-01
             9.7931E-01
 GRADIENT:   7.3595E+01  7.6809E+00  8.0707E+00  4.7581E+01  1.5832E+01  6.7705E+00  6.5031E+00  7.6166E+00  2.3239E+00  7.9293E-01
             2.6088E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2759.23835351135        NO. OF FUNC. EVALS.: 167
 CUMULATIVE NO. OF FUNC. EVALS.:      972
 NPARAMETR:  9.6210E-01  8.7112E-01  2.4403E+00  1.1513E+00  1.2066E+00  9.4579E-01  1.3687E+00  3.0052E+00  7.4141E-01  1.0702E+00
             2.4132E+00
 PARAMETER:  6.1602E-02 -3.8051E-02  9.9501E-01  2.4083E-01  2.8503E-01  4.4336E-02  4.1328E-01  1.1884E+00 -1.9731E-01  1.6840E-01
             9.7839E-01
 GRADIENT:   9.4981E-01 -7.4775E-02  1.0336E+02 -3.4772E-01 -2.1081E+00  4.2671E-02 -1.1445E-01 -1.1482E+00  2.0207E-01  6.5158E+02
            -1.0952E+02
 NUMSIGDIG:         2.4         2.9         2.3         3.2         1.8         2.9         2.6         1.8         1.8         2.3
                    2.4

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      972
 NO. OF SIG. DIGITS IN FINAL EST.:  1.8

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4989E-03 -8.5649E-03 -2.8400E-02  7.8816E-04 -3.6752E-02
 SE:             2.9461E-02  2.1245E-02  2.2257E-02  2.2512E-02  1.9993E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5942E-01  6.8684E-01  2.0197E-01  9.7207E-01  6.6028E-02

 ETASHRINKSD(%)  1.3011E+00  2.8825E+01  2.5435E+01  2.4581E+01  3.3021E+01
 ETASHRINKVR(%)  2.5854E+00  4.9341E+01  4.4400E+01  4.3120E+01  5.5138E+01
 EBVSHRINKSD(%)  1.5274E+00  2.9793E+01  2.7215E+01  2.6107E+01  3.1095E+01
 EBVSHRINKVR(%)  3.0315E+00  5.0710E+01  4.7024E+01  4.5399E+01  5.2520E+01
 RELATIVEINF(%)  9.6926E+01  1.3446E+01  3.0827E+01  1.6329E+01  2.2940E+01
 EPSSHRINKSD(%)  1.8428E+01
 EPSSHRINKVR(%)  3.3461E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          892
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1639.3863432371361     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2759.2383535113481     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1119.8520102742120     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.40
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    15.11
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2759.238       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.62E-01  8.71E-01  2.45E+00  1.15E+00  1.20E+00  9.46E-01  1.37E+00  2.97E+00  7.43E-01  1.07E+00  2.41E+00
 


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
+       -1.11E+01  3.99E+02
 
 TH 3
+        3.00E+00  4.14E+01  4.53E+02
 
 TH 4
+       -1.85E+01  4.17E+02 -2.77E+01  8.05E+02
 
 TH 5
+       -8.21E+04 -9.08E+04 -1.34E+02 -2.85E+04  2.30E+04
 
 TH 6
+        4.07E+00 -3.75E+00 -2.29E+00 -5.83E+00 -2.20E+00  2.09E+02
 
 TH 7
+        9.30E-01  2.21E+01 -1.08E+01 -3.55E+00 -2.61E-01 -1.68E-01  3.21E+01
 
 TH 8
+        7.85E+03  8.66E+03  1.73E+01  2.72E+03 -2.17E+03 -8.08E-02  1.53E+00  2.14E+02
 
 TH 9
+        2.64E+00 -9.90E+00  3.08E+00 -4.80E+00 -5.39E+04 -1.98E-01  2.46E+01  5.16E+03  1.18E+02
 
 TH10
+        3.32E+01  3.99E+02 -4.13E+01 -8.88E+01  4.37E+04 -3.26E+01 -1.42E+02 -4.17E+03  5.08E+01  8.42E+04
 
 TH11
+       -1.81E+01 -4.92E+01 -3.16E+01 -1.96E+00  9.58E+01  4.92E+00  1.32E+01 -1.56E+01  4.56E+00  4.68E+01  7.18E+02
 
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
 #CPUT: Total CPU Time in Seconds,       41.621
Stop Time:
Wed Sep 29 04:12:38 CDT 2021

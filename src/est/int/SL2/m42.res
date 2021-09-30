Wed Sep 29 03:08:35 CDT 2021
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
$DATA ../../../../data/int/SL2/dat42.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      996
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

 TOT. NO. OF OBS RECS:      896
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
 RAW OUTPUT FILE (FILE): m42.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2615.86305744702        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0024E+02  1.6715E+02  7.2841E-01  2.0547E+02  1.6699E+02  5.4366E+01 -7.7968E+01 -1.1406E+02 -8.9283E+01 -2.4663E+01
            -2.2558E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3198.84789243565        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  1.0481E+00  9.7151E-01  1.0655E+00  9.5521E-01  9.4761E-01  1.0152E+00  1.0733E+00  1.0356E+00  1.1257E+00  1.0191E+00
             1.8017E+00
 PARAMETER:  1.4701E-01  7.1094E-02  1.6342E-01  5.4177E-02  4.6189E-02  1.1511E-01  1.7070E-01  1.3501E-01  2.1845E-01  1.1890E-01
             6.8871E-01
 GRADIENT:   2.1021E+02  2.8407E+00  6.4698E+00  7.8839E-01 -1.5309E+01  2.9684E+01 -1.8223E+00 -1.2085E+00  5.9713E+00  2.0346E+00
            -1.7576E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3201.91824379842        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0335E+00  1.0592E+00  1.2196E+00  9.3471E-01  1.0677E+00  9.4419E-01  1.0980E+00  1.3968E+00  1.0937E+00  1.1014E+00
             1.8249E+00
 PARAMETER:  1.3297E-01  1.5755E-01  2.9851E-01  3.2478E-02  1.6549E-01  4.2577E-02  1.9345E-01  4.3416E-01  1.8959E-01  1.9655E-01
             7.0152E-01
 GRADIENT:   1.4140E+02  2.9747E+01 -5.3150E+00  2.4916E+01  2.2937E+01 -2.0687E+00  1.2613E+01  6.2597E-01  2.2240E+00  4.1678E+00
             1.8779E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3209.34139669162        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      342
 NPARAMETR:  1.0721E+00  1.2321E+00  1.5977E+00  8.7132E-01  1.2767E+00  9.6486E-01  8.9035E-01  2.5550E+00  1.1041E+00  1.2147E+00
             1.8472E+00
 PARAMETER:  1.6961E-01  3.0874E-01  5.6858E-01 -3.7745E-02  3.4427E-01  6.4226E-02 -1.6144E-02  1.0381E+00  1.9899E-01  2.9446E-01
             7.1368E-01
 GRADIENT:   1.7428E+01  1.8168E+01 -2.2274E+01  8.3437E+00 -1.4533E+00 -7.1064E+00  2.7153E+00  5.7352E+00  1.7781E+00 -9.8120E+00
             5.2821E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3211.92333500419        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      525             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0699E+00  1.2471E+00  1.7648E+00  8.5733E-01  1.3275E+00  9.8090E-01  8.5481E-01  2.6665E+00  1.1103E+00  1.2918E+00
             1.8113E+00
 PARAMETER:  1.6753E-01  3.2081E-01  6.6802E-01 -5.3937E-02  3.8332E-01  8.0714E-02 -5.6879E-02  1.0808E+00  2.0466E-01  3.5600E-01
             6.9404E-01
 GRADIENT:   2.8694E+02  1.2042E+02 -5.1170E+00  2.4912E+01  5.5422E+01  1.3856E+01  2.8463E+00  8.5229E+00  7.1391E+00  5.3322E+00
             2.8290E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3212.37919137801        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      642
 NPARAMETR:  1.0536E+00  1.2027E+00  1.7649E+00  8.7670E-01  1.2918E+00  9.8022E-01  8.5860E-01  2.5862E+00  1.0942E+00  1.2801E+00
             1.7965E+00
 PARAMETER:  1.5220E-01  2.8454E-01  6.6809E-01 -3.1589E-02  3.5606E-01  8.0023E-02 -5.2456E-02  1.0502E+00  1.9005E-01  3.4691E-01
             6.8587E-01
 GRADIENT:  -2.1280E+01 -1.5847E-01 -1.2979E+01 -1.0997E+01  1.7759E+00 -1.2125E+00 -5.8630E-01 -7.2365E-01  2.4408E-01 -2.7132E-01
             2.2080E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3212.98511414752        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      817
 NPARAMETR:  1.0675E+00  1.1351E+00  1.7680E+00  9.2997E-01  1.2458E+00  9.8604E-01  9.3163E-01  2.6241E+00  1.0376E+00  1.2393E+00
             1.7853E+00
 PARAMETER:  1.6529E-01  2.2674E-01  6.6987E-01  2.7396E-02  3.1980E-01  8.5947E-02  2.9182E-02  1.0647E+00  1.3687E-01  3.1452E-01
             6.7958E-01
 GRADIENT:   9.0774E+00  6.3999E+00 -1.8267E+01  4.6390E+00 -2.7518E-01  1.3351E+00  1.4279E-01 -3.7953E-01  2.7153E-01  9.7708E-01
            -2.6088E+00

0ITERATION NO.:   33    OBJECTIVE VALUE:  -3213.00245834513        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      913
 NPARAMETR:  1.0672E+00  1.1318E+00  1.7683E+00  9.3169E-01  1.2438E+00  9.8564E-01  9.3434E-01  2.6266E+00  1.0355E+00  1.2364E+00
             1.7853E+00
 PARAMETER:  1.6503E-01  2.2378E-01  6.7002E-01  2.9248E-02  3.1813E-01  8.5539E-02  3.2083E-02  1.0657E+00  1.3485E-01  3.1218E-01
             6.7956E-01
 GRADIENT:  -5.5706E+02  2.1272E+02 -8.6223E+01  4.6939E+02  2.9429E+02  4.6621E+02  4.6518E+02  8.7584E+01 -6.8974E+02 -2.9795E+02
            -2.1971E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      913
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.0339E-03 -3.4882E-02 -1.0176E-02  1.5182E-02 -3.7916E-02
 SE:             2.9654E-02  1.9355E-02  2.0433E-02  2.5280E-02  2.3155E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4532E-01  7.1512E-02  6.1848E-01  5.4813E-01  1.0153E-01

 ETASHRINKSD(%)  6.5682E-01  3.5157E+01  3.1547E+01  1.5310E+01  2.2428E+01
 ETASHRINKVR(%)  1.3093E+00  5.7954E+01  5.3142E+01  2.8277E+01  3.9826E+01
 EBVSHRINKSD(%)  7.3959E-01  3.5530E+01  3.4163E+01  1.6874E+01  1.9185E+01
 EBVSHRINKVR(%)  1.4737E+00  5.8436E+01  5.6655E+01  3.0900E+01  3.4690E+01
 RELATIVEINF(%)  9.8505E+01  1.2820E+01  2.8861E+01  2.4189E+01  3.4124E+01
 EPSSHRINKSD(%)  1.9403E+01
 EPSSHRINKVR(%)  3.5041E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          896
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1646.7378515027735     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3213.0024583451263     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1566.2646068423528     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.90
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    15.79
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3213.002       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.07E+00  1.13E+00  1.77E+00  9.32E-01  1.24E+00  9.86E-01  9.34E-01  2.63E+00  1.04E+00  1.24E+00  1.79E+00
 


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
+        7.60E+04
 
 TH 2
+       -1.22E+01  3.65E+04
 
 TH 3
+        1.35E+00  4.79E+01  1.62E+03
 
 TH 4
+       -2.38E+01  5.82E+02 -6.40E+01  2.69E+05
 
 TH 5
+       -5.76E+00  1.85E+02 -1.08E+02  9.63E+02  1.54E+04
 
 TH 6
+       -1.03E+01  2.50E+00 -8.12E-01  8.85E+00  2.18E+00  2.40E+05
 
 TH 7
+        6.21E+01 -3.67E+01  8.41E+00 -1.22E+02 -2.77E+01  2.52E+05  2.66E+05
 
 TH 8
+       -3.87E-01 -1.03E+01 -1.58E+01  8.71E+00  2.41E+01  3.27E-01 -2.57E+00  3.08E+02
 
 TH 9
+        3.75E+01 -4.18E+01  7.31E+00 -3.87E+01 -1.20E+01 -8.35E+00  1.04E+02  1.07E+00  1.19E+05
 
 TH10
+        4.20E+00 -1.45E+02  2.63E+01 -3.32E+02 -1.06E+02 -2.71E+00  3.27E+01 -1.24E+01  1.94E+01  1.58E+04
 
 TH11
+       -1.09E+01 -1.14E+02  1.98E+01 -2.31E+02 -6.05E+01  2.27E+00  1.17E+01  6.14E-01  6.81E+00  5.01E+03  3.34E+02
 
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
 #CPUT: Total CPU Time in Seconds,       41.815
Stop Time:
Wed Sep 29 03:09:19 CDT 2021

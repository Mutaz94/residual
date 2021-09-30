Wed Sep 29 12:40:17 CDT 2021
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
$DATA ../../../../data/spa/A2/dat23.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m23.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1141.00469932398        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1917E+02  9.8309E+01  3.4366E+01  1.3277E+02  1.0473E+02  5.7207E+01 -1.5387E+01 -2.8127E+01 -4.1324E+01 -2.8294E+01
            -9.4098E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1444.85044025352        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0918E+00  9.4660E-01  8.9872E-01  1.0497E+00  8.8341E-01  8.8398E-01  9.3613E-01  1.0523E+00  1.1073E+00  6.6333E-01
             2.7382E+00
 PARAMETER:  1.8785E-01  4.5119E-02 -6.7844E-03  1.4854E-01 -2.3967E-02 -2.3326E-02  3.3999E-02  1.5097E-01  2.0193E-01 -3.1048E-01
             1.1073E+00
 GRADIENT:   2.4882E+02  2.2480E+01 -3.5118E-01  5.2330E+01 -4.5912E+00 -1.4389E+01  5.0964E+00  2.8664E+00  1.5981E+01  1.1271E+01
             7.5561E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1450.55323541654        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:      176
 NPARAMETR:  1.0674E+00  8.6602E-01  4.1505E-01  1.0380E+00  5.3669E-01  9.1222E-01  1.1028E+00  8.9728E-01  9.6509E-01  3.5484E-01
             2.5430E+00
 PARAMETER:  1.6525E-01 -4.3845E-02 -7.7936E-01  1.3727E-01 -5.2233E-01  8.1254E-03  1.9784E-01 -8.3891E-03  6.4468E-02 -9.3609E-01
             1.0333E+00
 GRADIENT:   5.8889E+01  6.9218E+01  1.0497E+01  8.4195E+01 -6.0801E+01 -7.4585E+00  3.9235E+00  8.6961E+00  6.3030E+00  6.0252E+00
             6.2375E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1462.40631610424        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  1.0258E+00  7.1669E-01  3.5837E-01  1.0417E+00  4.6979E-01  9.3101E-01  1.2957E+00  6.9670E-01  9.1615E-01  2.3920E-01
             2.1609E+00
 PARAMETER:  1.2547E-01 -2.3312E-01 -9.2619E-01  1.4090E-01 -6.5547E-01  2.8511E-02  3.5904E-01 -2.6140E-01  1.2425E-02 -1.3305E+00
             8.7053E-01
 GRADIENT:  -2.3147E+01  9.6251E+00 -1.6441E+01  4.8546E+01  2.1551E+01 -1.4922E+00  7.3056E+00  5.0320E-01  4.1639E+00  1.3455E+00
            -1.9892E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1465.22626176207        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  1.0313E+00  7.4619E-01  2.5144E-01  9.3203E-01  4.0852E-01  9.3612E-01  1.1071E+00  7.5804E-01  9.1052E-01  1.4076E-01
             2.1007E+00
 PARAMETER:  1.3081E-01 -1.9277E-01 -1.2805E+00  2.9613E-02 -7.9522E-01  3.3991E-02  2.0171E-01 -1.7701E-01  6.2561E-03 -1.8607E+00
             8.4227E-01
 GRADIENT:   6.4830E+00 -4.6491E+00 -3.1166E+00  3.5173E-01  6.0410E+00  1.4241E-01  4.5420E-02  1.6762E-01 -5.4319E-01  6.9779E-01
             5.9060E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1465.62588395734        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  1.0249E+00  9.0526E-01  2.4503E-01  8.5900E-01  4.6229E-01  9.2720E-01  9.9025E-01  8.2638E-01  9.4830E-01  3.6117E-02
             2.1279E+00
 PARAMETER:  1.2461E-01  4.6801E-04 -1.3064E+00 -5.1984E-02 -6.7156E-01  2.4418E-02  9.0197E-02 -9.0703E-02  4.6917E-02 -3.2210E+00
             8.5512E-01
 GRADIENT:  -1.1543E+00  1.4460E+00 -1.7162E-01  3.5113E+00  1.0181E+00 -9.9593E-01  7.2959E-01  1.6329E-01 -3.2048E-01  6.6533E-02
            -1.2769E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1465.92086017585        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  1.0207E+00  1.1887E+00  2.1015E-01  7.1284E-01  5.5028E-01  9.2377E-01  8.1161E-01  9.6641E-01  1.0524E+00  1.0000E-02
             2.1854E+00
 PARAMETER:  1.2045E-01  2.7282E-01 -1.4599E+00 -2.3850E-01 -4.9732E-01  2.0710E-02 -1.0874E-01  6.5834E-02  1.5108E-01 -6.4345E+00
             8.8179E-01
 GRADIENT:  -3.4016E-01  4.3168E+01  1.3264E+01  6.1396E+00 -4.7255E+01  1.3736E+00 -7.2424E+00 -2.1009E+00 -1.1414E+00  0.0000E+00
             2.0432E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1473.60323385864        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1064
 NPARAMETR:  1.0138E+00  1.7926E+00  1.2065E-01  3.9736E-01  8.3733E-01  8.9927E-01  7.2320E-01  2.0718E+00  1.4235E+00  1.0000E-02
             2.1519E+00
 PARAMETER:  1.1372E-01  6.8368E-01 -2.0149E+00 -8.2292E-01 -7.7532E-02 -6.1697E-03 -2.2407E-01  8.2841E-01  4.5311E-01 -2.0424E+01
             8.6633E-01
 GRADIENT:  -1.4521E+01  5.0720E+01 -1.3109E+01  3.5942E+01  3.5392E+00 -3.2930E+00  2.1022E+00  3.3657E+00 -8.7656E+00  0.0000E+00
            -1.5335E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1477.37089907544        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1239
 NPARAMETR:  1.0210E+00  2.0036E+00  8.0273E-02  2.4385E-01  9.7831E-01  9.1311E-01  6.7738E-01  1.7398E+00  2.1621E+00  1.0000E-02
             2.2449E+00
 PARAMETER:  1.2074E-01  7.9497E-01 -2.4223E+00 -1.3112E+00  7.8067E-02  9.1020E-03 -2.8953E-01  6.5378E-01  8.7108E-01 -2.8881E+01
             9.0864E-01
 GRADIENT:  -2.6875E-01 -1.8891E+00  2.1319E+00  6.6303E-01 -3.3158E+00  2.2810E+00  5.9189E-01  5.9875E-02  2.4847E+00  0.0000E+00
             6.4143E-01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1477.54751751861        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:     1379
 NPARAMETR:  1.0218E+00  2.0860E+00  6.7530E-02  2.0425E-01  1.0296E+00  9.0794E-01  6.6990E-01  1.6711E+00  2.4131E+00  1.0000E-02
             2.2590E+00
 PARAMETER:  1.2165E-01  8.3501E-01 -2.5960E+00 -1.4881E+00  1.2914E-01  3.4184E-03 -3.0053E-01  6.1967E-01  9.8058E-01 -3.2172E+01
             9.1462E-01
 GRADIENT:   6.0816E+03 -8.6163E+02 -2.7569E+02  1.0163E+00 -2.8701E+03 -2.6633E-02  2.4633E+03  4.4970E-01 -7.5927E+02  0.0000E+00
            -4.0496E+02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1379
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.1338E-03 -3.0686E-02 -2.0208E-03  3.3907E-02 -4.0771E-04
 SE:             2.9337E-02  2.6085E-02  7.3859E-03  2.0416E-02  2.2356E-04
 N:                     100         100         100         100         100

 P VAL.:         9.4202E-01  2.3944E-01  7.8439E-01  9.6765E-02  6.8189E-02

 ETASHRINKSD(%)  1.7175E+00  1.2613E+01  7.5256E+01  3.1602E+01  9.9251E+01
 ETASHRINKVR(%)  3.4055E+00  2.3635E+01  9.3878E+01  5.3218E+01  9.9994E+01
 EBVSHRINKSD(%)  2.1328E+00  1.2964E+01  7.3844E+01  3.1400E+01  9.9187E+01
 EBVSHRINKVR(%)  4.2202E+00  2.4248E+01  9.3159E+01  5.2941E+01  9.9993E+01
 RELATIVEINF(%)  9.3622E+01  1.9135E+01  3.9843E+00  1.1598E+01  1.5534E-03
 EPSSHRINKSD(%)  3.2716E+01
 EPSSHRINKVR(%)  5.4729E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1477.5475175186057     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -742.39669095486749     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.39
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.02
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1477.548       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  2.09E+00  6.75E-02  2.04E-01  1.03E+00  9.08E-01  6.70E-01  1.68E+00  2.41E+00  1.00E-02  2.26E+00
 


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
+        1.20E+06
 
 TH 2
+       -8.56E+04  1.26E+04
 
 TH 3
+       -8.31E+05 -2.30E+03  5.83E+05
 
 TH 4
+       -5.92E+03  6.23E+02  1.91E+03  2.05E+05
 
 TH 5
+       -2.78E+02  7.97E+04 -3.55E+04  6.01E+03  1.05E+06
 
 TH 6
+        2.17E+02 -2.23E+01 -1.73E+02 -1.67E+01 -2.08E+02  2.22E+02
 
 TH 7
+        7.40E+05 -5.29E+04 -5.13E+05 -3.62E+03 -5.32E+02  1.37E+02  4.57E+05
 
 TH 8
+       -3.23E+03  2.28E+02  2.19E+03 -5.81E+04  3.01E+03  1.07E+00 -1.99E+03  1.67E+04
 
 TH 9
+       -1.14E+01  4.52E+03 -1.97E+03  3.71E+02  5.92E+04 -1.17E+01 -2.73E+01  1.73E+02  3.36E+03
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -3.05E+01  5.12E+03 -2.18E+03  3.45E+02 -4.44E+01 -1.00E+01 -1.91E+01  1.95E+02  5.77E+01  0.00E+00  4.37E+03
 
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
 #CPUT: Total CPU Time in Seconds,       24.486
Stop Time:
Wed Sep 29 12:40:43 CDT 2021

Wed Sep 29 11:24:27 CDT 2021
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
$DATA ../../../../data/spa/B/dat64.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m64.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1697.72782800204        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3485E+02 -3.1220E+01 -6.8154E+01  7.7073E+01  1.0653E+02  3.1157E+01  1.9178E+00  3.2033E+00  3.0917E+01  2.0070E+01
             1.0258E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1705.73906421927        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.9890E-01  1.1231E+00  1.1507E+00  9.4863E-01  1.0270E+00  1.1837E+00  9.9232E-01  9.9389E-01  8.5664E-01  8.2788E-01
             9.5771E-01
 PARAMETER:  9.8897E-02  2.1613E-01  2.4035E-01  4.7264E-02  1.2662E-01  2.6868E-01  9.2289E-02  9.3871E-02 -5.4739E-02 -8.8881E-02
             5.6791E-02
 GRADIENT:  -1.8948E+01  4.2057E+00  1.1668E+01  4.6585E-01  1.7076E+01  3.5460E+01 -8.0484E+00 -1.2317E+01 -9.0685E+00 -1.3003E+01
            -2.1213E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1707.10791991955        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  9.9857E-01  1.0647E+00  1.2408E+00  9.8529E-01  1.0267E+00  1.1185E+00  1.0166E+00  1.3907E+00  7.8692E-01  7.5452E-01
             9.7439E-01
 PARAMETER:  9.8572E-02  1.6271E-01  3.1577E-01  8.5185E-02  1.2634E-01  2.1202E-01  1.1646E-01  4.2982E-01 -1.3963E-01 -1.8167E-01
             7.4056E-02
 GRADIENT:  -2.1589E+01 -6.4474E+00 -3.4495E+00  4.6844E-01  2.5986E+01  1.5303E+01 -1.2497E+01 -1.7960E-01 -1.5856E+01 -1.8186E+01
            -1.4949E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1710.07313896874        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  1.0096E+00  9.4909E-01  1.4912E+00  1.0724E+00  1.0550E+00  1.0672E+00  1.1379E+00  1.4609E+00  8.3242E-01  9.0720E-01
             9.9424E-01
 PARAMETER:  1.0956E-01  4.7752E-02  4.9958E-01  1.6992E-01  1.5356E-01  1.6503E-01  2.2920E-01  4.7904E-01 -8.3416E-02  2.6077E-03
             9.4221E-02
 GRADIENT:   3.5271E-01  3.0810E+00 -2.4571E+00  6.5153E+00  2.4441E+00 -2.1780E+00  9.9830E-01  7.6527E-01  1.1905E+00  4.5015E-01
            -2.2284E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1710.13668465252        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  1.0088E+00  8.5268E-01  1.7835E+00  1.1404E+00  1.0844E+00  1.0718E+00  1.1659E+00  1.6319E+00  8.1136E-01  9.3755E-01
             9.9668E-01
 PARAMETER:  1.0874E-01 -5.9369E-02  6.7860E-01  2.3139E-01  1.8105E-01  1.6930E-01  2.5353E-01  5.8977E-01 -1.0905E-01  3.5517E-02
             9.6675E-02
 GRADIENT:   6.4560E-01  3.5547E+00  1.2626E+00  3.1524E+00 -2.4372E+00 -6.2764E-02  8.8905E-02 -4.1570E-02 -2.7843E-01 -1.5417E-01
            -4.2196E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1710.14367878594        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      878
 NPARAMETR:  1.0081E+00  7.5987E-01  1.9801E+00  1.2047E+00  1.0930E+00  1.0712E+00  1.2152E+00  1.7187E+00  7.9465E-01  9.5129E-01
             9.9800E-01
 PARAMETER:  1.0806E-01 -1.7461E-01  7.8315E-01  2.8625E-01  1.8895E-01  1.6875E-01  2.9492E-01  6.4154E-01 -1.2985E-01  5.0064E-02
             9.7994E-02
 GRADIENT:   7.2198E-01  3.8180E+00  1.9256E+00  3.7035E+00 -2.8041E+00 -1.0234E-03  6.0472E-02 -4.5423E-01 -1.5612E-01 -2.2024E-01
            -2.1701E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1710.15955762795        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1064
 NPARAMETR:  1.0082E+00  7.0609E-01  2.0517E+00  1.2350E+00  1.0964E+00  1.0720E+00  1.2432E+00  1.7638E+00  7.8664E-01  9.5702E-01
             9.9858E-01
 PARAMETER:  1.0820E-01 -2.4801E-01  8.1865E-01  3.1109E-01  1.9206E-01  1.6948E-01  3.1767E-01  6.6746E-01 -1.3998E-01  5.6074E-02
             9.8578E-02
 GRADIENT:   1.8537E+00 -2.2278E+00 -9.1804E-01 -7.9129E+00  4.0143E+00  4.6774E-01 -7.3576E-02  7.4188E-01  2.4999E-02 -8.8551E-02
             3.6167E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1710.17330279596        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1248
 NPARAMETR:  1.0083E+00  7.0566E-01  2.0494E+00  1.2384E+00  1.0935E+00  1.0722E+00  1.2468E+00  1.7568E+00  7.8604E-01  9.5468E-01
             9.9766E-01
 PARAMETER:  1.0829E-01 -2.4863E-01  8.1756E-01  3.1381E-01  1.8942E-01  1.6969E-01  3.2060E-01  6.6347E-01 -1.4075E-01  5.3618E-02
             9.7659E-02
 GRADIENT:   2.0333E+00  6.4719E-01 -9.5374E-02 -1.5303E+00  1.3992E+00  5.4420E-01 -3.5028E-02  4.4670E-01  4.0361E-02 -1.5606E-01
            -1.0598E-01

0ITERATION NO.:   36    OBJECTIVE VALUE:  -1710.17330279596        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     1272
 NPARAMETR:  1.0083E+00  7.0566E-01  2.0494E+00  1.2384E+00  1.0935E+00  1.0722E+00  1.2468E+00  1.7568E+00  7.8604E-01  9.5468E-01
             9.9766E-01
 PARAMETER:  1.0829E-01 -2.4863E-01  8.1756E-01  3.1381E-01  1.8942E-01  1.6969E-01  3.2060E-01  6.6347E-01 -1.4075E-01  5.3618E-02
             9.7659E-02
 GRADIENT:   6.3305E+04 -2.7581E+04 -4.3430E-02  1.3423E+00 -3.6188E+04 -4.0398E+04 -1.0695E+04  2.5326E-01  4.8700E+04  6.8556E+04
             6.8545E+04

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1272
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.3233E-04 -7.7319E-03 -3.9684E-02 -2.7548E-03 -4.3553E-02
 SE:             2.9858E-02  1.5262E-02  1.6746E-02  2.5357E-02  2.0789E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9379E-01  6.1244E-01  1.7800E-02  9.1349E-01  3.6165E-02

 ETASHRINKSD(%)  1.0000E-10  4.8869E+01  4.3899E+01  1.5051E+01  3.0356E+01
 ETASHRINKVR(%)  1.0000E-10  7.3856E+01  6.8527E+01  2.7837E+01  5.1497E+01
 EBVSHRINKSD(%)  3.7780E-01  4.9134E+01  4.9986E+01  1.5731E+01  2.6399E+01
 EBVSHRINKVR(%)  7.5418E-01  7.4126E+01  7.4986E+01  2.8988E+01  4.5829E+01
 RELATIVEINF(%)  9.7598E+01  3.3375E-01  4.1290E+00  9.7340E-01  1.0867E+01
 EPSSHRINKSD(%)  4.4763E+01
 EPSSHRINKVR(%)  6.9489E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1710.1733027959574     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -975.02247623221922     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.34
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.46
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1710.173       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  7.06E-01  2.05E+00  1.24E+00  1.09E+00  1.07E+00  1.25E+00  1.76E+00  7.86E-01  9.55E-01  9.98E-01
 


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
+        1.44E+07
 
 TH 2
+       -1.42E+02  3.84E+02
 
 TH 3
+        4.71E-01  1.90E+01  2.40E+01
 
 TH 4
+       -7.57E+00  5.24E+02  2.63E+05  8.27E+02
 
 TH 5
+        9.12E+02 -7.11E+02 -8.15E+01  1.65E+00  3.99E+06
 
 TH 6
+        2.93E+02 -1.85E+02  1.57E-01 -2.56E+00 -1.56E+02  5.18E+06
 
 TH 7
+       -2.75E+03  1.72E+03  1.33E+00 -5.63E-02 -2.52E+02 -8.00E+01  1.07E+06
 
 TH 8
+       -2.26E-01  5.28E+02  8.85E+04  7.74E-01 -7.18E+05 -4.18E-02  1.84E-01  1.59E+01
 
 TH 9
+       -3.24E+03  2.01E+03  8.51E-01  8.08E-01  9.05E+02  2.88E+02  9.17E+02  9.69E-01  1.40E+07
 
 TH10
+        5.11E+02 -3.15E+02 -2.20E+00 -5.06E+00 -8.67E+06  3.35E+02 -1.38E+02  6.17E+00  5.04E+02  1.88E+07
 
 TH11
+       -4.58E+03  2.84E+03 -4.92E+00 -7.32E+00  9.93E+02  3.22E+02  1.25E+03  2.84E+00 -4.51E+03  5.76E+02  1.72E+07
 
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
 #CPUT: Total CPU Time in Seconds,       23.860
Stop Time:
Wed Sep 29 11:24:52 CDT 2021

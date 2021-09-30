Wed Sep 29 16:18:48 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat3.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m3.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1675.67867300047        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8905E+02 -5.3772E+01 -3.2807E+01 -5.8774E+00  7.6578E+01  6.9490E+01  3.2542E+00 -5.1471E-02  6.8272E+00  1.8305E+01
            -4.3482E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1684.50662980548        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  1.0085E+00  1.1035E+00  1.0438E+00  1.0155E+00  9.7802E-01  9.9110E-01  9.2985E-01  1.0506E+00  9.7175E-01  7.0727E-01
             1.2179E+00
 PARAMETER:  1.0844E-01  1.9849E-01  1.4289E-01  1.1541E-01  7.7773E-02  9.1063E-02  2.7268E-02  1.4935E-01  7.1340E-02 -2.4634E-01
             2.9716E-01
 GRADIENT:  -4.4268E+01  1.5805E+01  1.4551E+01  1.3240E+01  3.9874E+00 -3.1304E+00 -3.2327E+00 -1.0912E+01 -8.3847E+00 -7.7551E+00
             2.6257E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1686.53641055125        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0240E+00  1.1722E+00  9.4857E-01  9.6322E-01  9.4109E-01  9.9314E-01  9.5501E-01  1.3112E+00  1.0200E+00  5.8309E-01
             1.1853E+00
 PARAMETER:  1.2371E-01  2.5885E-01  4.7200E-02  6.2528E-02  3.9279E-02  9.3119E-02  5.3967E-02  3.7094E-01  1.1978E-01 -4.3941E-01
             2.6996E-01
 GRADIENT:  -1.0563E+01  1.9880E+01  1.6462E+01  5.4082E+00 -2.8896E+01 -2.0547E+00  1.7043E+00 -2.9088E+00  2.9714E-01 -6.4106E+00
             1.9672E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1689.11236764355        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  1.0311E+00  1.4057E+00  7.7157E-01  8.0785E-01  9.8971E-01  1.0021E+00  8.5183E-01  1.2338E+00  1.1617E+00  7.2684E-01
             1.1079E+00
 PARAMETER:  1.3067E-01  4.4053E-01 -1.5933E-01 -1.1337E-01  8.9653E-02  1.0206E-01 -6.0366E-02  3.1011E-01  2.4986E-01 -2.1904E-01
             2.0248E-01
 GRADIENT:   4.0040E+00  1.3574E+01  5.0983E+00  6.9825E+00 -1.5310E+01  5.1350E-01  4.3502E+00 -1.0937E-01  1.0626E+00  1.7865E+00
            -1.4567E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1690.00022624455        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      725
 NPARAMETR:  1.0296E+00  1.7184E+00  5.4087E-01  6.0633E-01  1.0427E+00  1.0033E+00  7.2803E-01  1.1675E+00  1.4021E+00  7.1839E-01
             1.1277E+00
 PARAMETER:  1.2920E-01  6.4140E-01 -5.1457E-01 -4.0033E-01  1.4179E-01  1.0327E-01 -2.1742E-01  2.5483E-01  4.3798E-01 -2.3074E-01
             2.2015E-01
 GRADIENT:  -1.3437E+00  3.5695E+01  6.8733E+00  1.3000E+01 -1.7199E+01  5.9150E-01 -2.8820E+00 -1.2294E+00 -5.4117E-01 -1.2863E+00
             3.1610E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1690.63106271017        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      911
 NPARAMETR:  1.0305E+00  1.7700E+00  4.5122E-01  5.4204E-01  1.0505E+00  1.0024E+00  7.1684E-01  1.0670E+00  1.4825E+00  7.2948E-01
             1.1228E+00
 PARAMETER:  1.3002E-01  6.7098E-01 -6.9579E-01 -5.1241E-01  1.4930E-01  1.0243E-01 -2.3290E-01  1.6489E-01  4.9374E-01 -2.1542E-01
             2.1580E-01
 GRADIENT:   1.2441E+00 -2.8164E+01 -2.0794E+00 -2.3159E+00  6.1154E+00  3.3492E-01 -1.5668E+00  1.8282E-01  1.3104E+00  1.1834E+00
             3.4457E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1690.72811412478        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1072
 NPARAMETR:  1.0303E+00  1.7827E+00  4.5080E-01  5.4002E-01  1.0507E+00  1.0005E+00  7.1879E-01  1.0802E+00  1.4835E+00  7.2137E-01
             1.1198E+00
 PARAMETER:  1.2985E-01  6.7813E-01 -6.9673E-01 -5.1615E-01  1.4950E-01  1.0048E-01 -2.3018E-01  1.7715E-01  4.9440E-01 -2.2660E-01
             2.1312E-01
 GRADIENT:   7.8418E-01 -1.0728E+01  6.2170E-01  3.5414E-01 -6.3048E-01 -4.5599E-01 -9.6825E-01 -1.2496E-01  5.1740E-01  1.5357E-01
             1.6802E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1690.74174518563        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1255            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0309E+00  1.7857E+00  4.5159E-01  5.3871E-01  1.0527E+00  1.0018E+00  7.2280E-01  1.0956E+00  1.4816E+00  7.2142E-01
             1.1177E+00
 PARAMETER:  1.3041E-01  6.7983E-01 -6.9499E-01 -5.1857E-01  1.5140E-01  1.0183E-01 -2.2463E-01  1.9134E-01  4.9315E-01 -2.2654E-01
             2.1128E-01
 GRADIENT:   4.7462E+02  6.0801E+02  6.9870E+00  1.0427E+02  8.3844E+00  5.5238E+01  1.2915E+01  1.2092E-01  1.8275E+01  7.4986E-01
             2.5799E+00

0ITERATION NO.:   38    OBJECTIVE VALUE:  -1690.74236602528        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:     1330
 NPARAMETR:  1.0309E+00  1.7857E+00  4.5158E-01  5.3862E-01  1.0528E+00  1.0019E+00  7.2281E-01  1.0977E+00  1.4816E+00  7.2140E-01
             1.1174E+00
 PARAMETER:  1.3043E-01  6.7983E-01 -6.9499E-01 -5.1874E-01  1.5143E-01  1.0188E-01 -2.2461E-01  1.9326E-01  4.9314E-01 -2.2656E-01
             2.1099E-01
 GRADIENT:  -5.8520E+04 -1.1233E+04 -1.0951E+04  8.0868E-01  5.0409E+04 -1.3114E-01  5.8580E-02  3.9391E+04  1.5432E+04 -3.3689E+04
            -3.6180E+04

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1330
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.0092E-04 -2.7119E-02 -2.0563E-02  2.4526E-02 -3.9067E-02
 SE:             2.9852E-02  2.3965E-02  9.7476E-03  2.2990E-02  1.8991E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8127E-01  2.5780E-01  3.4899E-02  2.8606E-01  3.9668E-02

 ETASHRINKSD(%)  1.0000E-10  1.9715E+01  6.7344E+01  2.2980E+01  3.6379E+01
 ETASHRINKVR(%)  1.0000E-10  3.5543E+01  8.9336E+01  4.0679E+01  5.9524E+01
 EBVSHRINKSD(%)  5.1833E-01  1.9785E+01  6.9223E+01  2.3121E+01  3.6008E+01
 EBVSHRINKVR(%)  1.0340E+00  3.5656E+01  9.0528E+01  4.0896E+01  5.9050E+01
 RELATIVEINF(%)  9.8893E+01  3.7586E+00  6.0813E-01  3.4324E+00  7.7913E+00
 EPSSHRINKSD(%)  4.3917E+01
 EPSSHRINKVR(%)  6.8547E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1690.7423660252803     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -955.59153946154208     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.99
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.32
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1690.742       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.79E+00  4.52E-01  5.39E-01  1.05E+00  1.00E+00  7.23E-01  1.10E+00  1.48E+00  7.21E-01  1.12E+00
 


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
+        1.06E+07
 
 TH 2
+        1.17E+06  2.59E+05
 
 TH 3
+        2.55E+04  4.99E+05  3.87E+06
 
 TH 4
+        1.27E+04  5.63E+05 -2.17E+06  1.05E+03
 
 TH 5
+        4.10E+02 -9.86E+05 -2.20E+04 -1.04E+04  7.51E+06
 
 TH 6
+       -3.78E+02 -4.30E+01 -1.61E+02 -3.85E+00  3.17E+02  1.95E+02
 
 TH 7
+       -1.40E+03 -1.44E+02  3.73E+06 -1.12E+01  1.17E+03  4.47E-01  7.24E+06
 
 TH 8
+        3.53E+04 -7.39E+05  2.87E+06 -8.04E+03 -2.98E+04  2.39E+02  8.93E+02  4.22E+06
 
 TH 9
+        9.31E+01 -2.14E+05 -4.73E+03 -2.28E+03 -9.58E+03  6.97E+01  2.71E+02 -6.46E+03  3.55E+05
 
 TH10
+       -4.50E+02 -5.92E+01 -3.71E+06  4.18E+06  2.89E+02 -3.10E+02 -1.13E+03  2.92E+02  8.82E+01  7.14E+06
 
 TH11
+        1.88E+03  6.67E+05 -2.57E+06  7.25E+03 -1.61E+03 -2.13E+02 -7.88E+02  2.02E+04 -3.40E+02 -2.34E+02  3.43E+06
 
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
 #CPUT: Total CPU Time in Seconds,       24.365
Stop Time:
Wed Sep 29 16:19:14 CDT 2021

Wed Sep 29 15:27:00 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat90.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m90.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1624.35042480569        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6393E+02 -3.3697E+00 -2.5945E+01  4.4769E+01  6.0858E+01  2.9910E+01  4.9404E-01  4.3208E+00 -5.2743E-01 -1.9781E+00
            -3.4505E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1627.77625628986        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.8030E-01  1.0180E+00  1.0195E+00  1.0148E+00  9.8090E-01  1.0139E+00  1.0039E+00  9.8843E-01  1.0243E+00  9.9250E-01
             1.0825E+00
 PARAMETER:  8.0106E-02  1.1780E-01  1.1927E-01  1.1469E-01  8.0711E-02  1.1384E-01  1.0386E-01  8.8362E-02  1.2401E-01  9.2472E-02
             1.7930E-01
 GRADIENT:  -3.4042E-01 -1.9781E+00 -8.3205E+00  7.0159E+00  1.1205E+01 -4.2782E-02  6.4095E-02  2.8392E+00 -1.8209E+00  1.1421E+00
             4.7530E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1627.90972035945        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      355
 NPARAMETR:  9.8222E-01  1.0574E+00  9.7132E-01  9.8690E-01  9.7616E-01  1.0000E+00  9.6896E-01  8.3593E-01  1.0439E+00  9.8306E-01
             1.0851E+00
 PARAMETER:  8.2060E-02  1.5582E-01  7.0901E-02  8.6809E-02  7.5874E-02  1.0003E-01  6.8467E-02 -7.9207E-02  1.4294E-01  8.2916E-02
             1.8167E-01
 GRADIENT:   2.8923E+00 -4.0509E-01 -2.0927E+00  5.6289E+00  9.8240E+00 -5.6464E+00 -1.5788E+00 -9.4147E-01 -2.7244E+00 -1.3967E+00
             3.4095E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1628.20936665269        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  9.8156E-01  1.1805E+00  8.4909E-01  9.0114E-01  9.6599E-01  1.0195E+00  9.4028E-01  7.6122E-01  1.1117E+00  9.5801E-01
             1.0812E+00
 PARAMETER:  8.1384E-02  2.6590E-01 -6.3591E-02 -4.0976E-03  6.5400E-02  1.1927E-01  3.8427E-02 -1.7283E-01  2.0588E-01  5.7106E-02
             1.7803E-01
 GRADIENT:  -8.1701E-01  1.8448E+00  1.7428E+00  1.0389E+00 -4.2027E+00  1.4675E+00  5.0206E-01  3.3952E-02  1.9228E-01  6.5880E-01
            -8.6696E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1628.47450356614        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      709
 NPARAMETR:  9.8384E-01  1.4600E+00  6.4817E-01  7.2097E-01  1.0093E+00  1.0124E+00  8.3496E-01  5.9312E-01  1.2804E+00  9.4132E-01
             1.0828E+00
 PARAMETER:  8.3712E-02  4.7843E-01 -3.3361E-01 -2.2715E-01  1.0927E-01  1.1235E-01 -8.0376E-02 -4.2236E-01  3.4715E-01  3.9525E-02
             1.7951E-01
 GRADIENT:   1.2220E+00  1.1473E+01  8.0622E-01  8.2305E+00 -3.4502E+00 -1.8217E+00 -3.5054E-01  3.2892E-01 -5.2527E-01 -7.6698E-01
            -9.4760E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1628.57849437338        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  9.8395E-01  1.5857E+00  5.6018E-01  6.3467E-01  1.0387E+00  1.0132E+00  7.9705E-01  4.7755E-01  1.3807E+00  9.4859E-01
             1.0828E+00
 PARAMETER:  8.3820E-02  5.6101E-01 -4.7949E-01 -3.5464E-01  1.3796E-01  1.1311E-01 -1.2683E-01 -6.3910E-01  4.2258E-01  4.7219E-02
             1.7951E-01
 GRADIENT:   9.4132E-01  7.8190E+00 -6.8473E-01  6.2422E+00 -6.8311E-01 -1.6142E+00 -4.9354E-01  3.9746E-01 -8.2355E-01 -4.4979E-01
            -8.9496E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1628.58149261500        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1061
 NPARAMETR:  9.8374E-01  1.6438E+00  5.2693E-01  5.9630E-01  1.0558E+00  1.0154E+00  7.8185E-01  4.2410E-01  1.4358E+00  9.5726E-01
             1.0828E+00
 PARAMETER:  8.3611E-02  5.9700E-01 -5.4068E-01 -4.1702E-01  1.5430E-01  1.1528E-01 -1.4609E-01 -7.5779E-01  4.6175E-01  5.6316E-02
             1.7956E-01
 GRADIENT:   4.1947E-01  9.3421E+00 -1.5418E-01  5.6220E+00 -1.9748E+00 -7.6094E-01 -3.8616E-01  3.4731E-01 -8.2638E-01 -2.9078E-01
            -2.2374E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1628.73280766186        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1242
 NPARAMETR:  9.8329E-01  1.6553E+00  5.1525E-01  5.8230E-01  1.0632E+00  1.0169E+00  7.7996E-01  1.9847E-01  1.4613E+00  9.6722E-01
             1.0830E+00
 PARAMETER:  8.3144E-02  6.0400E-01 -5.6311E-01 -4.4076E-01  1.6131E-01  1.1674E-01 -1.4852E-01 -1.5171E+00  4.7931E-01  6.6673E-02
             1.7973E-01
 GRADIENT:  -4.5599E-01 -1.4425E+00  1.5557E-01  1.3108E+00  1.3091E+00 -1.7372E-01 -1.9979E-01  4.7835E-02 -3.0525E-01  1.1442E-01
             1.0428E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1628.74009916407        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1418
 NPARAMETR:  9.8351E-01  1.6686E+00  5.0508E-01  5.7497E-01  1.0620E+00  1.0173E+00  7.7991E-01  1.1699E-01  1.4742E+00  9.6513E-01
             1.0823E+00
 PARAMETER:  8.3373E-02  6.1199E-01 -5.8305E-01 -4.5343E-01  1.6019E-01  1.1720E-01 -1.4857E-01 -2.0457E+00  4.8808E-01  6.4505E-02
             1.7909E-01
 GRADIENT:  -5.6048E-03  3.5050E+00  1.1741E+00  1.9259E+00 -2.4583E+00 -1.3464E-02  4.1618E-01  1.8810E-02  4.6154E-02  2.6763E-01
            -1.3922E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1628.76096524478        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1599             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8392E-01  1.6728E+00  4.9669E-01  5.6817E-01  1.0646E+00  1.0176E+00  7.7616E-01  5.2642E-02  1.4819E+00  9.6238E-01
             1.0824E+00
 PARAMETER:  8.3792E-02  6.1449E-01 -5.9978E-01 -4.6533E-01  1.6262E-01  1.1740E-01 -1.5339E-01 -2.8442E+00  4.9334E-01  6.1653E-02
             1.7916E-01
 GRADIENT:   3.6359E+02  5.1133E+02  3.7656E+00  9.0906E+01  1.2415E+01  4.0198E+01  8.8191E+00  9.9915E-03  2.0636E+01  6.1581E-01
             1.4834E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1628.76506433561        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1784             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8413E-01  1.6722E+00  4.9632E-01  5.6835E-01  1.0634E+00  1.0176E+00  7.7599E-01  1.0000E-02  1.4828E+00  9.6123E-01
             1.0823E+00
 PARAMETER:  8.4002E-02  6.1416E-01 -6.0054E-01 -4.6501E-01  1.6144E-01  1.1747E-01 -1.5362E-01 -4.9199E+00  4.9391E-01  6.0458E-02
             1.7910E-01
 GRADIENT:   3.6408E+02  5.1114E+02  4.0257E+00  9.0737E+01  1.1567E+01  4.0225E+01  8.7886E+00  0.0000E+00  2.0847E+01  6.1548E-01
             1.4621E+00

0ITERATION NO.:   52    OBJECTIVE VALUE:  -1628.76506433561        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1842
 NPARAMETR:  9.8413E-01  1.6722E+00  4.9632E-01  5.6835E-01  1.0634E+00  1.0176E+00  7.7599E-01  1.0000E-02  1.4828E+00  9.6123E-01
             1.0823E+00
 PARAMETER:  8.4002E-02  6.1416E-01 -6.0054E-01 -4.6501E-01  1.6144E-01  1.1747E-01 -1.5362E-01 -4.9199E+00  4.9391E-01  6.0458E-02
             1.7910E-01
 GRADIENT:   1.3797E+00 -5.2422E+00 -3.0560E-01 -8.5257E-03  1.4473E+00  1.0061E-01  7.5959E-03  0.0000E+00  2.7912E-01  1.0114E-02
             2.9382E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1842
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.2825E-04 -3.2400E-02 -2.7584E-04  2.5354E-02 -3.7319E-02
 SE:             2.9831E-02  2.3079E-02  1.0718E-04  2.3562E-02  2.2135E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9390E-01  1.6035E-01  1.0063E-02  2.8190E-01  9.1799E-02

 ETASHRINKSD(%)  6.2068E-02  2.2684E+01  9.9641E+01  2.1064E+01  2.5846E+01
 ETASHRINKVR(%)  1.2410E-01  4.0222E+01  9.9999E+01  3.7691E+01  4.5011E+01
 EBVSHRINKSD(%)  4.8559E-01  2.2207E+01  9.9692E+01  2.2177E+01  2.4603E+01
 EBVSHRINKVR(%)  9.6881E-01  3.9483E+01  9.9999E+01  3.9435E+01  4.3154E+01
 RELATIVEINF(%)  9.9004E+01  4.4519E+00  1.2004E-04  4.8278E+00  1.1058E+01
 EPSSHRINKSD(%)  4.4269E+01
 EPSSHRINKVR(%)  6.8940E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1628.7650643356119     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -893.61423777187372     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    23.95
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.97
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1628.765       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  1.67E+00  4.96E-01  5.68E-01  1.06E+00  1.02E+00  7.76E-01  1.00E-02  1.48E+00  9.61E-01  1.08E+00
 


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
+        1.10E+03
 
 TH 2
+       -6.68E+00  4.21E+02
 
 TH 3
+        6.21E+00  1.94E+02  4.58E+02
 
 TH 4
+       -1.50E+01  3.16E+02 -3.12E+02  9.63E+02
 
 TH 5
+       -3.67E+00 -2.33E+02 -3.93E+02  2.67E+02  6.04E+02
 
 TH 6
+        2.44E-01 -1.00E+00  1.74E+00 -4.07E+00 -9.34E-01  1.89E+02
 
 TH 7
+        4.11E-01  6.52E+00 -1.56E+01 -1.44E+01 -1.27E+01 -3.50E-01  1.38E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.35E+00 -2.00E+01 -3.19E+01  5.47E+01 -2.04E+00 -4.09E-01  1.63E+01  0.00E+00  4.13E+01
 
 TH10
+       -7.75E-02 -1.64E+01 -3.94E+01 -5.26E+00 -6.33E+01  1.97E-01  1.43E+01  0.00E+00  6.55E+00  8.05E+01
 
 TH11
+       -7.55E+00 -1.81E+01 -2.76E+01  7.04E-01 -3.57E+00  2.79E+00  9.94E+00  0.00E+00  4.10E+00  1.67E+01  1.81E+02
 
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
 #CPUT: Total CPU Time in Seconds,       29.988
Stop Time:
Wed Sep 29 15:27:54 CDT 2021

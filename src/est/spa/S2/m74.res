Wed Sep 29 17:40:00 CDT 2021
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
$DATA ../../../../data/spa/S2/dat74.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m74.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1676.90669777208        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2714E+02 -1.6162E+01 -1.3906E+01  1.5221E+00  1.6061E+01  5.7426E+01 -3.5069E+00  9.1339E+00 -9.7857E-01  1.5251E+01
             4.8421E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1680.32010288498        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  9.9014E-01  1.0322E+00  1.0424E+00  1.0239E+00  1.0135E+00  9.3716E-01  1.0273E+00  9.6279E-01  1.0235E+00  9.4249E-01
             9.9445E-01
 PARAMETER:  9.0087E-02  1.3171E-01  1.4151E-01  1.2357E-01  1.1345E-01  3.5094E-02  1.2691E-01  6.2079E-02  1.2326E-01  4.0766E-02
             9.4436E-02
 GRADIENT:  -1.3277E+01 -8.5138E-01  2.6931E+00 -5.5139E+00 -2.2645E+00 -3.6689E+00 -3.1772E+00  3.4820E+00 -1.0353E+00  2.3711E+00
            -1.6653E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1681.77503319166        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  9.9414E-01  8.7398E-01  8.3879E-01  1.1227E+00  8.4299E-01  9.4630E-01  1.3180E+00  6.0093E-01  9.2040E-01  7.6798E-01
             1.0056E+00
 PARAMETER:  9.4124E-02 -3.4692E-02 -7.5792E-02  2.1572E-01 -7.0796E-02  4.4805E-02  3.7612E-01 -4.0927E-01  1.7055E-02 -1.6399E-01
             1.0557E-01
 GRADIENT:  -5.7204E+00  7.4162E+00 -1.8708E+01  2.7088E+01  2.2883E+01 -1.8408E-01  3.9257E+00  1.6802E+00 -1.9895E+00  1.2961E-01
             3.9942E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1682.33083449098        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  9.9570E-01  8.1903E-01  8.7065E-01  1.1496E+00  8.2915E-01  9.4476E-01  1.3235E+00  5.5732E-01  9.1954E-01  7.8038E-01
             9.9779E-01
 PARAMETER:  9.5694E-02 -9.9640E-02 -3.8511E-02  2.3946E-01 -8.7357E-02  4.3179E-02  3.8030E-01 -4.8462E-01  1.6117E-02 -1.4798E-01
             9.7786E-02
 GRADIENT:   1.7124E-01  7.7345E+00  3.1040E+00  9.1887E+00 -4.7505E+00 -5.6724E-01 -3.6822E-01 -4.0820E-01  1.6028E-02 -5.4284E-01
            -3.9026E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1682.76988325256        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      708
 NPARAMETR:  9.9260E-01  5.4994E-01  9.3877E-01  1.3119E+00  7.6668E-01  9.4327E-01  1.7505E+00  6.2721E-01  8.4217E-01  7.6915E-01
             9.9537E-01
 PARAMETER:  9.2573E-02 -4.9795E-01  3.6819E-02  3.7147E-01 -1.6569E-01  4.1602E-02  6.5989E-01 -3.6648E-01 -7.1770E-02 -1.6247E-01
             9.5363E-02
 GRADIENT:   1.0431E+00  6.4986E+00  8.4727E+00  6.5701E+00 -1.4190E+01  7.8896E-02 -6.9220E-02 -2.9413E-01 -5.1142E-01 -2.6607E-01
            -1.0377E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1683.01512993191        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      884
 NPARAMETR:  9.8801E-01  3.7585E-01  1.0193E+00  1.4204E+00  7.6393E-01  9.3984E-01  2.2197E+00  7.1033E-01  8.0729E-01  8.0240E-01
             9.9940E-01
 PARAMETER:  8.7938E-02 -8.7858E-01  1.1908E-01  4.5096E-01 -1.6928E-01  3.7956E-02  8.9739E-01 -2.4202E-01 -1.1407E-01 -1.2014E-01
             9.9402E-02
 GRADIENT:  -1.7062E+00  2.9220E+00 -1.8737E+00  7.8948E+00  1.6102E+00 -1.5259E-01  2.8543E-01  3.4461E-01  2.6950E-01  7.5267E-01
             9.5569E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1683.02116798623        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1060
 NPARAMETR:  9.8649E-01  3.0856E-01  1.0474E+00  1.4658E+00  7.5823E-01  9.3864E-01  2.4923E+00  7.4177E-01  7.9286E-01  8.0924E-01
             9.9953E-01
 PARAMETER:  8.6395E-02 -1.0758E+00  1.4633E-01  4.8243E-01 -1.7677E-01  3.6681E-02  1.0132E+00 -1.9872E-01 -1.3211E-01 -1.1165E-01
             9.9531E-02
 GRADIENT:  -1.9199E+00  4.0795E+00  2.7055E-01  1.5328E+01 -2.0556E+00 -1.6946E-01  4.7234E-01  8.7577E-02 -4.5021E-01  7.1743E-01
             8.2015E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1683.02429816582        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1235
 NPARAMETR:  9.8554E-01  2.6344E-01  1.0687E+00  1.4957E+00  7.5546E-01  9.3783E-01  2.7193E+00  7.6835E-01  7.8383E-01  8.1279E-01
             9.9923E-01
 PARAMETER:  8.5438E-02 -1.2339E+00  1.6647E-01  5.0258E-01 -1.8042E-01  3.5812E-02  1.1004E+00 -1.6352E-01 -1.4356E-01 -1.0728E-01
             9.9227E-02
 GRADIENT:  -1.7701E+00  4.3415E+00  2.0514E+00  1.9000E+01 -4.9620E+00 -1.6209E-01  5.6000E-01 -1.1087E-01 -9.7073E-01  6.1412E-01
             5.8361E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1683.03371542231        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1410
 NPARAMETR:  9.8476E-01  2.2371E-01  1.0900E+00  1.5216E+00  7.5409E-01  9.3713E-01  2.9635E+00  7.9495E-01  7.7613E-01  8.1527E-01
             9.9867E-01
 PARAMETER:  8.4648E-02 -1.3974E+00  1.8617E-01  5.1977E-01 -1.8224E-01  3.5068E-02  1.1864E+00 -1.2947E-01 -1.5343E-01 -1.0424E-01
             9.8672E-02
 GRADIENT:  -1.4574E+00  4.2305E+00  3.8187E+00  2.1293E+01 -7.5929E+00 -1.3176E-01  5.9108E-01 -3.5945E-01 -1.4459E+00  4.0874E-01
             2.3516E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1683.05041631667        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1585
 NPARAMETR:  9.8391E-01  1.7587E-01  1.1196E+00  1.5525E+00  7.5392E-01  9.3631E-01  3.3490E+00  8.3250E-01  7.6673E-01  8.1704E-01
             9.9770E-01
 PARAMETER:  8.3783E-02 -1.6380E+00  2.1296E-01  5.3987E-01 -1.8247E-01  3.4195E-02  1.3087E+00 -8.3320E-02 -1.6562E-01 -1.0207E-01
             9.7695E-02
 GRADIENT:  -8.4109E-01  3.6937E+00  6.2131E+00  2.2957E+01 -1.0994E+01 -7.7865E-02  5.4301E-01 -6.8434E-01 -2.0364E+00  6.0607E-02
            -3.1988E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1683.20646721350        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1763
 NPARAMETR:  9.8283E-01  1.0513E-01  1.1669E+00  1.5922E+00  7.5687E-01  9.3509E-01  4.2952E+00  9.0649E-01  7.5383E-01  8.1468E-01
             9.9617E-01
 PARAMETER:  8.2679E-02 -2.1525E+00  2.5437E-01  5.6509E-01 -1.7857E-01  3.2892E-02  1.5575E+00  1.8199E-03 -1.8259E-01 -1.0496E-01
             9.6166E-02
 GRADIENT:   5.1466E-01  1.4527E+00  6.1925E+00  1.3267E+01 -1.0670E+01 -2.3007E-04  1.7780E-01 -2.1618E-01 -1.7134E+00 -2.1148E-01
            -7.1745E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1683.40346207640        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1941
 NPARAMETR:  9.8195E-01  7.4052E-02  1.1521E+00  1.6008E+00  7.4878E-01  9.3459E-01  5.0672E+00  8.9819E-01  7.5263E-01  8.0365E-01
             9.9718E-01
 PARAMETER:  8.1787E-02 -2.5030E+00  2.4157E-01  5.7048E-01 -1.8931E-01  3.2348E-02  1.7228E+00 -7.3711E-03 -1.8418E-01 -1.1860E-01
             9.7177E-02
 GRADIENT:   1.4865E-01  6.3262E-01 -4.7527E-01 -1.1594E+00  1.5014E+00  7.3114E-02  1.3604E+00 -8.5885E-03 -1.0362E+00 -5.7820E-01
            -1.6957E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1683.46451388871        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     2126             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8240E-01  7.1230E-02  1.1337E+00  1.5927E+00  7.4064E-01  9.3457E-01  5.1207E+00  8.7335E-01  7.5102E-01  7.9824E-01
             9.9686E-01
 PARAMETER:  8.2245E-02 -2.5418E+00  2.2546E-01  5.6545E-01 -2.0024E-01  3.2332E-02  1.7333E+00 -3.5420E-02 -1.8632E-01 -1.2534E-01
             9.6858E-02
 GRADIENT:   4.0204E+02  1.9898E+01  6.1300E+00  9.5926E+02  2.1344E+01  3.4320E+01  5.6727E+01 -4.2627E-01  1.9345E+01 -8.3501E-01
             2.0964E-01

0ITERATION NO.:   63    OBJECTIVE VALUE:  -1683.46678741757        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:     2221
 NPARAMETR:  9.8233E-01  7.0752E-02  1.1337E+00  1.5936E+00  7.4046E-01  9.3453E-01  5.1199E+00  8.7535E-01  7.5267E-01  8.0034E-01
             9.9714E-01
 PARAMETER:  8.2177E-02 -2.5486E+00  2.2552E-01  5.6602E-01 -2.0048E-01  3.2285E-02  1.7331E+00 -3.3134E-02 -1.8413E-01 -1.2272E-01
             9.7140E-02
 GRADIENT:  -1.2615E-01  1.4212E+01  1.0155E+00  3.8232E+00  4.5925E-01 -1.4841E-02  2.0890E+01 -2.5242E-02  7.4568E-02  5.9052E-02
             7.6676E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2221
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.1552E-04  2.0860E-02 -2.3400E-02 -1.4186E-02 -2.2566E-02
 SE:             2.9829E-02  1.0906E-02  1.6529E-02  2.8186E-02  2.0567E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8889E-01  5.5790E-02  1.5686E-01  6.1475E-01  2.7254E-01

 ETASHRINKSD(%)  6.9512E-02  6.3463E+01  4.4626E+01  5.5740E+00  3.1099E+01
 ETASHRINKVR(%)  1.3898E-01  8.6650E+01  6.9337E+01  1.0837E+01  5.2527E+01
 EBVSHRINKSD(%)  4.6978E-01  7.3601E+01  4.5733E+01  4.8785E+00  2.7805E+01
 EBVSHRINKVR(%)  9.3736E-01  9.3031E+01  7.0551E+01  9.5191E+00  4.7879E+01
 RELATIVEINF(%)  9.8718E+01  2.6238E+00  3.9952E+00  3.9153E+01  6.7155E+00
 EPSSHRINKSD(%)  4.4421E+01
 EPSSHRINKVR(%)  6.9109E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1683.4667874175732     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -948.31596085383501     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    29.27
0R MATRIX ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
 BUT NONSINGULAR
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.85
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1683.467       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.82E-01  7.08E-02  1.13E+00  1.59E+00  7.40E-01  9.35E-01  5.12E+00  8.75E-01  7.53E-01  8.00E-01  9.97E-01
 


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
+        1.31E+03
 
 TH 2
+        8.40E+00  3.34E+04
 
 TH 3
+       -1.19E+00 -3.17E+02  3.52E+02
 
 TH 4
+       -2.44E+01 -6.22E+03  3.47E+01  2.08E+03
 
 TH 5
+        9.11E+00  6.68E+02 -6.97E+02 -8.00E+03  1.76E+03
 
 TH 6
+        4.66E-01  7.38E+00  1.89E-01 -8.47E+00  1.11E+00  2.24E+02
 
 TH 7
+        6.60E-01  7.32E+02 -7.03E+00 -1.57E+01  1.59E+01  5.63E-02  1.67E+01
 
 TH 8
+       -2.22E-01 -7.64E+01 -4.22E+01  1.61E+01 -3.48E+00  7.79E-02 -9.88E-01  3.71E+01
 
 TH 9
+       -3.75E+00 -7.24E+02  4.94E+01  8.48E+03 -1.19E+02 -2.88E+00 -1.16E+01  1.15E+01  4.32E+02
 
 TH10
+       -1.50E+00 -1.96E+02 -5.67E-01  6.14E+01 -1.25E+02 -6.64E-01 -2.44E+00  3.16E+01  3.89E+01  9.48E+01
 
 TH11
+       -9.59E+00 -4.85E+01 -1.46E+01  8.20E+00 -1.07E+01  2.31E+00 -6.00E-01  1.46E+01  1.73E+01  2.10E+01  2.11E+02
 
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
 #CPUT: Total CPU Time in Seconds,       36.199
Stop Time:
Wed Sep 29 17:40:37 CDT 2021

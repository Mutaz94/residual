Wed Sep 29 13:59:05 CDT 2021
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
$DATA ../../../../data/spa/S1/dat4.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m4.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1609.54356451505        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8705E+02  5.1387E+00 -1.4360E+01  7.0471E+01  9.0765E+01  2.6809E+01 -1.5418E-01 -9.0944E+00  7.9210E+00 -2.8205E+01
            -2.1820E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1615.55569312559        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.7737E-01  1.0075E+00  9.6525E-01  1.0090E+00  9.3786E-01  1.0779E+00  1.0055E+00  1.0335E+00  9.9596E-01  1.0626E+00
             1.0506E+00
 PARAMETER:  7.7114E-02  1.0750E-01  6.4634E-02  1.0895E-01  3.5842E-02  1.7505E-01  1.0550E-01  1.3292E-01  9.5957E-02  1.6075E-01
             1.4934E-01
 GRADIENT:   9.5301E-02  7.3246E-01  5.0131E-01  6.8203E+00  7.8010E+00  8.6490E-01 -1.4275E-01 -3.3176E+00  2.4160E+00 -3.3046E+00
             3.2612E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1615.76448345075        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      356
 NPARAMETR:  9.7879E-01  1.0384E+00  9.3251E-01  9.8665E-01  9.3218E-01  1.0714E+00  1.0163E+00  1.1027E+00  9.8799E-01  1.0472E+00
             1.0346E+00
 PARAMETER:  7.8564E-02  1.3771E-01  3.0119E-02  8.6561E-02  2.9767E-02  1.6892E-01  1.1620E-01  1.9778E-01  8.7920E-02  1.4611E-01
             1.3400E-01
 GRADIENT:   2.3435E+00  2.5796E-01 -1.7297E+00  4.1893E+00  4.0206E+00 -1.8748E+00  5.1560E-01 -9.5521E-02  1.4144E-02 -1.6575E+00
            -2.1763E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1615.92403127807        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      532
 NPARAMETR:  9.7812E-01  1.2044E+00  8.6738E-01  8.8205E-01  9.7150E-01  1.0797E+00  9.0588E-01  1.1320E+00  1.0758E+00  1.0789E+00
             1.0434E+00
 PARAMETER:  7.7882E-02  2.8598E-01 -4.2282E-02 -2.5507E-02  7.1081E-02  1.7664E-01  1.1538E-03  2.2398E-01  1.7302E-01  1.7598E-01
             1.4245E-01
 GRADIENT:  -6.6722E-01  7.6094E+00  3.5523E+00  4.1462E+00 -6.5944E+00  6.6396E-01  2.0123E-01 -5.4986E-01 -5.1541E-01  3.9496E-01
             6.2122E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1616.09420888049        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      710
 NPARAMETR:  9.8037E-01  1.4184E+00  6.7206E-01  7.3813E-01  9.8735E-01  1.0792E+00  8.3052E-01  1.0297E+00  1.1997E+00  1.0529E+00
             1.0409E+00
 PARAMETER:  8.0172E-02  4.4954E-01 -2.9741E-01 -2.0364E-01  8.7268E-02  1.7618E-01 -8.5703E-02  1.2923E-01  2.8210E-01  1.5154E-01
             1.4007E-01
 GRADIENT:   1.2529E+00  8.5783E+00  1.9110E+00  5.1887E+00 -4.2186E+00 -3.2863E-01 -3.0421E-01 -2.8371E-02 -1.4808E-01 -7.5437E-01
            -9.5554E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1616.14593055058        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  9.7966E-01  1.5421E+00  5.5838E-01  6.5407E-01  9.9919E-01  1.0812E+00  8.0360E-01  9.0023E-01  1.2762E+00  1.0543E+00
             1.0447E+00
 PARAMETER:  7.9448E-02  5.3316E-01 -4.8272E-01 -3.2454E-01  9.9189E-02  1.7807E-01 -1.1865E-01 -5.1055E-03  3.4388E-01  1.5290E-01
             1.4373E-01
 GRADIENT:  -1.0077E+00  8.5386E+00  4.2463E-01  5.4578E+00 -2.6932E+00  1.7083E-01  3.3220E-01  1.8056E-01 -6.7817E-01  5.3578E-01
             3.6544E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1616.15117440119        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  9.7938E-01  1.5822E+00  5.2588E-01  6.2646E-01  1.0058E+00  1.0813E+00  7.9205E-01  8.5684E-01  1.3076E+00  1.0554E+00
             1.0454E+00
 PARAMETER:  7.9165E-02  5.5884E-01 -5.4268E-01 -3.6767E-01  1.0574E-01  1.7813E-01 -1.3313E-01 -5.4502E-02  3.6822E-01  1.5392E-01
             1.4436E-01
 GRADIENT:  -1.6595E+00  7.8481E+00  2.0564E-01  5.0819E+00 -2.2012E+00  1.4412E-01  1.4683E-01  1.9325E-01 -7.6021E-01  5.5787E-01
             4.2025E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1616.15188282823        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1241
 NPARAMETR:  9.7935E-01  1.6038E+00  5.0908E-01  6.1152E-01  1.0098E+00  1.0813E+00  7.8628E-01  8.3202E-01  1.3259E+00  1.0563E+00
             1.0456E+00
 PARAMETER:  7.9139E-02  5.7240E-01 -5.7515E-01 -3.9181E-01  1.0976E-01  1.7814E-01 -1.4045E-01 -8.3896E-02  3.8211E-01  1.5478E-01
             1.4464E-01
 GRADIENT:  -1.7449E+00  7.3128E+00  1.2855E-01  4.7693E+00 -1.9727E+00  1.2706E-01  9.8609E-02  1.9989E-01 -7.5055E-01  5.4164E-01
             4.1449E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1616.19338544433        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1427             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8086E-01  1.6033E+00  5.0455E-01  6.0405E-01  1.0122E+00  1.0824E+00  7.8462E-01  7.9834E-01  1.3360E+00  1.0535E+00
             1.0450E+00
 PARAMETER:  8.0670E-02  5.7205E-01 -5.8408E-01 -4.0411E-01  1.1214E-01  1.7919E-01 -1.4255E-01 -1.2523E-01  3.8971E-01  1.5211E-01
             1.4406E-01
 GRADIENT:   4.0397E+02  4.8920E+02  5.9897E+00  1.0963E+02  9.1759E+00  1.0758E+02  7.1825E+00  1.2543E-01  1.5081E+01  1.1587E+00
             1.3207E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1616.19676907314        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1607
 NPARAMETR:  9.8085E-01  1.6043E+00  5.0356E-01  6.0483E-01  1.0116E+00  1.0825E+00  7.8439E-01  7.8569E-01  1.3404E+00  1.0547E+00
             1.0447E+00
 PARAMETER:  8.0662E-02  5.7267E-01 -5.8606E-01 -4.0281E-01  1.1156E-01  1.7923E-01 -1.4285E-01 -1.4119E-01  3.9300E-01  1.5322E-01
             1.4369E-01
 GRADIENT:   1.2770E+00 -3.7118E+00  1.4243E-01 -2.1038E-01  6.3458E-01  5.8007E-01  6.2935E-02  1.8264E-02  1.2421E-01  1.2260E-02
             3.1221E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1616.19826859093        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1792
 NPARAMETR:  9.8102E-01  1.6034E+00  5.0163E-01  6.0489E-01  1.0104E+00  1.0828E+00  7.8446E-01  7.8077E-01  1.3400E+00  1.0539E+00
             1.0446E+00
 PARAMETER:  8.0839E-02  5.7214E-01 -5.8990E-01 -4.0271E-01  1.1034E-01  1.7957E-01 -1.4276E-01 -1.4747E-01  3.9270E-01  1.5253E-01
             1.4362E-01
 GRADIENT:   1.6004E+00 -4.7444E+00 -1.9154E-01 -2.4151E-01  1.0975E+00  7.1362E-01  6.3659E-02  5.6258E-02  2.3868E-01  1.5047E-01
             7.0547E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1616.19939415396        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1975             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8099E-01  1.6034E+00  5.0092E-01  6.0484E-01  1.0096E+00  1.0827E+00  7.8456E-01  7.7534E-01  1.3393E+00  1.0532E+00
             1.0446E+00
 PARAMETER:  8.0802E-02  5.7213E-01 -5.9130E-01 -4.0279E-01  1.0951E-01  1.7949E-01 -1.4263E-01 -1.5445E-01  3.9212E-01  1.5179E-01
             1.4359E-01
 GRADIENT:   4.0443E+02  4.9107E+02  5.8783E+00  1.1098E+02  8.8492E+00  1.0788E+02  7.2175E+00  1.1840E-01  1.5855E+01  1.4296E+00
             1.1900E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1616.20012951886        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2162
 NPARAMETR:  9.8103E-01  1.6031E+00  5.0024E-01  6.0493E-01  1.0089E+00  1.0828E+00  7.8473E-01  7.7155E-01  1.3388E+00  1.0525E+00
             1.0445E+00
 PARAMETER:  8.0846E-02  5.7194E-01 -5.9266E-01 -4.0264E-01  1.0888E-01  1.7958E-01 -1.4242E-01 -1.5935E-01  3.9179E-01  1.5119E-01
             1.4356E-01
 GRADIENT:   1.6043E+00 -4.4300E+00  2.8104E-02 -4.2748E-01  6.7229E-01  7.1629E-01  2.7297E-02  2.8735E-02  1.5949E-01  1.0731E-01
             3.5821E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1616.20110105787        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2350             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8103E-01  1.6028E+00  4.9949E-01  6.0502E-01  1.0078E+00  1.0828E+00  7.8483E-01  7.6112E-01  1.3376E+00  1.0512E+00
             1.0444E+00
 PARAMETER:  8.0852E-02  5.7176E-01 -5.9417E-01 -4.0249E-01  1.0772E-01  1.7959E-01 -1.4229E-01 -1.7296E-01  3.9088E-01  1.4998E-01
             1.4346E-01
 GRADIENT:   4.0456E+02  4.9088E+02  6.3195E+00  1.1082E+02  8.1654E+00  1.0797E+02  7.1086E+00  6.5600E-02  1.5666E+01  1.2817E+00
             1.0950E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1616.20173419864        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     2537
 NPARAMETR:  9.8104E-01  1.6026E+00  4.9884E-01  6.0512E-01  1.0072E+00  1.0828E+00  7.8501E-01  7.5841E-01  1.3372E+00  1.0507E+00
             1.0444E+00
 PARAMETER:  8.0855E-02  5.7160E-01 -5.9546E-01 -4.0233E-01  1.0717E-01  1.7959E-01 -1.4206E-01 -1.7653E-01  3.9055E-01  1.4946E-01
             1.4345E-01
 GRADIENT:   1.6085E+00 -3.8876E+00  3.8260E-01 -6.6331E-01  1.3541E-01  7.1966E-01 -5.8566E-02 -2.4184E-02  2.6036E-02 -8.8361E-03
            -4.6223E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1616.20239929922        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2725             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8104E-01  1.6019E+00  4.9736E-01  6.0538E-01  1.0065E+00  1.0828E+00  7.8553E-01  7.6165E-01  1.3370E+00  1.0502E+00
             1.0445E+00
 PARAMETER:  8.0858E-02  5.7122E-01 -5.9843E-01 -4.0190E-01  1.0648E-01  1.7959E-01 -1.4139E-01 -1.7227E-01  3.9041E-01  1.4897E-01
             1.4353E-01
 GRADIENT:   4.0439E+02  4.8903E+02  5.7485E+00  1.1118E+02  8.9176E+00  1.0791E+02  7.2093E+00  1.5114E-01  1.5839E+01  1.4540E+00
             1.2325E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1616.20280110878        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     2907
 NPARAMETR:  9.8096E-01  1.6024E+00  4.9741E-01  6.0524E-01  1.0059E+00  1.0827E+00  7.8532E-01  7.5068E-01  1.3360E+00  1.0494E+00
             1.0444E+00
 PARAMETER:  8.0778E-02  5.7147E-01 -5.9834E-01 -4.0214E-01  1.0586E-01  1.7941E-01 -1.4166E-01 -1.8677E-01  3.8966E-01  1.4818E-01
             1.4341E-01
 GRADIENT:   1.4501E+00 -3.5102E+00  4.7563E-01 -6.2135E-01 -7.7902E-02  6.4781E-01 -7.5182E-02 -3.6105E-02 -2.9638E-02 -4.0877E-02
            -6.5092E-02

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1616.20345348200        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     3096
 NPARAMETR:  9.8103E-01  1.6020E+00  4.9683E-01  6.0528E-01  1.0056E+00  1.0828E+00  7.8550E-01  7.5110E-01  1.3360E+00  1.0491E+00
             1.0444E+00
 PARAMETER:  8.0846E-02  5.7126E-01 -5.9950E-01 -4.0206E-01  1.0560E-01  1.7956E-01 -1.4144E-01 -1.8621E-01  3.8967E-01  1.4796E-01
             1.4343E-01
 GRADIENT:   1.5757E+00 -4.0478E+00  2.5783E-01 -5.7931E-01  2.5124E-01  7.0320E-01 -2.9076E-02 -9.1665E-03  5.3598E-02  1.6844E-02
            -2.0542E-02

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1616.20404095596        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     3281
 NPARAMETR:  9.8105E-01  1.6017E+00  4.9603E-01  6.0522E-01  1.0050E+00  1.0829E+00  7.8563E-01  7.4733E-01  1.3355E+00  1.0485E+00
             1.0444E+00
 PARAMETER:  8.0869E-02  5.7107E-01 -6.0112E-01 -4.0216E-01  1.0495E-01  1.7960E-01 -1.4127E-01 -1.9125E-01  3.8928E-01  1.4732E-01
             1.4341E-01
 GRADIENT:   1.6171E+00 -4.3231E+00  2.6473E-01 -7.4882E-01  2.4900E-01  7.2106E-01 -3.6359E-02 -1.0029E-02  3.3497E-02  1.4540E-02
            -1.7832E-02

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1616.20459099227        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     3462
 NPARAMETR:  9.8105E-01  1.6015E+00  4.9527E-01  6.0524E-01  1.0043E+00  1.0829E+00  7.8578E-01  7.4333E-01  1.3350E+00  1.0478E+00
             1.0443E+00
 PARAMETER:  8.0872E-02  5.7097E-01 -6.0264E-01 -4.0212E-01  1.0430E-01  1.7960E-01 -1.4108E-01 -1.9662E-01  3.8892E-01  1.4669E-01
             1.4339E-01
 GRADIENT:   1.6175E+00 -4.2862E+00  2.9261E-01 -7.7403E-01  1.8291E-01  7.2164E-01 -4.2480E-02 -1.4265E-02  2.1511E-02  5.5933E-03
            -2.4274E-02

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1616.20496828152        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     3643
 NPARAMETR:  9.8106E-01  1.6014E+00  4.9463E-01  6.0527E-01  1.0036E+00  1.0829E+00  7.8587E-01  7.3815E-01  1.3344E+00  1.0471E+00
             1.0443E+00
 PARAMETER:  8.0875E-02  5.7090E-01 -6.0394E-01 -4.0208E-01  1.0363E-01  1.7961E-01 -1.4096E-01 -2.0361E-01  3.8851E-01  1.4603E-01
             1.4335E-01
 GRADIENT:   1.6174E+00 -4.0722E+00  4.1450E-01 -8.3887E-01 -1.1353E-02  7.2221E-01 -7.0845E-02 -3.1257E-02 -2.1140E-02 -3.2844E-02
            -5.2232E-02

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1616.20547425880        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     3828
 NPARAMETR:  9.8106E-01  1.6014E+00  4.9397E-01  6.0532E-01  1.0033E+00  1.0829E+00  7.8602E-01  7.3692E-01  1.3344E+00  1.0467E+00
             1.0443E+00
 PARAMETER:  8.0875E-02  5.7091E-01 -6.0528E-01 -4.0200E-01  1.0325E-01  1.7960E-01 -1.4077E-01 -2.0527E-01  3.8845E-01  1.4566E-01
             1.4335E-01
 GRADIENT:   1.6101E+00 -4.0124E+00  3.1109E-01 -6.5039E-01  9.4036E-02  7.1902E-01 -4.2420E-02 -1.8679E-02  2.4693E-02 -1.0022E-02
            -3.6643E-02

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1616.20592416362        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     4016             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8106E-01  1.6010E+00  4.9281E-01  6.0553E-01  1.0027E+00  1.0829E+00  7.8641E-01  7.3903E-01  1.3343E+00  1.0463E+00
             1.0444E+00
 PARAMETER:  8.0876E-02  5.7063E-01 -6.0764E-01 -4.0166E-01  1.0271E-01  1.7960E-01 -1.4028E-01 -2.0242E-01  3.8838E-01  1.4528E-01
             1.4341E-01
 GRADIENT:   4.0430E+02  4.8798E+02  5.9513E+00  1.1132E+02  8.4800E+00  1.0787E+02  7.1419E+00  1.4395E-01  1.5682E+01  1.3755E+00
             1.2094E+00

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1616.20641428480        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     4201             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8106E-01  1.6010E+00  4.9243E-01  6.0547E-01  1.0023E+00  1.0829E+00  7.8642E-01  7.3469E-01  1.3338E+00  1.0458E+00
             1.0443E+00
 PARAMETER:  8.0879E-02  5.7062E-01 -6.0840E-01 -4.0176E-01  1.0225E-01  1.7961E-01 -1.4026E-01 -2.0831E-01  3.8805E-01  1.4478E-01
             1.4337E-01
 GRADIENT:   4.0433E+02  4.8814E+02  6.1320E+00  1.1123E+02  8.1986E+00  1.0788E+02  7.1051E+00  1.2434E-01  1.5602E+01  1.3207E+00
             1.1733E+00

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1616.20671985522        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     4384
 NPARAMETR:  9.8106E-01  1.6009E+00  4.9200E-01  6.0554E-01  1.0018E+00  1.0829E+00  7.8652E-01  7.3234E-01  1.3335E+00  1.0454E+00
             1.0443E+00
 PARAMETER:  8.0880E-02  5.7054E-01 -6.0927E-01 -4.0164E-01  1.0184E-01  1.7961E-01 -1.4014E-01 -2.1151E-01  3.8782E-01  1.4440E-01
             1.4336E-01
 GRADIENT:   1.6035E+00 -4.3710E+00  2.0020E-02 -4.2046E-01  4.3207E-01  7.1562E-01  2.2555E-02  1.6880E-02  1.2287E-01  6.8661E-02
             2.1490E-02

0ITERATION NO.:  125    OBJECTIVE VALUE:  -1616.20715401089        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     4572             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8106E-01  1.6007E+00  4.9148E-01  6.0558E-01  1.0011E+00  1.0829E+00  7.8659E-01  7.2617E-01  1.3328E+00  1.0446E+00
             1.0442E+00
 PARAMETER:  8.0883E-02  5.7043E-01 -6.1033E-01 -4.0158E-01  1.0111E-01  1.7961E-01 -1.4005E-01 -2.1998E-01  3.8728E-01  1.4366E-01
             1.4330E-01
 GRADIENT:   4.0434E+02  4.8814E+02  6.3905E+00  1.1118E+02  7.7616E+00  1.0788E+02  7.0440E+00  9.8069E-02  1.5489E+01  1.2406E+00
             1.1211E+00

0ITERATION NO.:  130    OBJECTIVE VALUE:  -1616.20746478300        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     4757             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8107E-01  1.6005E+00  4.9084E-01  6.0546E-01  1.0007E+00  1.0829E+00  7.8669E-01  7.2355E-01  1.3324E+00  1.0442E+00
             1.0443E+00
 PARAMETER:  8.0890E-02  5.7030E-01 -6.1163E-01 -4.0176E-01  1.0069E-01  1.7962E-01 -1.3992E-01 -2.2358E-01  3.8699E-01  1.4321E-01
             1.4330E-01
 GRADIENT:   4.0433E+02  4.8762E+02  6.3893E+00  1.1107E+02  7.7927E+00  1.0788E+02  7.0367E+00  1.0140E-01  1.5453E+01  1.2397E+00
             1.1333E+00

0ITERATION NO.:  135    OBJECTIVE VALUE:  -1616.20774475133        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     4940
 NPARAMETR:  9.8107E-01  1.6005E+00  4.9041E-01  6.0562E-01  1.0003E+00  1.0829E+00  7.8682E-01  7.2161E-01  1.3323E+00  1.0438E+00
             1.0442E+00
 PARAMETER:  8.0887E-02  5.7031E-01 -6.1251E-01 -4.0151E-01  1.0032E-01  1.7961E-01 -1.3976E-01 -2.2627E-01  3.8692E-01  1.4291E-01
             1.4329E-01
 GRADIENT:   1.6037E+00 -4.0965E+00  1.8040E-01 -5.1136E-01  1.6096E-01  7.1653E-01 -1.4597E-02 -6.6531E-03  6.2640E-02  1.4164E-02
            -1.5959E-02

0ITERATION NO.:  136    OBJECTIVE VALUE:  -1616.20774475133        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     4964
 NPARAMETR:  9.8107E-01  1.6005E+00  4.9041E-01  6.0562E-01  1.0003E+00  1.0829E+00  7.8682E-01  7.2161E-01  1.3323E+00  1.0438E+00
             1.0442E+00
 PARAMETER:  8.0887E-02  5.7031E-01 -6.1251E-01 -4.0151E-01  1.0032E-01  1.7961E-01 -1.3976E-01 -2.2627E-01  3.8692E-01  1.4291E-01
             1.4329E-01
 GRADIENT:  -2.2715E-03  2.7629E-01  1.9396E-01 -6.8037E-02  1.7098E-01 -5.3831E-05 -2.8204E-02 -4.4571E-03 -2.2228E-03  1.1798E-02
            -1.5136E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     4964
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5150E-04 -3.1484E-02 -1.9297E-02  2.3791E-02 -3.7259E-02
 SE:             2.9856E-02  2.2649E-02  7.3234E-03  2.3381E-02  2.2484E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9328E-01  1.6450E-01  8.4146E-03  3.0890E-01  9.7490E-02

 ETASHRINKSD(%)  1.0000E-10  2.4124E+01  7.5466E+01  2.1670E+01  2.4676E+01
 ETASHRINKVR(%)  1.0000E-10  4.2428E+01  9.3981E+01  3.8644E+01  4.3262E+01
 EBVSHRINKSD(%)  4.0908E-01  2.3719E+01  7.8570E+01  2.2836E+01  2.2514E+01
 EBVSHRINKVR(%)  8.1648E-01  4.1812E+01  9.5407E+01  4.0457E+01  3.9959E+01
 RELATIVEINF(%)  9.9165E+01  3.0930E+00  3.8623E-01  3.1774E+00  1.1052E+01
 EPSSHRINKSD(%)  4.5399E+01
 EPSSHRINKVR(%)  7.0187E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1616.2077447513323     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -881.05691818759408     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    70.49
 Elapsed covariance  time in seconds:     6.17
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1616.208       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.81E-01  1.60E+00  4.90E-01  6.06E-01  1.00E+00  1.08E+00  7.87E-01  7.22E-01  1.33E+00  1.04E+00  1.04E+00
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.22E-02  6.49E-01  7.87E-01  4.74E-01  2.17E-01  8.10E-02  1.52E-01  2.40E+00  4.91E-01  2.46E-01  7.85E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.04E-03
 
 TH 2
+        2.16E-03  4.21E-01
 
 TH 3
+       -4.01E-03 -4.66E-01  6.19E-01
 
 TH 4
+       -1.70E-03 -3.06E-01  3.51E-01  2.25E-01
 
 TH 5
+       -9.07E-04 -7.85E-03  7.69E-02  1.30E-02  4.72E-02
 
 TH 6
+        2.62E-04  5.82E-03 -6.33E-03 -4.07E-03  1.49E-04  6.56E-03
 
 TH 7
+        5.25E-05 -7.33E-02  7.13E-02  5.25E-02 -4.54E-03 -9.86E-04  2.30E-02
 
 TH 8
+       -1.42E-02 -1.27E+00  1.84E+00  9.72E-01  3.05E-01 -1.92E-02  1.65E-01  5.76E+00
 
 TH 9
+        6.29E-04  2.93E-01 -2.92E-01 -2.11E-01  1.65E-02  3.54E-03 -6.04E-02 -7.25E-01  2.41E-01
 
 TH10
+       -1.17E-03 -6.28E-02  1.31E-01  5.22E-02  4.35E-02 -1.29E-03  6.85E-03  4.31E-01 -2.59E-02  6.06E-02
 
 TH11
+       -2.53E-04  4.94E-03 -1.48E-03 -2.79E-03  2.53E-03  5.94E-04 -1.39E-03  4.62E-03  4.37E-03  6.41E-04  6.16E-03
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.22E-02
 
 TH 2
+        1.03E-01  6.49E-01
 
 TH 3
+       -1.58E-01 -9.13E-01  7.87E-01
 
 TH 4
+       -1.11E-01 -9.95E-01  9.40E-01  4.74E-01
 
 TH 5
+       -1.30E-01 -5.56E-02  4.50E-01  1.26E-01  2.17E-01
 
 TH 6
+        1.01E-01  1.11E-01 -9.94E-02 -1.06E-01  8.49E-03  8.10E-02
 
 TH 7
+        1.07E-02 -7.45E-01  5.98E-01  7.30E-01 -1.38E-01 -8.02E-02  1.52E-01
 
 TH 8
+       -1.84E-01 -8.15E-01  9.72E-01  8.53E-01  5.86E-01 -9.88E-02  4.53E-01  2.40E+00
 
 TH 9
+        3.98E-02  9.21E-01 -7.56E-01 -9.05E-01  1.55E-01  8.91E-02 -8.12E-01 -6.16E-01  4.91E-01
 
 TH10
+       -1.48E-01 -3.93E-01  6.77E-01  4.47E-01  8.14E-01 -6.46E-02  1.83E-01  7.29E-01 -2.15E-01  2.46E-01
 
 TH11
+       -9.99E-02  9.69E-02 -2.40E-02 -7.48E-02  1.49E-01  9.35E-02 -1.16E-01  2.45E-02  1.13E-01  3.32E-02  7.85E-02
 
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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.06E+03
 
 TH 2
+        2.92E+01  5.25E+02
 
 TH 3
+        1.10E+02  2.58E+02  6.34E+02
 
 TH 4
+       -1.09E+02  4.12E+02 -3.35E+02  1.10E+03
 
 TH 5
+       -1.43E+02 -3.05E+02 -5.05E+02  2.88E+02  7.05E+02
 
 TH 6
+       -3.38E+01 -9.39E+00 -4.02E+00 -2.12E+01 -2.20E+01  1.60E+02
 
 TH 7
+       -1.11E+01  1.05E+00 -8.80E+00 -4.16E+01 -4.15E+01  7.39E+00  1.46E+02
 
 TH 8
+        5.37E-01 -1.94E+01 -5.47E+01  4.26E-01  9.92E+00  3.66E+00  1.11E+01  1.10E+01
 
 TH 9
+        9.45E+00 -4.26E+00  2.25E+01  2.87E+01 -2.19E+01  1.42E+00  2.47E+01 -6.04E+00  5.11E+01
 
 TH10
+        9.24E+00 -1.25E+01 -4.97E+01  7.04E+00 -5.83E+01  9.64E+00  6.63E-01  8.60E+00  1.17E-01  8.60E+01
 
 TH11
+        4.89E+01 -2.55E+01  3.50E+01 -6.47E+01 -3.53E+01 -1.39E+01  1.11E+00 -4.16E+00  4.87E+00  9.36E+00  1.79E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       76.713
Stop Time:
Wed Sep 29 14:00:23 CDT 2021

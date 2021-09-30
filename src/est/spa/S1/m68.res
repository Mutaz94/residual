Wed Sep 29 14:29:07 CDT 2021
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
$DATA ../../../../data/spa/S1/dat68.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m68.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1738.63050628894        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1039E+02  5.1175E+01 -1.9816E+01  1.2471E+02  2.6646E+01  4.7601E+01  2.6617E+01  8.8074E+00  5.1723E+01  8.4661E-01
             6.8858E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1753.01683499934        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0103E+00  1.0064E+00  1.0284E+00  9.7086E-01  1.0122E+00  1.0041E+00  8.8631E-01  9.6359E-01  8.1049E-01  1.0055E+00
             7.6651E-01
 PARAMETER:  1.1023E-01  1.0637E-01  1.2799E-01  7.0423E-02  1.1216E-01  1.0407E-01 -2.0689E-02  6.2911E-02 -1.1011E-01  1.0546E-01
            -1.6591E-01
 GRADIENT:  -7.3070E+00  8.4538E+00 -2.0025E-01  3.6899E+00  1.2190E+01  6.3501E-01  1.0007E+01  1.9103E+00  2.7882E+00 -1.1064E+01
            -3.6119E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1755.06983010121        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  1.0113E+00  9.4071E-01  1.0020E+00  1.0105E+00  9.6564E-01  9.9162E-01  6.3622E-01  7.4987E-01  8.6615E-01  1.0362E+00
             7.8411E-01
 PARAMETER:  1.1126E-01  3.8882E-02  1.0203E-01  1.1043E-01  6.5040E-02  9.1590E-02 -3.5221E-01 -1.8786E-01 -4.3692E-02  1.3552E-01
            -1.4321E-01
 GRADIENT:  -5.3644E+00  1.0390E+01  6.8132E+00  1.4674E+01 -3.8572E+00 -4.0808E+00 -2.7505E-01 -2.4696E+00  7.9456E+00 -5.7621E+00
            -2.6842E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1756.29435300617        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  1.0137E+00  8.8259E-01  1.0025E+00  1.0455E+00  9.3645E-01  9.9992E-01  7.4934E-01  7.6835E-01  7.9258E-01  1.0160E+00
             8.3235E-01
 PARAMETER:  1.1363E-01 -2.4890E-02  1.0246E-01  1.4446E-01  3.4343E-02  9.9922E-02 -1.8856E-01 -1.6350E-01 -1.3247E-01  1.1591E-01
            -8.3499E-02
 GRADIENT:  -1.6968E-01  8.6522E+00  4.1950E+00  7.4142E+00 -7.7288E+00 -3.3360E-01  5.5774E-02 -5.0794E-02  5.9076E-01 -1.8046E+00
            -5.4116E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1756.73742294367        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  1.0092E+00  6.2233E-01  1.2615E+00  1.2192E+00  9.5519E-01  9.9812E-01  8.1986E-01  9.6496E-01  7.1039E-01  1.0879E+00
             8.2847E-01
 PARAMETER:  1.0915E-01 -3.7428E-01  3.3227E-01  2.9822E-01  5.4156E-02  9.8120E-02 -9.8626E-02  6.4330E-02 -2.4194E-01  1.8424E-01
            -8.8180E-02
 GRADIENT:  -1.1580E+00  7.7421E+00  7.1682E-01  1.5549E+01 -1.9353E+00  8.2710E-01  1.2985E-01 -3.6447E-01  3.4195E-01  1.7066E+00
            -2.4201E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1756.95027656605        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      880
 NPARAMETR:  1.0072E+00  4.5464E-01  1.4942E+00  1.3357E+00  9.8574E-01  9.9508E-01  7.8219E-01  1.1633E+00  6.6548E-01  1.1238E+00
             8.2844E-01
 PARAMETER:  1.0714E-01 -6.8826E-01  5.0157E-01  3.8947E-01  8.5637E-02  9.5067E-02 -1.4565E-01  2.5127E-01 -3.0724E-01  2.1672E-01
            -8.8209E-02
 GRADIENT:   6.6207E-01  9.7742E+00  1.1356E+00  2.9935E+01  1.8806E+00  1.0438E+00 -1.5002E-01 -1.6371E+00 -1.2873E+00  2.2218E-01
            -2.8954E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1757.08972691282        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1055
 NPARAMETR:  1.0058E+00  3.5029E-01  1.6427E+00  1.4105E+00  9.9168E-01  9.9064E-01  7.0094E-01  1.3351E+00  6.4058E-01  1.1253E+00
             8.3287E-01
 PARAMETER:  1.0574E-01 -9.4900E-01  5.9635E-01  4.4396E-01  9.1644E-02  9.0596E-02 -2.5534E-01  3.8898E-01 -3.4539E-01  2.1803E-01
            -8.2881E-02
 GRADIENT:   8.9135E-01  1.1963E+01  1.3851E+00  4.8392E+01 -4.9720E+00  9.1304E-02 -1.2602E-01  2.4868E-01 -1.3203E+00 -1.2089E-01
            -6.0101E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1757.92694767296        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1234
 NPARAMETR:  1.0026E+00  1.7580E-01  1.7084E+00  1.5137E+00  9.4526E-01  9.8103E-01  4.3431E-01  1.4452E+00  5.9553E-01  1.0734E+00
             8.4471E-01
 PARAMETER:  1.0257E-01 -1.6384E+00  6.3554E-01  5.1458E-01  4.3704E-02  8.0845E-02 -7.3399E-01  4.6826E-01 -4.1831E-01  1.7084E-01
            -6.8757E-02
 GRADIENT:  -4.5241E-01  5.8240E+00  4.3334E+00  2.8900E+01 -1.8559E+01 -2.5402E+00 -1.1077E-02  2.5566E+00 -1.4357E+00 -1.5074E+00
             5.3419E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1758.77277043066        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1412
 NPARAMETR:  1.0000E+00  6.9928E-02  1.7544E+00  1.5793E+00  9.4178E-01  9.8358E-01  1.8841E-01  1.4617E+00  5.6672E-01  1.0974E+00
             8.3493E-01
 PARAMETER:  1.0003E-01 -2.5603E+00  6.6211E-01  5.5700E-01  4.0012E-02  8.3440E-02 -1.5691E+00  4.7959E-01 -4.6789E-01  1.9292E-01
            -8.0407E-02
 GRADIENT:  -1.8957E+00  1.9434E+00 -1.2156E+00  1.8942E+01 -7.1878E+00 -7.3407E-01 -2.4944E-05  1.0471E+00 -1.9865E+00  1.0423E+00
             9.6264E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1758.88343095647        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1587
 NPARAMETR:  1.0002E+00  3.9584E-02  1.9085E+00  1.6079E+00  9.7804E-01  9.8511E-01  1.0582E-01  1.5801E+00  5.6156E-01  1.1336E+00
             8.3173E-01
 PARAMETER:  1.0023E-01 -3.1293E+00  7.4630E-01  5.7494E-01  7.7798E-02  8.4995E-02 -2.1460E+00  5.5749E-01 -4.7703E-01  2.2543E-01
            -8.4253E-02
 GRADIENT:  -6.8419E-01  1.1901E+00 -2.6392E+00  2.7530E+01 -2.2691E+00  1.5551E-01  4.7661E-05  5.1532E-01  5.0192E-01  1.8070E+00
            -2.7584E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1759.02023295556        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1764
 NPARAMETR:  1.0006E+00  1.6222E-02  2.1295E+00  1.6282E+00  1.0221E+00  9.8507E-01  4.1590E-02  1.7438E+00  5.5298E-01  1.1581E+00
             8.3078E-01
 PARAMETER:  1.0064E-01 -4.0214E+00  8.5587E-01  5.8747E-01  1.2184E-01  8.4962E-02 -3.0799E+00  6.5607E-01 -4.9244E-01  2.4680E-01
            -8.5394E-02
 GRADIENT:   4.6879E-01  4.2521E-01 -8.2159E-01  1.4758E+01  9.4079E-01  3.9828E-01  2.3865E-06 -3.0031E-01  2.7811E-01  4.7496E-01
            -7.3414E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1759.15810064857        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1948             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0018E+00  1.0000E-02  2.1887E+00  1.6185E+00  1.0312E+00  9.8431E-01  2.9508E-02  1.7999E+00  5.5081E-01  1.1611E+00
             8.3269E-01
 PARAMETER:  1.0185E-01 -4.6250E+00  8.8331E-01  5.8148E-01  1.3071E-01  8.4181E-02 -3.4231E+00  6.8774E-01 -4.9637E-01  2.4940E-01
            -8.3099E-02
 GRADIENT:   6.5659E+02  0.0000E+00  1.2906E+01  1.6825E+03  1.3947E+01  6.4353E+01  1.6252E-05  4.6284E+00  4.0419E+01  4.2369E+00
             1.5626E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1759.20615476454        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     2142             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0014E+00  1.0000E-02  2.1536E+00  1.6222E+00  1.0259E+00  9.8420E-01  3.0572E-02  1.7801E+00  5.5058E-01  1.1527E+00
             8.3143E-01
 PARAMETER:  1.0135E-01 -4.6250E+00  8.6714E-01  5.8376E-01  1.2558E-01  8.4078E-02 -3.3877E+00  6.7669E-01 -4.9679E-01  2.4213E-01
            -8.4608E-02
 GRADIENT:   6.5377E+02  0.0000E+00  1.1314E+01  1.7120E+03  1.4803E+01  6.4535E+01  1.7310E-05  4.6945E+00  4.0579E+01  3.4242E+00
             7.7229E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1759.21649189923        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     2306
 NPARAMETR:  1.0009E+00  1.0000E-02  2.1535E+00  1.6210E+00  1.0207E+00  9.8377E-01  3.1601E-02  1.7681E+00  5.5063E-01  1.1548E+00
             8.3163E-01
 PARAMETER:  1.0086E-01 -4.6250E+00  8.6710E-01  5.8301E-01  1.2049E-01  8.3632E-02 -3.3546E+00  6.6992E-01 -4.9669E-01  2.4392E-01
            -8.4368E-02
 GRADIENT:   1.3652E+00  0.0000E+00  1.7980E+00 -3.4087E+01 -1.1616E+00 -4.4197E-02  7.4032E-07  3.3631E-01  2.0220E-01  5.8175E-01
             7.0281E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1759.23384831321        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2494
 NPARAMETR:  1.0018E+00  1.0000E-02  2.1331E+00  1.6209E+00  1.0176E+00  9.8431E-01  3.3217E-02  1.7512E+00  5.5092E-01  1.1506E+00
             8.3159E-01
 PARAMETER:  1.0180E-01 -4.6250E+00  8.5759E-01  5.8299E-01  1.1746E-01  8.4184E-02 -3.3047E+00  6.6032E-01 -4.9617E-01  2.4029E-01
            -8.4414E-02
 GRADIENT:   3.7461E+00  0.0000E+00  1.3486E+00 -3.1550E+01 -9.2661E-02  2.4939E-01  7.8839E-07  1.5939E-01  2.6831E-01  2.3322E-01
            -1.3057E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1759.24874224026        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:     2690             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0013E+00  1.0000E-02  2.1065E+00  1.6203E+00  1.0149E+00  9.8427E-01  3.5318E-02  1.7378E+00  5.5106E-01  1.1464E+00
             8.3159E-01
 PARAMETER:  1.0127E-01 -4.6250E+00  8.4503E-01  5.8259E-01  1.1475E-01  8.4144E-02 -3.2434E+00  6.5263E-01 -4.9590E-01  2.3661E-01
            -8.4418E-02
 GRADIENT:   6.5215E+02  0.0000E+00  1.1942E+01  1.7042E+03  1.2566E+01  6.4380E+01  2.1928E-05  4.0999E+00  4.0524E+01  3.5167E+00
             8.1440E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1759.25708402135        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:     2883
 NPARAMETR:  1.0013E+00  1.0000E-02  2.0957E+00  1.6198E+00  1.0122E+00  9.8428E-01  3.7607E-02  1.7290E+00  5.5118E-01  1.1443E+00
             8.3159E-01
 PARAMETER:  1.0125E-01 -4.6250E+00  8.3987E-01  5.8230E-01  1.1211E-01  8.4153E-02 -3.1806E+00  6.4754E-01 -4.9568E-01  2.3478E-01
            -8.4411E-02
 GRADIENT:   2.4689E+00  0.0000E+00 -5.9601E-02 -3.1020E+01  2.0934E+00  1.5791E-01  1.0936E-06  4.7269E-01  2.2653E-01 -1.1633E-01
             8.6117E-03

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1759.26696881593        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     3081             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0012E+00  1.0000E-02  2.0849E+00  1.6191E+00  1.0071E+00  9.8429E-01  3.6172E-02  1.7148E+00  5.5137E-01  1.1434E+00
             8.3159E-01
 PARAMETER:  1.0121E-01 -4.6250E+00  8.3470E-01  5.8189E-01  1.0706E-01  8.4165E-02 -3.2195E+00  6.3932E-01 -4.9534E-01  2.3399E-01
            -8.4415E-02
 GRADIENT:   6.5138E+02  0.0000E+00  1.3435E+01  1.7000E+03  8.7560E+00  6.4363E+01  2.2832E-05  3.6696E+00  4.0522E+01  3.8764E+00
             7.8638E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1759.27318113385        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     3276
 NPARAMETR:  1.0012E+00  1.0000E-02  2.0747E+00  1.6188E+00  1.0056E+00  9.8430E-01  1.6819E-02  1.7085E+00  5.5145E-01  1.1416E+00
             8.3161E-01
 PARAMETER:  1.0120E-01 -4.6250E+00  8.2980E-01  5.8169E-01  1.0561E-01  8.4174E-02 -3.9853E+00  6.3561E-01 -4.9521E-01  2.3243E-01
            -8.4396E-02
 GRADIENT:   2.5272E+00  0.0000E+00  8.4738E-01 -3.1225E+01 -6.6698E-02  1.5791E-01  3.0147E-07  2.5124E-01  2.6316E-01  2.1161E-01
            -5.9361E-03

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1759.28155220484        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     3470             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0012E+00  1.0000E-02  2.0575E+00  1.6182E+00  1.0034E+00  9.8431E-01  1.8352E-02  1.6968E+00  5.5159E-01  1.1383E+00
             8.3162E-01
 PARAMETER:  1.0117E-01 -4.6250E+00  8.2148E-01  5.8130E-01  1.0341E-01  8.4186E-02 -3.8980E+00  6.2875E-01 -4.9494E-01  2.2954E-01
            -8.4379E-02
 GRADIENT:   6.5055E+02  0.0000E+00  1.2329E+01  1.6960E+03  1.0660E+01  6.4306E+01  7.0812E-06  3.6756E+00  4.0459E+01  3.4145E+00
             7.9227E-01

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1759.28527559216        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:     3663
 NPARAMETR:  1.0012E+00  1.0000E-02  2.0480E+00  1.6178E+00  1.0019E+00  9.8432E-01  2.0313E-02  1.6906E+00  5.5167E-01  1.1361E+00
             8.3164E-01
 PARAMETER:  1.0115E-01 -4.6250E+00  8.1686E-01  5.8109E-01  1.0187E-01  8.4195E-02 -3.7965E+00  6.2510E-01 -4.9480E-01  2.2761E-01
            -8.4355E-02
 GRADIENT:   2.4980E+00  0.0000E+00 -1.9259E-01 -3.1501E+01  2.0152E+00  1.7523E-01  4.1061E-07  3.3233E-01  2.3751E-01 -2.2883E-01
            -5.7606E-03

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1759.29071836808        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     3861             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0011E+00  1.0000E-02  2.0413E+00  1.6174E+00  9.9772E-01  9.8433E-01  1.7771E-02  1.6810E+00  5.5181E-01  1.1363E+00
             8.3166E-01
 PARAMETER:  1.0113E-01 -4.6250E+00  8.1357E-01  5.8083E-01  9.7714E-02  8.4201E-02 -3.9302E+00  6.1940E-01 -4.9456E-01  2.2777E-01
            -8.4337E-02
 GRADIENT:   6.5003E+02  0.0000E+00  1.3301E+01  1.6933E+03  8.0969E+00  6.4235E+01  6.7596E-06  3.4570E+00  4.0468E+01  3.7242E+00
             7.9409E-01

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1759.29417355555        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     4055
 NPARAMETR:  1.0011E+00  1.0000E-02  2.0343E+00  1.6172E+00  9.9697E-01  9.8433E-01  1.0000E-02  1.6771E+00  5.5185E-01  1.1350E+00
             8.3167E-01
 PARAMETER:  1.0112E-01 -4.6250E+00  8.1015E-01  5.8070E-01  9.6967E-02  8.4204E-02 -4.8870E+00  6.1704E-01 -4.9447E-01  2.2666E-01
            -8.4323E-02
 GRADIENT:   2.4000E+00  0.0000E+00  6.2165E-01 -3.1338E+01 -9.2573E-02  1.4853E-01  0.0000E+00  2.1328E-01  2.6651E-01  1.7104E-01
             1.5786E-03

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1759.29933520225        NO. OF FUNC. EVALS.: 200
 CUMULATIVE NO. OF FUNC. EVALS.:     4255             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0011E+00  1.0000E-02  2.0182E+00  1.6166E+00  9.9514E-01  9.8434E-01  1.0000E-02  1.6662E+00  5.5198E-01  1.1314E+00
             8.3168E-01
 PARAMETER:  1.0109E-01 -4.6250E+00  8.0222E-01  5.8034E-01  9.5124E-02  8.4219E-02 -4.8870E+00  6.1057E-01 -4.9424E-01  2.2350E-01
            -8.4311E-02
 GRADIENT:   6.4945E+02  0.0000E+00  1.2045E+01  1.6898E+03  1.0735E+01  6.4215E+01  0.0000E+00  3.4718E+00  4.0394E+01  3.1759E+00
             7.8783E-01

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1759.30195803793        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     4450
 NPARAMETR:  1.0011E+00  1.0000E-02  2.0143E+00  1.6164E+00  9.9356E-01  9.8435E-01  1.0000E-02  1.6625E+00  5.5204E-01  1.1309E+00
             8.3170E-01
 PARAMETER:  1.0108E-01 -4.6250E+00  8.0028E-01  5.8023E-01  9.3541E-02  8.4225E-02 -4.8870E+00  6.0831E-01 -4.9414E-01  2.2303E-01
            -8.4286E-02
 GRADIENT:   2.4179E+00  0.0000E+00  6.9840E-02 -3.1447E+01  9.8654E-01  1.6281E-01  0.0000E+00  2.1922E-01  2.6621E-01 -8.8014E-02
            -4.7544E-03

0ITERATION NO.:  123    OBJECTIVE VALUE:  -1759.30292448141        NO. OF FUNC. EVALS.: 109
 CUMULATIVE NO. OF FUNC. EVALS.:     4559
 NPARAMETR:  1.0011E+00  1.0000E-02  2.0027E+00  1.6161E+00  9.9280E-01  9.8436E-01  1.0000E-02  1.6563E+00  5.5211E-01  1.1291E+00
             8.3171E-01
 PARAMETER:  1.0108E-01 -4.6250E+00  7.9979E-01  5.8015E-01  9.2133E-02  8.4224E-02 -4.8870E+00  6.0660E-01 -4.9406E-01  2.2365E-01
            -8.4275E-02
 GRADIENT:   9.2430E-03  0.0000E+00  7.2013E-01  4.9959E-01 -3.1294E-01 -2.1575E-03  0.0000E+00  1.0740E-01 -8.0722E-03  1.6746E-01
            -3.8349E-04

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     4559
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.6224E-04 -4.2163E-06 -3.9733E-02 -1.0084E-02 -4.6045E-02
 SE:             2.9908E-02  2.2560E-06  1.8394E-02  2.9017E-02  2.1066E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9567E-01  6.1632E-02  3.0767E-02  7.2821E-01  2.8833E-02

 ETASHRINKSD(%)  1.0000E-10  9.9992E+01  3.8376E+01  2.7892E+00  2.9427E+01
 ETASHRINKVR(%)  1.0000E-10  1.0000E+02  6.2025E+01  5.5007E+00  5.0195E+01
 EBVSHRINKSD(%)  2.8972E-01  9.9993E+01  4.2880E+01  3.1831E+00  2.4235E+01
 EBVSHRINKVR(%)  5.7860E-01  1.0000E+02  6.7373E+01  6.2648E+00  4.2597E+01
 RELATIVEINF(%)  9.7784E+01  2.1657E-08  9.4058E+00  4.3167E+00  1.3007E+01
 EPSSHRINKSD(%)  4.5931E+01
 EPSSHRINKVR(%)  7.0765E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1759.3029244814065     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1024.1520979176685     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    62.55
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     5.88
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1759.303       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.00E-02  2.01E+00  1.62E+00  9.92E-01  9.84E-01  1.00E-02  1.66E+00  5.52E-01  1.13E+00  8.32E-01
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.18E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -3.21E+00  0.00E+00  1.82E+01
 
 TH 4
+       -1.38E+02  0.00E+00 -1.30E+01  1.38E+03
 
 TH 5
+        3.27E+01  0.00E+00 -9.46E+01 -1.69E+02  5.38E+02
 
 TH 6
+       -1.26E+01  0.00E+00  5.43E-01 -3.14E+01 -1.09E+01  2.18E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        9.29E-01  0.00E+00  1.26E+00 -4.60E+00 -6.68E+00  2.06E+00  0.00E+00  2.76E-01
 
 TH 9
+        1.53E+02  0.00E+00  1.49E+00  1.63E+02 -7.89E+00 -2.61E+01  0.00E+00  2.49E+00  9.25E+02
 
 TH10
+       -1.46E-01  0.00E+00  1.31E+01  5.98E+00 -7.27E+01  8.99E+00  0.00E+00  1.28E+00  5.72E+00  1.07E+01
 
 TH11
+       -2.13E+01  0.00E+00  1.96E+00 -3.05E+01 -3.99E+01  3.47E+01  0.00E+00  8.25E+00  8.92E+01  1.87E+01  3.83E+02
 
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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.14E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.54E+00  0.00E+00  3.57E+01
 
 TH 4
+       -1.42E+01  0.00E+00 -2.92E+01  1.31E+03
 
 TH 5
+       -1.13E+00  0.00E+00 -9.56E+01 -8.07E+01  5.30E+02
 
 TH 6
+       -4.82E-02  0.00E+00  1.08E-02 -2.65E+00  4.44E-01  2.03E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        2.20E-02  0.00E+00 -1.50E+01 -5.53E+00 -8.02E+00  1.16E-01  0.00E+00  2.03E+01
 
 TH 9
+        2.06E+00  0.00E+00  4.82E+00 -1.25E+00  1.22E+00 -2.18E+00  0.00E+00  7.37E-01  5.81E+02
 
 TH10
+        1.03E+00  0.00E+00 -1.10E+00 -3.80E+00 -6.72E+01  3.26E-01  0.00E+00  7.75E+00  1.54E+00  6.23E+01
 
 TH11
+       -8.13E+00  0.00E+00 -3.68E+00 -1.84E+01 -2.35E+00  2.49E+00  0.00E+00  5.45E+00  2.09E+01  7.93E+00  2.99E+02
 
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
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.14E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -1.97E+01  0.00E+00  3.44E+01
 
 TH 4
+        1.34E+02  0.00E+00 -4.86E+01  1.31E+03
 
 TH 5
+       -2.23E+01  0.00E+00 -9.86E+01  4.61E+00  5.34E+02
 
 TH 6
+        3.90E+00  0.00E+00 -4.21E+00  2.18E+01  1.08E+01  1.90E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        1.69E+01  0.00E+00 -1.19E+01 -2.12E+00 -1.14E+01 -6.06E-02  0.00E+00  1.62E+01
 
 TH 9
+       -1.09E+02  0.00E+00  2.34E+00 -1.19E+02 -1.68E+00  1.15E+01  0.00E+00  1.42E+00  3.89E+02
 
 TH10
+        3.15E+01  0.00E+00  1.34E+00 -2.65E+01 -6.25E+01  1.29E+01  0.00E+00  9.07E+00  8.24E+00  4.90E+01
 
 TH11
+        9.49E+00  0.00E+00 -5.45E+00  4.77E+00  2.73E+01 -2.25E+01  0.00E+00  5.38E-01 -2.04E+01  3.29E-01  2.41E+02
 
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
 #CPUT: Total CPU Time in Seconds,       68.442
Stop Time:
Wed Sep 29 14:30:17 CDT 2021

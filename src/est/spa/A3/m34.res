Sat Sep 18 10:24:29 CDT 2021
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
$DATA ../../../../data/spa/A3/dat34.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m34.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   83.5399374802893        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.6438E+02  5.9909E+00  4.1594E+01 -5.9455E+01  2.4331E+02 -4.7449E+01 -8.5280E+01 -2.3543E+01 -1.4873E+02 -2.5908E+02
            -2.8671E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1154.09208468678        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  9.9837E-01  1.0274E+00  9.3350E-01  1.2135E+00  8.8617E-01  9.8861E-01  9.9043E-01  9.8766E-01  9.8833E-01  1.1668E+00
             5.6397E+00
 PARAMETER:  9.8370E-02  1.2699E-01  3.1185E-02  2.9352E-01 -2.0842E-02  8.8546E-02  9.0382E-02  8.7580E-02  8.8263E-02  2.5422E-01
             1.8298E+00
 GRADIENT:  -4.9400E+01  1.0315E+01 -1.3748E+01  3.2146E+01 -1.5707E+01 -3.6420E+00  1.3507E+01  6.0728E+00  2.8030E+01  2.8343E+01
             2.0873E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1206.93551350801        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.7876E-01  7.4664E-01  9.4352E-01  1.2163E+00  7.3854E-01  1.0211E+00  6.6855E-01  2.2645E-01  6.5545E-01  6.7128E-01
             4.2136E+00
 PARAMETER:  7.8535E-02 -1.9218E-01  4.1860E-02  2.9583E-01 -2.0308E-01  1.2091E-01 -3.0265E-01 -1.3852E+00 -3.2243E-01 -2.9857E-01
             1.5383E+00
 GRADIENT:  -2.6830E-01 -1.1452E+01  2.2010E+01 -6.8515E+01 -4.0762E+01  4.3791E+00  1.9495E-01  3.8218E-01 -4.3402E+00  1.0235E+01
             8.6758E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1213.46318794161        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  9.8098E-01  6.7054E-01  1.5699E+00  1.3454E+00  1.0053E+00  1.0120E+00  6.3323E-01  2.6827E-01  6.0034E-01  4.2367E-01
             4.2267E+00
 PARAMETER:  8.0794E-02 -2.9967E-01  5.5103E-01  3.9672E-01  1.0529E-01  1.1189E-01 -3.5692E-01 -1.2158E+00 -4.1025E-01 -7.5879E-01
             1.5414E+00
 GRADIENT:   6.2484E+00 -2.2026E+00  4.1420E+00 -1.1647E+01 -7.6013E+00  1.5578E+00  2.7059E-02  2.1806E-01 -2.0621E+00  2.1297E+00
            -4.8455E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1214.89685881922        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      297
 NPARAMETR:  9.8089E-01  7.4643E-01  1.0339E+00  1.2833E+00  8.5537E-01  1.0106E+00  2.6301E-01  1.0366E-01  7.6295E-01  1.4798E-01
             4.2262E+00
 PARAMETER:  8.0706E-02 -1.9245E-01  1.3336E-01  3.4944E-01 -5.6225E-02  1.1055E-01 -1.2356E+00 -2.1666E+00 -1.7056E-01 -1.8107E+00
             1.5413E+00
 GRADIENT:  -2.4828E+00 -5.0600E-01 -2.9534E+00  3.3840E+00  3.4002E+00 -5.7402E-01 -5.8079E-02  9.0458E-02  6.8804E-01  2.6312E-01
             3.0761E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1215.08050562985        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      367
 NPARAMETR:  9.8175E-01  8.5850E-01  1.1248E+00  1.2178E+00  9.3362E-01  1.0104E+00  2.4345E-01  1.0000E-02  7.7776E-01  5.5217E-02
             4.2290E+00
 PARAMETER:  8.1578E-02 -5.2570E-02  2.1760E-01  2.9708E-01  3.1314E-02  1.1032E-01 -1.3128E+00 -4.6416E+00 -1.5134E-01 -2.7965E+00
             1.5420E+00
 GRADIENT:   4.9303E-02  7.5994E-01  6.8848E-01  8.6588E-01 -1.2541E+00  5.3402E-02 -9.6461E-02  0.0000E+00 -2.5494E-01  3.0775E-02
            -5.0382E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1215.08120769076        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      437
 NPARAMETR:  9.8191E-01  8.8566E-01  1.1198E+00  1.2007E+00  9.4288E-01  1.0102E+00  2.4246E-01  1.0000E-02  7.8760E-01  4.2854E-02
             4.2305E+00
 PARAMETER:  8.1744E-02 -2.1423E-02  2.1318E-01  2.8288E-01  4.1182E-02  1.1017E-01 -1.3169E+00 -5.2137E+00 -1.3876E-01 -3.0500E+00
             1.5423E+00
 GRADIENT:   7.6619E-02  3.0567E-01  3.6796E-01  1.4554E-01 -6.3955E-01  2.4530E-02 -1.0085E-01  0.0000E+00 -1.9980E-01  1.8515E-02
            -3.6763E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1215.09477583053        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      512
 NPARAMETR:  9.8284E-01  1.0363E+00  1.0893E+00  1.1088E+00  9.9170E-01  1.0098E+00  3.7711E-01  1.0000E-02  8.2548E-01  1.0000E-02
             4.2366E+00
 PARAMETER:  8.2695E-02  1.3563E-01  1.8551E-01  2.0326E-01  9.1660E-02  1.0975E-01 -8.7523E-01 -8.8874E+00 -9.1788E-02 -4.5549E+00
             1.5438E+00
 GRADIENT:  -3.2082E-01  2.4724E-01 -1.1701E-01  6.0632E-01  5.5369E-01 -1.9218E-01 -2.7580E-02  0.0000E+00  5.0113E-01  0.0000E+00
             5.4228E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1215.11775593091        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      583
 NPARAMETR:  9.8261E-01  9.9973E-01  1.0768E+00  1.1297E+00  9.6859E-01  1.0108E+00  4.2727E-01  1.0000E-02  7.9906E-01  1.3771E-02
             4.2330E+00
 PARAMETER:  8.2453E-02  9.9729E-02  1.7396E-01  2.2198E-01  6.8087E-02  1.1074E-01 -7.5034E-01 -8.1732E+00 -1.2433E-01 -4.1852E+00
             1.5429E+00
 GRADIENT:  -3.6337E-01 -1.4848E-01  3.0585E-02 -5.5521E-01  5.4832E-02  4.3326E-02  1.0864E-02  0.0000E+00  5.1738E-02  2.1007E-03
             7.1973E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1215.13389455549        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      654
 NPARAMETR:  9.8269E-01  9.5272E-01  1.0771E+00  1.1595E+00  9.4894E-01  1.0108E+00  4.3558E-01  1.0000E-02  7.8445E-01  2.1233E-02
             4.2305E+00
 PARAMETER:  8.2535E-02  5.1571E-02  1.7426E-01  2.4799E-01  4.7595E-02  1.1074E-01 -7.3107E-01 -7.2133E+00 -1.4277E-01 -3.7522E+00
             1.5423E+00
 GRADIENT:   7.6637E-03  5.2560E-01  1.1788E-01  6.9213E-01 -2.9637E-01 -5.8482E-02 -9.0604E-03  0.0000E+00 -2.0983E-02  5.0209E-03
            -1.0054E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1215.13468923397        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      726
 NPARAMETR:  9.8257E-01  9.4817E-01  1.0759E+00  1.1614E+00  9.4689E-01  1.0109E+00  4.3778E-01  1.0000E-02  7.8366E-01  2.0874E-02
             4.2300E+00
 PARAMETER:  8.2412E-02  4.6780E-02  1.7315E-01  2.4965E-01  4.5433E-02  1.1086E-01 -7.2604E-01 -7.2441E+00 -1.4378E-01 -3.7692E+00
             1.5422E+00
 GRADIENT:   3.2899E-03 -2.3278E-01 -7.5070E-02 -3.7343E-01  1.8791E-01  1.8445E-02  6.4556E-03  0.0000E+00  2.8768E-02  4.8920E-03
             7.0380E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1215.14082838727        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      802
 NPARAMETR:  9.8249E-01  9.3089E-01  1.0774E+00  1.1722E+00  9.4031E-01  1.0109E+00  4.4160E-01  1.0000E-02  7.7820E-01  1.6196E-02
             4.2291E+00
 PARAMETER:  8.2337E-02  2.8384E-02  1.7451E-01  2.5888E-01  3.8449E-02  1.1085E-01 -7.1735E-01 -7.7728E+00 -1.5077E-01 -4.0230E+00
             1.5420E+00
 GRADIENT:   1.7511E-02 -7.2237E-02  1.9915E-03 -1.0777E-01  2.2030E-02 -1.1886E-03  1.3646E-03  0.0000E+00  4.7935E-03  2.9519E-03
             1.9609E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1215.15788359764        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      941
 NPARAMETR:  9.8348E-01  8.5679E-01  1.0855E+00  1.2208E+00  9.1425E-01  1.0117E+00  4.6600E-01  1.0000E-02  7.5262E-01  1.0000E-02
             4.2338E+00
 PARAMETER:  8.3340E-02 -5.4561E-02  1.8206E-01  2.9947E-01  1.0347E-02  1.1167E-01 -6.6357E-01 -8.8912E+00 -1.8419E-01 -4.5788E+00
             1.5431E+00
 GRADIENT:   3.2706E-02  1.3939E+00  3.5485E-01  2.2107E+00 -9.3306E-01 -6.7666E-02 -2.0820E-02  0.0000E+00 -6.7024E-02  0.0000E+00
            -1.3571E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1215.16317214753        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1116
 NPARAMETR:  9.8285E-01  8.0169E-01  1.0873E+00  1.2525E+00  8.9475E-01  1.0117E+00  4.8308E-01  1.0000E-02  7.3845E-01  1.0000E-02
             4.2298E+00
 PARAMETER:  8.2701E-02 -1.2103E-01  1.8368E-01  3.2514E-01 -1.1212E-02  1.1168E-01 -6.2757E-01 -8.7263E+00 -2.0320E-01 -4.5411E+00
             1.5422E+00
 GRADIENT:  -8.2307E-03  4.7109E-03  8.8367E-03 -3.7788E-03 -1.5802E-02  5.6578E-03 -9.0985E-04  0.0000E+00 -1.2571E-03  0.0000E+00
            -7.8739E-03

0ITERATION NO.:   67    OBJECTIVE VALUE:  -1215.16317299673        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1173
 NPARAMETR:  9.8286E-01  8.0126E-01  1.0872E+00  1.2528E+00  8.9458E-01  1.0117E+00  4.8363E-01  1.0000E-02  7.3827E-01  1.0000E-02
             4.2298E+00
 PARAMETER:  8.2706E-02 -1.2157E-01  1.8364E-01  3.2536E-01 -1.1400E-02  1.1167E-01 -6.2644E-01 -8.7258E+00 -2.0345E-01 -4.5410E+00
             1.5422E+00
 GRADIENT:   4.1478E-03  2.9478E-03  1.8042E-03  3.5414E-03 -3.9602E-03  1.2108E-03 -2.2449E-04  0.0000E+00 -1.0989E-03  0.0000E+00
             7.1065E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1173
 NO. OF SIG. DIGITS IN FINAL EST.:  3.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.3520E-03 -8.5057E-03  7.8008E-05 -1.3246E-02 -2.1827E-05
 SE:             2.8391E-02  6.4339E-03  7.7105E-05  1.9498E-02  1.5234E-04
 N:                     100         100         100         100         100

 P VAL.:         9.3398E-01  1.8617E-01  3.1168E-01  4.9691E-01  8.8607E-01

 ETASHRINKSD(%)  4.8868E+00  7.8446E+01  9.9742E+01  3.4679E+01  9.9490E+01
 ETASHRINKVR(%)  9.5348E+00  9.5354E+01  9.9999E+01  5.7332E+01  9.9997E+01
 EBVSHRINKSD(%)  4.6650E+00  7.8852E+01  9.9681E+01  3.4763E+01  9.9437E+01
 EBVSHRINKVR(%)  9.1124E+00  9.5528E+01  9.9999E+01  5.7442E+01  9.9997E+01
 RELATIVEINF(%)  8.5352E+01  4.1833E-02  4.1832E-05  6.2609E-01  7.0144E-05
 EPSSHRINKSD(%)  1.6778E+01
 EPSSHRINKVR(%)  3.0741E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1215.1631729967303     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -480.01234643299210     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    10.98
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1215.163       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.83E-01  8.01E-01  1.09E+00  1.25E+00  8.95E-01  1.01E+00  4.84E-01  1.00E-02  7.38E-01  1.00E-02  4.23E+00
 


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
+        1.33E+03
 
 TH 2
+       -1.49E+01  3.38E+02
 
 TH 3
+        4.38E+01  1.21E+02  1.01E+02
 
 TH 4
+       -5.89E+01  3.57E+02  5.93E+01  4.59E+02
 
 TH 5
+       -6.71E+01 -3.19E+02 -2.28E+02 -2.01E+02  5.26E+02
 
 TH 6
+        1.97E+02  4.98E+00  2.48E+01 -1.93E+01 -4.66E+01  1.32E+02
 
 TH 7
+       -4.31E+00 -9.30E+00 -4.72E+00 -8.24E+00  1.14E+01 -1.95E+00  3.05E-01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -1.61E+01 -1.96E+01 -7.79E+00 -2.00E+01  1.98E+01 -6.04E+00  6.28E-01  0.00E+00  1.46E+00
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -2.31E+01 -1.54E+01 -2.13E+00 -2.06E+01  7.51E+00 -2.18E+00  4.13E-01  0.00E+00  1.17E+00  0.00E+00  1.45E+00
 
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
+        1.03E+03
 
 TH 2
+       -8.46E+01  3.31E+02
 
 TH 3
+        5.84E+00  8.80E+01  8.60E+01
 
 TH 4
+       -1.20E+02  3.76E+02  3.32E+01  5.32E+02
 
 TH 5
+        1.95E+01 -2.53E+02 -1.85E+02 -1.51E+02  4.29E+02
 
 TH 6
+        5.49E+00 -1.74E+01  7.19E+00 -2.89E+01 -5.94E+00  1.60E+02
 
 TH 7
+        3.31E-01 -7.50E+00 -2.00E+00 -6.31E+00  1.06E+01  1.72E-01  3.46E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -3.63E-01 -2.20E+01 -1.31E+00 -4.80E+00  2.02E+01  3.90E+00  8.29E+00  0.00E+00  5.29E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.55E+01 -1.57E+01 -1.87E+00 -1.51E+01  6.88E+00  3.72E+00  2.46E+00  0.00E+00  1.36E+01  0.00E+00  2.65E+01
 
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
+        1.02E+03
 
 TH 2
+       -1.23E+02  3.37E+02
 
 TH 3
+       -1.12E+01  6.81E+01  6.39E+01
 
 TH 4
+       -1.69E+02  4.04E+02  2.98E+01  5.56E+02
 
 TH 5
+        4.22E+01 -2.01E+02 -1.48E+02 -1.24E+02  3.62E+02
 
 TH 6
+       -2.25E+02 -3.05E+01 -7.36E+00 -3.96E+01  2.23E+01  2.43E+02
 
 TH 7
+       -1.21E+00 -1.26E+01 -9.63E-01 -1.12E+01  6.39E+00 -4.57E-01  2.40E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -1.84E+00 -5.37E+01  1.15E+01 -5.55E+01 -1.06E+01 -6.28E+00  1.20E+01  0.00E+00  7.81E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        6.86E+01 -7.34E+01  5.19E+00 -1.03E+02  4.77E+00  4.21E+00  4.82E+00  0.00E+00  3.16E+01  0.00E+00  8.18E+01
 
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
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       17.509
Stop Time:
Sat Sep 18 10:24:48 CDT 2021
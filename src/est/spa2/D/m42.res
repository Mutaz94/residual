Thu Sep 30 09:03:54 CDT 2021
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
$DATA ../../../../data/spa2/D/dat42.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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
 NO. OF DATA RECS IN DATA SET:      700
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      600
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   19886.0878213518        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   6.3260E+02  3.9815E+02  8.0873E+00  4.4899E+02  1.1047E+02 -1.3520E+03 -8.5424E+02 -4.0436E+01 -1.1330E+03 -3.7968E+02
            -4.0463E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -681.879205431430        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.4342E+00  1.1990E+00  1.0130E+00  1.2706E+00  9.7698E-01  1.7006E+00  1.3505E+00  9.8088E-01  1.2332E+00  1.0222E+00
             1.4731E+01
 PARAMETER:  4.6063E-01  2.8151E-01  1.1294E-01  3.3948E-01  7.6709E-02  6.3096E-01  4.0046E-01  8.0693E-02  3.0961E-01  1.2199E-01
             2.7900E+00
 GRADIENT:   3.2230E+01 -2.5989E+01 -1.0844E+01 -1.3400E+01  1.3880E+01  4.3058E+01 -9.9001E+00  3.5285E+00  4.3293E+00  1.3449E+01
             3.1524E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -740.855308023959        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  1.4453E+00  6.5824E-01  8.0292E+00  2.1821E+00  1.9604E+00  1.6650E+00  5.9107E+00  3.7222E-01  1.5435E+00  4.7938E-01
             1.3709E+01
 PARAMETER:  4.6834E-01 -3.1819E-01  2.1831E+00  8.8028E-01  7.7314E-01  6.0983E-01  1.8768E+00 -8.8827E-01  5.3404E-01 -6.3527E-01
             2.7181E+00
 GRADIENT:   4.1347E+01  1.3006E+01 -2.4707E+00  7.3610E+01 -7.1942E-01  1.1204E+00  2.0308E+01  4.0838E-02  1.5664E+01  1.4223E+00
             2.8348E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -801.999875440821        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0812E+00  8.9503E-01  6.0744E+00  1.1738E+00  1.7231E+00  1.8883E+00  4.2476E+00  1.6038E+00  1.0742E+00  8.6357E-01
             1.0053E+01
 PARAMETER:  1.7805E-01 -1.0898E-02  1.9041E+00  2.6021E-01  6.4413E-01  7.3570E-01  1.5464E+00  5.7236E-01  1.7160E-01 -4.6685E-02
             2.4079E+00
 GRADIENT:  -6.4561E+01 -1.8931E+01  4.8183E-01 -4.2811E+01  3.8714E+00  1.8138E+01  2.0049E+01  4.2245E-01  1.1082E+01  8.9006E+00
             1.8876E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -819.178296904296        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.1960E+00  1.3516E+00  1.3810E+00  9.1177E-01  1.4299E+00  1.7467E+00  3.4614E+00  1.0400E-01  5.9704E-01  2.0756E-01
             8.8993E+00
 PARAMETER:  2.7894E-01  4.0132E-01  4.2278E-01  7.6274E-03  4.5763E-01  6.5774E-01  1.3417E+00 -2.1633E+00 -4.1577E-01 -1.4723E+00
             2.2860E+00
 GRADIENT:   1.7848E+01 -5.9072E+00 -1.2203E+01  4.2120E+00  2.7080E+01 -7.1225E+00  6.2521E+00  2.2338E-02  2.8660E+00  7.2132E-01
             1.7313E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -820.167658130067        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      369
 NPARAMETR:  1.1533E+00  1.3307E+00  1.4418E+00  9.0276E-01  1.3151E+00  1.7655E+00  3.4555E+00  1.3453E-01  5.2742E-01  1.7352E-01
             8.7471E+00
 PARAMETER:  2.4264E-01  3.8571E-01  4.6591E-01 -2.2933E-03  3.7388E-01  6.6845E-01  1.3400E+00 -1.9060E+00 -5.3975E-01 -1.6515E+00
             2.2687E+00
 GRADIENT:   2.0877E-01 -1.1070E+00 -1.9871E-01 -1.2472E+00 -7.6929E-01 -2.8886E-01  4.1759E-02  3.4498E-02  1.4334E+00  5.6228E-01
            -1.5382E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -820.772851810639        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      444
 NPARAMETR:  1.1556E+00  1.3837E+00  1.4278E+00  8.6496E-01  1.3492E+00  1.7572E+00  3.4304E+00  3.1805E-02  2.2443E-01  3.0592E-02
             8.7697E+00
 PARAMETER:  2.4465E-01  4.2479E-01  4.5612E-01 -4.5076E-02  3.9952E-01  6.6372E-01  1.3327E+00 -3.3481E+00 -1.3942E+00 -3.3870E+00
             2.2713E+00
 GRADIENT:   5.7066E-04  1.9917E-02 -2.1159E-01  1.3861E+00  1.0485E+00 -3.3624E+00  2.3243E+00  1.9853E-03  6.5016E-02  1.7833E-02
             1.7332E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -823.678850132900        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      622
 NPARAMETR:  1.2094E+00  1.3083E+00  1.9740E+00  9.6896E-01  1.4526E+00  1.8944E+00  3.9516E+00  9.3503E-02  4.3029E-01  1.0175E-01
             8.9761E+00
 PARAMETER:  2.9011E-01  3.6876E-01  7.8007E-01  6.8469E-02  4.7334E-01  7.3892E-01  1.4741E+00 -2.2698E+00 -7.4329E-01 -2.1852E+00
             2.2946E+00
 GRADIENT:   5.8364E-01  1.6188E+00 -2.8314E-01 -4.2664E-01  4.9443E-01 -8.4275E-01  1.1831E+00  1.1889E-02 -1.2286E-01  1.5916E-01
            -1.3827E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -823.879152914698        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      797
 NPARAMETR:  1.2104E+00  1.0542E+00  2.5828E+00  1.1102E+00  1.4881E+00  1.9074E+00  4.3535E+00  9.4512E-02  6.9281E-01  1.3046E-01
             9.0155E+00
 PARAMETER:  2.9097E-01  1.5283E-01  1.0489E+00  2.0450E-01  4.9751E-01  7.4573E-01  1.5710E+00 -2.2590E+00 -2.6699E-01 -1.9367E+00
             2.2989E+00
 GRADIENT:   5.9660E-01 -1.5084E+00 -4.1826E-01 -2.6596E+00  1.1983E+00  1.7732E+00  5.7977E-01  9.6023E-03  8.2565E-02  2.3792E-01
             3.0331E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -823.982696135983        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      975
 NPARAMETR:  1.2090E+00  1.0662E+00  2.7832E+00  1.1218E+00  1.5129E+00  1.8938E+00  4.3537E+00  7.1060E-02  7.1071E-01  6.3855E-02
             9.0034E+00
 PARAMETER:  2.8981E-01  1.6409E-01  1.1236E+00  2.1495E-01  5.1405E-01  7.3857E-01  1.5710E+00 -2.5442E+00 -2.4150E-01 -2.6511E+00
             2.2976E+00
 GRADIENT:  -1.0099E-01  7.2141E-01  2.8239E-01  1.3697E+00 -6.1524E-01 -5.9440E-01 -1.9985E-01  4.6791E-03 -2.2459E-01  5.5202E-02
            -1.0784E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -824.018449537981        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1150
 NPARAMETR:  1.2091E+00  1.0611E+00  2.6679E+00  1.1164E+00  1.4969E+00  1.8964E+00  4.3485E+00  2.9051E-02  7.0606E-01  1.4875E-02
             9.0046E+00
 PARAMETER:  2.8988E-01  1.5933E-01  1.0813E+00  2.1015E-01  5.0337E-01  7.3997E-01  1.5698E+00 -3.4387E+00 -2.4805E-01 -4.1080E+00
             2.2977E+00
 GRADIENT:   6.5067E-02 -1.9706E-01  2.0139E-03 -2.4730E-01  7.2925E-02 -1.1696E-01 -5.5096E-03  8.4976E-04 -2.7641E-02  3.0531E-03
             1.2775E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -824.020779015061        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1327            RESET HESSIAN, TYPE II
 NPARAMETR:  1.2096E+00  1.0674E+00  2.6403E+00  1.1138E+00  1.4931E+00  1.9016E+00  4.3486E+00  1.6232E-02  7.0416E-01  1.0000E-02
             9.0027E+00
 PARAMETER:  2.9028E-01  1.6525E-01  1.0709E+00  2.0780E-01  5.0086E-01  7.4270E-01  1.5699E+00 -4.0208E+00 -2.5075E-01 -4.5450E+00
             2.2975E+00
 GRADIENT:   2.4039E+01  1.8306E+00  2.1733E-01  4.2265E+00  1.0289E+00  2.2847E+01  3.1181E+01  2.8877E-04  2.4688E-01  1.7295E-04
             2.7514E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -824.020822462846        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     1501
 NPARAMETR:  1.2097E+00  1.0665E+00  2.6422E+00  1.1146E+00  1.4934E+00  1.9002E+00  4.3493E+00  1.3609E-02  7.0414E-01  1.0000E-02
             9.0048E+00
 PARAMETER:  2.9036E-01  1.6436E-01  1.0716E+00  2.0846E-01  5.0104E-01  7.4197E-01  1.5700E+00 -4.1970E+00 -2.5078E-01 -4.5478E+00
             2.2978E+00
 GRADIENT:   2.9291E-01  8.0325E-02 -6.7407E-03 -1.6820E-01 -3.4862E-02  4.8412E-01  3.9439E-01  1.8956E-04  5.7038E-03  4.3652E-05
             1.3157E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -824.021534315258        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1679             RESET HESSIAN, TYPE I
 NPARAMETR:  1.2096E+00  1.0644E+00  2.6476E+00  1.1157E+00  1.4939E+00  1.9017E+00  4.3546E+00  1.0000E-02  7.0534E-01  1.0000E-02
             9.0030E+00
 PARAMETER:  2.9032E-01  1.6238E-01  1.0736E+00  2.0945E-01  5.0136E-01  7.4277E-01  1.5712E+00 -5.0327E+00 -2.4907E-01 -4.5721E+00
             2.2976E+00
 GRADIENT:   2.4048E+01  1.7691E+00  1.9123E-01  4.3892E+00  1.0981E+00  2.2873E+01  3.1242E+01  0.0000E+00  2.1627E-01  0.0000E+00
             2.7475E+01

0ITERATION NO.:   67    OBJECTIVE VALUE:  -824.021534315258        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:     1734
 NPARAMETR:  1.2096E+00  1.0644E+00  2.6476E+00  1.1157E+00  1.4939E+00  1.9017E+00  4.3546E+00  1.0000E-02  7.0534E-01  1.0000E-02
             9.0030E+00
 PARAMETER:  2.9032E-01  1.6238E-01  1.0736E+00  2.0945E-01  5.0136E-01  7.4277E-01  1.5712E+00 -5.0327E+00 -2.4907E-01 -4.5721E+00
             2.2976E+00
 GRADIENT:   3.0506E-01  6.7080E-02 -1.9370E-02 -1.6262E-01 -5.9705E-03  7.3086E-01  4.4609E-01  0.0000E+00 -1.7967E-03  0.0000E+00
            -9.3317E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1734
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2446E-02  2.2175E-02 -5.7568E-06 -5.0972E-02  3.1026E-05
 SE:             2.8700E-02  2.4746E-02  2.0937E-05  1.0112E-02  7.5845E-05
 N:                     100         100         100         100         100

 P VAL.:         6.6454E-01  3.7021E-01  7.8335E-01  4.6491E-07  6.8249E-01

 ETASHRINKSD(%)  3.8499E+00  1.7097E+01  9.9930E+01  6.6123E+01  9.9746E+01
 ETASHRINKVR(%)  7.5515E+00  3.1270E+01  1.0000E+02  8.8523E+01  9.9999E+01
 EBVSHRINKSD(%)  4.4050E+00  1.2546E+01  9.9899E+01  7.0622E+01  9.9645E+01
 EBVSHRINKVR(%)  8.6159E+00  2.3518E+01  1.0000E+02  9.1369E+01  9.9999E+01
 RELATIVEINF(%)  9.0299E+01  3.1776E+01  1.2106E-05  3.6580E+00  1.5049E-04
 EPSSHRINKSD(%)  9.0738E+00
 EPSSHRINKVR(%)  1.7324E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -824.02153431525812     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       278.70470553034897     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    35.55
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:    11.60
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -824.022       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.21E+00  1.06E+00  2.65E+00  1.12E+00  1.49E+00  1.90E+00  4.35E+00  1.00E-02  7.05E-01  1.00E-02  9.00E+00
 


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
+        2.21E+02
 
 TH 2
+       -2.04E+01  1.43E+01
 
 TH 3
+        1.48E+00  7.58E-03  3.65E+00
 
 TH 4
+       -1.18E+02  5.70E+01 -6.20E+00  2.44E+02
 
 TH 5
+        5.24E-01 -4.89E+00 -2.03E+01  1.48E+01  1.15E+02
 
 TH 6
+       -4.37E+01  5.58E+00  2.73E+00  2.99E+01 -1.80E+01  5.57E+01
 
 TH 7
+        1.15E+01 -4.57E+00 -1.26E+00 -1.71E+01  8.63E+00 -4.46E+00  2.07E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.75E+01 -1.21E+01 -1.23E+00 -4.85E+01  1.11E+01 -1.01E+01  4.65E+00  0.00E+00  1.14E+01
 
 TH10
+       -1.28E-60  2.30E-61  9.21E-61 -3.49E-61 -5.22E-60  1.57E-60 -4.38E-61  0.00E+00 -6.06E-61 -1.6E-101
 
 TH11
+       -2.17E+00 -2.61E+00  1.80E-01 -9.70E+00 -1.68E-01  1.23E+00  6.13E-01  0.00E+00  1.80E+00 -3.69E-42  1.04E+00
 
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
+        1.88E+02
 
 TH 2
+       -5.04E+00  4.02E+01
 
 TH 3
+        1.08E+00  1.64E+00  2.10E+00
 
 TH 4
+       -1.29E+01  4.96E+01 -2.32E+00  1.98E+02
 
 TH 5
+       -5.56E+00 -1.44E+01 -1.02E+01 -4.82E+00  5.95E+01
 
 TH 6
+       -5.56E-01 -1.32E+00  2.60E-01  4.12E+00 -2.21E+00  4.45E+01
 
 TH 7
+        1.36E-02  3.94E+00 -3.93E-01 -1.50E+01  1.93E+00 -1.41E+00  5.90E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        8.98E-01 -3.04E+00 -1.10E+00 -3.84E+01  5.73E+00 -1.46E+00  3.11E+00  0.00E+00  2.02E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  2.38E+01
 
 TH11
+       -7.23E+00 -3.45E+00 -1.09E-01 -1.27E+01  1.70E+00  1.20E+00  7.60E-01  0.00E+00  2.68E+00  0.00E+00  8.41E+00
 
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
+        1.93E+02
 
 TH 2
+        6.29E+01  4.01E+01
 
 TH 3
+        3.80E+00  1.68E+00  8.23E-01
 
 TH 4
+        7.80E+01  5.18E+01  1.12E+00  2.16E+02
 
 TH 5
+       -2.88E+01 -1.10E+01 -4.52E+00 -2.24E+01  2.87E+01
 
 TH 6
+        2.61E+01  8.77E+00 -3.33E-01 -5.68E+00 -4.45E-01  4.16E+01
 
 TH 7
+        1.08E+00  5.29E+00 -3.27E-01 -1.81E+01  5.61E+00  4.33E+00  8.13E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -2.17E+00 -4.37E+00  1.50E-01 -3.59E+01  2.06E+00 -7.21E-01  3.03E+00  0.00E+00  1.14E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -3.72E+01 -1.05E+01 -1.51E+00 -4.12E+01  1.21E+01  6.98E-01  7.01E+00  0.00E+00 -1.56E+00  0.00E+00  1.63E+02
 
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
 #CPUT: Total CPU Time in Seconds,       47.232
Stop Time:
Thu Sep 30 09:04:43 CDT 2021

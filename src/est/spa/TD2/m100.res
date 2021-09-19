Sat Sep 18 15:02:24 CDT 2021
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
$DATA ../../../../data/spa/TD2/dat100.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m100.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1658.74864408908        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.3023E+02 -4.9675E+01 -2.6866E+01 -1.8814E+01  2.8539E+01 -9.4766E+00 -1.2748E+00  5.0765E+00  2.4167E+01 -4.0816E+00
             9.2802E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1664.33919572668        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  9.6009E-01  1.1064E+00  1.0616E+00  9.4548E-01  1.0666E+00  1.0190E+00  1.0168E+00  9.7402E-01  8.5297E-01  1.0487E+00
             9.7272E-01
 PARAMETER:  5.9271E-02  2.0116E-01  1.5977E-01  4.3942E-02  1.6446E-01  1.1882E-01  1.1666E-01  7.3672E-02 -5.9036E-02  1.4754E-01
             7.2337E-02
 GRADIENT:   4.3233E+01 -1.5805E+01  1.5782E+00 -1.9675E+01  9.1103E+00  3.5476E+00 -5.2023E+00 -1.7740E+00 -7.6277E+00 -7.5812E+00
            -5.4920E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1665.01197523958        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  9.6088E-01  1.1485E+00  1.1344E+00  9.3643E-01  1.1164E+00  1.0347E+00  9.8590E-01  9.9989E-01  9.0332E-01  1.1566E+00
             9.7190E-01
 PARAMETER:  6.0092E-02  2.3845E-01  2.2612E-01  3.4320E-02  2.1008E-01  1.3410E-01  8.5801E-02  9.9885E-02 -1.6816E-03  2.4551E-01
             7.1501E-02
 GRADIENT:   4.5751E+01  7.5625E+00  4.7840E+00  1.9816E+00  2.3685E+00  1.0480E+01 -1.0324E+00 -3.3614E+00 -2.9025E+00  1.8389E-01
            -5.1074E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1665.58699938428        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      317
 NPARAMETR:  9.6330E-01  1.3090E+00  1.0735E+00  8.4551E-01  1.1562E+00  1.0332E+00  8.9222E-01  1.1939E+00  9.8874E-01  1.1505E+00
             9.8473E-01
 PARAMETER:  6.2611E-02  3.6928E-01  1.7096E-01 -6.7817E-02  2.4512E-01  1.3267E-01 -1.4048E-02  2.7720E-01  8.8679E-02  2.4016E-01
             8.4612E-02
 GRADIENT:   3.7961E+00  1.4566E+01  2.7370E+00  1.3172E+01 -4.7596E+00  1.6311E+00 -8.0595E-01 -3.0791E-01 -1.6013E+00 -1.1436E+00
             6.1187E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1666.39478381834        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      494
 NPARAMETR:  9.6457E-01  1.6050E+00  7.0666E-01  6.3220E-01  1.1728E+00  1.0344E+00  8.0317E-01  9.1688E-01  1.1633E+00  1.1250E+00
             9.8167E-01
 PARAMETER:  6.3931E-02  5.7311E-01 -2.4721E-01 -3.5854E-01  2.5941E-01  1.3383E-01 -1.1919E-01  1.3218E-02  2.5126E-01  2.1778E-01
             8.1503E-02
 GRADIENT:   2.6570E+00 -4.9681E+00  1.8272E-01 -1.5248E+00  1.4791E+00  1.3474E+00  5.4605E-01 -1.8663E-01 -5.2208E-01 -9.0771E-01
            -1.2910E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1666.71192025179        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      669
 NPARAMETR:  9.6432E-01  1.8500E+00  5.0165E-01  4.7091E-01  1.2280E+00  1.0300E+00  7.4059E-01  8.2350E-01  1.3910E+00  1.1516E+00
             9.8149E-01
 PARAMETER:  6.3667E-02  7.1521E-01 -5.8984E-01 -6.5308E-01  3.0541E-01  1.2958E-01 -2.0031E-01 -9.4193E-02  4.3006E-01  2.4117E-01
             8.1321E-02
 GRADIENT:   7.1091E-01  3.2018E+00  4.9745E-02  1.0669E+00 -1.2061E+00 -6.5634E-01  1.9240E+00  1.3658E-01  3.6487E-01  2.1882E-01
            -4.0502E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1666.73702061072        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      844
 NPARAMETR:  9.6413E-01  1.9096E+00  4.5022E-01  4.2912E-01  1.2462E+00  1.0316E+00  7.2028E-01  7.6948E-01  1.4649E+00  1.1596E+00
             9.8313E-01
 PARAMETER:  6.3472E-02  7.4689E-01 -6.9802E-01 -7.4601E-01  3.2006E-01  1.3115E-01 -2.2812E-01 -1.6204E-01  4.8177E-01  2.4804E-01
             8.2989E-02
 GRADIENT:   9.3397E-02 -3.5985E-01 -2.2962E-01  7.1042E-02  3.3650E-01 -8.5528E-02  1.4124E-01  1.0518E-01  2.8569E-02  4.5033E-02
             1.3596E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1666.74205669103        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1023
 NPARAMETR:  9.6414E-01  1.9048E+00  4.4500E-01  4.3194E-01  1.2385E+00  1.0319E+00  7.2194E-01  6.9712E-01  1.4550E+00  1.1524E+00
             9.8314E-01
 PARAMETER:  6.3486E-02  7.4440E-01 -7.0968E-01 -7.3947E-01  3.1391E-01  1.3139E-01 -2.2581E-01 -2.6079E-01  4.7502E-01  2.4188E-01
             8.2998E-02
 GRADIENT:   4.5142E-02 -1.1582E-01 -1.5056E-01  1.5108E-01  2.5875E-01  4.5508E-04 -2.1439E-02  2.8927E-02 -3.4368E-02 -1.2620E-02
            -2.2256E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1666.74233528983        NO. OF FUNC. EVALS.: 145
 CUMULATIVE NO. OF FUNC. EVALS.:     1168
 NPARAMETR:  9.6411E-01  1.9048E+00  4.4542E-01  4.3175E-01  1.2388E+00  1.0319E+00  7.2193E-01  6.8538E-01  1.4568E+00  1.1531E+00
             9.8321E-01
 PARAMETER:  6.3452E-02  7.4437E-01 -7.0875E-01 -7.3992E-01  3.1416E-01  1.3141E-01 -2.2583E-01 -2.7778E-01  4.7626E-01  2.4246E-01
             8.3064E-02
 GRADIENT:  -1.2420E-02 -3.5391E-01  3.3425E-02 -1.2261E-01  8.1248E-02  1.0938E-02 -2.2438E-02 -2.5025E-03 -7.9525E-03 -1.2054E-02
            -6.7093E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1666.74235974374        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1344
 NPARAMETR:  9.6412E-01  1.9051E+00  4.4508E-01  4.3176E-01  1.2386E+00  1.0319E+00  7.2202E-01  6.8520E-01  1.4567E+00  1.1530E+00
             9.8321E-01
 PARAMETER:  6.3464E-02  7.4452E-01 -7.0950E-01 -7.3989E-01  3.1401E-01  1.3137E-01 -2.2571E-01 -2.7805E-01  4.7617E-01  2.4240E-01
             8.3071E-02
 GRADIENT:  -1.5937E-01  7.0103E-02  8.9353E-03  4.4673E-02  3.6073E-02 -5.5790E-02 -7.9959E-04 -1.3284E-03  1.1152E-02  1.3058E-02
            -8.0017E-04

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1666.74241123706        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1521
 NPARAMETR:  9.6419E-01  1.9051E+00  4.4361E-01  4.3160E-01  1.2376E+00  1.0320E+00  7.2214E-01  6.7728E-01  1.4559E+00  1.1518E+00
             9.8321E-01
 PARAMETER:  6.3534E-02  7.4454E-01 -7.1282E-01 -7.4025E-01  3.1318E-01  1.3147E-01 -2.2554E-01 -2.8967E-01  4.7566E-01  2.4133E-01
             8.3063E-02
 GRADIENT:   1.3927E-01 -2.6425E-02  4.1493E-03  1.6192E-04 -1.5491E-02  3.2191E-02  3.7486E-03  1.6303E-03 -7.6043E-03 -5.2450E-03
            -1.1708E-03

0ITERATION NO.:   53    OBJECTIVE VALUE:  -1666.74242008041        NO. OF FUNC. EVALS.: 101
 CUMULATIVE NO. OF FUNC. EVALS.:     1622
 NPARAMETR:  9.6412E-01  1.9050E+00  4.4359E-01  4.3160E-01  1.2376E+00  1.0319E+00  7.2213E-01  6.7642E-01  1.4560E+00  1.1518E+00
             9.8321E-01
 PARAMETER:  6.3465E-02  7.4450E-01 -7.1285E-01 -7.4025E-01  3.1319E-01  1.3138E-01 -2.2555E-01 -2.9093E-01  4.7572E-01  2.4136E-01
             8.3066E-02
 GRADIENT:  -2.1949E-02 -5.7553E-03 -3.9566E-03 -1.9007E-02  2.1142E-02 -2.7983E-03 -1.7214E-03  3.7400E-04 -2.2216E-04 -1.5261E-03
             2.0162E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1622
 NO. OF SIG. DIGITS IN FINAL EST.:  3.8

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0882E-04 -3.1794E-02 -1.5920E-02  3.2477E-02 -4.1521E-02
 SE:             2.9847E-02  2.4557E-02  5.3552E-03  2.1037E-02  2.2586E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9709E-01  1.9542E-01  2.9509E-03  1.2263E-01  6.6010E-02

 ETASHRINKSD(%)  9.7195E-03  1.7732E+01  8.2059E+01  2.9524E+01  2.4335E+01
 ETASHRINKVR(%)  1.9438E-02  3.2319E+01  9.6781E+01  5.0331E+01  4.2748E+01
 EBVSHRINKSD(%)  3.9264E-01  1.7001E+01  8.5059E+01  3.3407E+01  2.0607E+01
 EBVSHRINKVR(%)  7.8374E-01  3.1111E+01  9.7768E+01  5.5654E+01  3.6967E+01
 RELATIVEINF(%)  9.9170E+01  4.0755E+00  1.9352E-01  2.2141E+00  1.7542E+01
 EPSSHRINKSD(%)  4.4756E+01
 EPSSHRINKVR(%)  6.9481E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1666.7424200804066     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -931.59159351666847     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.65
 Elapsed covariance  time in seconds:     6.70
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1666.742       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.64E-01  1.91E+00  4.44E-01  4.32E-01  1.24E+00  1.03E+00  7.22E-01  6.76E-01  1.46E+00  1.15E+00  9.83E-01
 


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
 
         3.00E-02  2.69E-01  2.15E-01  1.86E-01  1.75E-01  7.26E-02  7.83E-02  2.21E-01  4.04E-01  1.83E-01  6.37E-02
 


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
+        8.99E-04
 
 TH 2
+       -5.81E-04  7.25E-02
 
 TH 3
+       -5.15E-05 -4.42E-02  4.64E-02
 
 TH 4
+        2.37E-04 -4.92E-02  3.15E-02  3.46E-02
 
 TH 5
+       -4.56E-04  3.35E-02 -6.02E-03 -2.25E-02  3.05E-02
 
 TH 6
+        6.66E-05  3.01E-03 -1.95E-03 -2.10E-03  1.28E-03  5.27E-03
 
 TH 7
+        1.79E-04 -1.10E-02  5.04E-03  7.70E-03 -5.51E-03 -1.25E-03  6.13E-03
 
 TH 8
+        4.47E-05  3.05E-02 -8.43E-03 -2.06E-02  2.35E-02  8.32E-03 -7.98E-03  4.90E-02
 
 TH 9
+       -2.54E-04  8.46E-02 -2.89E-02 -5.76E-02  5.53E-02  3.31E-03 -1.79E-02  4.95E-02  1.63E-01
 
 TH10
+       -5.67E-04  1.96E-02  3.83E-03 -1.32E-02  2.53E-02 -8.00E-04 -3.18E-03  2.00E-02  3.68E-02  3.36E-02
 
 TH11
+        1.50E-05  4.12E-03 -2.45E-03 -3.09E-03  1.87E-03  4.19E-04 -1.72E-03  8.92E-04  7.00E-03 -3.25E-04  4.06E-03
 
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
+        3.00E-02
 
 TH 2
+       -7.20E-02  2.69E-01
 
 TH 3
+       -7.98E-03 -7.62E-01  2.15E-01
 
 TH 4
+        4.26E-02 -9.83E-01  7.87E-01  1.86E-01
 
 TH 5
+       -8.70E-02  7.12E-01 -1.60E-01 -6.93E-01  1.75E-01
 
 TH 6
+        3.06E-02  1.54E-01 -1.25E-01 -1.56E-01  1.01E-01  7.26E-02
 
 TH 7
+        7.62E-02 -5.21E-01  2.99E-01  5.29E-01 -4.03E-01 -2.21E-01  7.83E-02
 
 TH 8
+        6.74E-03  5.12E-01 -1.77E-01 -5.00E-01  6.08E-01  5.18E-01 -4.60E-01  2.21E-01
 
 TH 9
+       -2.10E-02  7.78E-01 -3.32E-01 -7.67E-01  7.84E-01  1.13E-01 -5.68E-01  5.53E-01  4.04E-01
 
 TH10
+       -1.03E-01  3.97E-01  9.71E-02 -3.88E-01  7.89E-01 -6.02E-02 -2.22E-01  4.92E-01  4.97E-01  1.83E-01
 
 TH11
+        7.86E-03  2.40E-01 -1.79E-01 -2.61E-01  1.68E-01  9.05E-02 -3.46E-01  6.32E-02  2.72E-01 -2.78E-02  6.37E-02
 
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
+        1.19E+03
 
 TH 2
+        1.46E+02  5.18E+02
 
 TH 3
+        3.96E+01  1.17E+02  3.60E+02
 
 TH 4
+        1.26E+02  4.98E+02 -4.35E+02  1.46E+03
 
 TH 5
+       -9.88E+00 -1.42E+02 -2.37E+02  2.45E+02  3.91E+02
 
 TH 6
+        1.32E+01  1.75E+01 -1.05E+01  3.89E+01 -1.81E+01  3.28E+02
 
 TH 7
+       -6.20E+01  6.72E+00  6.70E+01 -1.28E+02 -8.49E+01  3.37E+00  3.05E+02
 
 TH 8
+       -2.56E+01 -1.14E+01  3.44E+00 -1.80E+01 -1.21E+01 -8.21E+01  2.90E+01  5.77E+01
 
 TH 9
+       -2.30E+01 -2.83E+01 -5.52E+01  6.81E+01  2.13E+00  1.48E+01  1.40E+01 -4.63E+00  3.38E+01
 
 TH10
+        2.23E+01  2.91E+01 -3.73E+01  7.87E+01 -9.28E+01  6.08E+01 -1.82E+00 -2.04E+01  1.50E+01  1.16E+02
 
 TH11
+       -8.54E+00  4.47E+01 -3.55E+00  6.87E+01 -3.56E+01 -2.11E+01  7.43E+01  2.01E+01 -5.31E+00  3.14E+01  3.08E+02
 
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
 #CPUT: Total CPU Time in Seconds,       28.434
Stop Time:
Sat Sep 18 15:02:54 CDT 2021
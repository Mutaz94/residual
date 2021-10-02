Fri Oct  1 19:49:24 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat11.csv ignore=@
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

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        1 OCT 2021
Days until program expires : 198
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
 NO. OF DATA RECS IN DATA SET:      698
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

 TOT. NO. OF OBS RECS:      598
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
 RAW OUTPUT FILE (FILE): m11.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1020.18449136136        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.4079E+02 -6.4453E+01 -9.9681E+01  1.7308E+02  1.6317E+02  5.9994E+01 -5.3147E+01 -2.5873E+01 -6.1398E+01 -3.6748E+00
            -2.6609E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1911.40948347924        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.4910E-01  1.2075E+00  1.1280E+00  8.9049E-01  1.0574E+00  8.2538E-01  1.1035E+00  9.5682E-01  9.5808E-01  9.0953E-01
             2.4393E+00
 PARAMETER:  4.7758E-02  2.8854E-01  2.2046E-01 -1.5987E-02  1.5578E-01 -9.1910E-02  1.9846E-01  5.5865E-02  5.7174E-02  5.1782E-03
             9.9172E-01
 GRADIENT:   7.4854E+01  8.9193E+00 -7.2181E+00  7.5775E+00  1.2232E+01 -2.9493E+01  3.2935E-01  1.9370E+00 -1.6053E-01 -5.0327E+00
             2.7283E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1915.37079145687        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  9.4212E-01  1.2890E+00  1.5851E+00  8.7326E-01  1.2489E+00  8.7592E-01  1.0083E+00  7.2072E-01  9.3939E-01  1.2364E+00
             2.4155E+00
 PARAMETER:  4.0380E-02  3.5384E-01  5.6065E-01 -3.5520E-02  3.2225E-01 -3.2477E-02  1.0822E-01 -2.2751E-01  3.7480E-02  3.1219E-01
             9.8191E-01
 GRADIENT:   5.5584E+01  3.7283E+01 -8.8937E+00  3.0457E+01  2.2095E+01 -4.5167E+00 -4.0665E+00 -1.2040E-01 -6.1134E+00  8.4751E+00
             2.3582E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1917.89656582603        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      311
 NPARAMETR:  9.4596E-01  1.3515E+00  2.1511E+00  8.3279E-01  1.3595E+00  9.1835E-01  9.7849E-01  1.3693E+00  1.0270E+00  1.2725E+00
             2.3712E+00
 PARAMETER:  4.4443E-02  4.0121E-01  8.6599E-01 -8.2975E-02  4.0711E-01  1.4825E-02  7.8254E-02  4.1430E-01  1.2662E-01  3.4096E-01
             9.6340E-01
 GRADIENT:   1.8293E+00 -2.8732E+00 -3.0118E-01  1.2628E+00 -1.9496E+00  5.1088E+00 -2.1851E-02 -7.9388E-01 -1.1668E+00 -9.2488E-01
            -4.3680E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1918.61061857466        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      486
 NPARAMETR:  9.4597E-01  1.6329E+00  2.2642E+00  6.5395E-01  1.4853E+00  9.1294E-01  7.7485E-01  1.5746E+00  1.3466E+00  1.3987E+00
             2.3696E+00
 PARAMETER:  4.4455E-02  5.9033E-01  9.1722E-01 -3.2472E-01  4.9564E-01  8.9165E-03 -1.5509E-01  5.5402E-01  3.9756E-01  4.3555E-01
             9.6274E-01
 GRADIENT:   1.1411E-01  1.1906E+01  1.5852E+00  7.1385E+00 -6.2050E+00  2.9723E+00 -1.4288E+00  1.3896E-01 -1.4732E-01  1.8620E-01
            -2.3906E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1919.31609311580        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      667
 NPARAMETR:  9.4583E-01  1.8944E+00  1.0408E+00  4.7024E-01  1.4551E+00  9.0044E-01  7.6975E-01  7.7418E-01  1.5862E+00  1.3433E+00
             2.3717E+00
 PARAMETER:  4.4305E-02  7.3888E-01  1.4001E-01 -6.5451E-01  4.7507E-01 -4.8751E-03 -1.6168E-01 -1.5595E-01  5.6131E-01  3.9512E-01
             9.6362E-01
 GRADIENT:  -2.3688E+00  7.8340E+00 -1.8033E+00  6.1031E+00  1.5919E+00 -2.5022E+00 -4.4866E-01  3.0225E-01  3.0035E-01  1.1392E+00
             9.5820E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1919.49947559485        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      843
 NPARAMETR:  9.4659E-01  2.0006E+00  1.0407E+00  3.9463E-01  1.5182E+00  9.0807E-01  7.3928E-01  5.1516E-01  1.8028E+00  1.3924E+00
             2.3679E+00
 PARAMETER:  4.5108E-02  7.9344E-01  1.3988E-01 -8.2980E-01  5.1751E-01  3.5676E-03 -2.0208E-01 -5.6327E-01  6.8933E-01  4.3104E-01
             9.6200E-01
 GRADIENT:   2.8552E-01  2.8244E+00 -6.6943E-02  1.2260E+00 -4.0098E-01  7.9955E-01  2.0442E-01  1.1527E-01  2.6129E-01  1.2199E-01
            -7.1128E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1919.55229106779        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1024
 NPARAMETR:  9.4654E-01  1.9998E+00  1.0404E+00  3.9181E-01  1.5200E+00  9.0527E-01  7.3737E-01  1.9502E-01  1.8052E+00  1.3929E+00
             2.3692E+00
 PARAMETER:  4.5063E-02  7.9305E-01  1.3964E-01 -8.3697E-01  5.1868E-01  4.8337E-04 -2.0467E-01 -1.5346E+00  6.9067E-01  4.3139E-01
             9.6254E-01
 GRADIENT:   3.4050E-01 -2.5740E+00  3.2311E-02 -6.5460E-01  1.2576E-01 -2.6881E-01  7.2585E-02  1.6085E-02 -3.0318E-01 -1.7405E-01
            -4.3436E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1919.55711952989        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1199
 NPARAMETR:  9.4639E-01  2.0036E+00  1.0399E+00  3.9084E-01  1.5213E+00  9.0600E-01  7.3463E-01  9.3620E-02  1.8222E+00  1.3957E+00
             2.3692E+00
 PARAMETER:  4.4903E-02  7.9495E-01  1.3911E-01 -8.3946E-01  5.1955E-01  1.2813E-03 -2.0839E-01 -2.2685E+00  7.0006E-01  4.3342E-01
             9.6254E-01
 GRADIENT:  -1.7711E-01  1.3339E-01 -7.5190E-02  4.6603E-01  3.9551E-02  5.5197E-03 -5.7689E-02  3.9003E-03  1.2051E-01  6.8451E-02
             2.6548E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1919.56073696533        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1384
 NPARAMETR:  9.4652E-01  2.0018E+00  1.0426E+00  3.9111E-01  1.5214E+00  9.0600E-01  7.3476E-01  1.6586E-02  1.8217E+00  1.3959E+00
             2.3690E+00
 PARAMETER:  4.5032E-02  7.9403E-01  1.4169E-01 -8.3876E-01  5.1961E-01  1.2859E-03 -2.0821E-01 -3.9992E+00  6.9977E-01  4.3352E-01
             9.6245E-01
 GRADIENT:   2.3475E-01 -1.6149E+00 -7.6532E-02 -1.4380E-02  2.2680E-01  2.0061E-02  1.2368E-02  1.2385E-04  1.2029E-01  6.7193E-02
            -7.9618E-04

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1919.56159287581        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1565
 NPARAMETR:  9.4652E-01  2.0005E+00  1.0453E+00  3.9171E-01  1.5214E+00  9.0601E-01  7.3469E-01  1.0000E-02  1.8205E+00  1.3960E+00
             2.3690E+00
 PARAMETER:  4.5033E-02  7.9339E-01  1.4434E-01 -8.3723E-01  5.1962E-01  1.2904E-03 -2.0831E-01 -4.6635E+00  6.9911E-01  4.3361E-01
             9.6247E-01
 GRADIENT:   2.5593E-01 -2.1054E+00 -8.1163E-02 -1.3332E-01  3.2345E-01  2.6505E-02  6.9118E-03  0.0000E+00  1.1733E-01  7.1588E-02
             4.8918E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1919.56208106560        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1752
 NPARAMETR:  9.4652E-01  1.9994E+00  1.0455E+00  3.9237E-01  1.5213E+00  9.0601E-01  7.3467E-01  1.0000E-02  1.8191E+00  1.3961E+00
             2.3690E+00
 PARAMETER:  4.5032E-02  7.9282E-01  1.4452E-01 -8.3555E-01  5.1959E-01  1.2899E-03 -2.0834E-01 -4.6635E+00  6.9836E-01  4.3367E-01
             9.6248E-01
 GRADIENT:   2.4975E-01 -2.4225E+00 -1.3342E-01 -1.2288E-01  5.9639E-01  2.5725E-02 -2.4485E-02  0.0000E+00  1.4074E-01  1.2102E-01
             9.5268E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1919.56299763605        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1932
 NPARAMETR:  9.4650E-01  1.9984E+00  1.0474E+00  3.9361E-01  1.5207E+00  9.0598E-01  7.3474E-01  1.0000E-02  1.8172E+00  1.3957E+00
             2.3689E+00
 PARAMETER:  4.5011E-02  7.9235E-01  1.4631E-01 -8.3239E-01  5.1917E-01  1.2620E-03 -2.0824E-01 -4.6635E+00  6.9729E-01  4.3341E-01
             9.6242E-01
 GRADIENT:   1.6776E-01 -1.3487E+00 -1.3265E-01  2.1324E-01  4.9968E-01  6.7596E-03 -5.0428E-02  0.0000E+00  1.7819E-01  1.1590E-01
            -1.8758E-02

0ITERATION NO.:   64    OBJECTIVE VALUE:  -1919.56370073367        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     2061
 NPARAMETR:  9.4653E-01  1.9974E+00  1.0522E+00  3.9341E-01  1.5202E+00  9.0603E-01  7.3501E-01  1.0000E-02  1.8149E+00  1.3954E+00
             2.3690E+00
 PARAMETER:  4.5043E-02  7.9186E-01  1.5086E-01 -8.3290E-01  5.1882E-01  1.3122E-03 -2.0787E-01 -4.6635E+00  6.9603E-01  4.3316E-01
             9.6245E-01
 GRADIENT:   3.3805E-01 -2.4850E+00  9.1807E-03 -3.9955E-01 -6.8048E-02  4.5397E-02  2.1238E-02  0.0000E+00  2.8068E-02  1.4207E-02
             3.0182E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2061
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.4633E-04 -2.7909E-02 -6.0534E-05  1.9376E-02 -2.6793E-02
 SE:             2.9317E-02  2.2334E-02  3.2731E-05  1.8870E-02  2.4431E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9057E-01  2.1145E-01  6.4398E-02  3.0452E-01  2.7279E-01

 ETASHRINKSD(%)  1.7842E+00  2.5178E+01  9.9890E+01  3.6783E+01  1.8152E+01
 ETASHRINKVR(%)  3.5366E+00  4.4016E+01  1.0000E+02  6.0036E+01  3.3009E+01
 EBVSHRINKSD(%)  1.9091E+00  2.3506E+01  9.9900E+01  4.1148E+01  1.6367E+01
 EBVSHRINKVR(%)  3.7818E+00  4.1487E+01  1.0000E+02  6.5365E+01  3.0056E+01
 RELATIVEINF(%)  9.6005E+01  4.1827E+00  2.8426E-05  2.5046E+00  2.4756E+01
 EPSSHRINKSD(%)  2.3806E+01
 EPSSHRINKVR(%)  4.1945E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          598
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1099.0504857127885     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1919.5637007336661     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -820.51321502087762     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    37.87
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1919.564       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.47E-01  2.00E+00  1.05E+00  3.93E-01  1.52E+00  9.06E-01  7.35E-01  1.00E-02  1.81E+00  1.40E+00  2.37E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       37.914
Stop Time:
Fri Oct  1 19:50:03 CDT 2021

Sat Oct  2 00:46:33 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat86.csv ignore=@
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
Current Date:        2 OCT 2021
Days until program expires : 197
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
 RAW OUTPUT FILE (FILE): m86.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -984.200340155541        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5359E+02  1.6978E+01  5.2479E+01 -1.2750E+01  1.0521E+02  3.8801E+01 -3.7264E+01 -3.4812E+01 -6.6724E+01 -6.5755E+01
            -1.1652E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1394.00889368964        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0647E+00  1.0836E+00  9.3209E-01  1.0488E+00  9.3984E-01  1.0204E+00  8.9348E-01  1.0438E+00  8.4191E-01  8.1373E-01
             2.3537E+00
 PARAMETER:  1.6272E-01  1.8033E-01  2.9679E-02  1.4761E-01  3.7956E-02  1.2018E-01 -1.2629E-02  1.4291E-01 -7.2080E-02 -1.0612E-01
             9.5600E-01
 GRADIENT:   1.5146E+02  4.6601E+01  2.4475E+01  2.9741E+01 -1.5516E+01  2.5513E+01 -7.7370E+00 -7.5525E+00 -2.4713E+01 -3.7368E-01
            -1.2359E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1401.84351757088        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0433E+00  1.0729E+00  8.3363E-01  1.0306E+00  8.5041E-01  9.8602E-01  1.2106E+00  1.2410E+00  9.2335E-01  3.9425E-01
             2.4904E+00
 PARAMETER:  1.4241E-01  1.7036E-01 -8.1968E-02  1.3012E-01 -6.2036E-02  8.5921E-02  2.9110E-01  3.1594E-01  2.0255E-02 -8.3076E-01
             1.0124E+00
 GRADIENT:   8.2096E+01  4.5250E+01  3.3901E+01 -1.7636E+00 -4.4623E+01  1.2765E+01  1.9919E+01 -1.2839E+00  2.4539E+00  5.5735E-01
            -7.9370E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1410.50028647724        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      253
 NPARAMETR:  1.0116E+00  9.6374E-01  3.8570E-01  1.0293E+00  5.6537E-01  9.5363E-01  1.0960E+00  6.8911E-01  8.7867E-01  3.3878E-01
             2.6029E+00
 PARAMETER:  1.1154E-01  6.3069E-02 -8.5269E-01  1.2890E-01 -4.7028E-01  5.2520E-02  1.9167E-01 -2.7235E-01 -2.9343E-02 -9.8239E-01
             1.0566E+00
 GRADIENT:  -9.7731E+01  1.1250E+01 -1.7770E+01  4.6992E+01  2.5635E+01 -1.0200E+01  9.8747E+00  3.6107E+00  3.1717E+00  3.7863E+00
            -2.4064E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1416.81732252327        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      429
 NPARAMETR:  1.0528E+00  9.0386E-01  2.8349E-01  9.8365E-01  4.6475E-01  9.6897E-01  1.0110E+00  4.8728E-01  8.4323E-01  2.1032E-01
             2.7250E+00
 PARAMETER:  1.5142E-01 -1.0835E-03 -1.1606E+00  8.3512E-02 -6.6626E-01  6.8478E-02  1.1092E-01 -6.1891E-01 -7.0515E-02 -1.4591E+00
             1.1025E+00
 GRADIENT:   1.8746E+00  1.4412E+01  7.1538E+00  1.9507E+00 -1.7699E+01 -3.4167E-01  1.9556E+00  7.1982E-01  4.2508E-01  1.6865E+00
             7.9163E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1417.67069344855        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      606
 NPARAMETR:  1.0487E+00  8.3206E-01  2.6995E-01  1.0005E+00  4.3396E-01  9.7410E-01  1.0696E+00  4.5120E-01  8.3958E-01  7.6925E-02
             2.6628E+00
 PARAMETER:  1.4760E-01 -8.3853E-02 -1.2095E+00  1.0049E-01 -7.3480E-01  7.3757E-02  1.6726E-01 -6.9585E-01 -7.4855E-02 -2.4649E+00
             1.0794E+00
 GRADIENT:  -3.5496E+00  1.5049E+00  1.7283E+00  6.5443E-01 -2.9014E+00  3.0716E-01  5.1654E-01  4.7527E-03  2.2083E-01  1.7550E-01
            -9.8761E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1417.82098192063        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      781
 NPARAMETR:  1.0478E+00  9.0364E-01  2.5564E-01  9.5743E-01  4.5035E-01  9.7118E-01  9.9324E-01  5.2975E-01  8.5032E-01  1.0000E-02
             2.6768E+00
 PARAMETER:  1.4671E-01 -1.3289E-03 -1.2640E+00  5.6498E-02 -6.9773E-01  7.0758E-02  9.3218E-02 -5.3535E-01 -6.2142E-02 -4.5272E+00
             1.0846E+00
 GRADIENT:  -4.9813E-01 -1.4354E-01 -2.3062E-01 -1.2645E-01 -5.6728E-01  1.3214E-01  8.3423E-01  4.4717E-01  1.9364E-02  1.1998E-03
             7.0121E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1418.10475976010        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      962
 NPARAMETR:  1.0465E+00  1.1554E+00  2.3867E-01  8.3897E-01  5.4040E-01  9.6248E-01  8.2367E-01  3.9913E-01  9.1335E-01  1.7660E-02
             2.7486E+00
 PARAMETER:  1.4544E-01  2.4449E-01 -1.3327E+00 -7.5583E-02 -5.1545E-01  6.1760E-02 -9.3986E-02 -8.1846E-01  9.3601E-03 -3.9365E+00
             1.1111E+00
 GRADIENT:   1.6467E+00  9.7095E+00  2.4094E+00  6.9649E+00 -8.2579E+00 -5.9199E-01 -1.5161E+00 -2.3124E-01 -9.4903E-01  1.1911E-02
            -1.1101E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1419.21658323933        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1140
 NPARAMETR:  1.0321E+00  1.5158E+00  1.7902E-01  6.3642E-01  6.6889E-01  9.6287E-01  7.0274E-01  1.3156E-01  1.1096E+00  2.0508E-02
             2.7902E+00
 PARAMETER:  1.3161E-01  5.1596E-01 -1.6203E+00 -3.5189E-01 -3.0213E-01  6.2162E-02 -2.5276E-01 -1.9283E+00  2.0396E-01 -3.7869E+00
             1.1261E+00
 GRADIENT:  -2.1385E+01  3.1875E+01  7.9036E+00  5.8038E+00 -2.5770E+01  2.1293E+00  1.7487E-01 -5.3779E-02  1.9778E+00  1.6004E-02
             5.2222E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1425.94792016847        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1317
 NPARAMETR:  1.0379E+00  2.0678E+00  7.3429E-02  3.2472E-01  9.4932E-01  9.4782E-01  6.0338E-01  1.0000E-02  1.6284E+00  1.0000E-02
             2.8313E+00
 PARAMETER:  1.3718E-01  8.2648E-01 -2.5114E+00 -1.0248E+00  4.7987E-02  4.6411E-02 -4.0521E-01 -5.5083E+00  5.8758E-01 -6.7188E+00
             1.1407E+00
 GRADIENT:  -8.3521E+00  2.7562E+01  1.4445E+00  1.5925E+01  1.4382E+00 -1.8783E+00  8.4568E-01  0.0000E+00 -3.9481E+00  0.0000E+00
            -4.6287E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1431.06481233241        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1499
 NPARAMETR:  1.0316E+00  2.3299E+00  3.6113E-02  2.0297E-01  1.1213E+00  9.5625E-01  5.8687E-01  1.0000E-02  2.3237E+00  1.0000E-02
             2.8180E+00
 PARAMETER:  1.3110E-01  9.4583E-01 -3.2211E+00 -1.4947E+00  2.1445E-01  5.5261E-02 -4.3294E-01 -8.3841E+00  9.4316E-01 -7.7922E+00
             1.1360E+00
 GRADIENT:  -2.8593E+01  9.1684E+01  8.7932E-01  1.7890E+01 -8.3233E+00  8.7092E-01  1.1632E+00  0.0000E+00 -8.7407E+00  0.0000E+00
            -4.5755E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1432.25558717913        NO. OF FUNC. EVALS.: 123
 CUMULATIVE NO. OF FUNC. EVALS.:     1622
 NPARAMETR:  1.0375E+00  2.2559E+00  3.6475E-02  2.0198E-01  1.1129E+00  9.4930E-01  5.8003E-01  1.0000E-02  2.3169E+00  1.0000E-02
             2.8279E+00
 PARAMETER:  1.3682E-01  9.1357E-01 -3.2111E+00 -1.4996E+00  2.0694E-01  4.7965E-02 -4.4467E-01 -8.3841E+00  9.4024E-01 -7.7922E+00
             1.1395E+00
 GRADIENT:  -6.5437E+00 -3.7969E+01 -6.5385E-01  9.3295E+00  2.1095E+01  3.0433E-01  1.4465E+00  0.0000E+00 -6.4562E+00  0.0000E+00
             2.0580E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1432.73170066409        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1801
 NPARAMETR:  1.0408E+00  2.2664E+00  3.6379E-02  1.9939E-01  1.0966E+00  9.4824E-01  5.7639E-01  1.0000E-02  2.3703E+00  1.0000E-02
             2.8265E+00
 PARAMETER:  1.4003E-01  9.1820E-01 -3.2138E+00 -1.5125E+00  1.9219E-01  4.6848E-02 -4.5096E-01 -8.3841E+00  9.6302E-01 -7.7922E+00
             1.1390E+00
 GRADIENT:   7.6469E-01 -4.6358E+00  1.4088E+00  6.3980E+00 -2.3246E+00 -1.7209E-03  1.5883E-01  0.0000E+00 -5.0870E+00  0.0000E+00
             1.9593E+00

0ITERATION NO.:   61    OBJECTIVE VALUE:  -1432.73170066409        NO. OF FUNC. EVALS.:  31
 CUMULATIVE NO. OF FUNC. EVALS.:     1832
 NPARAMETR:  1.0407E+00  2.2607E+00  3.6704E-02  1.9855E-01  1.0987E+00  9.4825E-01  5.7611E-01  1.0000E-02  2.3640E+00  1.0000E-02
             2.8354E+00
 PARAMETER:  1.4003E-01  9.1820E-01 -3.2138E+00 -1.5125E+00  1.9219E-01  4.6848E-02 -4.5096E-01 -8.3841E+00  9.6302E-01 -7.7922E+00
             1.1390E+00
 GRADIENT:   4.1608E-01  1.5080E+03 -4.1695E+02  4.6159E+02 -1.8164E+00 -1.0839E-02  1.4445E-01  0.0000E+00  1.4172E+03  0.0000E+00
            -1.2272E+03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1832
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.6656E-04 -1.7446E-02  9.0616E-05  4.6343E-03 -1.6004E-04
 SE:             2.9026E-02  2.4221E-02  4.9301E-05  1.7402E-02  1.8214E-04
 N:                     100         100         100         100         100

 P VAL.:         9.9267E-01  4.7136E-01  6.6062E-02  7.9000E-01  3.7959E-01

 ETASHRINKSD(%)  2.7608E+00  1.8857E+01  9.9835E+01  4.1700E+01  9.9390E+01
 ETASHRINKVR(%)  5.4454E+00  3.4158E+01  1.0000E+02  6.6011E+01  9.9996E+01
 EBVSHRINKSD(%)  2.7180E+00  1.9843E+01  9.9857E+01  3.9606E+01  9.9303E+01
 EBVSHRINKVR(%)  5.3621E+00  3.5748E+01  1.0000E+02  6.3526E+01  9.9995E+01
 RELATIVEINF(%)  9.1003E+01  1.4871E+01  1.2337E-04  9.9168E+00  1.1480E-03
 EPSSHRINKSD(%)  2.6422E+01
 EPSSHRINKVR(%)  4.5862E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1432.7317006640872     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -697.58087410034898     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.18
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1432.732       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  2.27E+00  3.64E-02  1.99E-01  1.10E+00  9.48E-01  5.76E-01  1.00E-02  2.37E+00  1.00E-02  2.83E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.217
Stop Time:
Sat Oct  2 00:46:59 CDT 2021

Fri Oct  1 15:46:36 CDT 2021
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
$DATA ../../../../data/SD2/D/dat56.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E22.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m56.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   22093.6717942801        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7951E+02  4.0787E+02 -4.5945E+01  2.3416E+02  2.2797E+02 -2.4837E+03 -8.3406E+02 -7.8907E+01 -1.6080E+03 -5.9771E+02
            -4.2342E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -595.700114590889        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.4034E+00  9.3994E-01  8.8866E-01  1.6639E+00  1.4502E+00  2.7765E+00  1.2298E+00  9.6414E-01  1.5310E+00  1.0657E+00
             1.3677E+01
 PARAMETER:  4.3891E-01  3.8059E-02 -1.8042E-02  6.0917E-01  4.7171E-01  1.1212E+00  3.0686E-01  6.3477E-02  5.2592E-01  1.6366E-01
             2.7157E+00
 GRADIENT:   1.6205E+01  2.1383E+01  9.1079E+00 -1.5351E+01 -8.0400E+00  8.4492E+01 -1.8242E-01 -1.8879E+00 -5.3483E+01  1.1417E+00
             1.3132E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -639.595447086526        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.3894E+00  6.6341E-01  1.2986E+00  2.2607E+00  7.9512E+00  2.6991E+00  4.5139E+00  3.2806E-01  2.6812E+00  1.1974E+00
             1.2268E+01
 PARAMETER:  4.2885E-01 -3.1036E-01  3.6126E-01  9.1568E-01  2.1733E+00  1.0929E+00  1.6072E+00 -1.0145E+00  1.0863E+00  2.8013E-01
             2.6070E+00
 GRADIENT:   2.5823E+01  1.2835E+01  1.4391E+01  5.9447E+01 -7.4503E-01  4.0242E+01  1.0530E+01 -5.9068E-01  4.1094E+01  1.6526E-02
             1.1210E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -690.305492731715        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  1.0698E+00  4.4532E-01  6.9234E-01  1.4796E+00  8.0988E+00  2.1526E+00  5.2158E-01  2.0309E+00  1.7445E+00  7.9807E+00
             1.1303E+01
 PARAMETER:  1.6745E-01 -7.0896E-01 -2.6768E-01  4.9175E-01  2.1917E+00  8.6667E-01 -5.5089E-01  8.0849E-01  6.5649E-01  2.1770E+00
             2.5251E+00
 GRADIENT:  -4.0693E+01  4.1895E+01  7.9656E+00 -2.5098E+01 -1.0562E+01  1.9113E+00  2.6405E-01 -6.0733E+00  1.2872E+01  8.3461E-01
             1.0126E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -774.417119502796        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  7.6496E-01  5.5155E-02  9.9340E-02  8.2620E-01  3.4122E+01  1.7609E+00  2.0876E-02  2.4959E+00  5.9610E-01  9.2654E+00
             9.1972E+00
 PARAMETER: -1.6793E-01 -2.7976E+00 -2.2092E+00 -9.0914E-02  3.6299E+00  6.6582E-01 -3.7691E+00  1.0146E+00 -4.1734E-01  2.3263E+00
             2.3189E+00
 GRADIENT:   1.9270E+01  1.7562E+01 -3.3473E+01  9.0029E+01 -4.1436E-01  4.6714E+00  1.0523E-03  3.3757E+01  1.3417E+01  7.9813E-02
            -8.8278E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -788.699086666990        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      423
 NPARAMETR:  7.3371E-01  4.1493E-02  8.8141E-02  7.0975E-01  4.4063E+01  1.7659E+00  1.0000E-02  1.7859E+00  5.6426E-01  7.6720E+00
             9.1736E+00
 PARAMETER: -2.0965E-01 -3.0822E+00 -2.3288E+00 -2.4285E-01  3.8856E+00  6.6868E-01 -4.5265E+00  6.7993E-01 -4.7224E-01  2.1376E+00
             2.3163E+00
 GRADIENT:   2.1248E+01  5.0322E-01 -2.8484E+01  4.5812E+01  3.0304E-02 -2.1675E+01  1.5391E-05  8.5236E+00  1.3330E+01  1.2318E-02
            -1.0451E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -801.635662929898        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      598
 NPARAMETR:  5.8210E-01  1.4438E-02  4.7101E-02  4.6459E-01  5.8321E+01  1.8479E+00  1.0000E-02  1.2607E+00  3.0749E-01  5.2846E+00
             9.9469E+00
 PARAMETER: -4.4111E-01 -4.1379E+00 -2.9555E+00 -6.6659E-01  4.1660E+00  7.1402E-01 -7.6768E+00  3.3166E-01 -1.0793E+00  1.7648E+00
             2.3973E+00
 GRADIENT:  -5.6716E+00 -1.5427E-01 -3.8481E+00  4.4902E+00  1.0647E-02 -1.9368E+00  0.0000E+00  2.0413E-01  2.9016E+00  3.1285E-04
            -7.8021E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -802.761531455738        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      775
 NPARAMETR:  6.5306E-01  2.1104E-02  6.3623E-02  5.6523E-01  2.9978E+01  1.9039E+00  1.0000E-02  1.4602E+00  1.4037E-01  3.3807E+00
             1.0099E+01
 PARAMETER: -3.2609E-01 -3.7583E+00 -2.6548E+00 -4.7053E-01  3.5005E+00  7.4388E-01 -4.5890E+00  4.7856E-01 -1.8635E+00  1.3181E+00
             2.4125E+00
 GRADIENT:   1.9681E+00 -3.5794E-01  5.9610E-01 -1.0388E+00  4.3906E-02  7.4169E+00  0.0000E+00  1.4889E+00  7.1784E-01  5.8252E-04
             4.7241E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -803.257688190010        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      950
 NPARAMETR:  6.4598E-01  1.8973E-02  6.1928E-02  5.5554E-01  1.4897E+01  1.8631E+00  4.6526E-01  1.4405E+00  2.3183E-02  1.3873E+00
             1.0050E+01
 PARAMETER: -3.3699E-01 -3.8647E+00 -2.6818E+00 -4.8782E-01  2.8011E+00  7.2226E-01 -6.6515E-01  4.6497E-01 -3.6643E+00  4.2734E-01
             2.4076E+00
 GRADIENT:   6.8319E-01 -2.9193E-01  2.5439E-01  4.1710E-01  8.7134E-02 -1.0320E-01  7.5429E-04 -3.4338E-01  1.8814E-02  3.6672E-04
             9.0556E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -803.307561072740        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1115
 NPARAMETR:  6.4290E-01  1.8238E-02  6.1023E-02  5.5069E-01  9.8864E+00  1.8630E+00  1.3694E+00  1.4340E+00  1.2494E-02  1.0482E+00
             1.0049E+01
 PARAMETER: -3.4176E-01 -3.9043E+00 -2.6965E+00 -4.9659E-01  2.3912E+00  7.2218E-01  4.1440E-01  4.6049E-01 -4.2825E+00  1.4709E-01
             2.4075E+00
 GRADIENT:   2.4499E+01 -2.2002E-01  4.2356E+01  1.2253E+01 -1.9062E-03  1.7442E+01  9.7159E-03  1.5236E+00  7.4148E-03  6.7635E-03
             2.4610E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -803.437798325409        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:     1189
 NPARAMETR:  6.4515E-01  2.5670E-02  6.0891E-02  5.4929E-01  1.0739E+01  1.8633E+00  1.9036E-02  1.4405E+00  1.0000E-02  7.8811E-01
             1.0057E+01
 PARAMETER: -3.3827E-01 -3.5624E+00 -2.6987E+00 -4.9914E-01  2.4738E+00  7.2234E-01 -3.8614E+00  4.6500E-01 -7.6553E+00 -1.3811E-01
             2.4083E+00
 GRADIENT:   2.5241E+01  2.2157E-01  4.2314E+01  1.0986E+01 -6.4889E-02  1.8036E+01  7.8493E-05  1.6144E+00  0.0000E+00  9.9811E-03
             2.4937E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -803.443680918902        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:     1346
 NPARAMETR:  6.4457E-01  2.6415E-02  6.0976E-02  5.5000E-01  1.1971E+01  1.8606E+00  1.3662E-02  1.4421E+00  1.0000E-02  7.0123E-01
             1.0048E+01
 PARAMETER: -3.3917E-01 -3.5338E+00 -2.6973E+00 -4.9785E-01  2.5825E+00  7.2089E-01 -4.1932E+00  4.6611E-01 -8.2401E+00 -2.5492E-01
             2.4074E+00
 GRADIENT:  -3.5712E-02  1.1205E-02 -2.2022E-04  1.1628E-01 -7.9678E-03 -3.6184E-02  4.2339E-05  4.2926E-03  0.0000E+00  4.0440E-03
            -6.8275E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -803.447907419077        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1530
 NPARAMETR:  6.4458E-01  2.6494E-02  6.0854E-02  5.4950E-01  1.2065E+01  1.8620E+00  1.0000E-02  1.4413E+00  1.0000E-02  3.3355E-01
             1.0049E+01
 PARAMETER: -3.3915E-01 -3.5309E+00 -2.6993E+00 -4.9876E-01  2.5903E+00  7.2166E-01 -4.5266E+00  4.6556E-01 -8.3890E+00 -9.9796E-01
             2.4075E+00
 GRADIENT:   2.5307E-01  1.9968E-02 -3.9593E-01  5.1604E-01  5.1101E-03  2.3737E-01  6.4165E-06  3.1665E-02  0.0000E+00  9.1348E-04
            -5.4510E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -803.451571859901        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1706
 NPARAMETR:  6.4413E-01  2.6388E-02  6.0700E-02  5.4845E-01  1.1847E+01  1.8628E+00  1.0000E-02  1.4401E+00  1.0000E-02  1.0000E-02
             1.0050E+01
 PARAMETER: -3.3985E-01 -3.5349E+00 -2.7018E+00 -5.0065E-01  2.5721E+00  7.2206E-01 -4.5718E+00  4.6472E-01 -8.3890E+00 -4.9025E+00
             2.4075E+00
 GRADIENT:   3.3648E-01  2.6840E-02 -9.6985E-02 -1.1730E-01 -2.1163E-03  3.9985E-01  0.0000E+00  9.6650E-02  0.0000E+00  0.0000E+00
             5.0555E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1706
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.0660E-03 -2.7520E-05  8.0962E-03 -4.1936E-04  3.2560E-06
 SE:             2.9019E-02  6.1335E-06  2.3236E-02  2.3983E-04  1.7162E-06
 N:                     100         100         100         100         100

 P VAL.:         7.8104E-01  7.2380E-06  7.2751E-01  8.0360E-02  5.7797E-02

 ETASHRINKSD(%)  2.7838E+00  9.9979E+01  2.2156E+01  9.9197E+01  9.9994E+01
 ETASHRINKVR(%)  5.4901E+00  1.0000E+02  3.9404E+01  9.9994E+01  1.0000E+02
 EBVSHRINKSD(%)  2.8994E+00  9.9965E+01  2.1407E+01  9.9130E+01  9.9992E+01
 EBVSHRINKVR(%)  5.7147E+00  1.0000E+02  3.8231E+01  9.9992E+01  1.0000E+02
 RELATIVEINF(%)  1.4029E+01  6.4408E-07  1.8116E+00  1.4803E-04  2.3159E-08
 EPSSHRINKSD(%)  9.0429E+00
 EPSSHRINKVR(%)  1.7268E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -803.45157185990058     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       115.48696134477211     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    31.54
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -803.452       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         6.44E-01  2.64E-02  6.07E-02  5.48E-01  1.18E+01  1.86E+00  1.00E-02  1.44E+00  1.00E-02  1.00E-02  1.00E+01
 


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
 #CPUT: Total CPU Time in Seconds,       31.584
Stop Time:
Fri Oct  1 15:47:09 CDT 2021

Sat Oct  2 05:48:51 CDT 2021
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
$DATA ../../../../data/SD4/D/dat62.csv ignore=@
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
 (E4.0,E3.0,E22.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m62.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   14501.4921362690        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.6428E+02  3.0873E+02 -8.1651E+01  1.4941E+02  3.7380E+02 -1.7904E+03 -7.9529E+02 -6.6466E+01 -1.5319E+03 -5.9956E+02
            -2.7255E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -622.521740335127        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.4214E+00  1.0166E+00  9.5186E-01  1.5293E+00  1.2381E+00  1.9351E+00  1.1985E+00  9.7330E-01  1.3487E+00  1.0910E+00
             1.4469E+01
 PARAMETER:  4.5162E-01  1.1649E-01  5.0662E-02  5.2482E-01  3.1359E-01  7.6016E-01  2.8107E-01  7.2934E-02  3.9914E-01  1.8711E-01
             2.7720E+00
 GRADIENT:   2.0065E+01  1.3500E+01 -3.5296E+00  1.7892E+01 -6.6199E+00  4.6987E+01  4.3387E-01  4.4354E+00  6.7066E+00  3.0238E+00
             1.0376E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -632.091154971314        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.3928E+00  9.0848E-01  1.2143E+00  1.6926E+00  2.7181E+00  1.7114E+00  2.7561E+00  5.3919E-01  1.3467E+00  4.6351E+00
             1.3148E+01
 PARAMETER:  4.3135E-01  4.0134E-03  2.9414E-01  6.2628E-01  1.0999E+00  6.3731E-01  1.1138E+00 -5.1769E-01  3.9767E-01  1.6337E+00
             2.6763E+00
 GRADIENT:   3.0271E+01  2.2250E+01 -3.5802E+00  4.8224E+01 -9.6132E+00 -3.3048E+00  4.3769E+00  4.0001E-01  9.9514E+00 -2.5314E-02
             5.0424E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -654.094422746997        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0978E+00  3.3191E-01  8.5716E-01  1.4570E+00  4.2963E+00  1.4863E+00  1.4605E+00  4.7431E-02  5.2600E-01  8.7686E+00
             1.2735E+01
 PARAMETER:  1.9327E-01 -1.0029E+00 -5.4136E-02  4.7641E-01  1.5578E+00  4.9627E-01  4.7880E-01 -2.9485E+00 -5.4245E-01  2.2712E+00
             2.6444E+00
 GRADIENT:  -3.7255E+01  5.1724E+00  7.4745E+00 -1.1865E+01 -1.1105E+01  3.1699E+00  1.1722E+00 -9.7699E-05  9.3248E+00  2.1326E+01
             5.1332E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -670.351446142938        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  1.0600E+00  5.2357E-02  5.1421E-01  1.3946E+00  4.9666E+00  1.3959E+00  1.4740E+00  1.0000E-02  1.0290E-01  6.1455E+00
             1.1745E+01
 PARAMETER:  1.5824E-01 -2.8497E+00 -5.6512E-01  4.3262E-01  1.7027E+00  4.3352E-01  4.8799E-01 -5.6380E+00 -2.1740E+00  1.9157E+00
             2.5635E+00
 GRADIENT:   9.9271E+00  2.1104E+00  6.4941E-02  2.3617E+01 -8.5909E+00 -2.7565E+01  1.9130E-02  0.0000E+00  3.1506E-01  1.2481E+01
            -2.6657E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -741.559241292608        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      374
 NPARAMETR:  5.4574E-01  1.0000E-02  4.1095E-02  4.4929E-01  5.1006E+00  1.6362E+00  6.2686E-01  1.0000E-02  1.0000E-02  1.4776E+00
             9.5685E+00
 PARAMETER: -5.0561E-01 -9.2184E+00 -3.0919E+00 -7.0009E-01  1.7294E+00  5.9240E-01 -3.6704E-01 -2.1137E+01 -9.8454E+00  4.9044E-01
             2.3585E+00
 GRADIENT:  -3.9607E+00  0.0000E+00 -5.7440E+01  1.7783E+02 -8.2292E+01 -1.6769E+01  3.2147E-02  0.0000E+00  0.0000E+00  3.7030E+01
            -1.1129E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -770.937056450150        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      532
 NPARAMETR:  5.6833E-01  1.0000E-02  3.2058E-02  3.5708E-01  6.6287E+00  1.9052E+00  2.7970E-01  1.0000E-02  1.0000E-02  1.4790E+00
             1.0816E+01
 PARAMETER: -4.6506E-01 -8.8771E+00 -3.3402E+00 -9.2979E-01  1.9914E+00  7.4457E-01 -1.1740E+00 -2.3507E+01 -1.0503E+01  4.9139E-01
             2.4810E+00
 GRADIENT:   3.4693E+01  0.0000E+00 -1.9949E+01  2.4093E+01 -1.0341E+01  1.6018E+01  1.7960E-03  0.0000E+00  0.0000E+00  4.7948E+00
            -7.9930E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -781.583364854273        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      709
 NPARAMETR:  3.9060E-01  1.0000E-02  1.4768E-02  1.8936E-01  7.7748E+00  1.6640E+00  1.1936E-01  1.0000E-02  1.0000E-02  9.6573E-01
             1.0607E+01
 PARAMETER: -8.4007E-01 -1.1158E+01 -4.1153E+00 -1.5641E+00  2.1509E+00  6.0924E-01 -2.0256E+00 -2.9149E+01 -1.3750E+01  6.5127E-02
             2.4615E+00
 GRADIENT:   3.6227E+00  0.0000E+00  2.2051E+00 -8.4584E+00 -7.2802E+00  2.5612E-01  7.6833E-03  0.0000E+00  0.0000E+00  1.0499E+00
            -1.6251E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -781.655804489057        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      886
 NPARAMETR:  4.0013E-01  1.0000E-02  1.5896E-02  2.0106E-01  8.3382E+00  1.6710E+00  1.1932E-01  1.0000E-02  1.0000E-02  1.0620E+00
             1.0633E+01
 PARAMETER: -8.1596E-01 -1.0962E+01 -4.0417E+00 -1.5041E+00  2.2208E+00  6.1341E-01 -2.0259E+00 -2.8720E+01 -1.3450E+01  1.6017E-01
             2.4639E+00
 GRADIENT:   3.5379E-01  0.0000E+00 -1.5510E-01  4.0238E-02 -2.0367E+00  2.7485E-01  3.4856E-03  0.0000E+00  0.0000E+00  2.0346E-01
            -2.4494E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -782.647469952381        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     1078             RESET HESSIAN, TYPE I
 NPARAMETR:  3.6030E-01  1.0000E-02  1.2507E-02  1.6338E-01  8.9648E+01  1.6512E+00  1.0068E-02  1.0000E-02  1.0000E-02  9.7124E-01
             1.0611E+01
 PARAMETER: -9.2083E-01 -1.1056E+01 -4.2815E+00 -1.7117E+00  4.5959E+00  6.0150E-01 -4.4983E+00 -3.1550E+01 -1.3784E+01  7.0822E-02
             2.4619E+00
 GRADIENT:   6.8502E+01  0.0000E+00  9.0468E+01  2.6913E+01 -2.9965E-02  8.8733E+00  3.0695E-05  0.0000E+00  0.0000E+00  2.9900E-05
             2.0903E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -782.678377901071        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1256
 NPARAMETR:  3.5944E-01  1.0000E-02  1.2519E-02  1.6417E-01  1.8502E+02  1.6497E+00  1.0000E-02  1.0000E-02  1.0000E-02  9.0651E-01
             1.0592E+01
 PARAMETER: -9.2322E-01 -1.1056E+01 -4.2805E+00 -1.7069E+00  5.3205E+00  6.0058E-01 -4.6005E+00 -3.1550E+01 -1.3784E+01  1.8484E-03
             2.4601E+00
 GRADIENT:  -9.6645E-01  0.0000E+00 -2.9954E+00 -4.2926E-01 -1.2966E-02 -2.0983E-01  0.0000E+00  0.0000E+00  0.0000E+00  5.2873E-06
            -2.1783E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -782.680194247180        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1432
 NPARAMETR:  3.5898E-01  1.0000E-02  1.2533E-02  1.6427E-01  4.2702E+02  1.6495E+00  1.0000E-02  1.0000E-02  1.0000E-02  8.3081E-01
             1.0584E+01
 PARAMETER: -9.2448E-01 -1.1056E+01 -4.2794E+00 -1.7062E+00  6.1568E+00  6.0049E-01 -4.7080E+00 -3.1550E+01 -1.3784E+01 -8.5349E-02
             2.4593E+00
 GRADIENT:  -2.0033E+00  0.0000E+00 -2.1606E+00 -8.2350E-01 -5.4856E-03 -2.0420E-01  0.0000E+00  0.0000E+00  0.0000E+00  7.7296E-07
            -5.8059E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -782.683592959355        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1612
 NPARAMETR:  3.5919E-01  1.0000E-02  1.2553E-02  1.6448E-01  1.8228E+04  1.6492E+00  1.0000E-02  1.0000E-02  1.0000E-02  7.1750E-01
             1.0584E+01
 PARAMETER: -9.2391E-01 -1.1056E+01 -4.2778E+00 -1.7050E+00  9.9107E+00  6.0030E-01 -5.0887E+00 -3.1550E+01 -1.3784E+01 -2.3198E-01
             2.4593E+00
 GRADIENT:  -1.9617E+00  0.0000E+00 -2.1674E+00 -7.4190E-01 -1.2327E-04 -2.6526E-01  0.0000E+00  0.0000E+00  0.0000E+00  2.9404E-10
            -6.4156E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -782.691143255295        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     1810
 NPARAMETR:  3.6069E-01  1.0000E-02  1.2549E-02  1.6443E-01  1.9707E+06  1.6529E+00  1.0000E-02  1.0000E-02  1.0000E-02  6.7750E-01
             1.0601E+01
 PARAMETER: -9.1973E-01 -1.1056E+01 -4.2781E+00 -1.7052E+00  1.4594E+01  6.0254E-01 -5.2960E+00 -3.1550E+01 -1.3784E+01 -2.8935E-01
             2.4609E+00
 GRADIENT:   9.5018E-01  0.0000E+00 -2.6936E+00 -1.5924E+00 -1.0778E-06  1.8097E-01  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
             1.7345E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -782.699427109486        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     2000
 NPARAMETR:  3.5979E-01  1.0000E-02  1.2386E-02  1.6271E-01  1.5607E+18  1.6510E+00  1.0000E-02  1.0000E-02  1.0000E-02  7.6697E-01
             1.0608E+01
 PARAMETER: -9.2222E-01 -1.1056E+01 -4.2912E+00 -1.7158E+00  4.1992E+01  6.0136E-01 -5.2960E+00 -3.1550E+01 -1.3784E+01 -1.6531E-01
             2.4616E+00
 GRADIENT:   2.9753E+00  0.0000E+00 -4.1065E+00 -1.3128E+00  0.0000E+00 -4.1562E-02  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
             2.3023E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     2000
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -3.1803E-04  2.1351E-06  7.6878E-05 -1.5693E-04  0.0000E+00
 SE:             2.9147E-02  8.0350E-06  3.3602E-04  3.8039E-04  0.0000E+00
 N:                     100         100         100         100         100

 P VAL.:         9.9129E-01  7.9046E-01  8.1903E-01  6.7993E-01  1.0000E+00

 ETASHRINKSD(%)  2.3534E+00  9.9973E+01  9.8874E+01  9.8726E+01  1.0000E+02
 ETASHRINKVR(%)  4.6514E+00  1.0000E+02  9.9987E+01  9.9984E+01  1.0000E+02
 EBVSHRINKSD(%)  2.7232E+00  9.9954E+01  9.8873E+01  9.8684E+01  1.0000E+02
 EBVSHRINKVR(%)  5.3723E+00  1.0000E+02  9.9987E+01  9.9983E+01  1.0000E+02
 RELATIVEINF(%)  5.7113E+00  9.2750E-06  4.2155E-05  5.6588E-05  0.0000E+00
 EPSSHRINKSD(%)  7.5467E+00
 EPSSHRINKVR(%)  1.4524E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -782.69942710948646     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -47.548600545748286     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    28.69
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -782.699       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.60E-01  1.00E-02  1.24E-02  1.63E-01  1.56E+18  1.65E+00  1.00E-02  1.00E-02  1.00E-02  7.67E-01  1.06E+01
 


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
 #CPUT: Total CPU Time in Seconds,       28.721
Stop Time:
Sat Oct  2 05:49:21 CDT 2021
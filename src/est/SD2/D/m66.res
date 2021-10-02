Fri Oct  1 15:57:05 CDT 2021
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
$DATA ../../../../data/SD2/D/dat66.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m66.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   20336.5042164327        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.4745E+02  4.3346E+02 -1.5816E+01  2.0070E+02  2.1569E+02 -2.4045E+03 -1.0283E+03 -1.0360E+02 -1.7484E+03 -8.1264E+02
            -3.8347E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -539.199975162593        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.3774E+00  9.4225E-01  8.3076E-01  1.9917E+00  1.5191E+00  2.7975E+00  1.3505E+00  9.6218E-01  1.9952E+00  1.1483E+00
             1.3091E+01
 PARAMETER:  4.2023E-01  4.0517E-02 -8.5418E-02  7.8899E-01  5.1810E-01  1.1287E+00  4.0051E-01  6.1449E-02  7.9074E-01  2.3831E-01
             2.6720E+00
 GRADIENT:   2.1056E+01  4.3742E+01 -1.9559E+01  6.4401E+01 -7.1606E+00  6.1016E+01 -1.1312E+00  6.6443E+00 -5.7443E+01  1.6669E+00
             9.5034E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -601.088046839454        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.2471E+00  9.0960E-01  1.3941E+00  1.8810E+00  4.4195E+00  2.7360E+00  2.1026E+00  1.5460E-01  3.1860E+00  8.8998E+00
             1.0914E+01
 PARAMETER:  3.2082E-01  5.2452E-03  4.3222E-01  7.3181E-01  1.5860E+00  1.1065E+00  8.4319E-01 -1.7669E+00  1.2588E+00  2.2860E+00
             2.4901E+00
 GRADIENT:   1.5597E+01  1.6347E+01  3.3256E-01  3.6828E+01 -1.5428E+01  3.5676E+01  1.0473E+01 -2.5973E-02  2.1017E+01  1.5754E+01
             7.6880E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -615.468665491483        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  1.1121E+00  6.1062E-01  1.1036E+00  1.5491E+00  8.5245E+00  2.2393E+00  6.5002E-01  1.0064E-01  2.7771E+00  7.1831E+00
             1.0852E+01
 PARAMETER:  2.0627E-01 -3.9328E-01  1.9856E-01  5.3766E-01  2.2429E+00  9.0615E-01 -3.3076E-01 -2.1962E+00  1.1214E+00  2.0717E+00
             2.4843E+00
 GRADIENT:  -2.3305E+01 -6.6774E+00  3.7147E+01 -1.4706E+01 -2.2196E+00 -4.7199E+01  1.2757E+00 -7.1309E-02  1.4733E+01  5.1412E-02
             1.1239E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -683.355823611167        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      304
 NPARAMETR:  8.7025E-01  9.5201E-02  1.2089E-01  1.0356E+00  7.2209E+01  1.9915E+00  2.5219E-02  1.0000E-02  1.2573E+00  9.1243E+00
             8.5101E+00
 PARAMETER: -3.8976E-02 -2.2518E+00 -2.0129E+00  1.3501E-01  4.3796E+00  7.8886E-01 -3.5801E+00 -1.1294E+01  3.2893E-01  2.3109E+00
             2.2413E+00
 GRADIENT:   8.1493E+01  1.6719E+01 -5.3711E+01  1.8165E+02 -9.1942E-02 -2.3432E+01  6.9241E-03  0.0000E+00 -4.1403E+01  1.4541E-01
            -1.9335E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -700.566317318161        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      420
 NPARAMETR:  7.6336E-01  6.8009E-02  8.2388E-02  7.2760E-01  1.4320E+02  2.1337E+00  1.0000E-02  1.0000E-02  1.1354E+00  1.0218E+01
             7.9328E+00
 PARAMETER: -1.7003E-01 -2.5881E+00 -2.3963E+00 -2.1800E-01  5.0642E+00  8.5786E-01 -4.9258E+00 -1.2372E+01  2.2697E-01  2.4241E+00
             2.1710E+00
 GRADIENT:   6.5471E+01  3.4239E+01 -4.4726E+01  5.7012E+01 -2.1520E-01 -6.8845E+00  0.0000E+00  0.0000E+00 -2.1422E+01  5.5704E-02
            -2.7000E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -761.206614536500        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      599
 NPARAMETR:  4.4483E-01  1.5861E-02  2.2269E-02  2.8026E-01  9.8335E+02  1.7838E+00  1.0000E-02  1.0000E-02  8.5920E-01  8.6955E+00
             9.8480E+00
 PARAMETER: -7.1006E-01 -4.0439E+00 -3.7046E+00 -1.1721E+00  6.9910E+00  6.7873E-01 -1.1769E+01 -1.7066E+01 -5.1755E-02  2.2628E+00
             2.3873E+00
 GRADIENT:   1.3832E+01  2.5774E-01 -1.2157E+01  1.8555E+01  2.4690E-03 -1.7388E+01  0.0000E+00  0.0000E+00 -1.0050E+01  2.9655E-05
             4.5462E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -765.803834702713        NO. OF FUNC. EVALS.: 191
 CUMULATIVE NO. OF FUNC. EVALS.:      790
 NPARAMETR:  3.5690E-01  1.0000E-02  1.3849E-02  1.8859E-01  2.1513E+03  1.7705E+00  1.0000E-02  1.0000E-02  8.9063E-01  9.5696E+00
             9.6065E+00
 PARAMETER: -9.3029E-01 -4.5849E+00 -4.1796E+00 -1.5682E+00  7.7738E+00  6.7128E-01 -1.4173E+01 -1.7963E+01 -1.5823E-02  2.3586E+00
             2.3624E+00
 GRADIENT:  -2.7678E-01  0.0000E+00 -1.4877E+00 -1.5270E-01  3.7089E-04 -1.0246E+01  0.0000E+00  0.0000E+00 -9.6556E-01  2.5186E-06
            -3.1715E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -765.966449329318        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:      979
 NPARAMETR:  3.5798E-01  1.0000E-02  1.3802E-02  1.8878E-01  1.6275E+03  1.8223E+00  1.0000E-02  1.0000E-02  8.9706E-01  9.1783E+00
             9.6222E+00
 PARAMETER: -9.2727E-01 -4.5849E+00 -4.1829E+00 -1.5672E+00  7.4948E+00  7.0010E-01 -1.4173E+01 -1.7963E+01 -8.6346E-03  2.3168E+00
             2.3641E+00
 GRADIENT:   2.4297E+00  0.0000E+00 -7.3905E+00  4.6829E+00  5.9908E-04  3.7316E-01  0.0000E+00  0.0000E+00 -1.1606E-01  4.4897E-06
            -1.2891E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -766.000899919393        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1154             RESET HESSIAN, TYPE I
 NPARAMETR:  3.5689E-01  1.0000E-02  1.3724E-02  1.8752E-01  1.1715E+03  1.8216E+00  1.0000E-02  1.0000E-02  8.9730E-01  9.1797E+00
             9.6238E+00
 PARAMETER: -9.3032E-01 -4.5849E+00 -4.1886E+00 -1.5739E+00  7.1660E+00  6.9971E-01 -1.4173E+01 -1.7963E+01 -8.3595E-03  2.3170E+00
             2.3642E+00
 GRADIENT:   9.0197E+01  0.0000E+00  1.2356E+02  3.7939E+01  7.0805E-04  1.9156E+01  0.0000E+00  0.0000E+00  2.8984E-01  1.2293E-05
             2.2922E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -766.122436517367        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     1343
 NPARAMETR:  3.5239E-01  1.0000E-02  1.3349E-02  1.8313E-01  5.3261E+01  1.8143E+00  1.0000E-02  1.0000E-02  8.9164E-01  2.7278E+00
             9.6563E+00
 PARAMETER: -9.4301E-01 -4.5849E+00 -4.2163E+00 -1.5976E+00  4.0752E+00  6.9572E-01 -1.4173E+01 -1.7963E+01 -1.4689E-02  1.1035E+00
             2.3676E+00
 GRADIENT:   1.4922E-02  0.0000E+00 -2.8907E+00 -5.5458E-01  3.4670E-03 -2.4735E-01  0.0000E+00  0.0000E+00 -2.9178E-01  7.9621E-04
             2.5902E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -766.140872141876        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     1537             RESET HESSIAN, TYPE I
 NPARAMETR:  3.5273E-01  1.0000E-02  1.3300E-02  1.8258E-01  2.2491E+01  1.8179E+00  1.0000E-02  1.0000E-02  8.9557E-01  2.2637E-01
             9.6314E+00
 PARAMETER: -9.4206E-01 -4.5849E+00 -4.2200E+00 -1.6005E+00  3.2131E+00  6.9768E-01 -1.4173E+01 -1.7963E+01 -1.0297E-02 -1.3856E+00
             2.3650E+00
 GRADIENT:   9.0955E+01  0.0000E+00  1.2721E+02  3.5629E+01 -2.3387E-02  1.9169E+01  0.0000E+00  0.0000E+00  4.3773E-01  7.4282E-05
             2.4177E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -766.161873213695        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     1701
 NPARAMETR:  3.5210E-01  1.0000E-02  1.3237E-02  1.8203E-01  3.9141E+01  1.8171E+00  1.0000E-02  1.0000E-02  8.9521E-01  2.1161E-01
             9.6221E+00
 PARAMETER: -9.4384E-01 -4.5849E+00 -4.2248E+00 -1.6036E+00  3.7672E+00  6.9726E-01 -1.4173E+01 -1.7963E+01 -1.0694E-02 -1.4530E+00
             2.3641E+00
 GRADIENT:   1.9966E+00  0.0000E+00 -5.1912E+00  8.2793E-01  2.6468E-03  3.7046E-01  0.0000E+00  0.0000E+00  6.4649E-02  1.1596E-05
            -6.5673E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -766.179080579508        NO. OF FUNC. EVALS.: 209
 CUMULATIVE NO. OF FUNC. EVALS.:     1910             RESET HESSIAN, TYPE I
 NPARAMETR:  3.5157E-01  1.0000E-02  1.3171E-02  1.8134E-01  3.2970E+01  1.8162E+00  1.0000E-02  1.0000E-02  8.9437E-01  1.5511E-01
             9.6268E+00
 PARAMETER: -9.4534E-01 -4.5849E+00 -4.2297E+00 -1.6074E+00  3.5956E+00  6.9672E-01 -1.4173E+01 -1.7963E+01 -1.1631E-02 -1.7637E+00
             2.3645E+00
 GRADIENT:   9.2386E+01  0.0000E+00  1.2544E+02  3.8340E+01 -1.2805E-03  1.8962E+01  0.0000E+00  0.0000E+00  1.8508E-01  1.1618E-05
             2.3346E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -766.329944772943        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     2100            RESET HESSIAN, TYPE II
 NPARAMETR:  3.4446E-01  1.0000E-02  1.2585E-02  1.7454E-01  2.7200E+03  1.8114E+00  1.0000E-02  1.0000E-02  8.9318E-01  1.2300E-01
             9.6202E+00
 PARAMETER: -9.6577E-01 -4.5849E+00 -4.2752E+00 -1.6456E+00  8.0084E+00  6.9410E-01 -1.4173E+01 -1.7963E+01 -1.2963E-02 -1.9956E+00
             2.3639E+00
 GRADIENT:   9.4896E+01  0.0000E+00  1.2763E+02  3.9301E+01  2.7162E-05  1.8953E+01  0.0000E+00  0.0000E+00  2.2065E-01  7.6340E-10
             2.3013E+01

0ITERATION NO.:   72    OBJECTIVE VALUE:  -766.329944772943        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:     2155
 NPARAMETR:  3.4446E-01  1.0000E-02  1.2585E-02  1.7454E-01  2.7200E+03  1.8114E+00  1.0000E-02  1.0000E-02  8.9318E-01  1.2300E-01
             9.6202E+00
 PARAMETER: -9.6577E-01 -4.5849E+00 -4.2752E+00 -1.6456E+00  8.0084E+00  6.9410E-01 -1.4173E+01 -1.7963E+01 -1.2963E-02 -1.9956E+00
             2.3639E+00
 GRADIENT:   1.9512E+00  0.0000E+00 -6.4943E+00  1.2881E+00  2.7906E-05  3.5910E-01  0.0000E+00  0.0000E+00  2.7038E-02  6.6655E-10
            -6.3612E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2155
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4706E-03  2.2562E-06  1.2685E-04 -2.2535E-02 -3.6695E-08
 SE:             2.9275E-02  6.6391E-06  2.5194E-04  2.3884E-02  4.8254E-08
 N:                     100         100         100         100         100

 P VAL.:         9.5994E-01  7.3398E-01  6.1461E-01  3.4542E-01  4.4699E-01

 ETASHRINKSD(%)  1.9250E+00  9.9978E+01  9.9156E+01  1.9985E+01  1.0000E+02
 ETASHRINKVR(%)  3.8129E+00  1.0000E+02  9.9993E+01  3.5976E+01  1.0000E+02
 EBVSHRINKSD(%)  1.8352E+00  9.9947E+01  9.9232E+01  2.1029E+01  1.0000E+02
 EBVSHRINKVR(%)  3.6367E+00  1.0000E+02  9.9994E+01  3.7635E+01  1.0000E+02
 RELATIVEINF(%)  2.2717E+00  6.1497E-07  2.6307E-05  2.6589E-01  0.0000E+00
 EPSSHRINKSD(%)  1.1035E+01
 EPSSHRINKVR(%)  2.0852E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -766.32994477294324     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       152.60858843172946     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    44.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -766.330       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.44E-01  1.00E-02  1.26E-02  1.75E-01  2.72E+03  1.81E+00  1.00E-02  1.00E-02  8.93E-01  1.23E-01  9.62E+00
 


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
 #CPUT: Total CPU Time in Seconds,       44.486
Stop Time:
Fri Oct  1 15:57:51 CDT 2021
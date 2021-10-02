Sat Oct  2 01:10:57 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat59.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m59.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   213.638214845761        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.1646E+02  1.5941E+01  1.1348E+02 -1.1844E+02  7.7351E+01  1.8482E+01 -2.9311E+01 -4.4006E+01 -1.0582E+02 -8.8623E+01
            -3.4714E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1006.28090690815        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0802E+00  9.4386E-01  8.7589E-01  1.0924E+00  8.8588E-01  1.0661E+00  1.0056E+00  1.0129E+00  1.2291E+00  1.0961E+00
             1.8473E+00
 PARAMETER:  1.7713E-01  4.2225E-02 -3.2509E-02  1.8835E-01 -2.1175E-02  1.6397E-01  1.0563E-01  1.1283E-01  3.0628E-01  1.9173E-01
             7.1371E-01
 GRADIENT:   2.6803E+02  3.5931E+00  3.0626E+01 -1.7482E+01  1.2206E+01  2.5325E+01  3.8861E-02 -1.6389E+00  1.5980E+00 -8.4213E+00
            -8.6381E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1049.77913752509        NO. OF FUNC. EVALS.:  82
 CUMULATIVE NO. OF FUNC. EVALS.:      166
 NPARAMETR:  1.0871E+00  7.7528E-01  2.4284E-01  1.1407E+00  3.6286E-01  9.4875E-01  6.5499E-01  4.2912E-01  1.0682E+00  5.8993E-01
             1.8536E+00
 PARAMETER:  1.8348E-01 -1.5453E-01 -1.3154E+00  2.3162E-01 -9.1375E-01  4.7385E-02 -3.2314E-01 -7.4602E-01  1.6599E-01 -4.2775E-01
             7.1714E-01
 GRADIENT:   2.6852E+02  2.2646E+02  1.4389E+02  1.8236E+02 -9.9685E+01 -3.7282E+01 -2.2078E+01 -9.6448E+00 -4.1642E+01 -1.4252E+01
            -7.6645E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1174.62748163016        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      241
 NPARAMETR:  1.0135E+00  5.1914E-01  1.2549E-01  1.2396E+00  2.1384E-01  9.0110E-01  7.0542E-01  1.1439E-02  1.2693E+00  6.4697E-01
             2.4624E+00
 PARAMETER:  1.1339E-01 -5.5558E-01 -1.9756E+00  3.1482E-01 -1.4425E+00 -4.1437E-03 -2.4897E-01 -4.3708E+00  3.3847E-01 -3.3545E-01
             1.0011E+00
 GRADIENT:  -3.1823E+01  2.3379E+02  3.2271E+01  3.0202E+02 -1.8065E+02 -7.7144E+01 -3.1021E-01 -2.3585E-03 -7.7588E+01 -1.4085E+01
            -2.8730E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1279.98506781886        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      335
 NPARAMETR:  1.0551E+00  4.2953E-01  1.2297E-01  1.0206E+00  2.1096E-01  1.0248E+00  2.9693E-01  1.0000E-02  1.1122E+00  5.5554E-01
             3.7773E+00
 PARAMETER:  1.5359E-01 -7.4505E-01 -1.9958E+00  1.2043E-01 -1.4561E+00  1.2451E-01 -1.1142E+00 -5.3773E+00  2.0636E-01 -4.8782E-01
             1.4290E+00
 GRADIENT:  -2.7475E+01  3.1289E+01 -1.7355E+01  5.1010E+01 -6.4971E+01 -1.1519E+01  7.9074E-01  0.0000E+00 -1.3565E+01 -4.8231E-01
             3.2915E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1287.19861558827        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      511
 NPARAMETR:  1.0743E+00  4.5792E-01  1.7159E-01  1.0751E+00  2.5261E-01  1.0483E+00  3.2796E-01  2.1218E-02  1.0961E+00  5.2665E-01
             3.5526E+00
 PARAMETER:  1.7168E-01 -6.8107E-01 -1.6626E+00  1.7237E-01 -1.2759E+00  1.4719E-01 -1.0149E+00 -3.7529E+00  1.9174E-01 -5.4122E-01
             1.3677E+00
 GRADIENT:   7.5412E+00  7.6899E-01  1.8361E+00 -4.3029E+00 -6.6220E+00  2.7599E+00  1.9094E-01  1.2530E-03  4.5600E+00  2.1944E-01
            -5.9191E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1287.68403896581        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      686
 NPARAMETR:  1.0779E+00  4.3538E-01  2.3274E-01  1.1763E+00  2.8847E-01  1.0255E+00  3.4408E-01  9.3688E-02  9.6049E-01  4.7455E-01
             3.6984E+00
 PARAMETER:  1.7504E-01 -7.3153E-01 -1.3578E+00  2.6240E-01 -1.1432E+00  1.2514E-01 -9.6688E-01 -2.2678E+00  5.9685E-02 -6.4539E-01
             1.4079E+00
 GRADIENT:  -4.7651E-01 -2.6686E+00 -1.6648E+00 -1.4852E+00  3.1817E+00  1.1039E+00 -2.8427E-01  7.3843E-02 -4.1540E-02 -2.5378E-01
            -1.3400E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1287.88945237893        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      863
 NPARAMETR:  1.0763E+00  4.6616E-01  2.5793E-01  1.1993E+00  3.1192E-01  1.0127E+00  6.3204E-01  1.3625E-01  9.3057E-01  4.3937E-01
             3.7277E+00
 PARAMETER:  1.7358E-01 -6.6324E-01 -1.2551E+00  2.8177E-01 -1.0650E+00  1.1262E-01 -3.5881E-01 -1.8932E+00  2.8045E-02 -7.2242E-01
             1.4158E+00
 GRADIENT:  -4.4679E+00  3.8106E-01 -2.3400E-01  1.5691E+00 -6.7626E-01 -1.0785E+00  1.5332E-01  1.5461E-01  8.2138E-01  8.8444E-01
            -1.3900E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1287.93673623465        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1041
 NPARAMETR:  1.0800E+00  4.6118E-01  2.9364E-01  1.2388E+00  3.3513E-01  1.0039E+00  7.4161E-01  2.2688E-01  8.8130E-01  3.7325E-01
             3.8065E+00
 PARAMETER:  1.7692E-01 -6.7397E-01 -1.1254E+00  3.1412E-01 -9.9323E-01  1.0387E-01 -1.9893E-01 -1.3833E+00 -2.6360E-02 -8.8549E-01
             1.4367E+00
 GRADIENT:  -7.1923E-02  8.4934E-01 -4.9693E-01  8.1383E-01 -2.9833E+00 -1.1816E+00  1.5032E-02  4.7238E-01  3.1488E-01 -1.6158E-01
            -3.1591E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1293.24020005604        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1222
 NPARAMETR:  1.0589E+00  2.9561E-01  6.4475E-01  1.5024E+00  5.3748E-01  9.3649E-01  2.3369E+00  5.6036E-02  7.0747E-01  2.0946E-02
             4.1462E+00
 PARAMETER:  1.5719E-01 -1.1187E+00 -3.3889E-01  5.0709E-01 -5.2086E-01  3.4386E-02  9.4882E-01 -2.7818E+00 -2.4606E-01 -3.7658E+00
             1.5222E+00
 GRADIENT:  -2.1353E+01  9.2394E+00  1.2479E+01  2.5016E+00 -2.7699E+01 -5.4230E+00  5.9435E+00  6.2772E-02  3.5261E+00  5.4335E-03
             2.5220E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1296.12825828073        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1397
 NPARAMETR:  1.0594E+00  2.2656E-01  9.4862E-01  1.6000E+00  7.2072E-01  9.3877E-01  1.9323E+00  1.5160E-02  6.5101E-01  1.0000E-02
             4.0504E+00
 PARAMETER:  1.5768E-01 -1.3848E+00  4.7251E-02  5.6998E-01 -2.2750E-01  3.6819E-02  7.5872E-01 -4.0891E+00 -3.2923E-01 -5.5566E+00
             1.4988E+00
 GRADIENT:  -1.2411E+00  7.6206E-01  7.5485E-01  2.7809E+00 -1.9065E+00 -9.5449E-01  2.2532E-01  2.9662E-03 -3.2624E-01  0.0000E+00
             1.1123E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1296.17362732892        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1572
 NPARAMETR:  1.0587E+00  1.9585E-01  1.0007E+00  1.6221E+00  7.4461E-01  9.4070E-01  1.4373E+00  1.0000E-02  6.5169E-01  1.0000E-02
             4.0481E+00
 PARAMETER:  1.5701E-01 -1.5304E+00  1.0070E-01  5.8375E-01 -1.9489E-01  3.8868E-02  4.6277E-01 -4.9631E+00 -3.2819E-01 -6.1255E+00
             1.4983E+00
 GRADIENT:   4.7584E-01  1.0474E-01 -5.0124E-02 -7.3429E-01  3.0234E-01  2.0364E-01 -5.6853E-02  0.0000E+00 -8.8660E-02  0.0000E+00
             3.2430E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1296.17570215804        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1749
 NPARAMETR:  1.0572E+00  1.5121E-01  1.0020E+00  1.6486E+00  7.3566E-01  9.3958E-01  1.0811E+00  1.0000E-02  6.4780E-01  1.0000E-02
             4.0465E+00
 PARAMETER:  1.5559E-01 -1.7891E+00  1.0202E-01  5.9992E-01 -2.0699E-01  3.7673E-02  1.7799E-01 -6.8209E+00 -3.3417E-01 -7.0276E+00
             1.4979E+00
 GRADIENT:  -6.7354E-01  3.3121E-01 -3.9638E-01  3.7439E+00  5.3080E-02 -2.4784E-01 -5.2448E-02  0.0000E+00 -2.0235E-01  0.0000E+00
            -1.2292E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1296.17761879745        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1925
 NPARAMETR:  1.0562E+00  1.2577E-01  9.9483E-01  1.6626E+00  7.2547E-01  9.3897E-01  9.1177E-01  1.0000E-02  6.4529E-01  1.0000E-02
             4.0433E+00
 PARAMETER:  1.5464E-01 -1.9733E+00  9.4820E-02  6.0837E-01 -2.2093E-01  3.7031E-02  7.6371E-03 -8.2009E+00 -3.3805E-01 -7.6763E+00
             1.4971E+00
 GRADIENT:  -1.7014E+00  4.6116E-01 -8.1320E-02  7.0409E+00 -9.5238E-01 -5.5874E-01 -3.1809E-02  0.0000E+00 -2.0566E-01  0.0000E+00
            -6.9835E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1296.21846752642        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     2105
 NPARAMETR:  1.0545E+00  6.4154E-02  9.9369E-01  1.6932E+00  7.0981E-01  9.3926E-01  9.1681E-01  1.0000E-02  6.3203E-01  1.0000E-02
             4.0430E+00
 PARAMETER:  1.5306E-01 -2.6465E+00  9.3675E-02  6.2665E-01 -2.4276E-01  3.7334E-02  1.3140E-02 -1.3803E+01 -3.5881E-01 -1.0439E+01
             1.4970E+00
 GRADIENT:  -1.1409E+00  1.8932E-01  7.0349E-01  4.3741E+00 -1.6929E+00 -1.8785E-01 -8.5564E-03  0.0000E+00 -2.7917E-01  0.0000E+00
            -4.8226E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1296.24128553917        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     2281
 NPARAMETR:  1.0535E+00  2.3822E-02  9.9893E-01  1.7147E+00  7.0373E-01  9.3916E-01  1.8539E+00  1.0000E-02  6.2282E-01  1.0000E-02
             4.0434E+00
 PARAMETER:  1.5213E-01 -3.6372E+00  9.8926E-02  6.3925E-01 -2.5136E-01  3.7226E-02  7.1728E-01 -2.2822E+01 -3.7351E-01 -1.4944E+01
             1.4971E+00
 GRADIENT:  -5.1648E-01  5.0564E-02  6.6710E-01  2.8834E+00 -1.3198E+00 -1.2254E-02 -4.0404E-03  0.0000E+00 -2.2453E-01  0.0000E+00
            -2.8685E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1296.24899617793        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2459
 NPARAMETR:  1.0531E+00  1.0077E-02  9.9067E-01  1.7208E+00  6.9770E-01  9.3872E-01  4.5841E+00  1.0000E-02  6.2113E-01  1.0000E-02
             4.0426E+00
 PARAMETER:  1.5171E-01 -4.4975E+00  9.0627E-02  6.4279E-01 -2.5997E-01  3.6762E-02  1.6226E+00 -3.1021E+01 -3.7622E-01 -1.9015E+01
             1.4969E+00
 GRADIENT:  -5.1392E-01  1.8867E-02 -2.6786E-01  2.6186E+00 -9.9695E-02 -2.1704E-01 -3.0856E-03  0.0000E+00 -1.2364E-01  0.0000E+00
            -1.7843E-01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1296.25189771273        NO. OF FUNC. EVALS.: 146
 CUMULATIVE NO. OF FUNC. EVALS.:     2605
 NPARAMETR:  1.0523E+00  1.0000E-02  9.9093E-01  1.7188E+00  6.9760E-01  9.3852E-01  7.1020E+00  1.0000E-02  6.2093E-01  1.0000E-02
             4.0402E+00
 PARAMETER:  1.5101E-01 -4.5450E+00  9.0884E-02  6.4162E-01 -2.6011E-01  3.6553E-02  2.0604E+00 -3.1021E+01 -3.7653E-01 -1.9015E+01
             1.4963E+00
 GRADIENT:  -1.5196E+00  3.9491E-04 -1.0701E-01 -8.1146E-01  1.8305E-01 -1.8944E-01 -1.4704E-03  0.0000E+00 -6.4769E-02  0.0000E+00
            -4.1640E-01

0ITERATION NO.:   88    OBJECTIVE VALUE:  -1296.25256473266        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     2698
 NPARAMETR:  1.0530E+00  1.0000E-02  9.9139E-01  1.7194E+00  6.9766E-01  9.3915E-01  7.8092E+00  1.0000E-02  6.2104E-01  1.0000E-02
             4.0421E+00
 PARAMETER:  1.5166E-01 -4.5506E+00  9.1355E-02  6.4196E-01 -2.6003E-01  3.7224E-02  2.1553E+00 -3.1021E+01 -3.7636E-01 -1.9015E+01
             1.4968E+00
 GRADIENT:  -2.3754E-01  1.7702E-06  3.1524E-02 -2.3762E-01 -5.7261E-02  2.4929E-02  7.4487E-04  0.0000E+00  6.8333E-03  0.0000E+00
            -8.1346E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     2698
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.5464E-04 -1.1612E-03  9.9667E-05 -1.5902E-02 -9.1676E-06
 SE:             2.8345E-02  1.0566E-03  1.0987E-04  2.2477E-02  1.6527E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8720E-01  2.7177E-01  3.6435E-01  4.7928E-01  9.5576E-01

 ETASHRINKSD(%)  5.0413E+00  9.6460E+01  9.9632E+01  2.4699E+01  9.9446E+01
 ETASHRINKVR(%)  9.8284E+00  9.9875E+01  9.9999E+01  4.3298E+01  9.9997E+01
 EBVSHRINKSD(%)  4.8511E+00  9.6450E+01  9.9565E+01  2.4693E+01  9.9405E+01
 EBVSHRINKVR(%)  9.4668E+00  9.9874E+01  9.9998E+01  4.3288E+01  9.9996E+01
 RELATIVEINF(%)  6.0924E+01  1.1830E-03  5.9277E-05  7.3185E-01  8.0932E-05
 EPSSHRINKSD(%)  1.8387E+01
 EPSSHRINKVR(%)  3.3392E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1296.2525647326570     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -561.10173816891881     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    34.86
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1296.253       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  1.00E-02  9.91E-01  1.72E+00  6.98E-01  9.39E-01  7.81E+00  1.00E-02  6.21E-01  1.00E-02  4.04E+00
 


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
 #CPUT: Total CPU Time in Seconds,       34.894
Stop Time:
Sat Oct  2 01:11:34 CDT 2021

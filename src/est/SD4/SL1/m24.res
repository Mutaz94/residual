Sat Oct  2 02:06:50 CDT 2021
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
$DATA ../../../../data/SD4/SL1/dat24.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m24.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1646.24734902610        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4393E+02 -3.9871E+01  3.6432E+01 -1.0096E+02 -3.7287E+01  3.1883E+01 -2.2817E+00  2.5624E+00 -1.1263E+01  1.0540E-01
             1.6893E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1656.20925792079        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.7504E-01  1.0284E+00  9.7790E-01  1.0856E+00  1.0253E+00  1.0239E+00  1.0133E+00  9.8241E-01  1.0098E+00  1.0177E+00
             9.4927E-01
 PARAMETER:  7.4723E-02  1.2803E-01  7.7651E-02  1.8210E-01  1.2501E-01  1.2362E-01  1.1319E-01  8.2252E-02  1.0978E-01  1.1752E-01
             4.7940E-02
 GRADIENT:   7.4787E-01  1.0968E+00  7.8804E-01 -8.3360E-01 -2.8271E-01  1.9679E+00 -2.3611E+00  3.7560E+00  3.2675E-01 -2.8966E+00
            -3.7052E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1657.61722457468        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  9.7741E-01  8.5347E-01  8.8801E-01  1.2134E+00  8.9544E-01  1.0383E+00  1.4664E+00  5.9328E-01  8.7107E-01  9.5266E-01
             9.6278E-01
 PARAMETER:  7.7151E-02 -5.8447E-02 -1.8778E-02  2.9345E-01 -1.0441E-02  1.3762E-01  4.8280E-01 -4.2209E-01 -3.8034E-02  5.1506E-02
             6.2065E-02
 GRADIENT:   6.2922E+00  2.4586E+01 -5.4206E+00  4.3380E+01  1.1052E+01  7.3637E+00  6.0762E+00 -1.0545E-01  4.5520E-02 -5.7873E-01
             1.1195E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1659.41964414958        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.7464E-01  7.2489E-01  7.5858E-01  1.2546E+00  7.4602E-01  1.0172E+00  1.5682E+00  3.6017E-01  8.2290E-01  8.2708E-01
             9.5998E-01
 PARAMETER:  7.4310E-02 -2.2173E-01 -1.7630E-01  3.2681E-01 -1.9300E-01  1.1704E-01  5.4992E-01 -9.2118E-01 -9.4917E-02 -8.9849E-02
             5.9155E-02
 GRADIENT:  -6.1153E-01  1.7268E+01  1.2051E+01  1.4617E+01 -1.6665E+01 -7.4213E-01  1.8433E-01 -2.9169E-01 -3.0909E+00 -2.8972E+00
             1.6531E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1660.98994054389        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.7136E-01  4.2971E-01  7.3842E-01  1.4103E+00  6.4544E-01  1.0150E+00  2.2413E+00  1.3872E-01  7.6229E-01  8.6816E-01
             9.5621E-01
 PARAMETER:  7.0941E-02 -7.4465E-01 -2.0324E-01  4.4381E-01 -3.3782E-01  1.1485E-01  9.0705E-01 -1.8753E+00 -1.7142E-01 -4.1385E-02
             5.5223E-02
 GRADIENT:   6.1683E-01  7.3669E+00  7.6180E+00  1.7385E+01 -1.2645E+01  3.6323E-02  5.8199E-03 -1.5446E-01 -1.3328E+00 -1.3105E-01
            -1.7720E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1661.27425795310        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      887
 NPARAMETR:  9.6930E-01  3.2760E-01  7.3817E-01  1.4501E+00  6.2626E-01  1.0125E+00  2.6238E+00  8.6462E-02  7.4989E-01  8.8747E-01
             9.5592E-01
 PARAMETER:  6.8821E-02 -1.0160E+00 -2.0359E-01  4.7167E-01 -3.6798E-01  1.1240E-01  1.0646E+00 -2.3481E+00 -1.8783E-01 -1.9381E-02
             5.4917E-02
 GRADIENT:   9.8393E-01 -2.7758E-01 -9.2769E-01 -7.6019E+00  1.6917E+00  6.0034E-02 -4.7253E-02 -7.8957E-02  3.7245E-01  2.2153E-01
             3.0088E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1661.28914957230        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1073             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6944E-01  3.2870E-01  7.3816E-01  1.4495E+00  6.2553E-01  1.0127E+00  2.6419E+00  9.7051E-02  7.4855E-01  8.8541E-01
             9.5510E-01
 PARAMETER:  6.8963E-02 -1.0126E+00 -2.0359E-01  4.7123E-01 -3.6916E-01  1.1258E-01  1.0715E+00 -2.2325E+00 -1.8962E-01 -2.1705E-02
             5.4064E-02
 GRADIENT:   3.9220E+02  4.6718E+01  1.4662E+01  6.2562E+02  4.7274E+01  4.7507E+01  3.9155E+01  1.4944E-02  1.6085E+01  1.0652E+00
             7.2742E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1661.30124229073        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1252             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6943E-01  3.2736E-01  7.3749E-01  1.4497E+00  6.2572E-01  1.0127E+00  2.6410E+00  1.0832E-01  7.4864E-01  8.8443E-01
             9.5506E-01
 PARAMETER:  6.8955E-02 -1.0167E+00 -2.0450E-01  4.7138E-01 -3.6886E-01  1.1257E-01  1.0712E+00 -2.1227E+00 -1.8949E-01 -2.2813E-02
             5.4016E-02
 GRADIENT:   3.9218E+02  4.6131E+01  1.1760E+01  6.2591E+02  5.0589E+01  4.7499E+01  3.8907E+01  2.3477E-02  1.6170E+01  1.1460E+00
             9.1383E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1661.31519406694        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1434             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6948E-01  3.2758E-01  7.3811E-01  1.4499E+00  6.2507E-01  1.0127E+00  2.6471E+00  1.2024E-01  7.4892E-01  8.8368E-01
             9.5483E-01
 PARAMETER:  6.9004E-02 -1.0160E+00 -2.0366E-01  4.7153E-01 -3.6990E-01  1.1257E-01  1.0735E+00 -2.0182E+00 -1.8912E-01 -2.3656E-02
             5.3774E-02
 GRADIENT:   3.9255E+02  4.6670E+01  1.4303E+01  6.2650E+02  4.7291E+01  4.7524E+01  3.9301E+01  2.2040E-02  1.6236E+01  1.1800E+00
             8.3659E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1661.33070351004        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1616             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6942E-01  3.2646E-01  7.3833E-01  1.4502E+00  6.2501E-01  1.0126E+00  2.6490E+00  1.3280E-01  7.4892E-01  8.8268E-01
             9.5468E-01
 PARAMETER:  6.8938E-02 -1.0194E+00 -2.0336E-01  4.7171E-01 -3.6999E-01  1.1257E-01  1.0742E+00 -1.9189E+00 -1.8913E-01 -2.4793E-02
             5.3619E-02
 GRADIENT:   3.9259E+02  4.6425E+01  1.3824E+01  6.2670E+02  4.7691E+01  4.7547E+01  3.9193E+01  2.7629E-02  1.6275E+01  1.2022E+00
             8.9401E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1661.34487366116        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1793
 NPARAMETR:  9.6788E-01  3.1552E-01  7.4205E-01  1.4641E+00  6.2453E-01  1.0117E+00  2.6499E+00  1.9111E-01  7.4867E-01  8.8163E-01
             9.5393E-01
 PARAMETER:  6.7356E-02 -1.0535E+00 -1.9833E-01  4.8121E-01 -3.7076E-01  1.1164E-01  1.0745E+00 -1.5549E+00 -1.8946E-01 -2.5977E-02
             5.2838E-02
 GRADIENT:  -1.4456E+00  7.2572E-01 -3.2147E+00  7.1772E+00  4.4941E-01 -1.2513E-01 -1.4701E+00 -2.4517E-01 -1.1103E-01  3.3506E-01
             2.1612E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1661.37014998022        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1969
 NPARAMETR:  9.6650E-01  2.9458E-01  7.5192E-01  1.4815E+00  6.2406E-01  1.0107E+00  2.7033E+00  3.4109E-01  7.4909E-01  8.6948E-01
             9.5034E-01
 PARAMETER:  6.5928E-02 -1.1222E+00 -1.8513E-01  4.9305E-01 -3.7151E-01  1.1060E-01  1.0945E+00 -9.7560E-01 -1.8890E-01 -3.9859E-02
             4.9063E-02
 GRADIENT:  -3.0529E+00  1.0189E+00 -8.2561E+00  1.5688E+01  1.3280E-01 -2.4710E-01 -2.7502E+00  1.6751E-01 -3.8354E-01  1.8384E+00
             8.1168E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1661.60023559031        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2150
 NPARAMETR:  9.6593E-01  2.1688E-01  8.0314E-01  1.5215E+00  6.3423E-01  1.0081E+00  3.1982E+00  5.2895E-01  7.4896E-01  8.3326E-01
             9.4293E-01
 PARAMETER:  6.5335E-02 -1.4284E+00 -1.1922E-01  5.1972E-01 -3.5534E-01  1.0809E-01  1.2626E+00 -5.3687E-01 -1.8907E-01 -8.2404E-02
             4.1237E-02
 GRADIENT:   1.9969E+00 -3.7010E-01  4.6975E+00 -7.2626E+00 -9.3969E+00 -5.5746E-02 -1.4945E+00  2.3981E-01  3.3656E+00 -3.7546E+00
            -1.5452E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1661.80067166522        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2325
 NPARAMETR:  9.6376E-01  1.6461E-01  8.5164E-01  1.5576E+00  6.5674E-01  1.0068E+00  3.7567E+00  5.4408E-01  7.2876E-01  8.9429E-01
             9.4761E-01
 PARAMETER:  6.3085E-02 -1.7042E+00 -6.0589E-02  5.4316E-01 -3.2047E-01  1.0674E-01  1.4235E+00 -5.0866E-01 -2.1641E-01 -1.1720E-02
             4.6188E-02
 GRADIENT:   1.0649E+00 -7.7663E-01 -5.5455E-01 -7.0184E+00 -1.5236E+00  9.7738E-02  5.2625E-01 -8.5697E-02  2.8737E-01 -2.4514E-01
            -5.7495E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1661.80432055501        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2500
 NPARAMETR:  9.6341E-01  1.7193E-01  8.5269E-01  1.5577E+00  6.5920E-01  1.0067E+00  3.6706E+00  5.4052E-01  7.2930E-01  8.9998E-01
             9.4807E-01
 PARAMETER:  6.2724E-02 -1.6607E+00 -5.9360E-02  5.4324E-01 -3.1672E-01  1.0671E-01  1.4003E+00 -5.1522E-01 -2.1567E-01 -5.3785E-03
             4.6669E-02
 GRADIENT:  -2.1162E-01 -4.1030E-01 -2.1213E+00  1.3192E+00 -9.7553E-01 -2.4299E-02 -3.9719E-02 -2.7636E-03  1.7631E-02  4.7035E-01
             1.0134E-01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1661.80624409960        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2675
 NPARAMETR:  9.6313E-01  1.7833E-01  8.6502E-01  1.5593E+00  6.6775E-01  1.0067E+00  3.6020E+00  5.5656E-01  7.2960E-01  9.0537E-01
             9.4861E-01
 PARAMETER:  6.2429E-02 -1.6241E+00 -4.5003E-02  5.4426E-01 -3.0384E-01  1.0669E-01  1.3815E+00 -4.8598E-01 -2.1526E-01  5.8316E-04
             4.7244E-02
 GRADIENT:  -1.0673E+00  4.9737E-02 -2.6680E+00  6.8716E+00 -6.0114E-01 -9.6051E-02 -2.3177E-01  4.1651E-02 -3.5102E-01  6.5898E-01
             1.9846E-01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1661.80897757675        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     2850
 NPARAMETR:  9.6293E-01  1.8235E-01  8.9029E-01  1.5628E+00  6.8322E-01  1.0067E+00  3.5630E+00  5.9180E-01  7.2948E-01  9.1348E-01
             9.4917E-01
 PARAMETER:  6.2226E-02 -1.6018E+00 -1.6210E-02  5.4646E-01 -2.8094E-01  1.0668E-01  1.3706E+00 -4.2459E-01 -2.1542E-01  9.5113E-03
             4.7829E-02
 GRADIENT:  -1.3639E+00  3.4070E-01 -2.4359E+00  8.8132E+00 -1.0677E-01 -1.1925E-01 -2.9527E-01  7.1292E-02 -5.1555E-01  6.2028E-01
             2.2063E-01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1661.81111843438        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     3026
 NPARAMETR:  9.6294E-01  1.8213E-01  9.1473E-01  1.5660E+00  6.9706E-01  1.0067E+00  3.5677E+00  6.2589E-01  7.2916E-01  9.2007E-01
             9.4943E-01
 PARAMETER:  6.2232E-02 -1.6030E+00  1.0876E-02  5.4850E-01 -2.6088E-01  1.0669E-01  1.3719E+00 -3.6858E-01 -2.1586E-01  1.6692E-02
             4.8110E-02
 GRADIENT:  -9.6393E-01  3.2389E-01 -1.5343E+00  6.2189E+00  1.3932E-01 -8.0333E-02 -1.7916E-01  5.8136E-02 -4.0887E-01  3.8793E-01
             1.5135E-01

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1661.84246590220        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     3207
 NPARAMETR:  9.6439E-01  1.8161E-01  9.2194E-01  1.5552E+00  7.0000E-01  1.0072E+00  3.5841E+00  6.3280E-01  7.2985E-01  9.1826E-01
             9.4918E-01
 PARAMETER:  6.3737E-02 -1.6059E+00  1.8730E-02  5.4163E-01 -2.5667E-01  1.0716E-01  1.3765E+00 -3.5761E-01 -2.1491E-01  1.4723E-02
             4.7839E-02
 GRADIENT:   3.0248E+00  1.5011E+00  1.8590E+00 -2.7538E+01  6.0909E-01  5.7073E-01  5.5184E+00 -1.7290E-01 -4.4625E+00 -4.9084E-01
            -1.7884E-01

0ITERATION NO.:   93    OBJECTIVE VALUE:  -1661.86289875047        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:     3303
 NPARAMETR:  9.6383E-01  1.8161E-01  9.2045E-01  1.5594E+00  6.9991E-01  1.0069E+00  3.5603E+00  6.3455E-01  7.3166E-01  9.1964E-01
             9.4923E-01
 PARAMETER:  6.3096E-02 -1.6053E+00  1.7399E-02  5.4482E-01 -2.5649E-01  1.0697E-01  1.3750E+00 -3.5620E-01 -2.1416E-01  1.5230E-02
             4.7863E-02
 GRADIENT:  -1.5376E-01  8.6789E-02  3.5118E-01  2.3393E+00  5.6886E-01  5.7314E-02  8.3725E+00 -3.9735E-02 -5.3915E-01 -8.2171E-02
            -1.2096E-02
 NUMSIGDIG:         3.2         3.4         2.5         3.0         2.9         2.9         2.4         2.4         2.1         1.9
                    3.5

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     3303
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1755E-03  3.5953E-02 -2.6510E-02 -2.5549E-02 -1.1513E-02
 SE:             2.9863E-02  1.5971E-02  1.3753E-02  2.6010E-02  2.2149E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6860E-01  2.4377E-02  5.3901E-02  3.2596E-01  6.0321E-01

 ETASHRINKSD(%)  1.0000E-10  4.6495E+01  5.3927E+01  1.2864E+01  2.5799E+01
 ETASHRINKVR(%)  1.0000E-10  7.1372E+01  7.8773E+01  2.4074E+01  4.4941E+01
 EBVSHRINKSD(%)  4.0003E-01  5.7996E+01  5.5697E+01  8.6586E+00  2.1269E+01
 EBVSHRINKVR(%)  7.9846E-01  8.2356E+01  8.0372E+01  1.6568E+01  3.8014E+01
 RELATIVEINF(%)  9.8562E+01  4.9810E+00  2.5220E+00  2.8023E+01  7.3692E+00
 EPSSHRINKSD(%)  4.4990E+01
 EPSSHRINKVR(%)  6.9739E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1661.8628987504667     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -926.71207218672851     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    46.21
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1661.863       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.64E-01  1.82E-01  9.21E-01  1.56E+00  7.00E-01  1.01E+00  3.58E+00  6.34E-01  7.30E-01  9.19E-01  9.49E-01
 


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
 #CPUT: Total CPU Time in Seconds,       46.235
Stop Time:
Sat Oct  2 02:07:38 CDT 2021

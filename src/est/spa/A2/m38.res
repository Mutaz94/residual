Sat Sep 18 09:49:51 CDT 2021
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
$DATA ../../../../data/spa/A2/dat38.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m38.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1074.56414610110        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   7.1272E+01  5.7825E+01  1.3282E+01  6.8361E+01  1.2005E+02 -6.2971E+00 -5.1524E+01 -6.8259E+00 -6.8395E+01 -7.3265E+01
            -9.6092E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1382.91454296648        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0694E+00  9.5658E-01  1.0296E+00  1.0630E+00  9.1228E-01  9.5837E-01  1.1518E+00  9.3588E-01  1.2357E+00  9.9104E-01
             2.8191E+00
 PARAMETER:  1.6713E-01  5.5607E-02  1.2920E-01  1.6112E-01  8.1890E-03  5.7478E-02  2.4132E-01  3.3734E-02  3.1163E-01  9.0998E-02
             1.1364E+00
 GRADIENT:   1.4311E+02  2.7326E+01 -2.4617E+00  4.4391E+01 -2.0015E+01 -1.9291E+01  4.5701E+00  5.9015E+00  1.8099E+01  1.3995E+01
             8.0964E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1391.58904556450        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0583E+00  6.9559E-01  7.4616E-01  1.2368E+00  6.9361E-01  1.0062E+00  1.9621E+00  2.7286E-01  9.9521E-01  8.5322E-01
             2.5395E+00
 PARAMETER:  1.5669E-01 -2.6299E-01 -1.9281E-01  3.1252E-01 -2.6584E-01  1.0620E-01  7.7401E-01 -1.1988E+00  9.5194E-02 -5.8736E-02
             1.0320E+00
 GRADIENT:   1.1253E+02  4.2998E+01 -2.8982E+01  1.0755E+02  2.1666E+01 -3.2306E+00  1.6934E+01  9.9734E-01  3.7765E+00  9.4553E+00
             5.2043E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1407.55066774154        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  9.8462E-01  5.0033E-01  5.2267E-01  1.2070E+00  4.9429E-01  1.0153E+00  1.9500E+00  1.0180E-01  9.0470E-01  6.5629E-01
             2.1165E+00
 PARAMETER:  8.4496E-02 -5.9249E-01 -5.4880E-01  2.8810E-01 -6.0463E-01  1.1520E-01  7.6781E-01 -2.1848E+00 -1.5712E-04 -3.2115E-01
             8.4976E-01
 GRADIENT:  -2.9886E+01  2.2476E+01  1.2768E+01  3.9040E+01 -1.2622E+01  1.2350E+00 -6.1912E-01  1.0989E-01 -1.0617E+01 -6.1023E+00
            -1.8945E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1410.59457091591        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      304
 NPARAMETR:  9.9480E-01  3.3875E-01  2.8714E-01  1.1372E+00  3.0936E-01  1.0425E+00  2.0496E+00  1.5028E-02  9.3902E-01  5.8150E-01
             2.0335E+00
 PARAMETER:  9.4787E-02 -9.8249E-01 -1.1478E+00  2.2854E-01 -1.0733E+00  1.4158E-01  8.1765E-01 -4.0978E+00  3.7081E-02 -4.4215E-01
             8.0974E-01
 GRADIENT:  -1.6969E+01  9.4571E+00 -4.1366E+00  2.8883E+01  2.3709E+00  6.6954E+00  1.6162E+00  1.6310E-04 -8.3015E+00 -1.0492E+01
            -3.8688E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1414.01163248848        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      461
 NPARAMETR:  1.0074E+00  2.6927E-01  3.7842E-01  1.2368E+00  3.5329E-01  1.0065E+00  2.5093E+00  1.1757E-02  9.3953E-01  7.4152E-01
             2.0412E+00
 PARAMETER:  1.0734E-01 -1.2121E+00 -8.7176E-01  3.1253E-01 -9.4048E-01  1.0647E-01  1.0200E+00 -4.3433E+00  3.7620E-02 -1.9905E-01
             8.1352E-01
 GRADIENT:   8.6225E+00  1.0559E+01  2.0678E+00  1.9014E+01 -1.2012E+01 -4.1789E+00  5.8262E-01  3.1954E-03 -1.2804E+00  6.2635E+00
            -5.4798E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1416.59120244444        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      638
 NPARAMETR:  9.9650E-01  1.4531E-01  3.5922E-01  1.2566E+00  3.2405E-01  1.0186E+00  3.4139E+00  1.0000E-02  9.4306E-01  7.4542E-01
             2.0406E+00
 PARAMETER:  9.6495E-02 -1.8289E+00 -9.2383E-01  3.2842E-01 -1.0269E+00  1.1845E-01  1.3279E+00 -6.0032E+00  4.1375E-02 -1.9381E-01
             8.1324E-01
 GRADIENT:  -4.4401E+00 -1.8278E+00  1.8355E+01  7.7633E+00 -2.9310E+01  1.5766E+00 -7.8120E+00  0.0000E+00  2.6395E+00  5.6315E+00
             2.2591E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1417.40735289818        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      813
 NPARAMETR:  9.9424E-01  1.0874E-01  3.9947E-01  1.2974E+00  3.4946E-01  1.0105E+00  4.2686E+00  1.0000E-02  9.1637E-01  7.4224E-01
             2.0471E+00
 PARAMETER:  9.4223E-02 -2.1188E+00 -8.1761E-01  3.6038E-01 -9.5137E-01  1.1040E-01  1.5513E+00 -6.4676E+00  1.2660E-02 -1.9808E-01
             8.1644E-01
 GRADIENT:  -2.3686E-01  3.1004E+00  1.9808E-01  7.8947E-01 -3.9521E-01 -6.2517E-01  3.1564E+00  0.0000E+00 -3.2438E+00  1.9438E+00
            -1.4546E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1417.93338272257        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      992
 NPARAMETR:  9.9001E-01  7.2163E-02  3.5504E-01  1.2750E+00  3.2132E-01  1.0213E+00  5.2832E+00  1.0000E-02  9.4225E-01  6.8017E-01
             2.0443E+00
 PARAMETER:  8.9956E-02 -2.5288E+00 -9.3552E-01  3.4295E-01 -1.0353E+00  1.2104E-01  1.7645E+00 -7.6914E+00  4.0515E-02 -2.8541E-01
             8.1507E-01
 GRADIENT:  -7.4000E+00 -5.5860E+00  7.8892E+00  1.4697E+01 -1.2787E+01  3.1085E+00 -1.0806E+01  0.0000E+00  7.8816E+00  8.8955E-01
             4.1198E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1418.03990909675        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1168
 NPARAMETR:  9.9220E-01  6.4001E-02  3.4627E-01  1.2647E+00  3.1604E-01  1.0160E+00  5.6088E+00  1.0000E-02  9.3726E-01  6.8381E-01
             2.0243E+00
 PARAMETER:  9.2169E-02 -2.6489E+00 -9.6053E-01  3.3480E-01 -1.0519E+00  1.1590E-01  1.8243E+00 -8.1060E+00  3.5207E-02 -2.8007E-01
             8.0523E-01
 GRADIENT:   5.6344E-01  2.7736E+00 -4.6231E+00 -4.0369E+00  5.5818E+00 -9.7830E-02  4.3860E+00  0.0000E+00 -2.2508E+00 -1.5817E+00
            -5.1128E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1418.05268374655        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1347
 NPARAMETR:  9.9207E-01  6.3026E-02  3.5276E-01  1.2708E+00  3.1991E-01  1.0151E+00  5.6792E+00  1.0000E-02  9.3409E-01  6.8639E-01
             2.0272E+00
 PARAMETER:  9.2043E-02 -2.6642E+00 -9.4195E-01  3.3965E-01 -1.0397E+00  1.1502E-01  1.8368E+00 -8.1049E+00  3.1813E-02 -2.7630E-01
             8.0664E-01
 GRADIENT:   8.4013E+00  3.3598E+01 -3.6494E+01 -4.4324E+01  5.1578E+01 -4.5818E+00  5.9496E+01  0.0000E+00 -3.2300E+01 -1.5015E+01
            -6.4276E+00

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1418.05632087587        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1523
 NPARAMETR:  9.9194E-01  6.1198E-02  3.5200E-01  1.2705E+00  3.1938E-01  1.0149E+00  5.7695E+00  1.0000E-02  9.3350E-01  6.8571E-01
             2.0268E+00
 PARAMETER:  9.1903E-02 -2.6936E+00 -9.4412E-01  3.3945E-01 -1.0414E+00  1.1475E-01  1.8526E+00 -8.1887E+00  3.1182E-02 -2.7730E-01
             8.0645E-01
 GRADIENT:   1.5522E+00  6.4043E+00 -7.0030E+00 -8.5767E+00  1.0010E+01 -8.9592E-01  1.1440E+01  0.0000E+00 -6.1839E+00 -2.8563E+00
            -1.1840E+00

0ITERATION NO.:   59    OBJECTIVE VALUE:  -1418.05691971247        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:     1650
 NPARAMETR:  9.9194E-01  6.0506E-02  3.5224E-01  1.2709E+00  3.1949E-01  1.0147E+00  5.8053E+00  1.0000E-02  9.3294E-01  6.8550E-01
             2.0266E+00
 PARAMETER:  9.1906E-02 -2.7050E+00 -9.4344E-01  3.3974E-01 -1.0410E+00  1.1460E-01  1.8588E+00 -8.2169E+00  3.0580E-02 -2.7761E-01
             8.0636E-01
 GRADIENT:   1.8809E-01  6.1908E-01 -6.2706E-01 -8.3651E-01  9.3103E-01 -1.1572E-01  1.1262E+00  0.0000E+00 -6.1427E-01 -2.8959E-01
            -1.5155E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1650
 NO. OF SIG. DIGITS IN FINAL EST.:  3.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3828E-03  4.1682E-02 -1.2605E-04 -1.7229E-02  1.0345E-02
 SE:             2.9301E-02  1.4022E-02  2.2299E-04  2.6822E-02  2.1908E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6236E-01  2.9524E-03  5.7189E-01  5.2065E-01  6.3680E-01

 ETASHRINKSD(%)  1.8393E+00  5.3025E+01  9.9253E+01  1.0142E+01  2.6605E+01
 ETASHRINKVR(%)  3.6447E+00  7.7934E+01  9.9994E+01  1.9255E+01  4.6132E+01
 EBVSHRINKSD(%)  1.5873E+00  6.5882E+01  9.9173E+01  7.0035E+00  2.2891E+01
 EBVSHRINKVR(%)  3.1495E+00  8.8360E+01  9.9993E+01  1.3516E+01  4.0541E+01
 RELATIVEINF(%)  9.6111E+01  8.3303E+00  3.1539E-04  3.0854E+01  2.8771E+00
 EPSSHRINKSD(%)  3.8210E+01
 EPSSHRINKVR(%)  6.1820E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1418.0569197124723     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -682.90609314873416     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.97
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     7.18
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1418.057       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  6.05E-02  3.52E-01  1.27E+00  3.19E-01  1.01E+00  5.81E+00  1.00E-02  9.33E-01  6.85E-01  2.03E+00
 


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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        2.16E+03
 
 TH 2
+       -1.01E+03  7.44E+06
 
 TH 3
+        7.33E+02  3.09E+03  1.82E+06
 
 TH 4
+        7.55E+02  3.23E+03 -3.26E+03  1.08E+06
 
 TH 5
+       -5.06E+02 -7.82E+03 -5.25E+03  2.02E+03  1.82E+06
 
 TH 6
+       -5.58E+02  5.57E+02 -4.02E+02 -4.34E+02  3.44E+02  5.04E+02
 
 TH 7
+       -1.24E+01 -7.78E+02  2.41E+01  3.93E+01 -7.46E+01  7.88E+00  1.72E+03
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -5.78E+03  3.41E+03 -2.71E+03 -2.94E+03  2.27E+03  3.09E+03  4.71E+01  0.00E+00  2.31E+07
 
 TH10
+       -5.23E+03  5.37E+02 -1.19E+03 -1.35E+03  7.89E+02  2.58E+03  3.39E+00  0.00E+00  1.13E+07  5.55E+06
 
 TH11
+       -1.24E+06  7.50E+01 -2.01E+02 -2.09E+02  1.22E+02  1.06E+06  5.53E-01  0.00E+00  1.32E+06  6.46E+05  7.53E+04
 
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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       29.221
Stop Time:
Sat Sep 18 09:50:22 CDT 2021
Fri Oct  1 17:45:43 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat36.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m36.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1246.72131697790        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0853E+02  3.1461E+00  1.6772E+02  2.4352E+01  1.8439E+02  2.6534E+01 -5.0237E+01 -3.6693E+02 -6.5636E+01 -7.1370E+01
            -1.8601E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1945.83024680667        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  9.7253E-01  9.9201E-01  8.5106E-01  1.0112E+00  8.7313E-01  9.9612E-01  1.0746E+00  1.1094E+00  9.7296E-01  1.1372E+00
             2.1173E+00
 PARAMETER:  7.2141E-02  9.1974E-02 -6.1271E-02  1.1116E-01 -3.5670E-02  9.6110E-02  1.7198E-01  2.0384E-01  7.2583E-02  2.2861E-01
             8.5015E-01
 GRADIENT:   6.4504E+00 -1.5147E+01  6.7862E+00 -1.5892E+01  1.8907E+01 -8.2353E+00 -6.2944E+00  6.8846E+00  1.3477E+00  2.0387E+00
            -7.1042E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1948.43950763880        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      221
 NPARAMETR:  9.7150E-01  8.8435E-01  6.9812E-01  1.0996E+00  7.5225E-01  1.0780E+00  1.3632E+00  7.3904E-01  8.9531E-01  1.0336E+00
             2.0830E+00
 PARAMETER:  7.1084E-02 -2.2899E-02 -2.5937E-01  1.9492E-01 -1.8468E-01  1.7511E-01  4.0981E-01 -2.0240E-01 -1.0583E-02  1.3300E-01
             8.3381E-01
 GRADIENT:  -7.9096E+01  3.6370E+00 -1.6894E+01  3.5917E+01  3.6423E+01  7.7629E+00  7.5000E+00  3.6994E+00 -6.5638E+00  1.1994E-01
            -1.0149E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1958.28219526116        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      397
 NPARAMETR:  1.0193E+00  7.2669E-01  5.5273E-01  1.1570E+00  5.8278E-01  1.0309E+00  1.3773E+00  3.3734E-01  9.1671E-01  8.8409E-01
             2.2744E+00
 PARAMETER:  1.1916E-01 -2.1925E-01 -4.9288E-01  2.4587E-01 -4.3995E-01  1.3045E-01  4.2012E-01 -9.8667E-01  1.3035E-02 -2.3196E-02
             9.2174E-01
 GRADIENT:   5.8400E+00  1.0487E+01  5.3413E-02  2.2942E+01 -6.8728E-01 -5.4301E+00  1.2369E+00  6.6619E-01 -3.8346E-01 -2.5428E-01
             1.0834E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1959.13607910385        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      572
 NPARAMETR:  1.0159E+00  6.2380E-01  4.6985E-01  1.1671E+00  4.9931E-01  1.0485E+00  1.4605E+00  1.9021E-01  9.2683E-01  7.9578E-01
             2.2445E+00
 PARAMETER:  1.1581E-01 -3.7193E-01 -6.5535E-01  2.5448E-01 -5.9453E-01  1.4741E-01  4.7879E-01 -1.5596E+00  2.4013E-02 -1.2844E-01
             9.0846E-01
 GRADIENT:  -7.0862E-02 -3.7326E-01  1.6183E-01  6.8994E-01 -4.3828E-01  2.6060E-01 -2.2372E-01  1.4820E-01  4.4809E-01  6.1748E-02
             4.7091E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1959.18558569037        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      666
 NPARAMETR:  1.0156E+00  6.2514E-01  4.6788E-01  1.1640E+00  4.9885E-01  1.0460E+00  1.4673E+00  1.3659E-02  9.2265E-01  7.9518E-01
             2.2415E+00
 PARAMETER:  1.1543E-01 -3.6978E-01 -6.5954E-01  2.5186E-01 -5.9544E-01  1.4499E-01  4.8343E-01 -4.1934E+00  1.9497E-02 -1.2919E-01
             9.0715E-01
 GRADIENT:   8.8231E+01  2.0739E+01  1.7219E+01  5.0175E+01  5.9997E+01  1.2658E+01  5.6609E+00  2.1022E-03  3.1094E-01  4.9509E-01
             8.7876E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1959.19604585855        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      845
 NPARAMETR:  1.0156E+00  6.2464E-01  4.6792E-01  1.1657E+00  4.9883E-01  1.0476E+00  1.4576E+00  1.9096E-02  9.2732E-01  8.0122E-01
             2.2448E+00
 PARAMETER:  1.1553E-01 -3.7057E-01 -6.5947E-01  2.5335E-01 -5.9549E-01  1.4647E-01  4.7677E-01 -3.8583E+00  2.4543E-02 -1.2162E-01
             9.0863E-01
 GRADIENT:  -5.7888E-01 -1.7450E-01 -1.4343E-01 -3.2037E-01 -4.1600E-01 -8.4676E-02 -5.2528E-02  1.0759E-03 -5.0869E-03  5.5449E-03
            -6.7828E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1959.19607502235        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1020
 NPARAMETR:  1.0156E+00  6.2501E-01  4.6822E-01  1.1657E+00  4.9913E-01  1.0475E+00  1.4577E+00  2.3658E-02  9.2725E-01  8.0130E-01
             2.2449E+00
 PARAMETER:  1.1551E-01 -3.6999E-01 -6.5881E-01  2.5329E-01 -5.9489E-01  1.4644E-01  4.7686E-01 -3.6440E+00  2.4467E-02 -1.2152E-01
             9.0865E-01
 GRADIENT:  -5.9762E-01 -1.4178E-01 -1.0491E-01 -3.5235E-01 -4.3540E-01 -9.0289E-02 -2.6871E-02  1.6274E-03 -1.0820E-02 -1.6290E-02
            -6.6104E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1959.19623965892        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1195
 NPARAMETR:  1.0153E+00  6.2748E-01  4.6960E-01  1.1648E+00  5.0084E-01  1.0473E+00  1.4543E+00  2.8996E-02  9.2762E-01  8.0320E-01
             2.2450E+00
 PARAMETER:  1.1516E-01 -3.6604E-01 -6.5588E-01  2.5253E-01 -5.9147E-01  1.4626E-01  4.7455E-01 -3.4406E+00  2.4869E-02 -1.1916E-01
             9.0872E-01
 GRADIENT:  -1.2689E+00 -3.8289E-02 -2.4579E-01 -8.4971E-01 -2.9921E-01 -1.4257E-01 -5.9535E-02  2.4909E-03  7.4990E-02 -1.5293E-02
            -3.0277E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1959.19773010664        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1372
 NPARAMETR:  1.0154E+00  6.3464E-01  4.7557E-01  1.1637E+00  5.0688E-01  1.0472E+00  1.4443E+00  1.6423E-02  9.2708E-01  8.1175E-01
             2.2457E+00
 PARAMETER:  1.1531E-01 -3.5470E-01 -6.4324E-01  2.5159E-01 -5.7948E-01  1.4610E-01  4.6765E-01 -4.0091E+00  2.4281E-02 -1.0856E-01
             9.0904E-01
 GRADIENT:  -9.5410E-01  2.0852E-02 -1.4542E-01 -6.8684E-01 -5.5942E-02 -1.2903E-01 -1.3090E-01  8.4475E-04  3.6750E-02  7.4078E-02
            -7.6983E-02

0ITERATION NO.:   49    OBJECTIVE VALUE:  -1959.19866845214        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     1501
 NPARAMETR:  1.0159E+00  6.3421E-01  4.7581E-01  1.1642E+00  5.0687E-01  1.0475E+00  1.4470E+00  1.0000E-02  9.2673E-01  8.1108E-01
             2.2460E+00
 PARAMETER:  1.1573E-01 -3.5537E-01 -6.4274E-01  2.5207E-01 -5.7949E-01  1.4640E-01  4.6948E-01 -4.5485E+00  2.3905E-02 -1.0939E-01
             9.0915E-01
 GRADIENT:  -4.8183E-01 -4.4607E-02 -4.3849E-02  2.0638E-01  2.6889E-01 -7.1975E-02 -4.3185E-02  3.3686E-06  7.1210E-03  4.7407E-03
             3.1525E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1501
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0037E-03  4.5392E-03 -2.2666E-04 -7.0858E-03  1.2332E-04
 SE:             2.9501E-02  2.1152E-02  1.9130E-04  2.6556E-02  2.1862E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7286E-01  8.3008E-01  2.3606E-01  7.8960E-01  9.9550E-01

 ETASHRINKSD(%)  1.1676E+00  2.9137E+01  9.9359E+01  1.1036E+01  2.6761E+01
 ETASHRINKVR(%)  2.3215E+00  4.9785E+01  9.9996E+01  2.0854E+01  4.6360E+01
 EBVSHRINKSD(%)  1.3525E+00  2.8093E+01  9.9376E+01  1.0876E+01  2.7433E+01
 EBVSHRINKVR(%)  2.6867E+00  4.8294E+01  9.9996E+01  2.0569E+01  4.7340E+01
 RELATIVEINF(%)  9.7240E+01  9.3226E+00  5.6228E-04  5.1141E+01  3.6336E+00
 EPSSHRINKSD(%)  2.5886E+01
 EPSSHRINKVR(%)  4.5071E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1959.1986684521432     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -856.47242860653614     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.02
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1959.199       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  6.34E-01  4.76E-01  1.16E+00  5.07E-01  1.05E+00  1.45E+00  1.00E-02  9.27E-01  8.11E-01  2.25E+00
 


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
 #CPUT: Total CPU Time in Seconds,       26.059
Stop Time:
Fri Oct  1 17:46:10 CDT 2021

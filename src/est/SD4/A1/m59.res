Sat Oct  2 00:07:06 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat59.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1304.52628926591        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.3011E+02  3.5192E+00  2.1043E+01  7.1360E+00  4.5319E+01  2.4261E+01 -6.6863E+00 -1.0833E+01 -1.2163E+01 -3.1468E+00
            -7.2168E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1515.70642266281        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0785E+00  1.0441E+00  1.0031E+00  1.0341E+00  9.4914E-01  1.1229E+00  9.7939E-01  9.8401E-01  1.0125E+00  8.3395E-01
             1.8275E+00
 PARAMETER:  1.7561E-01  1.4315E-01  1.0307E-01  1.3355E-01  4.7801E-02  2.1587E-01  7.9179E-02  8.3885E-02  1.1242E-01 -8.1588E-02
             7.0292E-01
 GRADIENT:   2.5816E+02  4.1725E+01  3.1114E+01  2.5787E+01 -4.0583E+01  5.2950E+01  2.0323E+00 -2.7652E+00  9.4797E-03  7.5861E+00
            -6.7108E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1517.89420564735        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      181
 NPARAMETR:  1.0851E+00  1.0015E+00  5.5830E-01  1.0231E+00  7.0280E-01  1.0467E+00  9.7625E-01  1.0177E+00  9.6769E-01  3.8751E-01
             1.8121E+00
 PARAMETER:  1.8163E-01  1.0153E-01 -4.8286E-01  1.2288E-01 -2.5268E-01  1.4565E-01  7.5967E-02  1.1751E-01  6.7160E-02 -8.4800E-01
             6.9450E-01
 GRADIENT:   1.6330E+01 -3.5423E+00 -1.5629E+01  3.1198E+01  1.4365E+01 -1.3047E+01 -6.1134E+00  7.2457E+00  3.9180E+00  1.8187E+00
            -6.9189E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1524.42718653112        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      358
 NPARAMETR:  1.0837E+00  1.0021E+00  5.9387E-01  1.0144E+00  7.2610E-01  1.0814E+00  1.0399E+00  7.4572E-01  9.2004E-01  4.0352E-01
             2.0589E+00
 PARAMETER:  1.8037E-01  1.0209E-01 -4.2109E-01  1.1429E-01 -2.2007E-01  1.7823E-01  1.3913E-01 -1.9340E-01  1.6665E-02 -8.0753E-01
             8.2218E-01
 GRADIENT:   9.1386E+00 -3.5809E+00  4.6296E-01 -4.6928E+00 -5.8136E+00  1.6197E+00 -1.4179E+00  9.8831E-01 -1.2041E+00  1.6069E+00
            -3.8146E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1525.12077520137        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      535
 NPARAMETR:  1.0808E+00  1.1810E+00  5.4721E-01  9.1001E-01  7.7886E-01  1.0754E+00  9.8287E-01  7.2135E-01  9.8710E-01  2.7145E-01
             2.1032E+00
 PARAMETER:  1.7766E-01  2.6634E-01 -5.0293E-01  5.7001E-03 -1.4992E-01  1.7268E-01  8.2718E-02 -2.2663E-01  8.7017E-02 -1.2040E+00
             8.4347E-01
 GRADIENT:   3.0429E+00  8.3388E+00  6.1098E+00  1.8049E+00 -9.1686E+00 -2.4524E-01  2.0215E+00 -9.5127E-01  7.5233E-01  3.7576E-02
            -1.0448E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1525.45858181814        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      710
 NPARAMETR:  1.0755E+00  1.3161E+00  5.0259E-01  8.2653E-01  8.2026E-01  1.0683E+00  9.1435E-01  9.3664E-01  1.0215E+00  1.6416E-01
             2.1225E+00
 PARAMETER:  1.7276E-01  3.7467E-01 -5.8797E-01 -9.0514E-02 -9.8129E-02  1.6605E-01  1.0464E-02  3.4541E-02  1.2125E-01 -1.7069E+00
             8.5260E-01
 GRADIENT:  -6.2957E+00  6.9364E+00  1.6575E+00  5.9152E+00  6.8290E-02 -2.2823E+00  2.3997E+00  4.8689E-01 -4.4309E-01  1.7354E-01
             2.4684E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1533.42677257260        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      892
 NPARAMETR:  1.0923E+00  1.5502E+00  2.0263E-01  5.9798E-01  6.8856E-01  1.1065E+00  7.4090E-01  1.5411E+00  1.0412E+00  1.5985E-01
             1.9212E+00
 PARAMETER:  1.8832E-01  5.3837E-01 -1.4964E+00 -4.1420E-01 -2.7315E-01  2.0119E-01 -1.9989E-01  5.3252E-01  1.4033E-01 -1.7335E+00
             7.5295E-01
 GRADIENT:   4.9141E+01  8.2336E+01  3.2047E+01 -1.8815E+01 -1.1791E+02  1.3000E+01 -1.0705E+01 -4.7003E+00 -3.6563E+00  1.0797E+00
             1.3190E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1539.44824253699        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1073
 NPARAMETR:  1.0833E+00  1.6284E+00  2.2534E-01  5.6429E-01  7.7699E-01  1.1244E+00  7.3804E-01  2.1570E+00  1.1559E+00  8.2282E-02
             1.8295E+00
 PARAMETER:  1.7997E-01  5.8758E-01 -1.3902E+00 -4.7218E-01 -1.5232E-01  2.1724E-01 -2.0376E-01  8.6874E-01  2.4489E-01 -2.3976E+00
             7.0403E-01
 GRADIENT:   3.1506E+01  9.7776E+00  1.6251E+01  6.8404E+00 -3.7648E+01  2.0276E+01 -5.9972E+00  1.3208E+00 -1.1531E+00  2.3217E-01
             8.0217E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1540.47027290196        NO. OF FUNC. EVALS.: 144
 CUMULATIVE NO. OF FUNC. EVALS.:     1217
 NPARAMETR:  1.0832E+00  1.6293E+00  2.2449E-01  5.6347E-01  7.8766E-01  1.0583E+00  7.3800E-01  2.1590E+00  1.1574E+00  5.2559E-02
             1.8311E+00
 PARAMETER:  1.7995E-01  5.8816E-01 -1.3939E+00 -4.7364E-01 -1.3869E-01  1.5662E-01 -2.0381E-01  8.6962E-01  2.4615E-01 -2.8458E+00
             7.0489E-01
 GRADIENT:   3.4685E+01 -1.1037E+01  1.0228E+01  1.3720E+01 -1.1501E+01 -1.8924E+00 -5.9489E+00  4.4399E-01 -1.1299E+00  8.7876E-02
             6.6951E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1540.88183816726        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1397
 NPARAMETR:  1.0826E+00  1.6439E+00  2.1914E-01  5.6228E-01  7.9330E-01  1.0614E+00  7.3851E-01  2.1558E+00  1.1579E+00  1.0000E-02
             1.8290E+00
 PARAMETER:  1.7938E-01  5.9704E-01 -1.4180E+00 -4.7575E-01 -1.3155E-01  1.5959E-01 -2.0312E-01  8.6815E-01  2.4664E-01 -1.7870E+01
             7.0379E-01
 GRADIENT:   3.2877E+01 -2.8152E+00  5.9690E+00  2.5894E+01 -2.2852E+00 -8.6382E-01 -5.4974E+00  1.3849E-01 -1.7264E+00  0.0000E+00
             4.9239E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1541.10764463288        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1578
 NPARAMETR:  1.0815E+00  1.6619E+00  2.1128E-01  5.6111E-01  7.9668E-01  1.0640E+00  7.5500E-01  2.1557E+00  1.1595E+00  1.0000E-02
             1.8275E+00
 PARAMETER:  1.7836E-01  6.0798E-01 -1.4546E+00 -4.7784E-01 -1.2731E-01  1.6206E-01 -1.8104E-01  8.6810E-01  2.4800E-01 -3.8752E+01
             7.0297E-01
 GRADIENT:   3.0414E+01  1.3343E+01  1.1031E+00  4.0550E+01  3.1090E+00 -5.2585E-02 -6.5110E-02  4.2054E-01 -1.6917E+00  0.0000E+00
             4.2966E+00

0ITERATION NO.:   51    OBJECTIVE VALUE:  -1541.10764463288        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1600
 NPARAMETR:  1.0815E+00  1.6619E+00  2.1128E-01  5.6111E-01  7.9668E-01  1.0640E+00  7.5500E-01  2.1557E+00  1.1595E+00  1.0000E-02
             1.8275E+00
 PARAMETER:  1.7836E-01  6.0798E-01 -1.4546E+00 -4.7784E-01 -1.2731E-01  1.6206E-01 -1.8104E-01  8.6810E-01  2.4800E-01 -3.8752E+01
             7.0297E-01
 GRADIENT:   3.0414E+01  1.3343E+01  1.1031E+00  4.0550E+01  3.1090E+00 -5.2585E-02 -6.5110E-02  4.2054E-01 -1.6917E+00  0.0000E+00
             4.2966E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1600
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.3230E-02 -1.7755E-02 -1.0729E-02 -8.7024E-03 -5.4250E-04
 SE:             2.9579E-02  2.5606E-02  1.7139E-02  2.1505E-02  2.5395E-04
 N:                     100         100         100         100         100

 P VAL.:         6.5469E-01  4.8806E-01  5.3134E-01  6.8572E-01  3.2656E-02

 ETASHRINKSD(%)  9.0513E-01  1.4217E+01  4.2581E+01  2.7957E+01  9.9149E+01
 ETASHRINKVR(%)  1.8021E+00  2.6413E+01  6.7031E+01  4.8098E+01  9.9993E+01
 EBVSHRINKSD(%)  1.1195E+00  1.4069E+01  4.1879E+01  2.8643E+01  9.9086E+01
 EBVSHRINKVR(%)  2.2265E+00  2.6159E+01  6.6219E+01  4.9082E+01  9.9992E+01
 RELATIVEINF(%)  9.6285E+01  7.6212E+00  8.1838E+00  6.2430E+00  9.5801E-04
 EPSSHRINKSD(%)  3.9157E+01
 EPSSHRINKVR(%)  6.2981E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1541.1076446328802     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -805.95681806914206     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.08
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1541.108       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.08E+00  1.66E+00  2.11E-01  5.61E-01  7.97E-01  1.06E+00  7.55E-01  2.16E+00  1.16E+00  1.00E-02  1.83E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.113
Stop Time:
Sat Oct  2 00:07:27 CDT 2021
Fri Oct  1 13:09:32 CDT 2021
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
$DATA ../../../../data/SD2/SL3/dat70.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m70.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2058.35375959820        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8072E+02 -1.0033E+01 -4.6640E+01  5.4184E+01  5.5913E+01  4.5504E+01 -4.0983E+00  1.7284E+01  1.4934E+01  2.5048E+01
            -1.8757E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2080.54930337397        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  1.0788E+00  1.0510E+00  1.1607E+00  1.0158E+00  1.0907E+00  1.0163E+00  1.0369E+00  8.9007E-01  9.5011E-01  8.1076E-01
             1.2526E+00
 PARAMETER:  1.7581E-01  1.4971E-01  2.4902E-01  1.1568E-01  1.8684E-01  1.1617E-01  1.3626E-01 -1.6459E-02  4.8821E-02 -1.0978E-01
             3.2522E-01
 GRADIENT:   8.8163E+01 -1.4688E+01 -3.2045E+01  2.5226E+01  8.8445E+01 -1.6893E+00 -7.4254E+00  5.1093E+00 -2.0932E+00 -9.5219E+00
             1.2089E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2085.71909029396        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      348
 NPARAMETR:  1.0596E+00  8.2115E-01  9.8753E-01  1.1862E+00  8.5612E-01  1.0099E+00  1.5307E+00  4.8869E-01  8.0868E-01  5.8508E-01
             1.2225E+00
 PARAMETER:  1.5790E-01 -9.7050E-02  8.7454E-02  2.7073E-01 -5.5347E-02  1.0989E-01  5.2573E-01 -6.1602E-01 -1.1236E-01 -4.3601E-01
             3.0088E-01
 GRADIENT:   5.2882E+01  4.8931E+01  9.1117E+00  9.5082E+01  9.9095E+00 -2.0331E+00  3.3008E+00 -1.2635E+00 -7.1518E+00 -1.6335E+01
            -1.0293E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2091.60648166893        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      523
 NPARAMETR:  1.0202E+00  7.5382E-01  9.5310E-01  1.1648E+00  8.2177E-01  1.0094E+00  1.5074E+00  2.3946E-01  8.0992E-01  7.3011E-01
             1.2085E+00
 PARAMETER:  1.2000E-01 -1.8260E-01  5.1962E-02  2.5254E-01 -9.6295E-02  1.0937E-01  5.1038E-01 -1.3294E+00 -1.1083E-01 -2.1456E-01
             2.8934E-01
 GRADIENT:  -2.8201E+01  1.1613E+01  1.9703E+01 -1.2624E+01 -2.6122E+01 -1.1686E+00  9.4946E-01  2.9877E-01 -2.0758E+00 -3.2028E-01
            -2.9432E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2093.32487363758        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      699
 NPARAMETR:  1.0278E+00  4.6621E-01  1.0075E+00  1.3337E+00  7.6317E-01  1.0070E+00  2.0245E+00  6.1147E-02  7.6193E-01  7.7528E-01
             1.2123E+00
 PARAMETER:  1.2737E-01 -6.6312E-01  1.0743E-01  3.8794E-01 -1.7027E-01  1.0702E-01  8.0530E-01 -2.6945E+00 -1.7190E-01 -1.5453E-01
             2.9248E-01
 GRADIENT:  -2.2507E+00  2.3684E+00  4.4107E+00 -2.7901E+00 -7.7042E+00 -3.5424E-02  1.8360E-01  1.4145E-02  9.4058E-01  2.1237E-01
             8.2134E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2093.42772534692        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      875
 NPARAMETR:  1.0264E+00  3.4419E-01  1.0717E+00  1.4158E+00  7.5969E-01  1.0046E+00  2.4117E+00  2.3204E-02  7.3863E-01  8.1425E-01
             1.2120E+00
 PARAMETER:  1.2601E-01 -9.6657E-01  1.6925E-01  4.4769E-01 -1.7485E-01  1.0462E-01  9.8033E-01 -3.6634E+00 -2.0296E-01 -1.0549E-01
             2.9224E-01
 GRADIENT:   3.0522E-01  3.7036E+00  3.0861E+00  1.1820E+01 -6.4619E+00 -6.6362E-03  1.1454E-01  9.4647E-04 -1.0176E+00  9.7875E-02
            -4.1651E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2093.49121986865        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1050
 NPARAMETR:  1.0246E+00  2.5566E-01  1.1154E+00  1.4680E+00  7.5821E-01  1.0028E+00  2.8315E+00  1.0000E-02  7.2654E-01  8.3951E-01
             1.2124E+00
 PARAMETER:  1.2426E-01 -1.2639E+00  2.0923E-01  4.8389E-01 -1.7679E-01  1.0282E-01  1.1408E+00 -4.7558E+00 -2.1946E-01 -7.4931E-02
             2.9262E-01
 GRADIENT:   6.1235E-01  1.9091E+00  9.4379E-01  7.6269E+00 -2.1678E+00 -2.2072E-03  4.6202E-02  0.0000E+00 -7.8245E-01  3.6796E-03
            -4.7198E-01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2093.52582032088        NO. OF FUNC. EVALS.: 105
 CUMULATIVE NO. OF FUNC. EVALS.:     1155
 NPARAMETR:  1.0249E+00  2.5428E-01  1.1152E+00  1.4635E+00  7.5790E-01  1.0029E+00  2.8678E+00  1.0000E-02  7.2760E-01  8.3981E-01
             1.2126E+00
 PARAMETER:  1.2450E-01 -1.2821E+00  2.0876E-01  4.8068E-01 -1.7622E-01  1.0293E-01  1.1424E+00 -4.7558E+00 -2.1736E-01 -7.4940E-02
             2.9290E-01
 GRADIENT:  -2.5611E-01 -4.8517E-01 -2.7967E-01 -6.6462E-01  1.0585E+00  9.5632E-03 -7.4437E-01  0.0000E+00  2.1188E-01 -6.1886E-02
             8.2423E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1155
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0792E-03  2.9166E-02 -2.2957E-04 -1.9011E-02 -7.7766E-03
 SE:             2.9837E-02  1.6218E-02  1.9325E-04  2.6300E-02  2.3185E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7115E-01  7.2116E-02  2.3486E-01  4.6977E-01  7.3731E-01

 ETASHRINKSD(%)  4.1494E-02  4.5668E+01  9.9353E+01  1.1891E+01  2.2328E+01
 ETASHRINKVR(%)  8.2970E-02  7.0481E+01  9.9996E+01  2.2367E+01  3.9670E+01
 EBVSHRINKSD(%)  4.7286E-01  5.3962E+01  9.9344E+01  9.5536E+00  1.8799E+01
 EBVSHRINKVR(%)  9.4349E-01  7.8805E+01  9.9996E+01  1.8195E+01  3.4064E+01
 RELATIVEINF(%)  9.8382E+01  3.4061E+00  4.5825E-04  1.4990E+01  7.4471E+00
 EPSSHRINKSD(%)  3.1219E+01
 EPSSHRINKVR(%)  5.2692E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2093.5258203208841     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1174.5872871162114     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.10
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2093.526       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  2.51E-01  1.11E+00  1.46E+00  7.59E-01  1.00E+00  2.84E+00  1.00E-02  7.28E-01  8.40E-01  1.21E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.141
Stop Time:
Fri Oct  1 13:09:52 CDT 2021

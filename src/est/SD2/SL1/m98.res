Fri Oct  1 12:04:31 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat98.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m98.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2098.11930239566        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6793E+02 -1.7447E+01 -4.1043E+01  6.5990E+01  8.5131E+01  5.5638E+01 -5.3873E+00 -1.7716E+00  9.2981E+00  1.2517E+01
             9.4639E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2102.84485876713        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  9.7370E-01  1.0430E+00  1.0246E+00  9.8377E-01  9.5538E-01  9.7289E-01  1.0211E+00  1.0120E+00  9.9310E-01  9.5297E-01
             9.8935E-01
 PARAMETER:  7.3344E-02  1.4209E-01  1.2428E-01  8.3632E-02  5.4355E-02  7.2521E-02  1.2088E-01  1.1188E-01  9.3075E-02  5.1831E-02
             8.9289E-02
 GRADIENT:  -2.4724E+00 -6.8099E+00  1.0638E+01 -1.2620E+01 -1.8959E+01  2.7459E+00 -6.1235E+00 -5.9419E+00  5.5844E-01  1.2098E+01
             1.0725E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2104.88248916394        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      332
 NPARAMETR:  9.7064E-01  1.1612E+00  9.1544E-01  9.2748E-01  9.4995E-01  9.7453E-01  1.1222E+00  1.2815E+00  9.8258E-01  7.2085E-01
             9.6503E-01
 PARAMETER:  7.0198E-02  2.4945E-01  1.1645E-02  2.4720E-02  4.8649E-02  7.4198E-02  2.1529E-01  3.4800E-01  8.2422E-02 -2.2733E-01
             6.4406E-02
 GRADIENT:  -1.2853E+01  1.7791E+01  5.5707E+00  1.8925E+01  4.9710E+00  2.4710E+00  4.2559E+00 -2.5761E+00  2.4135E-01 -1.1691E+01
            -1.0727E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2106.56713419866        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      508
 NPARAMETR:  9.7715E-01  1.3290E+00  8.2065E-01  8.0397E-01  1.0038E+00  9.6647E-01  9.6742E-01  1.2761E+00  1.0827E+00  8.5429E-01
             9.7640E-01
 PARAMETER:  7.6887E-02  3.8441E-01 -9.7660E-02 -1.1820E-01  1.0378E-01  6.5896E-02  6.6880E-02  3.4378E-01  1.7941E-01 -5.7488E-02
             7.6118E-02
 GRADIENT:   4.3888E-01 -5.4984E+00  8.9200E-01 -4.2132E-01 -1.3158E+00 -9.7799E-01 -8.3214E-01 -6.5106E-01 -1.2052E-01  2.3093E+00
             1.6394E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2107.22074019416        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      683
 NPARAMETR:  9.7852E-01  1.6302E+00  6.4724E-01  6.2094E-01  1.0858E+00  9.7100E-01  8.5988E-01  1.3738E+00  1.2770E+00  8.8295E-01
             9.7339E-01
 PARAMETER:  7.8283E-02  5.8869E-01 -3.3503E-01 -3.7652E-01  1.8231E-01  7.0571E-02 -5.0960E-02  4.1756E-01  3.4455E-01 -2.4482E-02
             7.3029E-02
 GRADIENT:   7.2983E-01  1.5329E+01  9.3576E-01  9.5721E+00 -3.6108E+00  3.1373E-01 -7.0413E-01 -2.3474E-01 -8.8329E-01 -1.6910E+00
            -1.1426E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2107.35287892288        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      858
 NPARAMETR:  9.7871E-01  1.7896E+00  5.7395E-01  5.1754E-01  1.1581E+00  9.7065E-01  8.1510E-01  1.4855E+00  1.4376E+00  9.4837E-01
             9.7466E-01
 PARAMETER:  7.8481E-02  6.8199E-01 -4.5522E-01 -5.5867E-01  2.4682E-01  7.0213E-02 -1.0445E-01  4.9577E-01  4.6300E-01  4.6988E-02
             7.4330E-02
 GRADIENT:   5.7517E-01  1.2697E+01 -1.5015E-01  8.3480E+00 -1.1272E+00  8.1877E-02 -1.1064E+00  1.5154E-01 -5.6423E-01 -4.1609E-01
            -2.1594E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2107.45347653705        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1041             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7904E-01  1.8018E+00  5.5977E-01  4.9835E-01  1.1689E+00  9.7077E-01  8.1360E-01  1.4814E+00  1.4727E+00  9.5817E-01
             9.7471E-01
 PARAMETER:  7.8822E-02  6.8881E-01 -4.8022E-01 -5.9645E-01  2.5604E-01  7.0337E-02 -1.0628E-01  4.9301E-01  4.8710E-01  5.7273E-02
             7.4384E-02
 GRADIENT:   4.4060E+02  8.2041E+02  2.4029E+00  1.2490E+02  1.8493E+01  5.1011E+01  7.6767E+00  8.2119E-01  1.8118E+01  6.8843E-01
             1.0570E+00

0ITERATION NO.:   34    OBJECTIVE VALUE:  -2107.45469601344        NO. OF FUNC. EVALS.: 131
 CUMULATIVE NO. OF FUNC. EVALS.:     1172
 NPARAMETR:  9.7909E-01  1.8016E+00  5.6107E-01  4.9791E-01  1.1682E+00  9.7080E-01  8.1340E-01  1.4742E+00  1.4716E+00  9.5830E-01
             9.7467E-01
 PARAMETER:  7.8871E-02  6.8869E-01 -4.7791E-01 -5.9734E-01  2.5551E-01  7.0363E-02 -1.0653E-01  4.8808E-01  4.8635E-01  5.7407E-02
             7.4345E-02
 GRADIENT:   1.5700E+00 -7.6556E+00  2.8101E-01 -4.6136E-01 -2.2020E-01  1.5485E-01  2.5402E-03 -5.6202E-02  2.0461E-02 -3.6035E-02
            -3.6490E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1172
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.1454E-04 -3.0213E-02 -2.9012E-02  3.1811E-02 -4.5214E-02
 SE:             2.9900E-02  2.4341E-02  1.1603E-02  2.2108E-02  2.1280E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8627E-01  2.1451E-01  1.2406E-02  1.5018E-01  3.3610E-02

 ETASHRINKSD(%)  1.0000E-10  1.8455E+01  6.1129E+01  2.5937E+01  2.8709E+01
 ETASHRINKVR(%)  1.0000E-10  3.3505E+01  8.4890E+01  4.5146E+01  4.9176E+01
 EBVSHRINKSD(%)  3.2727E-01  1.7904E+01  6.4198E+01  2.8750E+01  2.5348E+01
 EBVSHRINKVR(%)  6.5347E-01  3.2603E+01  8.7182E+01  4.9234E+01  4.4271E+01
 RELATIVEINF(%)  9.9299E+01  7.2939E+00  2.7644E+00  4.9694E+00  1.5966E+01
 EPSSHRINKSD(%)  3.4949E+01
 EPSSHRINKVR(%)  5.7684E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2107.4546960134385     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1188.5161628087658     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.04
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2107.455       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.79E-01  1.80E+00  5.61E-01  4.98E-01  1.17E+00  9.71E-01  8.13E-01  1.47E+00  1.47E+00  9.58E-01  9.75E-01
 


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
 #CPUT: Total CPU Time in Seconds,       18.087
Stop Time:
Fri Oct  1 12:04:51 CDT 2021
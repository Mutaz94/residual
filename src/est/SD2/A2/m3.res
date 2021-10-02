Fri Oct  1 09:44:46 CDT 2021
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
$DATA ../../../../data/SD2/A2/dat3.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m3.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1449.97955546838        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9387E+02 -4.1315E+00  6.4075E+01 -1.0044E+01  1.0771E+02  4.5224E+01 -5.2679E+00 -9.1394E+01 -1.2170E+01 -4.9410E+00
            -1.2133E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1810.57868460318        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0739E+00  1.1318E+00  9.1686E-01  1.0061E+00  8.5544E-01  1.1296E+00  8.5659E-01  1.3593E+00  1.0866E+00  4.9784E-01
             2.2147E+00
 PARAMETER:  1.7126E-01  2.2377E-01  1.3200E-02  1.0607E-01 -5.6142E-02  2.2189E-01 -5.4795E-02  4.0698E-01  1.8302E-01 -5.9748E-01
             8.9513E-01
 GRADIENT:   2.2387E+02  9.5262E+01  6.9119E+01  2.4643E+01 -1.4239E+02  6.2011E+01  2.4241E+00 -3.9788E+00  5.0027E+00  8.0791E+00
             7.5506E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1824.00165591084        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0818E+00  8.4939E-01  4.6448E-01  1.1298E+00  5.6180E-01  9.3722E-01  9.2209E-01  9.4130E-01  9.3274E-01  2.3348E-01
             2.1266E+00
 PARAMETER:  1.7865E-01 -6.3232E-02 -6.6684E-01  2.2203E-01 -4.7662E-01  3.5167E-02  1.8885E-02  3.9512E-02  3.0370E-02 -1.3547E+00
             8.5451E-01
 GRADIENT:   2.7630E+02  3.0586E+01 -2.6375E+00  1.1652E+02  1.5213E+01 -1.8665E+01 -9.1331E+00  7.8189E+00 -1.5007E+01  2.7727E+00
             6.7003E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1832.83245449517        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      290
 NPARAMETR:  1.0186E+00  8.1411E-01  4.5074E-01  1.1096E+00  5.4082E-01  9.5073E-01  1.0797E+00  7.7989E-01  9.8721E-01  2.2265E-01
             1.9935E+00
 PARAMETER:  1.1842E-01 -1.0566E-01 -6.9687E-01  2.0402E-01 -5.1467E-01  4.9471E-02  1.7664E-01 -1.4860E-01  8.7129E-02 -1.4021E+00
             7.8991E-01
 GRADIENT:  -2.0319E+01  1.3049E+01  2.6600E+00  2.0777E+01 -8.7307E+00 -1.5680E+01 -6.3676E-01 -1.2412E+00  4.5951E+00  2.0361E+00
             1.5828E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1834.86221057490        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      465
 NPARAMETR:  1.0282E+00  6.4440E-01  4.0372E-01  1.1563E+00  4.5583E-01  9.8665E-01  1.2664E+00  8.0933E-01  9.4990E-01  1.0613E-01
             1.9088E+00
 PARAMETER:  1.2780E-01 -3.3943E-01 -8.0702E-01  2.4523E-01 -6.8564E-01  8.6561E-02  3.3621E-01 -1.1155E-01  4.8600E-02 -2.1431E+00
             7.4648E-01
 GRADIENT:   5.9286E+00  7.3321E-01  7.1955E-01  7.8444E-01 -1.2465E+00 -1.3346E+00  1.7805E-01 -3.9609E-02  1.1392E+00  2.8322E-01
            -1.0175E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1834.93120154376        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      641
 NPARAMETR:  1.0262E+00  6.5841E-01  4.0417E-01  1.1502E+00  4.5972E-01  9.9148E-01  1.2583E+00  8.1950E-01  9.4901E-01  7.3414E-02
             1.9123E+00
 PARAMETER:  1.2590E-01 -3.1793E-01 -8.0591E-01  2.3990E-01 -6.7713E-01  9.1446E-02  3.2977E-01 -9.9059E-02  4.7664E-02 -2.5116E+00
             7.4831E-01
 GRADIENT:   1.2726E+00  3.4357E+00  2.2503E+00 -8.7820E-02 -5.5808E+00  5.0383E-01  8.2459E-01  5.2899E-01  3.8669E-01  1.4419E-01
             1.9653E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1834.97209371033        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      823
 NPARAMETR:  1.0261E+00  6.5951E-01  4.0076E-01  1.1472E+00  4.5946E-01  9.9128E-01  1.2459E+00  8.1536E-01  9.4969E-01  4.3769E-02
             1.9114E+00
 PARAMETER:  1.2575E-01 -3.1626E-01 -8.1439E-01  2.3737E-01 -6.7771E-01  9.1238E-02  3.1985E-01 -1.0413E-01  4.8385E-02 -3.0288E+00
             7.4784E-01
 GRADIENT:   9.3365E-01 -1.2821E+00 -3.3596E+00 -8.6923E-01  3.6377E+00  3.6172E-01 -3.1065E-01  5.8364E-02  1.0494E-01  4.7366E-02
            -3.1387E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1835.00733799164        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1001            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0258E+00  6.5484E-01  4.0395E-01  1.1508E+00  4.5954E-01  9.9018E-01  1.2589E+00  8.1667E-01  9.4739E-01  1.0000E-02
             1.9126E+00
 PARAMETER:  1.2550E-01 -3.2336E-01 -8.0647E-01  2.4049E-01 -6.7753E-01  9.0136E-02  3.3026E-01 -1.0252E-01  4.5952E-02 -4.5702E+00
             7.4846E-01
 GRADIENT:   1.3029E+02  1.4815E+01  1.7617E+01  6.4663E+01  4.4134E+01  9.9030E+00  2.2857E+00  1.7069E-01  3.0405E+00  0.0000E+00
             7.3349E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1835.00733799164        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1058
 NPARAMETR:  1.0258E+00  6.5484E-01  4.0395E-01  1.1508E+00  4.5954E-01  9.9018E-01  1.2589E+00  8.1667E-01  9.4739E-01  1.0000E-02
             1.9126E+00
 PARAMETER:  1.2550E-01 -3.2336E-01 -8.0647E-01  2.4049E-01 -6.7753E-01  9.0136E-02  3.3026E-01 -1.0252E-01  4.5952E-02 -4.5702E+00
             7.4846E-01
 GRADIENT:   5.0826E-01  9.1141E-02 -5.2878E-01 -4.6106E-01 -1.2373E-01  2.6293E-02  2.5931E-03  1.1472E-02  4.1083E-02  0.0000E+00
            -1.5068E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1058
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0473E-03  1.2475E-02 -1.8129E-02 -8.7089E-03  9.5806E-06
 SE:             2.9608E-02  2.1288E-02  1.7299E-02  2.6817E-02  3.3816E-04
 N:                     100         100         100         100         100

 P VAL.:         9.7178E-01  5.5786E-01  2.9465E-01  7.4537E-01  9.7740E-01

 ETASHRINKSD(%)  8.0846E-01  2.8683E+01  4.2045E+01  1.0160E+01  9.8867E+01
 ETASHRINKVR(%)  1.6104E+00  4.9138E+01  6.6413E+01  1.9289E+01  9.9987E+01
 EBVSHRINKSD(%)  1.1697E+00  2.9631E+01  4.2166E+01  1.0046E+01  9.8824E+01
 EBVSHRINKVR(%)  2.3258E+00  5.0482E+01  6.6553E+01  1.9083E+01  9.9986E+01
 RELATIVEINF(%)  9.7551E+01  6.1748E+00  3.9798E+00  3.4554E+01  8.2744E-04
 EPSSHRINKSD(%)  3.0201E+01
 EPSSHRINKVR(%)  5.1281E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1835.0073379916396     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -916.06880478696689     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.48
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1835.007       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  6.55E-01  4.04E-01  1.15E+00  4.60E-01  9.90E-01  1.26E+00  8.17E-01  9.47E-01  1.00E-02  1.91E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.515
Stop Time:
Fri Oct  1 09:45:03 CDT 2021
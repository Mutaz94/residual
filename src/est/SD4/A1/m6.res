Fri Oct  1 23:51:10 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat6.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m6.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1501.89203196607        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2380E+02 -4.7607E+01 -6.9853E+01  5.3228E+01  1.9132E+02  4.9736E+01 -1.4821E+01  3.6839E+00 -2.2969E+00 -4.1186E+01
            -2.5274E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1545.13340278600        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0368E+00  1.0052E+00  1.1196E+00  1.0090E+00  8.9642E-01  9.5312E-01  1.0606E+00  8.6931E-01  9.5311E-01  9.0580E-01
             1.9287E+00
 PARAMETER:  1.3615E-01  1.0514E-01  2.1301E-01  1.0896E-01 -9.3416E-03  5.1983E-02  1.5883E-01 -4.0056E-02  5.1974E-02  1.0608E-03
             7.5685E-01
 GRADIENT:   2.2979E+02 -7.8170E+00  1.0974E+01 -2.5495E+01 -2.2160E+01  5.2854E+00  1.1733E+00  2.9706E+00  9.0472E-01 -8.5559E-01
             9.1241E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1554.20663500687        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0051E+00  8.8416E-01  8.2736E-01  1.0823E+00  7.5865E-01  9.2740E-01  1.3745E+00  2.2907E-01  9.2825E-01  1.0066E+00
             1.7107E+00
 PARAMETER:  1.0505E-01 -2.3118E-02 -8.9513E-02  1.7913E-01 -1.7622E-01  2.4629E-02  4.1812E-01 -1.3737E+00  2.5551E-02  1.0663E-01
             6.3691E-01
 GRADIENT:   1.4476E+02  4.9254E+00 -1.1834E+01  3.5400E+01  1.4381E+00 -4.4352E+00  1.5182E+01  6.8077E-01  1.4376E+01  2.2212E+01
             7.0123E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1558.84674345806        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      272
 NPARAMETR:  9.8921E-01  8.6152E-01  8.6538E-01  1.0980E+00  7.5930E-01  9.4392E-01  1.2474E+00  2.5579E-01  9.1475E-01  9.9880E-01
             1.5896E+00
 PARAMETER:  8.9153E-02 -4.9058E-02 -4.4586E-02  1.9353E-01 -1.7536E-01  4.2288E-02  3.2109E-01 -1.2634E+00  1.0897E-02  9.8798E-02
             5.6346E-01
 GRADIENT:  -3.8951E+01 -1.8134E+00 -2.8667E-01 -1.7798E+01 -1.9441E+01 -1.3675E+01 -1.1476E+00  6.1925E-01  2.7114E+00  1.4788E+01
             3.4311E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1562.18686246482        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      454
 NPARAMETR:  9.9907E-01  6.9127E-01  9.0186E-01  1.2160E+00  7.2470E-01  9.7067E-01  1.5498E+00  1.1332E-01  8.4876E-01  9.3275E-01
             1.4692E+00
 PARAMETER:  9.9066E-02 -2.6922E-01 -3.2922E-03  2.9558E-01 -2.2200E-01  7.0231E-02  5.3813E-01 -2.0776E+00 -6.3984E-02  3.0381E-02
             4.8475E-01
 GRADIENT:  -8.5980E+00  7.2198E+00  1.5267E+00  1.0219E+01 -5.9975E+00 -2.7923E+00 -1.9834E-01  7.2797E-02  4.8065E-01 -4.3397E-01
            -2.2220E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1562.68339429125        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      632
 NPARAMETR:  9.9895E-01  4.8090E-01  1.0829E+00  1.3622E+00  7.4482E-01  9.7319E-01  1.8607E+00  2.8145E-02  8.1102E-01  1.0156E+00
             1.4812E+00
 PARAMETER:  9.8948E-02 -6.3209E-01  1.7960E-01  4.0913E-01 -1.9461E-01  7.2827E-02  7.2096E-01 -3.4704E+00 -1.0947E-01  1.1551E-01
             4.9285E-01
 GRADIENT:  -5.5741E-01  6.4818E+00  4.0861E-01  2.1415E+01  4.1208E-01 -6.7279E-02  5.4030E-02  2.2377E-03 -1.6685E+00 -1.3722E+00
            -1.8518E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1563.32064919475        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      811
 NPARAMETR:  9.9530E-01  2.3431E-01  1.1115E+00  1.4922E+00  6.9349E-01  9.7179E-01  2.5237E+00  1.0000E-02  7.8898E-01  1.0430E+00
             1.4843E+00
 PARAMETER:  9.5291E-02 -1.3511E+00  2.0573E-01  5.0027E-01 -2.6602E-01  7.1384E-02  1.0257E+00 -5.9866E+00 -1.3702E-01  1.4214E-01
             4.9494E-01
 GRADIENT:   8.5656E-02 -1.7616E-01  1.7653E+00 -9.3343E+00 -3.6081E+00  5.5053E-01 -6.7116E-01  0.0000E+00  2.0000E+00  9.3012E-01
             1.1153E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1563.37127016343        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      986
 NPARAMETR:  9.9414E-01  1.6453E-01  1.1214E+00  1.5419E+00  6.8076E-01  9.7083E-01  3.1193E+00  1.0000E-02  7.6638E-01  1.0412E+00
             1.4819E+00
 PARAMETER:  9.4127E-02 -1.7047E+00  2.1454E-01  5.3302E-01 -2.8455E-01  7.0392E-02  1.2376E+00 -7.3848E+00 -1.6607E-01  1.4036E-01
             4.9332E-01
 GRADIENT:  -1.1273E-01  8.7136E-01  2.6643E+00  1.1334E+01 -6.8014E+00  4.4671E-01 -1.7027E+00  0.0000E+00 -1.8745E+00  7.7637E-01
            -2.7746E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1563.37843425487        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1161
 NPARAMETR:  9.9368E-01  1.4275E-01  1.1315E+00  1.5574E+00  6.8023E-01  9.6995E-01  3.3908E+00  1.0000E-02  7.6126E-01  1.0429E+00
             1.4812E+00
 PARAMETER:  9.3658E-02 -1.8466E+00  2.2352E-01  5.4303E-01 -2.8532E-01  6.9491E-02  1.3211E+00 -7.9832E+00 -1.7278E-01  1.4200E-01
             4.9287E-01
 GRADIENT:  -2.7431E-01  1.3553E+00  2.1581E+00  1.5670E+01 -5.9453E+00  2.0268E-01 -8.9270E-01  0.0000E+00 -3.1340E+00  4.1329E-01
            -4.9457E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1563.47468894855        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1342
 NPARAMETR:  9.9366E-01  1.2509E-01  1.1383E+00  1.5543E+00  6.8277E-01  9.6929E-01  3.5771E+00  1.0000E-02  7.7057E-01  1.0443E+00
             1.4824E+00
 PARAMETER:  9.3641E-02 -1.9787E+00  2.2956E-01  5.4105E-01 -2.8160E-01  6.8805E-02  1.3745E+00 -8.4163E+00 -1.6062E-01  1.4337E-01
             4.9369E-01
 GRADIENT:   1.0810E+00 -1.1571E+00 -6.0929E-03 -1.2669E+01  2.1833E+00  1.2699E-01 -2.2975E+00  0.0000E+00  2.4156E+00  4.0568E-01
             8.2558E-01

0ITERATION NO.:   48    OBJECTIVE VALUE:  -1563.49585590890        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1434
 NPARAMETR:  9.9334E-01  1.2656E-01  1.1364E+00  1.5601E+00  6.8220E-01  9.6912E-01  3.5992E+00  1.0000E-02  7.6627E-01  1.0433E+00
             1.4813E+00
 PARAMETER:  9.3315E-02 -1.9671E+00  2.2790E-01  5.4473E-01 -2.8244E-01  6.8636E-02  1.3807E+00 -8.4163E+00 -1.6622E-01  1.4240E-01
             4.9289E-01
 GRADIENT:   1.5383E-02  3.2048E-01 -1.1525E+00  2.3582E-01  2.1235E+00 -1.6820E-02 -5.7827E-01  0.0000E+00 -3.0895E-01 -1.3717E-01
             6.1475E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1434
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.9881E-04  1.0375E-02 -1.1028E-04 -1.5065E-02 -1.9040E-02
 SE:             2.9626E-02  1.0039E-02  1.4909E-04  2.7386E-02  2.4348E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9465E-01  3.0141E-01  4.5952E-01  5.8225E-01  4.3422E-01

 ETASHRINKSD(%)  7.4866E-01  6.6367E+01  9.9501E+01  8.2522E+00  1.8431E+01
 ETASHRINKVR(%)  1.4917E+00  8.8688E+01  9.9998E+01  1.5823E+01  3.3465E+01
 EBVSHRINKSD(%)  9.4657E-01  7.3586E+01  9.9483E+01  7.0285E+00  1.5464E+01
 EBVSHRINKVR(%)  1.8842E+00  9.3023E+01  9.9997E+01  1.3563E+01  2.8537E+01
 RELATIVEINF(%)  9.7280E+01  9.3610E-01  2.2778E-04  1.3507E+01  5.9334E+00
 EPSSHRINKSD(%)  3.9801E+01
 EPSSHRINKVR(%)  6.3761E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1563.4958559088993     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -828.34502934516115     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.38
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1563.496       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  1.27E-01  1.14E+00  1.56E+00  6.82E-01  9.69E-01  3.60E+00  1.00E-02  7.66E-01  1.04E+00  1.48E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.415
Stop Time:
Fri Oct  1 23:51:29 CDT 2021
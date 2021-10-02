Sat Oct  2 01:20:16 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat86.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m86.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -211.671723878753        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5251E+02  5.9198E+01  1.3072E+02 -5.2539E+01  1.7487E+02  3.2581E+01 -4.7828E+01 -7.3055E+01 -1.1425E+02 -1.6454E+02
            -2.4852E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1253.25545411112        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0300E+00  9.4849E-01  8.6821E-01  1.0860E+00  8.7004E-01  8.6915E-01  9.4086E-01  1.0319E+00  1.0493E+00  9.7329E-01
             2.8508E+00
 PARAMETER:  1.2953E-01  4.7119E-02 -4.1327E-02  1.8247E-01 -3.9220E-02 -4.0243E-02  3.9043E-02  1.3140E-01  1.4811E-01  7.2924E-02
             1.1476E+00
 GRADIENT:   2.5353E+01 -4.0720E+00  1.7719E+01 -2.9322E+01  3.0254E+01 -2.7609E+01  2.5635E+00 -6.0147E+00 -1.8302E+01 -6.4988E+00
            -1.6428E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1281.17705595518        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      162
 NPARAMETR:  1.0172E+00  5.6434E-01  3.5859E-01  1.2110E+00  3.6332E-01  9.5528E-01  2.8466E-01  8.6665E-01  9.9527E-01  1.8895E-01
             3.1751E+00
 PARAMETER:  1.1708E-01 -4.7210E-01 -9.2558E-01  2.9143E-01 -9.1248E-01  5.4254E-02 -1.1565E+00 -4.3115E-02  9.5258E-02 -1.5663E+00
             1.2553E+00
 GRADIENT:  -6.3854E+01  1.4919E+02  1.7809E+02  6.8549E+01 -2.5725E+02 -4.1192E+00 -3.0395E+00 -3.1660E+01 -2.2566E+01 -5.2306E+00
            -6.6592E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1297.29596489476        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      321
 NPARAMETR:  1.0427E+00  5.8271E-01  3.4917E-01  1.2198E+00  4.0407E-01  9.5422E-01  8.8317E-02  5.8693E-01  1.0043E+00  1.2987E-01
             3.7660E+00
 PARAMETER:  1.4178E-01 -4.4007E-01 -9.5221E-01  2.9870E-01 -8.0618E-01  5.3136E-02 -2.3268E+00 -4.3286E-01  1.0434E-01 -1.9412E+00
             1.4260E+00
 GRADIENT:  -4.8367E+01  1.8080E+01  1.5874E+01  3.3338E+01 -2.0155E+01  8.5773E-02 -7.4791E-02 -2.6534E+00 -1.9003E+00 -4.2014E-01
             1.5637E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1303.44776198633        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      497
 NPARAMETR:  1.0443E+00  5.3794E-01  1.9677E-01  1.0781E+00  2.9519E-01  9.9976E-01  5.2219E-02  4.4190E-01  1.1710E+00  1.8809E-01
             3.5163E+00
 PARAMETER:  1.4333E-01 -5.2000E-01 -1.5257E+00  1.7521E-01 -1.1201E+00  9.9765E-02 -2.8523E+00 -7.1668E-01  2.5786E-01 -1.5708E+00
             1.3574E+00
 GRADIENT:  -1.3670E+01  1.0695E+01  1.2626E+01  1.5442E+01 -2.2026E+01  7.1849E+00 -9.4688E-02 -6.4141E+00  2.6826E+00 -4.9103E+00
            -1.1014E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1320.35089932373        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      678
 NPARAMETR:  1.0490E+00  4.3180E-01  1.2807E-01  1.0063E+00  2.1400E-01  9.5273E-01  5.8141E-02  4.1930E-01  1.3870E+00  6.8260E-01
             3.1001E+00
 PARAMETER:  1.4782E-01 -7.3980E-01 -1.9551E+00  1.0627E-01 -1.4418E+00  5.1571E-02 -2.7449E+00 -7.6916E-01  4.2715E-01 -2.8184E-01
             1.2315E+00
 GRADIENT:   7.2889E+00  2.0975E+01  9.6179E+00  3.9070E+01 -3.5460E+01 -7.2925E+00  2.9729E-02 -3.1336E+00  3.7675E-01  7.1008E-01
             3.9153E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1323.85268151300        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      853
 NPARAMETR:  1.0329E+00  3.7762E-01  1.0196E-01  9.1389E-01  1.8706E-01  9.7249E-01  7.3661E-02  2.8030E-01  1.5774E+00  7.3830E-01
             2.7906E+00
 PARAMETER:  1.3240E-01 -8.7388E-01 -2.1832E+00  9.9509E-03 -1.5763E+00  7.2101E-02 -2.5083E+00 -1.1719E+00  5.5578E-01 -2.0340E-01
             1.1263E+00
 GRADIENT:  -3.4862E+00  8.1957E+00  6.0172E+00  7.4849E+00 -1.8010E+01  2.1828E-02  7.1134E-02 -2.0201E+00  4.2993E-01  6.2692E-02
             3.0145E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1329.86345351189        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:      988
 NPARAMETR:  1.0289E+00  3.7660E-01  1.0144E-01  9.1014E-01  1.8634E-01  9.6722E-01  5.2195E-02  9.8872E-01  1.5544E+00  7.2551E-01
             2.7490E+00
 PARAMETER:  1.2846E-01 -8.7658E-01 -2.1882E+00  5.8460E-03 -1.5802E+00  6.6668E-02 -2.8528E+00  8.8657E-02  5.4110E-01 -2.2088E-01
             1.1112E+00
 GRADIENT:  -7.5122E+00  9.7313E+00 -8.0256E+00  5.7959E-01 -2.4767E+01  4.0573E+00  3.8633E-02  9.2453E-01 -2.4437E+00  7.2838E+00
             1.9798E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1332.64185318546        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1165
 NPARAMETR:  1.0363E+00  4.0539E-01  1.2757E-01  9.7463E-01  2.1054E-01  9.5531E-01  1.4652E-02  1.2136E+00  1.4215E+00  6.3305E-01
             2.6473E+00
 PARAMETER:  1.3564E-01 -8.0290E-01 -1.9591E+00  7.4300E-02 -1.4581E+00  5.4282E-02 -4.1232E+00  2.9362E-01  4.5169E-01 -3.5721E-01
             1.0735E+00
 GRADIENT:   1.7379E+00 -7.1438E+00  2.6523E+00  1.8733E+00 -3.2243E+00  1.0647E+00  1.7798E-03  1.0412E+00 -2.6937E+00  1.8170E+00
             4.2470E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1333.07626196011        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1341
 NPARAMETR:  1.0322E+00  4.4452E-01  1.3202E-01  9.7937E-01  2.2289E-01  9.5191E-01  1.0000E-02  1.2533E+00  1.4335E+00  6.0499E-01
             2.6236E+00
 PARAMETER:  1.3170E-01 -7.1076E-01 -1.9248E+00  7.9149E-02 -1.4011E+00  5.0717E-02 -4.9537E+00  3.2579E-01  4.6013E-01 -4.0254E-01
             1.0646E+00
 GRADIENT:   3.5564E-01  3.2042E-01  5.0908E-01  2.9910E-01 -1.1235E+00 -2.5796E-03  0.0000E+00  3.8675E-02 -6.2873E-02 -1.4664E-01
            -6.7611E-02

0ITERATION NO.:   46    OBJECTIVE VALUE:  -1333.07626196011        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1363
 NPARAMETR:  1.0322E+00  4.4452E-01  1.3202E-01  9.7937E-01  2.2289E-01  9.5191E-01  1.0000E-02  1.2533E+00  1.4335E+00  6.0499E-01
             2.6236E+00
 PARAMETER:  1.3170E-01 -7.1076E-01 -1.9248E+00  7.9149E-02 -1.4011E+00  5.0717E-02 -4.9537E+00  3.2579E-01  4.6013E-01 -4.0254E-01
             1.0646E+00
 GRADIENT:   3.5564E-01  3.2042E-01  5.0908E-01  2.9910E-01 -1.1235E+00 -2.5796E-03  0.0000E+00  3.8675E-02 -6.2873E-02 -1.4664E-01
            -6.7611E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1363
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7996E-03 -2.3573E-04  2.0766E-02 -4.8766E-03  1.9933E-02
 SE:             2.8903E-02  1.6655E-04  1.7940E-02  2.6336E-02  2.0395E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5035E-01  1.5694E-01  2.4706E-01  8.5310E-01  3.2841E-01

 ETASHRINKSD(%)  3.1708E+00  9.9442E+01  3.9899E+01  1.1770E+01  3.1674E+01
 ETASHRINKVR(%)  6.2411E+00  9.9997E+01  6.3878E+01  2.2154E+01  5.3315E+01
 EBVSHRINKSD(%)  3.0239E+00  9.9406E+01  4.1044E+01  1.0095E+01  3.1483E+01
 EBVSHRINKVR(%)  5.9564E+00  9.9996E+01  6.5242E+01  1.9171E+01  5.3054E+01
 RELATIVEINF(%)  9.0197E+01  2.9130E-04  8.7050E+00  5.8162E+01  2.4857E+00
 EPSSHRINKSD(%)  3.7562E+01
 EPSSHRINKVR(%)  6.1014E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1333.0762619601071     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -597.92543539636893     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.43
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1333.076       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  4.45E-01  1.32E-01  9.79E-01  2.23E-01  9.52E-01  1.00E-02  1.25E+00  1.43E+00  6.05E-01  2.62E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.475
Stop Time:
Sat Oct  2 01:20:35 CDT 2021

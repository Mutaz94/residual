Fri Oct  1 13:48:38 CDT 2021
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
$DATA ../../../../data/SD2/S2/dat81.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m81.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1605.86720359782        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9348E+02 -5.2050E+01  1.6116E+01  2.3250E+01  9.0328E+01  2.6737E+01 -9.9629E+00 -1.9427E+02 -1.2162E+00 -5.4356E+00
            -8.0351E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2067.48084130687        NO. OF FUNC. EVALS.:  78
 CUMULATIVE NO. OF FUNC. EVALS.:       91
 NPARAMETR:  9.2876E-01  1.0464E+00  1.0030E+00  9.8396E-01  9.4838E-01  1.1444E+00  1.0175E+00  1.1354E+00  9.7294E-01  1.0009E+00
             1.4894E+00
 PARAMETER:  2.6095E-02  1.4535E-01  1.0301E-01  8.3835E-02  4.7004E-02  2.3487E-01  1.1738E-01  2.2703E-01  7.2565E-02  1.0089E-01
             4.9837E-01
 GRADIENT:   3.9273E+01 -7.4293E+00 -1.3081E+01  5.7998E+00 -1.5674E+01  1.1874E+02  3.1184E-01  1.1477E+01  2.1648E+01  1.4216E+01
             2.1647E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2091.03483652032        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  9.0186E-01  9.8140E-01  8.3068E-01  1.0066E+00  8.6167E-01  1.0719E+00  1.1742E+00  2.8371E-01  8.4686E-01  1.1571E+00
             1.2207E+00
 PARAMETER: -3.2929E-03  8.1228E-02 -8.5506E-02  1.0659E-01 -4.8888E-02  1.6943E-01  2.6059E-01 -1.1598E+00 -6.6225E-02  2.4593E-01
             2.9938E-01
 GRADIENT:   6.1035E+01 -9.4782E+00 -2.2517E+01  3.8266E+01 -8.5370E+00  9.1547E+01  4.2465E+00  1.1506E+00  9.6861E+00  3.5606E+01
             1.1340E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2113.05962743730        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.0060E+00  9.7139E-01  8.0015E-01  1.0291E+00  8.3866E-01  1.0526E+00  1.3648E+00  3.9611E-01  8.4498E-01  8.8294E-01
             1.1867E+00
 PARAMETER:  1.0594E-01  7.0975E-02 -1.2296E-01  1.2866E-01 -7.5953E-02  1.5127E-01  4.1099E-01 -8.2606E-01 -6.8439E-02 -2.4502E-02
             2.7120E-01
 GRADIENT:  -4.6106E+01 -9.2184E+00 -1.9810E+01  9.7318E+00  7.1426E+00 -2.0393E+01  8.9693E+00  1.1350E+00  1.0794E+01  1.9577E+00
             8.5027E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2121.92994033529        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      473
 NPARAMETR:  1.0283E+00  1.1498E+00  9.3185E-01  9.4062E-01  9.8435E-01  1.1010E+00  1.1239E+00  6.5451E-01  8.6616E-01  1.0495E+00
             1.0510E+00
 PARAMETER:  1.2789E-01  2.3962E-01  2.9415E-02  3.8786E-02  8.4226E-02  1.9620E-01  2.1676E-01 -3.2386E-01 -4.3687E-02  1.4828E-01
             1.4970E-01
 GRADIENT:   7.8430E-01  3.2433E+00  1.5668E+00  5.1418E+00 -1.4729E+00 -3.6203E-01 -4.8014E-01 -4.9278E-02 -1.1735E+00 -1.9696E-01
            -1.3207E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2122.27862764863        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      649
 NPARAMETR:  1.0290E+00  1.3390E+00  7.4705E-01  8.1526E-01  9.8867E-01  1.0987E+00  1.0048E+00  3.0697E-01  9.5572E-01  1.0350E+00
             1.0515E+00
 PARAMETER:  1.2859E-01  3.9191E-01 -1.9163E-01 -1.0425E-01  8.8607E-02  1.9417E-01  1.0482E-01 -1.0810E+00  5.4710E-02  1.3438E-01
             1.5020E-01
 GRADIENT:  -1.3007E+00  4.4184E+00 -1.6394E-02  4.1128E+00 -1.5161E+00 -2.0177E+00  5.1201E-02  1.3684E-01  1.4740E-01  1.7904E-01
            -3.9447E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2122.29935646988        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      825
 NPARAMETR:  1.0300E+00  1.3762E+00  7.2263E-01  7.8766E-01  9.9908E-01  1.1044E+00  9.8260E-01  2.3682E-01  9.7559E-01  1.0395E+00
             1.0521E+00
 PARAMETER:  1.2958E-01  4.1935E-01 -2.2486E-01 -1.3869E-01  9.9080E-02  1.9929E-01  8.2450E-02 -1.3404E+00  7.5292E-02  1.3877E-01
             1.5076E-01
 GRADIENT:   1.5845E-01 -8.2149E-01 -1.7694E-01 -1.0716E+00  1.3986E-01  7.5326E-03  6.4495E-03  8.8526E-02  5.1416E-02  1.0661E-01
             1.7819E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2122.35354134453        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1007             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0328E+00  1.3563E+00  7.2240E-01  7.9894E-01  9.8899E-01  1.1118E+00  9.9480E-01  2.3671E-02  9.6576E-01  1.0359E+00
             1.0523E+00
 PARAMETER:  1.3224E-01  4.0472E-01 -2.2518E-01 -1.2447E-01  8.8926E-02  2.0598E-01  9.4785E-02 -3.6435E+00  6.5160E-02  1.3525E-01
             1.5094E-01
 GRADIENT:   5.7547E+02  2.7259E+02  3.0556E+00  6.8716E+01  8.0866E+00  1.6597E+02  5.8944E+00  3.1030E-03  4.3775E+00  1.2985E+00
             1.6441E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2122.35755306655        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:     1165             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0316E+00  1.3566E+00  7.2252E-01  7.9957E-01  9.8854E-01  1.1084E+00  9.9514E-01  1.0000E-02  9.6496E-01  1.0348E+00
             1.0521E+00
 PARAMETER:  1.3109E-01  4.0498E-01 -2.2501E-01 -1.2368E-01  8.8471E-02  2.0296E-01  9.5131E-02 -4.6692E+00  6.4328E-02  1.3422E-01
             1.5081E-01
 GRADIENT:   5.6852E+02  2.7404E+02  3.2724E+00  6.9288E+01  7.7259E+00  1.6281E+02  5.8863E+00  0.0000E+00  4.2672E+00  1.1172E+00
             1.4686E+00

0ITERATION NO.:   42    OBJECTIVE VALUE:  -2122.35755306655        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:     1220
 NPARAMETR:  1.0316E+00  1.3566E+00  7.2252E-01  7.9957E-01  9.8854E-01  1.1084E+00  9.9514E-01  1.0000E-02  9.6496E-01  1.0348E+00
             1.0521E+00
 PARAMETER:  1.3109E-01  4.0498E-01 -2.2501E-01 -1.2368E-01  8.8471E-02  2.0296E-01  9.5131E-02 -4.6692E+00  6.4328E-02  1.3422E-01
             1.5081E-01
 GRADIENT:   3.0442E+00 -5.3566E-01  8.9407E-02 -2.0155E-01  1.6783E-01  1.5304E+00 -2.8799E-02  0.0000E+00  1.4703E-02  7.5030E-03
            -3.9566E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1220
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5843E-04 -1.2827E-02 -3.4094E-04  9.3407E-03 -2.1075E-02
 SE:             2.9887E-02  2.3217E-02  1.3844E-04  2.2706E-02  2.3576E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9310E-01  5.8061E-01  1.3790E-02  6.8080E-01  3.7138E-01

 ETASHRINKSD(%)  1.0000E-10  2.2221E+01  9.9536E+01  2.3931E+01  2.1016E+01
 ETASHRINKVR(%)  1.0000E-10  3.9504E+01  9.9998E+01  4.2135E+01  3.7616E+01
 EBVSHRINKSD(%)  2.9968E-01  2.2015E+01  9.9600E+01  2.5358E+01  1.8989E+01
 EBVSHRINKVR(%)  5.9847E-01  3.9184E+01  9.9998E+01  4.4285E+01  3.4373E+01
 RELATIVEINF(%)  9.9168E+01  3.6074E+00  1.7806E-04  3.0750E+00  1.1628E+01
 EPSSHRINKSD(%)  3.3244E+01
 EPSSHRINKVR(%)  5.5436E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2122.3575530665453     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1203.4190198618726     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.47
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2122.358       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.36E+00  7.23E-01  8.00E-01  9.89E-01  1.11E+00  9.95E-01  1.00E-02  9.65E-01  1.03E+00  1.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       17.515
Stop Time:
Fri Oct  1 13:48:57 CDT 2021
Fri Oct  1 17:53:34 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat63.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m63.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1011.14812015913        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5342E+02  7.8036E+01  1.0418E+02  2.6275E+01  2.5815E+02  2.7500E+01 -1.0826E+02 -7.6548E+01 -6.1315E+01 -9.1115E+01
            -2.6244E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1941.51803667122        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0923E+00  9.2295E-01  9.4036E-01  1.1166E+00  8.4706E-01  9.6535E-01  1.0751E+00  8.7881E-01  1.1779E+00  6.8688E-01
             2.6731E+00
 PARAMETER:  1.8829E-01  1.9816E-02  3.8506E-02  2.1033E-01 -6.5979E-02  6.4733E-02  1.7243E-01 -2.9182E-02  2.6376E-01 -2.7559E-01
             1.0832E+00
 GRADIENT:   1.8456E+02 -3.4963E+00 -2.0850E+00  3.4984E+01  2.7439E+01 -1.1184E+01 -2.6601E+00  5.0624E+00  2.5763E+01  4.2630E+00
             5.0129E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1950.13525323276        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      180
 NPARAMETR:  1.0668E+00  6.6129E-01  4.6892E-01  1.2284E+00  5.0658E-01  9.9068E-01  1.5905E+00  5.9938E-01  9.3320E-01  3.7374E-01
             2.5452E+00
 PARAMETER:  1.6463E-01 -3.1356E-01 -6.5732E-01  3.0571E-01 -5.8008E-01  9.0640E-02  5.6408E-01 -4.1186E-01  3.0864E-02 -8.8421E-01
             1.0342E+00
 GRADIENT:   1.3275E+01  2.8323E+01 -8.7457E+01  1.0893E+02  1.0716E+02 -7.1691E+00  2.2253E+01  7.8965E+00 -2.9873E+01 -2.4063E+00
             2.4556E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1977.59295761319        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      358
 NPARAMETR:  1.0467E+00  5.5097E-01  4.1806E-01  1.2552E+00  4.2488E-01  9.8697E-01  1.6181E+00  3.8180E-01  1.0255E+00  4.7687E-01
             2.3709E+00
 PARAMETER:  1.4565E-01 -4.9607E-01 -7.7213E-01  3.2728E-01 -7.5594E-01  8.6885E-02  5.8123E-01 -8.6285E-01  1.2516E-01 -6.4051E-01
             9.6328E-01
 GRADIENT:  -1.8615E+01  5.2058E+01 -3.4824E+01  1.1226E+02  5.9185E+01 -7.0998E+00  1.2641E+01  3.1592E+00 -3.5876E+01 -1.4202E+01
             3.7825E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2004.72608149681        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  1.0552E+00  3.5023E-01  2.9255E-01  1.1502E+00  3.0121E-01  1.0122E+00  1.3088E+00  1.2646E-01  1.1746E+00  6.7747E-01
             2.1931E+00
 PARAMETER:  1.5372E-01 -9.4918E-01 -1.1291E+00  2.3990E-01 -1.0999E+00  1.1217E-01  3.6910E-01 -1.9678E+00  2.6092E-01 -2.8939E-01
             8.8532E-01
 GRADIENT:   2.5140E+00 -2.0213E+01 -2.3940E+00 -2.6983E+00  2.7261E+01  2.5920E+00  4.6220E+00  5.1112E-01 -4.9883E+00  8.0440E+00
            -1.8086E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2006.03186115782        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      708
 NPARAMETR:  1.0538E+00  3.4996E-01  2.6890E-01  1.1320E+00  2.8460E-01  1.0057E+00  1.1555E+00  8.3140E-02  1.2140E+00  6.6798E-01
             2.1936E+00
 PARAMETER:  1.5244E-01 -9.4994E-01 -1.2134E+00  2.2396E-01 -1.1567E+00  1.0565E-01  2.4450E-01 -2.3872E+00  2.9388E-01 -3.0349E-01
             8.8556E-01
 GRADIENT:  -6.6478E-01 -8.7604E-01  1.7223E-01  1.3896E+00 -5.7482E-01 -4.4997E-02 -3.4909E-01  1.9431E-01 -9.0127E-02  4.7491E-01
             1.0749E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2006.12789001657        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      883
 NPARAMETR:  1.0539E+00  3.5225E-01  2.7050E-01  1.1324E+00  2.8615E-01  1.0058E+00  1.1684E+00  1.3838E-02  1.2135E+00  6.6513E-01
             2.1935E+00
 PARAMETER:  1.5253E-01 -9.4342E-01 -1.2075E+00  2.2438E-01 -1.1512E+00  1.0582E-01  2.5567E-01 -4.1803E+00  2.9348E-01 -3.0777E-01
             8.8548E-01
 GRADIENT:  -2.8146E-01  2.7685E-01 -2.9269E-01  2.7748E-01  2.2175E-02 -1.6549E-02  3.6631E-02  5.3837E-03  9.4183E-02  1.8837E-01
             3.2604E-04

0ITERATION NO.:   32    OBJECTIVE VALUE:  -2006.12900595222        NO. OF FUNC. EVALS.:  60
 CUMULATIVE NO. OF FUNC. EVALS.:      943
 NPARAMETR:  1.0540E+00  3.5216E-01  2.7075E-01  1.1324E+00  2.8626E-01  1.0059E+00  1.1699E+00  1.0000E-02  1.2124E+00  6.6414E-01
             2.1936E+00
 PARAMETER:  1.5262E-01 -9.4368E-01 -1.2066E+00  2.2430E-01 -1.1509E+00  1.0584E-01  2.5690E-01 -4.5176E+00  2.9257E-01 -3.0927E-01
             8.8555E-01
 GRADIENT:  -5.6669E-01 -2.3880E-01  1.0995E-02  1.3008E-01  9.1510E-01 -1.4405E-02 -9.0839E-03  5.1365E-04 -2.1911E-01 -1.9408E-02
             2.1739E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      943
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.9918E-04  1.1831E-02 -1.1046E-04 -5.8746E-03  5.7816E-03
 SE:             2.9465E-02  1.8686E-02  2.0893E-04  2.8305E-02  2.4097E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8107E-01  5.2662E-01  5.9702E-01  8.3558E-01  8.1038E-01

 ETASHRINKSD(%)  1.2875E+00  3.7400E+01  9.9300E+01  5.1742E+00  1.9273E+01
 ETASHRINKVR(%)  2.5583E+00  6.0812E+01  9.9995E+01  1.0081E+01  3.4831E+01
 EBVSHRINKSD(%)  1.4205E+00  3.7086E+01  9.9222E+01  4.5183E+00  1.9483E+01
 EBVSHRINKVR(%)  2.8209E+00  6.0418E+01  9.9994E+01  8.8325E+00  3.5170E+01
 RELATIVEINF(%)  9.7123E+01  9.0127E+00  4.8109E-04  5.8042E+01  3.4882E+00
 EPSSHRINKSD(%)  2.7205E+01
 EPSSHRINKVR(%)  4.7008E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2006.1290059522184     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -903.40276610661135     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.86
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2006.129       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  3.52E-01  2.71E-01  1.13E+00  2.86E-01  1.01E+00  1.17E+00  1.00E-02  1.21E+00  6.64E-01  2.19E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.915
Stop Time:
Fri Oct  1 17:53:53 CDT 2021

Sat Oct  2 01:58:06 CDT 2021
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
$DATA ../../../../data/SD4/S1/dat96.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m96.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1639.44483334136        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0460E+02  2.6181E+01 -3.2776E+01  9.7778E+01  3.5475E+01  2.8623E+01  1.1785E+01  1.0228E+01  3.1158E+01  1.4481E+01
            -4.0390E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1646.70610534274        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.6852E-01  1.0323E+00  1.0694E+00  9.7631E-01  1.0253E+00  1.0310E+00  9.6292E-01  9.5978E-01  9.1326E-01  9.4006E-01
             1.1141E+00
 PARAMETER:  6.8018E-02  1.3179E-01  1.6713E-01  7.6023E-02  1.2501E-01  1.3050E-01  6.2213E-02  5.8953E-02  9.2670E-03  3.8192E-02
             2.0808E-01
 GRADIENT:   9.5388E+00  3.2054E-01 -9.3944E+00  1.0210E+01  1.0999E+01  1.9394E+00  2.8761E+00  4.4390E+00  4.1915E+00  1.3537E+00
             4.8240E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1647.15773302653        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  9.5834E-01  9.5353E-01  1.1247E+00  1.0232E+00  1.0110E+00  1.0211E+00  8.8485E-01  7.6170E-01  9.0126E-01  9.6604E-01
             1.0904E+00
 PARAMETER:  5.7451E-02  5.2415E-02  2.1750E-01  1.2291E-01  1.1092E-01  1.2089E-01 -2.2336E-02 -1.7221E-01 -3.9562E-03  6.5450E-02
             1.8658E-01
 GRADIENT:  -1.0678E+01  1.5398E+00  2.1704E+00  2.5265E+00  2.6975E+00 -1.6390E+00 -2.5010E+00 -2.7036E-01 -3.6033E-01 -1.7776E+00
            -7.6012E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1647.88557680746        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  9.6475E-01  9.0477E-01  9.4952E-01  1.0435E+00  9.1134E-01  1.0269E+00  1.0752E+00  4.7429E-01  8.3858E-01  8.9338E-01
             1.1050E+00
 PARAMETER:  6.4114E-02 -7.8319E-05  4.8206E-02  1.4256E-01  7.1602E-03  1.2652E-01  1.7248E-01 -6.4593E-01 -7.6049E-02 -1.2741E-02
             1.9987E-01
 GRADIENT:   1.1532E+00  2.6567E-01 -6.4919E-01  6.5954E-01 -2.6204E-01  2.8308E-01 -6.8735E-02  4.4945E-01  1.0657E-01  1.0714E+00
             8.8360E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1647.96262251759        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      710
 NPARAMETR:  9.6424E-01  8.4137E-01  9.0268E-01  1.0763E+00  8.6254E-01  1.0258E+00  1.1621E+00  2.8194E-01  8.0999E-01  8.6428E-01
             1.1030E+00
 PARAMETER:  6.3580E-02 -7.2729E-02 -2.3906E-03  1.7351E-01 -4.7875E-02  1.2544E-01  2.5025E-01 -1.1661E+00 -1.1073E-01 -4.5861E-02
             1.9805E-01
 GRADIENT:  -1.0499E-01 -1.6059E+00 -2.1620E-01 -2.0691E+00  4.9911E-01 -2.1089E-01  1.1093E-01  6.3518E-02  1.7982E-01  1.1986E-01
             3.3859E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1648.05593096250        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      888
 NPARAMETR:  9.6530E-01  9.7510E-01  8.3658E-01  9.9373E-01  8.8541E-01  1.0272E+00  1.0427E+00  7.9119E-02  8.5624E-01  8.6019E-01
             1.1023E+00
 PARAMETER:  6.4681E-02  7.4780E-02 -7.8439E-02  9.3709E-02 -2.1705E-02  1.2680E-01  1.4177E-01 -2.4368E+00 -5.5203E-02 -5.0607E-02
             1.9740E-01
 GRADIENT:  -3.0713E-01  1.9177E+00 -4.0385E-02  3.0917E+00 -2.2233E-01 -1.0515E-01 -1.5207E-01  8.8332E-03 -2.0553E-01 -2.8413E-01
            -3.1709E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1648.06272622572        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1064
 NPARAMETR:  9.6548E-01  9.9021E-01  8.3349E-01  9.8260E-01  8.9148E-01  1.0275E+00  1.0300E+00  5.3834E-02  8.6400E-01  8.6420E-01
             1.1029E+00
 PARAMETER:  6.4868E-02  9.0160E-02 -8.2139E-02  8.2450E-02 -1.4867E-02  1.2709E-01  1.2955E-01 -2.8219E+00 -4.6183E-02 -4.5954E-02
             1.9793E-01
 GRADIENT:  -1.4749E-02 -2.3368E-01 -1.6478E-01 -2.0354E-01  2.3284E-01  2.8680E-03 -7.5406E-03  4.5369E-03  2.3082E-02  2.3841E-02
             1.8932E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1648.06454584313        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1240
 NPARAMETR:  9.6547E-01  9.8481E-01  8.3398E-01  9.8604E-01  8.8912E-01  1.0274E+00  1.0349E+00  1.0000E-02  8.6148E-01  8.6333E-01
             1.1029E+00
 PARAMETER:  6.4859E-02  8.4694E-02 -8.1542E-02  8.5938E-02 -1.7518E-02  1.2707E-01  1.3429E-01 -4.5782E+00 -4.9104E-02 -4.6959E-02
             1.9794E-01
 GRADIENT:  -4.4974E-04  3.2395E-02  2.7573E-03  2.8669E-02 -1.9771E-02 -2.0892E-04  1.0436E-03  0.0000E+00 -2.1446E-03  1.8564E-03
             3.7465E-04

0ITERATION NO.:   36    OBJECTIVE VALUE:  -1648.06454584313        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1262
 NPARAMETR:  9.6547E-01  9.8481E-01  8.3398E-01  9.8604E-01  8.8912E-01  1.0274E+00  1.0349E+00  1.0000E-02  8.6148E-01  8.6333E-01
             1.1029E+00
 PARAMETER:  6.4859E-02  8.4694E-02 -8.1542E-02  8.5938E-02 -1.7518E-02  1.2707E-01  1.3429E-01 -4.5782E+00 -4.9104E-02 -4.6959E-02
             1.9794E-01
 GRADIENT:  -4.4974E-04  3.2395E-02  2.7573E-03  2.8669E-02 -1.9771E-02 -2.0892E-04  1.0436E-03  0.0000E+00 -2.1446E-03  1.8564E-03
             3.7465E-04

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1262
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.9835E-04 -5.7653E-03 -3.2787E-04 -1.8737E-03 -1.8261E-02
 SE:             2.9821E-02  2.0001E-02  1.6648E-04  2.4089E-02  2.3168E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8934E-01  7.7316E-01  4.8910E-02  9.3800E-01  4.3056E-01

 ETASHRINKSD(%)  9.6388E-02  3.2994E+01  9.9442E+01  1.9299E+01  2.2386E+01
 ETASHRINKVR(%)  1.9268E-01  5.5102E+01  9.9997E+01  3.4873E+01  3.9760E+01
 EBVSHRINKSD(%)  4.8077E-01  3.2889E+01  9.9475E+01  1.9562E+01  2.1188E+01
 EBVSHRINKVR(%)  9.5923E-01  5.4962E+01  9.9997E+01  3.5298E+01  3.7887E+01
 RELATIVEINF(%)  9.8600E+01  1.5515E+00  2.5852E-04  2.7181E+00  5.0841E+00
 EPSSHRINKSD(%)  4.2080E+01
 EPSSHRINKVR(%)  6.6453E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1648.0645458431306     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -912.91371927939247     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.32
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1648.065       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.65E-01  9.85E-01  8.34E-01  9.86E-01  8.89E-01  1.03E+00  1.03E+00  1.00E-02  8.61E-01  8.63E-01  1.10E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.368
Stop Time:
Sat Oct  2 01:58:23 CDT 2021

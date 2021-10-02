Fri Oct  1 14:38:27 CDT 2021
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
$DATA ../../../../data/SD2/TD2/dat9.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m9.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2061.53758467633        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.1339E+02 -1.8692E+01 -6.5663E+00 -1.3851E+01  2.0788E+01  1.7167E+01  5.8764E+00  1.1634E+01  7.5514E+00 -1.7824E+00
            -8.8425E-01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2070.12156406502        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.1849E-01  9.4462E-01  1.0924E+00  1.0986E+00  1.0093E+00  1.0024E+00  9.3026E-01  8.0555E-01  9.2516E-01  1.0554E+00
             1.0044E+00
 PARAMETER:  1.4981E-02  4.3028E-02  1.8839E-01  1.9400E-01  1.0923E-01  1.0235E-01  2.7710E-02 -1.1623E-01  2.2210E-02  1.5390E-01
             1.0443E-01
 GRADIENT:  -3.7898E+01  1.7719E+01  2.2511E+00  1.1896E+01  4.1554E+00  9.4544E-01 -2.5913E+00  1.5822E+00 -1.3101E+01 -5.6980E+00
            -2.4201E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2071.13623275904        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  9.2555E-01  8.1026E-01  1.0748E+00  1.2002E+00  9.3716E-01  9.9037E-01  8.6801E-01  6.3513E-01  9.6573E-01  1.0958E+00
             1.0076E+00
 PARAMETER:  2.2635E-02 -1.1040E-01  1.7212E-01  2.8252E-01  3.5101E-02  9.0321E-02 -4.1548E-02 -3.5392E-01  6.5130E-02  1.9150E-01
             1.0761E-01
 GRADIENT:  -1.9179E+01  2.9542E+01  2.3815E+00  5.4080E+01 -9.7946E+00 -2.8136E+00  1.4094E-01 -1.6927E+00  5.7223E+00  3.0602E+00
             5.5639E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2072.70035203746        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  9.3439E-01  6.6066E-01  1.0780E+00  1.2687E+00  8.7933E-01  9.9075E-01  1.1437E+00  6.4948E-01  8.6157E-01  1.0268E+00
             9.7623E-01
 PARAMETER:  3.2139E-02 -3.1451E-01  1.7515E-01  3.3801E-01 -2.8597E-02  9.0709E-02  2.3428E-01 -3.3158E-01 -4.9005E-02  1.2650E-01
             7.5939E-02
 GRADIENT:   6.5509E+00  1.1868E+01  6.9437E+00  1.4966E+01 -9.8758E+00 -1.8792E+00 -6.2652E-01 -1.2525E+00 -3.8058E+00 -2.1681E+00
            -1.8150E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2074.34251749191        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.2815E-01  3.7216E-01  1.3059E+00  1.4518E+00  8.9620E-01  9.9159E-01  1.0920E+00  8.5406E-01  8.0733E-01  1.1117E+00
             9.9963E-01
 PARAMETER:  2.5433E-02 -8.8843E-01  3.6688E-01  4.7280E-01 -9.5869E-03  9.1558E-02  1.8798E-01 -5.7751E-02 -1.1402E-01  2.0590E-01
             9.9631E-02
 GRADIENT:   2.3023E+00  4.4109E+00  3.8466E+00  1.0075E+01 -6.5935E+00  2.0383E-01  6.0332E-01  3.4770E-01 -4.2960E-01  2.0706E+00
             2.2567E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2074.70349841514        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      882             RESET HESSIAN, TYPE I
 NPARAMETR:  9.2522E-01  2.4132E-01  1.3311E+00  1.5258E+00  8.7284E-01  9.8907E-01  5.7183E-01  8.9172E-01  7.7772E-01  1.0954E+00
             9.9528E-01
 PARAMETER:  2.2280E-02 -1.3217E+00  3.8602E-01  5.2252E-01 -3.6002E-02  8.9007E-02 -4.5891E-01 -1.4600E-02 -1.5139E-01  1.9112E-01
             9.5265E-02
 GRADIENT:   3.6452E+02  2.7017E+01  8.3840E+00  7.5354E+02  7.1559E+00  2.9746E+01  3.6346E-01  2.9437E-02  1.1159E+01  1.4731E+00
             8.6163E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2074.75034661741        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:     1041
 NPARAMETR:  9.2497E-01  2.3433E-01  1.3338E+00  1.5288E+00  8.7181E-01  9.8895E-01  2.5613E-01  8.9339E-01  7.7981E-01  1.0974E+00
             9.9585E-01
 PARAMETER:  2.2010E-02 -1.3510E+00  3.8801E-01  5.2451E-01 -3.7187E-02  8.8886E-02 -1.2621E+00 -1.2733E-02 -1.4870E-01  1.9291E-01
             9.5838E-02
 GRADIENT:   1.6054E-01  3.6006E-01  3.4511E-01 -3.1758E+00 -3.8216E-01 -8.0922E-02  2.6860E-02 -2.2551E-01  3.5554E-01 -1.4399E-01
            -3.8891E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2074.76649495148        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1225
 NPARAMETR:  9.2541E-01  2.3386E-01  1.3336E+00  1.5269E+00  8.7202E-01  9.8930E-01  3.3812E-02  8.9687E-01  7.7937E-01  1.0979E+00
             9.9625E-01
 PARAMETER:  2.2480E-02 -1.3530E+00  3.8791E-01  5.2321E-01 -3.6945E-02  8.9243E-02 -3.2869E+00 -8.8467E-03 -1.4927E-01  1.9340E-01
             9.6245E-02
 GRADIENT:   1.2531E+00 -1.6173E-01 -1.0797E-01 -8.2898E+00  2.4683E-01  7.4327E-02  6.6219E-04  2.4814E-02  5.1645E-02 -1.3460E-02
             5.8731E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2074.76999492848        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1410
 NPARAMETR:  9.2546E-01  2.3637E-01  1.3330E+00  1.5258E+00  8.7271E-01  9.8932E-01  1.0000E-02  8.9657E-01  7.7997E-01  1.0979E+00
             9.9623E-01
 PARAMETER:  2.2536E-02 -1.3423E+00  3.8741E-01  5.2252E-01 -3.6147E-02  8.9258E-02 -7.8781E+00 -9.1831E-03 -1.4850E-01  1.9337E-01
             9.6227E-02
 GRADIENT:   1.2704E+00 -6.9514E-02 -3.9952E-01 -7.1176E+00  5.7462E-01  6.3451E-02  0.0000E+00  5.4779E-02 -4.4164E-02 -7.0496E-02
             2.5363E-02

0ITERATION NO.:   41    OBJECTIVE VALUE:  -2074.76999492848        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1432
 NPARAMETR:  9.2546E-01  2.3637E-01  1.3330E+00  1.5258E+00  8.7271E-01  9.8932E-01  1.0000E-02  8.9657E-01  7.7997E-01  1.0979E+00
             9.9623E-01
 PARAMETER:  2.2536E-02 -1.3423E+00  3.8741E-01  5.2252E-01 -3.6147E-02  8.9258E-02 -7.8781E+00 -9.1831E-03 -1.4850E-01  1.9337E-01
             9.6227E-02
 GRADIENT:   1.2704E+00 -6.9514E-02 -3.9952E-01 -7.1176E+00  5.7462E-01  6.3451E-02  0.0000E+00  5.4779E-02 -4.4164E-02 -7.0496E-02
             2.5363E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1432
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.0901E-04 -8.3824E-05 -2.6972E-02 -4.5736E-03 -3.0045E-02
 SE:             2.9844E-02  4.2335E-05  1.4946E-02  2.9489E-02  2.3154E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8372E-01  4.7698E-02  7.1138E-02  8.7675E-01  1.9442E-01

 ETASHRINKSD(%)  2.0044E-02  9.9858E+01  4.9928E+01  1.2072E+00  2.2431E+01
 ETASHRINKVR(%)  4.0085E-02  1.0000E+02  7.4928E+01  2.3998E+00  3.9831E+01
 EBVSHRINKSD(%)  3.5689E-01  9.9864E+01  5.3327E+01  1.6426E+00  1.9395E+01
 EBVSHRINKVR(%)  7.1252E-01  1.0000E+02  7.8216E+01  3.2582E+00  3.5028E+01
 RELATIVEINF(%)  9.7610E+01  1.2940E-05  5.1843E+00  8.0804E+00  1.1929E+01
 EPSSHRINKSD(%)  3.3690E+01
 EPSSHRINKVR(%)  5.6030E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2074.7699949284756     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1155.8314617238029     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.16
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2074.770       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.25E-01  2.36E-01  1.33E+00  1.53E+00  8.73E-01  9.89E-01  1.00E-02  8.97E-01  7.80E-01  1.10E+00  9.96E-01
 


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
 #CPUT: Total CPU Time in Seconds,       21.197
Stop Time:
Fri Oct  1 14:38:49 CDT 2021

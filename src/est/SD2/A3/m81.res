Fri Oct  1 10:46:08 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat81.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   1327.96903663081        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8150E+02  4.3319E+01  2.7884E+02 -2.1714E+01  3.5422E+02  3.9365E+01 -8.3870E+01 -4.4582E+02 -2.0079E+02 -1.9124E+02
            -5.9068E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -945.268421548142        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.4624E+00  1.2162E+00  7.6427E-01  1.4562E+00  5.8818E-01  7.6110E-01  1.0135E+00  1.3356E+00  9.5889E-01  1.1606E+00
             1.4690E+01
 PARAMETER:  4.8006E-01  2.9574E-01 -1.6883E-01  4.7582E-01 -4.3073E-01 -1.7300E-01  1.1346E-01  3.8936E-01  5.8018E-02  2.4896E-01
             2.7872E+00
 GRADIENT:   1.2144E+02 -1.3916E+00  8.7708E+00 -1.3703E+01 -3.2258E+01 -5.3711E+00  1.0703E+01  8.1601E+00  2.6031E+01  2.0863E+01
             4.8924E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1028.20972608404        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.3214E+00  2.9775E-01  2.1231E-02  2.3487E+00  8.3879E-02  8.2858E-01  6.9287E-01  1.1998E+00  3.8698E-01  4.5920E-01
             1.1132E+01
 PARAMETER:  3.7868E-01 -1.1115E+00 -3.7523E+00  9.5387E-01 -2.3784E+00 -8.8042E-02 -2.6692E-01  2.8215E-01 -8.4939E-01 -6.7827E-01
             2.5098E+00
 GRADIENT:   3.6162E+02  1.3824E+02  1.1015E+01  2.7681E+01 -1.3000E+02 -4.5487E+01  7.6773E-01  2.1155E+00 -3.8407E-01 -5.5328E+00
             2.6857E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1285.68573597020        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  8.9392E-01  1.5070E-01  1.0000E-02  1.4258E+00  7.1316E-02  9.3650E-01  8.7421E-01  3.3951E+00  8.3775E+00  1.2436E+00
             4.8806E+00
 PARAMETER: -1.2142E-02 -1.7925E+00 -5.0003E+00  4.5476E-01 -2.5406E+00  3.4390E-02 -3.4440E-02  1.3223E+00  2.2256E+00  3.1801E-01
             1.6853E+00
 GRADIENT:  -2.6099E+02  6.1963E+01  0.0000E+00 -1.0829E+01  2.3249E+01 -2.1189E+01  7.3935E+00  3.6478E+01  9.1849E+00  4.7004E+01
             9.9001E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1353.49565272879        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      347
 NPARAMETR:  9.8383E-01  1.3272E-01  1.3757E-02  1.8171E+00  8.4819E-02  9.6849E-01  4.2880E-01  1.7116E+00  6.7171E+00  7.4415E-01
             4.6770E+00
 PARAMETER:  8.3699E-02 -1.9195E+00 -4.1862E+00  6.9725E-01 -2.3672E+00  6.7981E-02 -7.4676E-01  6.3740E-01  2.0047E+00 -1.9551E-01
             1.6427E+00
 GRADIENT:  -2.9553E+01 -1.8213E+01 -5.6965E+00 -3.8509E+00 -4.2246E+01  2.2771E+01  1.6641E+00  7.2949E+00 -4.0952E+00 -1.2689E+01
             2.6480E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1366.89486855929        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  9.5588E-01  1.8054E-01  2.7922E-02  2.1110E+00  9.6077E-02  7.8099E-01  2.3381E-01  3.5375E-01  5.9845E+00  6.3703E-01
             4.6045E+00
 PARAMETER:  5.4877E-02 -1.6118E+00 -3.4783E+00  8.4718E-01 -2.2426E+00 -1.4719E-01 -1.3532E+00 -9.3916E-01  1.8892E+00 -3.5094E-01
             1.6270E+00
 GRADIENT:   4.1225E+01  9.5091E-01  8.3872E+00 -2.1001E+01 -6.6434E+00 -1.5461E+01  8.1355E-01  7.1205E-01  1.0689E+00  4.5794E+00
            -2.3282E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1382.79955023653        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  8.5456E-01  1.9403E-01  4.0619E-02  4.3275E+00  9.9648E-02  8.8995E-01  4.8255E-02  5.7231E-02  6.2833E+00  4.9766E-01
             4.6369E+00
 PARAMETER: -5.7164E-02 -1.5398E+00 -3.1035E+00  1.5650E+00 -2.2061E+00 -1.6595E-02 -2.9313E+00 -2.7607E+00  1.9379E+00 -5.9783E-01
             1.6340E+00
 GRADIENT:   4.7460E+00  2.9035E+00  2.7771E+01 -2.0169E+01 -5.2938E+01  8.5713E+00  3.9333E-02  2.7611E-02  9.8323E+00 -6.6727E-01
            -8.4208E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1389.26571169373        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  8.0772E-01  1.9060E-01  4.4112E-02  8.9947E+00  9.9317E-02  8.6567E-01  1.2168E-02  1.5738E-02  6.3252E+00  4.9070E-01
             4.6315E+00
 PARAMETER: -1.1354E-01 -1.5576E+00 -3.0210E+00  2.2966E+00 -2.2094E+00 -4.4249E-02 -4.3090E+00 -4.0517E+00  1.9445E+00 -6.1192E-01
             1.6329E+00
 GRADIENT:   2.9961E+00  4.5215E-01  3.9778E-01 -1.3868E-02 -1.8946E+00 -1.9335E-02  2.5356E-03  2.0983E-03  7.6972E-02 -1.8327E-01
            -1.2735E+00

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1389.28265306113        NO. OF FUNC. EVALS.: 126
 CUMULATIVE NO. OF FUNC. EVALS.:     1003
 NPARAMETR:  8.0448E-01  1.9057E-01  4.4374E-02  9.0955E+00  9.9506E-02  8.6647E-01  1.0000E-02  1.0000E-02  6.3335E+00  4.9078E-01
             4.6349E+00
 PARAMETER: -1.1755E-01 -1.5578E+00 -3.0151E+00  2.3078E+00 -2.2075E+00 -4.3330E-02 -4.8764E+00 -4.6053E+00  1.9458E+00 -6.1175E-01
             1.6336E+00
 GRADIENT:  -7.4254E-01 -7.9446E-01 -7.5196E-01  2.6877E-02  5.0767E+00  4.6315E-02  0.0000E+00  0.0000E+00  5.7484E-01  2.3640E-01
             3.4314E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1003
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3598E-02  1.9478E-05  2.4690E-04 -3.8292E-02  3.3548E-02
 SE:             2.3693E-02  8.7382E-05  1.4771E-04  2.1877E-02  2.1176E-02
 N:                     100         100         100         100         100

 P VAL.:         5.6601E-01  8.2361E-01  9.4630E-02  8.0059E-02  1.1314E-01

 ETASHRINKSD(%)  2.0626E+01  9.9707E+01  9.9505E+01  2.6710E+01  2.9059E+01
 ETASHRINKVR(%)  3.6997E+01  9.9999E+01  9.9998E+01  4.6286E+01  4.9673E+01
 EBVSHRINKSD(%)  2.1411E+01  9.9583E+01  9.9480E+01  2.1464E+01  3.2513E+01
 EBVSHRINKVR(%)  3.8238E+01  9.9998E+01  9.9997E+01  3.8322E+01  5.4455E+01
 RELATIVEINF(%)  2.1741E+01  1.1055E-03  7.7968E-04  3.2509E+01  1.7684E+01
 EPSSHRINKSD(%)  1.7114E+01
 EPSSHRINKVR(%)  3.1298E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1389.2826530611289     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -470.34411985645625     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.08
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1389.283       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         8.04E-01  1.91E-01  4.44E-02  9.10E+00  9.95E-02  8.66E-01  1.00E-02  1.00E-02  6.33E+00  4.91E-01  4.63E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.130
Stop Time:
Fri Oct  1 10:46:28 CDT 2021

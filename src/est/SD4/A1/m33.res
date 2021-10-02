Fri Oct  1 23:58:37 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat33.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m33.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1341.57576348356        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0807E+02  9.1613E+00  3.7960E+01  4.1643E+00  1.1593E+01  4.1164E+01 -1.4994E+01 -1.2092E+01 -2.4900E+00 -2.8722E+01
            -5.0212E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1429.62406234685        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0128E+00  1.1524E+00  1.0491E+00  9.9136E-01  1.0567E+00  1.1606E+00  1.1302E+00  9.3725E-01  8.4845E-01  9.9425E-01
             2.7503E+00
 PARAMETER:  1.1268E-01  2.4184E-01  1.4793E-01  9.1324E-02  1.5518E-01  2.4895E-01  2.2243E-01  3.5195E-02 -6.4348E-02  9.4238E-02
             1.1117E+00
 GRADIENT:   1.4085E+02  3.5603E+01  5.6794E+00  2.2123E+01 -3.8419E+01  7.5384E+01  7.6376E+00  3.2666E+00  4.1778E+00  1.3374E+01
             1.5998E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1465.86419120162        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  9.1452E-01  9.0882E-01  1.4430E+00  1.1194E+00  1.1524E+00  9.1982E-01  1.2692E+00  3.8719E-01  9.3070E-01  1.2909E+00
             2.1550E+00
 PARAMETER:  1.0640E-02  4.3868E-03  4.6672E-01  2.1276E-01  2.4183E-01  1.6426E-02  3.3838E-01 -8.4884E-01  2.8181E-02  3.5535E-01
             8.6780E-01
 GRADIENT:  -1.2775E+01  7.9848E+00  7.0684E+00  2.6572E+01 -1.5881E+01  5.0173E+00  9.5452E+00  8.7623E-02  1.3833E+01  1.2853E+01
             7.4574E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1471.54532182539        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      235
 NPARAMETR:  9.0751E-01  1.0247E+00  8.5392E-01  1.0045E+00  9.4180E-01  9.1595E-01  1.1889E+00  4.1746E-01  8.9077E-01  1.0013E+00
             1.8250E+00
 PARAMETER:  2.9454E-03  1.2435E-01 -5.7922E-02  1.0448E-01  4.0037E-02  1.2209E-02  2.7302E-01 -7.7357E-01 -1.5670E-02  1.0130E-01
             7.0155E-01
 GRADIENT:  -6.3546E+00  6.3516E-01  2.1317E+00 -1.2801E+00 -3.7502E+00 -1.1620E-01 -1.9499E-01  4.8099E-01 -2.2635E-01  1.2434E+00
             7.5892E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1474.38607765330        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.4517E-01  1.0521E+00  8.4923E-01  1.0022E+00  9.6081E-01  9.4144E-01  1.1782E+00  4.2713E-01  8.9078E-01  9.8631E-01
             1.8626E+00
 PARAMETER:  4.3607E-02  1.5081E-01 -6.3428E-02  1.0220E-01  6.0019E-02  3.9658E-02  2.6396E-01 -7.5067E-01 -1.5654E-02  8.6220E-02
             7.2195E-01
 GRADIENT:  -1.6592E+01 -5.6919E+00 -4.8408E+00 -1.3911E+00  6.6160E+00  4.6476E+00 -2.8333E+00  4.2536E-01 -1.5866E+00 -9.6559E-01
             8.8749E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1474.79931800898        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  9.5150E-01  9.9235E-01  8.5830E-01  1.0422E+00  9.3236E-01  9.2773E-01  1.2569E+00  1.3443E-01  8.7892E-01  1.0057E+00
             1.8318E+00
 PARAMETER:  5.0281E-02  9.2316E-02 -5.2801E-02  1.4131E-01  2.9960E-02  2.4986E-02  3.2865E-01 -1.9067E+00 -2.9067E-02  1.0571E-01
             7.0528E-01
 GRADIENT:   1.1701E+00  1.3189E+00 -1.3805E-01  1.6954E+00 -8.3511E-02 -5.8727E-01 -3.5229E-01  2.0746E-02 -2.9508E-01 -6.8303E-02
             1.0320E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1474.83095898198        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      704             RESET HESSIAN, TYPE I
 NPARAMETR:  9.5052E-01  9.0525E-01  8.8061E-01  1.0940E+00  9.0519E-01  9.2845E-01  1.3508E+00  1.6485E-02  8.5283E-01  1.0041E+00
             1.8260E+00
 PARAMETER:  4.9253E-02  4.5776E-04 -2.7146E-02  1.8982E-01  3.9188E-04  2.5761E-02  4.0073E-01 -4.0053E+00 -5.9190E-02  1.0410E-01
             7.0213E-01
 GRADIENT:   1.1294E+02  6.9746E+00  7.8903E-01  4.0698E+01  2.2639E+00  9.1294E+00  4.6590E+00  8.8687E-04  1.8006E+00  2.7891E-01
             5.5975E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1474.83104225804        NO. OF FUNC. EVALS.: 123
 CUMULATIVE NO. OF FUNC. EVALS.:      827
 NPARAMETR:  9.5044E-01  9.0534E-01  8.8053E-01  1.0940E+00  9.0522E-01  9.2840E-01  1.3508E+00  1.0000E-02  8.5274E-01  1.0041E+00
             1.8261E+00
 PARAMETER:  4.9167E-02  5.5139E-04 -2.7237E-02  1.8982E-01  4.2202E-04  2.5708E-02  4.0070E-01 -4.5722E+00 -5.9300E-02  1.0408E-01
             7.0219E-01
 GRADIENT:   2.0087E-01 -1.0079E-01  4.7802E-02 -2.8394E-01 -4.1540E-02  1.1552E-02  2.3602E-02  0.0000E+00  1.1349E-02  6.5632E-03
             1.1905E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      827
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -9.2453E-05  4.6653E-03 -2.1145E-04 -1.6107E-02 -2.2363E-02
 SE:             2.9431E-02  2.0184E-02  1.2900E-04  2.1857E-02  2.0746E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9749E-01  8.1721E-01  1.0120E-01  4.6117E-01  2.8106E-01

 ETASHRINKSD(%)  1.4013E+00  3.2382E+01  9.9568E+01  2.6778E+01  3.0497E+01
 ETASHRINKVR(%)  2.7831E+00  5.4278E+01  9.9998E+01  4.6385E+01  5.1694E+01
 EBVSHRINKSD(%)  1.5073E+00  3.2776E+01  9.9565E+01  2.6379E+01  2.9357E+01
 EBVSHRINKVR(%)  2.9918E+00  5.4810E+01  9.9998E+01  4.5799E+01  5.0095E+01
 RELATIVEINF(%)  9.5986E+01  2.1801E+00  1.7909E-04  3.1170E+00  4.2559E+00
 EPSSHRINKSD(%)  3.6493E+01
 EPSSHRINKVR(%)  5.9669E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1474.8310422580419     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -739.68021569430368     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:     9.28
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1474.831       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.50E-01  9.05E-01  8.81E-01  1.09E+00  9.05E-01  9.28E-01  1.35E+00  1.00E-02  8.53E-01  1.00E+00  1.83E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,        9.322
Stop Time:
Fri Oct  1 23:58:48 CDT 2021

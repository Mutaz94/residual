Sat Oct  2 03:52:19 CDT 2021
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
$DATA ../../../../data/SD4/S2/dat38.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m38.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1671.77739806429        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6215E+02  2.2565E+01 -2.3292E+01  4.9166E+01 -1.4841E+01  2.4126E+01 -1.5980E+01  1.5962E+01 -4.3323E+01  2.4636E+01
             6.7145E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1688.88647575222        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      130
 NPARAMETR:  9.9783E-01  1.0243E+00  1.1265E+00  1.0092E+00  1.0653E+00  1.1329E+00  1.0846E+00  9.2163E-01  1.2306E+00  9.0885E-01
             7.7751E-01
 PARAMETER:  9.7829E-02  1.2397E-01  2.1915E-01  1.0919E-01  1.6322E-01  2.2476E-01  1.8124E-01  1.8386E-02  3.0753E-01  4.4207E-03
            -1.5166E-01
 GRADIENT:   1.3311E+01  5.5104E+00  4.1452E+00  9.0667E+00 -1.2129E+01  1.6575E+01 -4.4909E+00  5.5692E+00  2.4463E+00 -6.1261E+00
            -3.1179E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1691.92745825350        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      306
 NPARAMETR:  1.0031E+00  1.1920E+00  9.0275E-01  8.8762E-01  1.0579E+00  1.1408E+00  1.1375E+00  4.8826E-01  1.3007E+00  9.4117E-01
             8.1034E-01
 PARAMETER:  1.0314E-01  2.7564E-01 -2.3135E-03 -1.9207E-02  1.5624E-01  2.3169E-01  2.2883E-01 -6.1692E-01  3.6293E-01  3.9366E-02
            -1.1030E-01
 GRADIENT:   1.8861E+01  6.2488E-01 -7.8542E+00  4.1814E+00 -9.2965E+00  1.8406E+01  3.9082E+00  2.5009E+00  4.6979E+00  8.5996E+00
            -8.8970E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1693.25788450400        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      485
 NPARAMETR:  9.9021E-01  1.3416E+00  8.5468E-01  7.9821E-01  1.1100E+00  1.0837E+00  1.0243E+00  3.1120E-01  1.3808E+00  9.2063E-01
             8.3811E-01
 PARAMETER:  9.0165E-02  3.9383E-01 -5.7025E-02 -1.2539E-01  2.0435E-01  1.8042E-01  1.2402E-01 -1.0673E+00  4.2264E-01  1.7301E-02
            -7.6601E-02
 GRADIENT:  -5.5946E+00  1.4571E+01  3.6726E+00  8.0171E+00 -9.6978E+00 -1.7735E+00 -9.9488E-01  4.1745E-01 -2.6616E+00  9.9586E-02
             1.4438E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1693.54262538169        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      665
 NPARAMETR:  9.9042E-01  1.4479E+00  7.9518E-01  7.2114E-01  1.1503E+00  1.0901E+00  9.7990E-01  1.3807E-01  1.4974E+00  9.3207E-01
             8.3667E-01
 PARAMETER:  9.0377E-02  4.7011E-01 -1.2918E-01 -2.2692E-01  2.4000E-01  1.8630E-01  7.9699E-02 -1.8800E+00  5.0370E-01  2.9657E-02
            -7.8331E-02
 GRADIENT:  -5.7909E+00  3.6481E+00 -3.4869E-01  4.5308E+00 -1.4052E+00  5.3238E-01  5.7472E-01  8.5944E-02  4.5354E-01  1.5814E-01
             5.2195E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1693.61354000432        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      849
 NPARAMETR:  9.9397E-01  1.4465E+00  7.9413E-01  7.1566E-01  1.1519E+00  1.0898E+00  9.7578E-01  7.7682E-02  1.4988E+00  9.3240E-01
             8.3594E-01
 PARAMETER:  9.3956E-02  4.6916E-01 -1.3051E-01 -2.3455E-01  2.4138E-01  1.8597E-01  7.5480E-02 -2.4551E+00  5.0469E-01  3.0004E-02
            -7.9194E-02
 GRADIENT:   9.3519E-01 -2.7436E+00  1.9435E-01 -3.1055E-01 -5.8238E-01  4.2810E-01 -4.5427E-02  2.4675E-02 -6.3953E-02 -5.4120E-02
             1.9307E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1693.62506976908        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1026
 NPARAMETR:  9.9480E-01  1.4480E+00  7.9330E-01  7.1483E-01  1.1526E+00  1.0912E+00  9.7568E-01  2.5362E-02  1.5017E+00  9.3296E-01
             8.3590E-01
 PARAMETER:  9.4791E-02  4.7021E-01 -1.3156E-01 -2.3572E-01  2.4202E-01  1.8727E-01  7.5375E-02 -3.5745E+00  5.0659E-01  3.0603E-02
            -7.9249E-02
 GRADIENT:   2.4867E+00 -2.7196E+00  2.0530E-01 -5.1424E-02 -3.5043E-01  9.5451E-01  2.1470E-02  2.5954E-03  1.5676E-01 -5.2154E-02
            -3.7827E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1693.62673267707        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1214             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9488E-01  1.4462E+00  7.9289E-01  7.1510E-01  1.1527E+00  1.0918E+00  9.7585E-01  1.0000E-02  1.5019E+00  9.3320E-01
             8.3595E-01
 PARAMETER:  9.4871E-02  4.6897E-01 -1.3207E-01 -2.3534E-01  2.4208E-01  1.8783E-01  7.5559E-02 -4.6034E+00  5.0670E-01  3.0867E-02
            -7.9182E-02
 GRADIENT:   6.5373E+02  5.6174E+02  1.3654E+00  1.3149E+02  2.1421E+01  1.6939E+02  8.8465E+00  0.0000E+00  4.8480E+01  7.9069E-01
             8.8552E-01

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1693.62702646118        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:     1352
 NPARAMETR:  9.9488E-01  1.4454E+00  7.9290E-01  7.1563E-01  1.1527E+00  1.0918E+00  9.7617E-01  1.0000E-02  1.5015E+00  9.3320E-01
             8.3601E-01
 PARAMETER:  9.4875E-02  4.6912E-01 -1.3075E-01 -2.3537E-01  2.4167E-01  1.8783E-01  7.5691E-02 -4.6034E+00  5.0624E-01  3.0696E-02
            -7.9309E-02
 GRADIENT:   1.2225E-02  6.8771E-01  1.6898E-01 -3.4028E-01 -4.1096E-01  2.3561E-03 -1.7250E-02  0.0000E+00 -3.4838E-02 -1.5950E-02
            -5.3731E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1352
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -5.9380E-05 -2.7502E-02 -3.7569E-04  1.9759E-02 -3.4153E-02
 SE:             2.9901E-02  2.2172E-02  1.4256E-04  2.4457E-02  2.2581E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9842E-01  2.1483E-01  8.4082E-03  4.1913E-01  1.3041E-01

 ETASHRINKSD(%)  1.0000E-10  2.5721E+01  9.9522E+01  1.8067E+01  2.4351E+01
 ETASHRINKVR(%)  1.0000E-10  4.4826E+01  9.9998E+01  3.2870E+01  4.2773E+01
 EBVSHRINKSD(%)  2.6171E-01  2.4873E+01  9.9587E+01  1.8398E+01  2.3390E+01
 EBVSHRINKVR(%)  5.2273E-01  4.3560E+01  9.9998E+01  3.3411E+01  4.1310E+01
 RELATIVEINF(%)  9.9388E+01  4.6491E+00  3.3506E-04  6.7856E+00  1.2088E+01
 EPSSHRINKSD(%)  4.4867E+01
 EPSSHRINKVR(%)  6.9604E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1693.6270264611790     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -958.47619989744078     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.79
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1693.627       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.95E-01  1.45E+00  7.94E-01  7.15E-01  1.15E+00  1.09E+00  9.76E-01  1.00E-02  1.50E+00  9.33E-01  8.36E-01
 


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
 #CPUT: Total CPU Time in Seconds,       18.823
Stop Time:
Sat Oct  2 03:52:39 CDT 2021
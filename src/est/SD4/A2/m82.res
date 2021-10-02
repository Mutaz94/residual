Sat Oct  2 00:45:10 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat82.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m82.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1231.57966710469        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5625E+02  6.3018E+01 -3.8952E+01  1.7663E+02  3.1683E+02  8.5437E+01 -4.4010E+01 -4.4352E+00 -4.5652E+01 -1.8319E+02
            -5.9127E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1433.26449339054        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0949E+00  8.7720E-01  9.0712E-01  1.0182E+00  7.5643E-01  8.7696E-01  1.1169E+00  9.6628E-01  1.1525E+00  1.2847E+00
             2.1353E+00
 PARAMETER:  1.9070E-01 -3.1023E-02  2.5199E-03  1.1799E-01 -1.7914E-01 -3.1300E-02  2.1058E-01  6.5702E-02  2.4197E-01  3.5054E-01
             8.5859E-01
 GRADIENT:   4.1352E+02  5.1258E+00  1.1030E+00  2.2313E+00  9.5425E-01 -1.4254E+01  2.4099E-01  8.6731E+00  1.2700E+01  1.3832E+01
             5.1862E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1444.68972310290        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      203
 NPARAMETR:  1.0878E+00  5.0184E-01  6.2763E-01  1.3038E+00  4.9268E-01  9.1775E-01  1.5944E+00  5.8664E-01  1.0953E+00  1.1492E+00
             1.8462E+00
 PARAMETER:  1.8417E-01 -5.8948E-01 -3.6580E-01  3.6526E-01 -6.0790E-01  1.4168E-02  5.6652E-01 -4.3334E-01  1.9102E-01  2.3906E-01
             7.1310E-01
 GRADIENT:   1.7849E+02  4.2135E+01  1.5946E+01  1.1784E+02 -4.5600E+01 -7.2161E+00 -2.0038E+00  7.6748E+00  1.9075E+01  2.3523E+01
             1.2780E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1461.58801279002        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      380
 NPARAMETR:  1.0093E+00  4.5605E-01  6.5003E-01  1.2891E+00  5.1431E-01  9.0955E-01  1.8027E+00  1.6457E-01  9.8451E-01  1.0847E+00
             1.7179E+00
 PARAMETER:  1.0924E-01 -6.8515E-01 -3.3074E-01  3.5391E-01 -5.6493E-01  5.1975E-03  6.8927E-01 -1.7044E+00  8.4392E-02  1.8128E-01
             6.4109E-01
 GRADIENT:  -6.1069E+00  2.7806E+01  4.9419E+00  8.6362E+01 -1.9934E+00  1.1938E+00 -3.1376E+00  4.8441E-01 -2.1171E+00  1.5137E+00
            -1.5885E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1473.11907956163        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      556
 NPARAMETR:  1.0053E+00  1.5206E-01  5.1432E-01  1.3361E+00  3.9025E-01  9.0951E-01  3.3811E+00  1.6312E-02  9.4466E-01  1.0178E+00
             1.7049E+00
 PARAMETER:  1.0529E-01 -1.7835E+00 -5.6491E-01  3.8977E-01 -8.4098E-01  5.1522E-03  1.3182E+00 -4.0159E+00  4.3070E-02  1.1766E-01
             6.3351E-01
 GRADIENT:  -4.1446E+00  1.2831E+00  4.1191E+00  1.9931E+01 -4.5516E+00  2.2705E+00 -2.6186E+00  4.7150E-03  3.0988E+00  5.4454E+00
             1.1538E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1473.77398783730        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      732
 NPARAMETR:  1.0073E+00  1.1291E-01  4.7914E-01  1.3253E+00  3.6754E-01  9.0070E-01  3.8766E+00  1.0000E-02  9.2978E-01  9.7625E-01
             1.7034E+00
 PARAMETER:  1.0727E-01 -2.0812E+00 -6.3576E-01  3.8167E-01 -9.0093E-01 -4.5777E-03  1.4549E+00 -4.6638E+00  2.7191E-02  7.5965E-02
             6.3260E-01
 GRADIENT:   3.6579E+00  5.2480E-01 -2.9335E+00  3.4001E+00  1.9634E+00 -1.3336E+00  4.2304E-01  0.0000E+00 -2.3036E-02 -1.6545E+00
            -1.3889E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1473.86139598813        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      909
 NPARAMETR:  1.0033E+00  8.1287E-02  4.8947E-01  1.3404E+00  3.6934E-01  9.0337E-01  4.6051E+00  1.0000E-02  9.2053E-01  9.8692E-01
             1.7104E+00
 PARAMETER:  1.0329E-01 -2.4098E+00 -6.1444E-01  3.9301E-01 -8.9603E-01 -1.6192E-03  1.6272E+00 -5.2532E+00  1.7190E-02  8.6832E-02
             6.3675E-01
 GRADIENT:  -2.6766E+00 -8.9875E-02  5.4450E-01  1.9253E-01 -5.0194E-01  1.3850E-01 -4.1519E-01  0.0000E+00 -1.1472E+00  5.0591E-01
             1.1696E+00

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1473.86767488800        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      966
 NPARAMETR:  1.0041E+00  7.8018E-02  4.8982E-01  1.3426E+00  3.6926E-01  9.0312E-01  4.6965E+00  1.0000E-02  9.2228E-01  9.8728E-01
             1.7063E+00
 PARAMETER:  1.0408E-01 -2.4508E+00 -6.1371E-01  3.9459E-01 -8.9625E-01 -1.9034E-03  1.6468E+00 -5.3231E+00  1.9090E-02  8.7198E-02
             6.3435E-01
 GRADIENT:   5.7294E-02  7.8208E-01 -1.2233E+00 -4.3062E-01  1.7528E+00  1.9816E-02  1.7225E+00  0.0000E+00  1.9909E-02 -1.1237E+00
            -8.2851E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      966
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.0329E-04  1.8205E-02 -1.4407E-04 -1.2403E-02  1.2595E-03
 SE:             2.9512E-02  1.0508E-02  1.9486E-04  2.8205E-02  2.5096E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9180E-01  8.3168E-02  4.5971E-01  6.6012E-01  9.5997E-01

 ETASHRINKSD(%)  1.1318E+00  6.4798E+01  9.9347E+01  5.5081E+00  1.5926E+01
 ETASHRINKVR(%)  2.2509E+00  8.7608E+01  9.9996E+01  1.0713E+01  2.9316E+01
 EBVSHRINKSD(%)  1.3921E+00  7.5852E+01  9.9320E+01  5.5754E+00  1.1301E+01
 EBVSHRINKVR(%)  2.7648E+00  9.4169E+01  9.9995E+01  1.0840E+01  2.1324E+01
 RELATIVEINF(%)  9.5874E+01  2.8074E+00  3.4736E-04  3.2717E+01  6.1999E+00
 EPSSHRINKSD(%)  4.1552E+01
 EPSSHRINKVR(%)  6.5838E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1473.8676748880023     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -738.71684832426411     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    12.42
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1473.868       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  7.80E-02  4.90E-01  1.34E+00  3.69E-01  9.03E-01  4.70E+00  1.00E-02  9.22E-01  9.87E-01  1.71E+00
 


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
 #CPUT: Total CPU Time in Seconds,       12.463
Stop Time:
Sat Oct  2 00:45:25 CDT 2021
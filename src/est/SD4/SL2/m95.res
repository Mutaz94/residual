Sat Oct  2 03:03:26 CDT 2021
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
$DATA ../../../../data/SD4/SL2/dat95.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m95.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1601.61501377418        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0007E+02 -4.4321E+01 -3.7976E+01 -4.3157E+01  8.5464E+01  4.2196E+01 -1.5538E+01  1.6364E+01 -7.4892E+01  5.6486E-01
            -3.3536E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1619.29802809305        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  1.0002E+00  9.6659E-01  1.0545E+00  1.0752E+00  9.4829E-01  9.7367E-01  1.0531E+00  9.2526E-01  1.3457E+00  9.6908E-01
             1.1188E+00
 PARAMETER:  1.0016E-01  6.6023E-02  1.5307E-01  1.7246E-01  4.6903E-02  7.3313E-02  1.5170E-01  2.2318E-02  3.9688E-01  6.8591E-02
             2.1224E-01
 GRADIENT:   1.6944E+00 -1.3108E+01 -8.6723E+00 -1.2027E+01  2.8602E+00 -1.9074E+00  6.3174E+00  1.3443E+01  1.5682E+01  4.3186E+00
             1.9175E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1623.67143762699        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  9.9553E-01  7.9509E-01  9.8239E-01  1.2160E+00  8.6113E-01  9.6608E-01  8.9579E-01  2.6857E-01  1.2867E+00  1.1348E+00
             1.1058E+00
 PARAMETER:  9.5518E-02 -1.2930E-01  8.2233E-02  2.9556E-01 -4.9511E-02  6.5494E-02 -1.0045E-02 -1.2146E+00  3.5208E-01  2.2646E-01
             2.0052E-01
 GRADIENT:  -8.2532E+00  1.6129E+00 -3.1098E+01  2.6246E+01  3.9256E+00 -4.3963E+00  2.9969E+00  1.7942E+00  2.0921E+01  2.2504E+01
             2.3430E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1627.21158204126        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      530
 NPARAMETR:  9.9962E-01  7.4741E-01  9.2099E-01  1.2357E+00  8.0169E-01  9.7361E-01  1.4509E+00  2.5408E-01  1.1017E+00  9.0373E-01
             1.0618E+00
 PARAMETER:  9.9616E-02 -1.9114E-01  1.7692E-02  3.1162E-01 -1.2103E-01  7.3257E-02  4.7220E-01 -1.2701E+00  1.9687E-01 -1.2206E-03
             1.6001E-01
 GRADIENT:   2.1411E+00  1.1091E+01 -6.3099E+00  2.0938E+01  8.6512E-02 -1.2866E+00 -1.5712E-01  1.4575E+00 -1.9468E+00  4.3523E+00
             2.2744E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1628.84718755154        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      709
 NPARAMETR:  9.9540E-01  4.8727E-01  9.0314E-01  1.3724E+00  7.1229E-01  9.6951E-01  2.0417E+00  4.6362E-02  9.9922E-01  8.8390E-01
             1.0530E+00
 PARAMETER:  9.5393E-02 -6.1893E-01 -1.8808E-03  4.1659E-01 -2.3927E-01  6.9037E-02  8.1376E-01 -2.9713E+00  9.9216E-02 -2.3408E-02
             1.5166E-01
 GRADIENT:  -6.4202E-01  4.4440E+00 -1.2814E-01  7.7927E+00 -4.3129E+00 -1.0629E+00  5.7156E-01  4.5689E-02 -5.1690E-01  1.7822E+00
             1.0526E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1628.96513950696        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      886
 NPARAMETR:  9.9403E-01  3.9853E-01  9.1084E-01  1.4190E+00  6.9444E-01  9.6889E-01  2.3180E+00  1.7250E-02  9.7308E-01  8.9740E-01
             1.0505E+00
 PARAMETER:  9.4007E-02 -8.1997E-01  6.6069E-03  4.4998E-01 -2.6465E-01  6.8393E-02  9.4072E-01 -3.9600E+00  7.2708E-02 -8.2482E-03
             1.4925E-01
 GRADIENT:  -1.9775E-01  2.0022E+00  3.9766E-01  1.8166E+00 -2.7070E+00 -4.6963E-01  6.1439E-01  5.8259E-03 -3.8577E-02  7.8355E-01
             7.0617E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1628.98849048435        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1071
 NPARAMETR:  9.9452E-01  3.9472E-01  9.1141E-01  1.4153E+00  6.9446E-01  9.7011E-01  2.3287E+00  1.0000E-02  9.7238E-01  8.9495E-01
             1.0490E+00
 PARAMETER:  9.4507E-02 -8.2957E-01  7.2371E-03  4.4734E-01 -2.6462E-01  6.9658E-02  9.4533E-01 -4.5328E+00  7.1993E-02 -1.0982E-02
             1.4780E-01
 GRADIENT:   1.2234E+00  4.7384E-01  1.0021E+00 -5.9874E+00 -1.7151E+00  6.9447E-02  4.8312E-01  4.8159E-04 -3.5764E-02  2.1089E-01
             2.8376E-02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -1628.98924032343        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:     1167
 NPARAMETR:  9.9452E-01  3.9420E-01  9.1087E-01  1.4153E+00  6.9477E-01  9.7010E-01  2.3259E+00  1.0000E-02  9.7247E-01  8.9406E-01
             1.0489E+00
 PARAMETER:  9.4501E-02 -8.3090E-01  6.6396E-03  4.4733E-01 -2.6417E-01  6.9647E-02  9.4410E-01 -4.5450E+00  7.2088E-02 -1.1982E-02
             1.4777E-01
 GRADIENT:   1.2106E+00  3.0096E-02 -4.3777E-01 -6.0102E+00  3.7663E-01  6.4156E-02  2.8383E-01  1.2758E-04  1.1236E-02  4.1144E-02
             2.4894E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1167
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.5799E-04  1.9468E-02 -4.2082E-04 -1.3684E-02 -5.9516E-03
 SE:             2.9810E-02  1.6359E-02  2.0494E-04  2.6957E-02  2.3888E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9309E-01  2.3403E-01  4.0033E-02  6.1172E-01  8.0325E-01

 ETASHRINKSD(%)  1.3278E-01  4.5195E+01  9.9313E+01  9.6896E+00  1.9972E+01
 ETASHRINKVR(%)  2.6538E-01  6.9964E+01  9.9995E+01  1.8440E+01  3.5955E+01
 EBVSHRINKSD(%)  5.0906E-01  5.1126E+01  9.9272E+01  8.4517E+00  1.5665E+01
 EBVSHRINKVR(%)  1.0155E+00  7.6113E+01  9.9995E+01  1.6189E+01  2.8877E+01
 RELATIVEINF(%)  9.8193E+01  3.5880E+00  7.0559E-04  1.9402E+01  6.2891E+00
 EPSSHRINKSD(%)  4.3332E+01
 EPSSHRINKVR(%)  6.7887E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1628.9892403234282     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -893.83841375969007     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.44
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1628.989       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.95E-01  3.94E-01  9.11E-01  1.42E+00  6.95E-01  9.70E-01  2.33E+00  1.00E-02  9.72E-01  8.94E-01  1.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.487
Stop Time:
Sat Oct  2 03:03:43 CDT 2021
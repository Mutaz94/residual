Fri Oct  1 01:31:23 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat83.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m83.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -691.880584131043        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5381E+02  2.2846E+02  2.6857E+02  4.6654E+01  1.8345E+02  3.5804E+01 -1.3943E+02 -1.3705E+02 -1.5583E+01 -1.3219E+02
            -5.7813E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2742.42601642772        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0402E+00  9.1104E-01  8.0874E-01  1.1581E+00  8.6366E-01  9.4089E-01  7.8457E-01  8.2107E-01  8.7882E-01  8.7897E-01
             2.5735E+00
 PARAMETER:  1.3945E-01  6.8315E-03 -1.1228E-01  2.4675E-01 -4.6575E-02  3.9068E-02 -1.4262E-01 -9.7149E-02 -2.9176E-02 -2.9006E-02
             1.0453E+00
 GRADIENT:   1.9603E+02  8.5979E+01 -1.0978E+01  1.6298E+02  2.2065E+01 -1.5847E+01 -3.4566E+00  1.2890E+01 -2.6112E+01 -1.0131E+01
            -3.8617E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2749.80964164328        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0391E+00  7.1298E-01  6.0946E-01  1.2748E+00  6.5042E-01  9.5832E-01  6.7585E-01  5.0307E-01  9.6955E-01  9.8205E-01
             2.5157E+00
 PARAMETER:  1.3831E-01 -2.3830E-01 -3.9517E-01  3.4282E-01 -3.3014E-01  5.7422E-02 -2.9178E-01 -5.8703E-01  6.9075E-02  8.1886E-02
             1.0226E+00
 GRADIENT:   1.9521E+02  1.1481E+02 -2.5039E+01  2.3653E+02  3.5220E+01 -9.1023E+00 -3.7406E+00  9.1639E+00 -8.0534E+00  1.5655E+01
            -5.1647E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2769.11492312610        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      344
 NPARAMETR:  9.8102E-01  5.4998E-01  5.2983E-01  1.2544E+00  5.2900E-01  1.0202E+00  1.0014E+00  4.0580E-02  8.3664E-01  9.5460E-01
             2.5302E+00
 PARAMETER:  8.0840E-02 -4.9788E-01 -5.3520E-01  3.2664E-01 -5.3676E-01  1.2004E-01  1.0138E-01 -3.1045E+00 -7.8364E-02  5.3540E-02
             1.0283E+00
 GRADIENT:  -2.0687E+01  1.2596E+01  1.2901E+01  7.5541E+01  4.5639E+00  1.3797E+01  8.4044E+00  6.6765E-02 -4.1785E+01  3.1636E+01
            -8.3187E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2796.59887165864        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      521
 NPARAMETR:  9.8953E-01  3.1222E-01  2.4306E-01  1.1663E+00  2.7987E-01  1.0058E+00  1.2457E+00  1.0000E-02  1.1270E+00  6.0646E-01
             2.4314E+00
 PARAMETER:  8.9474E-02 -1.0640E+00 -1.3144E+00  2.5386E-01 -1.1734E+00  1.0581E-01  3.1971E-01 -9.7090E+00  2.1954E-01 -4.0012E-01
             9.8847E-01
 GRADIENT:  -2.5443E-01  3.4900E+01 -1.2796E+01  2.2018E+01 -2.5446E+00  5.1203E+00  5.8425E+00  0.0000E+00  3.5695E+00 -2.0398E+01
             1.1454E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2800.19383492406        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      696
 NPARAMETR:  9.8894E-01  2.6350E-01  2.0165E-01  1.0995E+00  2.4332E-01  9.9491E-01  1.2430E+00  1.0000E-02  1.1870E+00  6.7757E-01
             2.3833E+00
 PARAMETER:  8.8880E-02 -1.2337E+00 -1.5012E+00  1.9487E-01 -1.3134E+00  9.4897E-02  3.1753E-01 -1.1292E+01  2.7145E-01 -2.8924E-01
             9.6848E-01
 GRADIENT:  -1.5049E+00 -5.4075E-01 -1.7513E+00  2.0703E-01  2.0335E+00  2.6947E-01 -6.4812E-01  0.0000E+00 -3.3864E-01  4.1342E-01
            -6.1616E-02

0ITERATION NO.:   28    OBJECTIVE VALUE:  -2800.19739673387        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      790
 NPARAMETR:  9.8968E-01  2.6390E-01  2.0190E-01  1.0993E+00  2.4296E-01  9.9421E-01  1.2480E+00  1.0000E-02  1.1885E+00  6.7630E-01
             2.3833E+00
 PARAMETER:  8.9629E-02 -1.2322E+00 -1.5000E+00  1.9465E-01 -1.3149E+00  9.4196E-02  3.2153E-01 -1.1292E+01  2.7266E-01 -2.9112E-01
             9.6849E-01
 GRADIENT:   1.7452E-01  1.6958E+00  3.2647E+00 -2.9795E-01 -6.5924E+00  3.2148E-02  1.3467E-01  0.0000E+00  1.4448E-01  3.8717E-02
            -2.9005E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      790
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4052E-03  5.7760E-03  5.2622E-05 -5.7466E-03  5.1687E-03
 SE:             2.9425E-02  2.3773E-02  3.0831E-04  2.7916E-02  2.5435E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6191E-01  8.0804E-01  8.6448E-01  8.3691E-01  8.3897E-01

 ETASHRINKSD(%)  1.4229E+00  2.0356E+01  9.8967E+01  6.4778E+00  1.4791E+01
 ETASHRINKVR(%)  2.8255E+00  3.6568E+01  9.9989E+01  1.2536E+01  2.7394E+01
 EBVSHRINKSD(%)  1.4755E+00  1.9421E+01  9.9079E+01  5.1129E+00  1.5104E+01
 EBVSHRINKVR(%)  2.9292E+00  3.5071E+01  9.9992E+01  9.9644E+00  2.7927E+01
 RELATIVEINF(%)  9.7044E+01  1.4093E+01  6.3504E-04  5.1424E+01  4.9803E+00
 EPSSHRINKSD(%)  1.8977E+01
 EPSSHRINKVR(%)  3.4353E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2800.1973967338686     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1146.1080369654578     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.36
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2800.197       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.90E-01  2.64E-01  2.02E-01  1.10E+00  2.43E-01  9.94E-01  1.25E+00  1.00E-02  1.19E+00  6.76E-01  2.38E+00
 


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
 #CPUT: Total CPU Time in Seconds,       20.435
Stop Time:
Fri Oct  1 01:31:45 CDT 2021
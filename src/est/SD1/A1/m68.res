Fri Oct  1 00:10:47 CDT 2021
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
$DATA ../../../../data/SD1/A1/dat68.csv ignore=@
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
 (2E4.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m68.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2972.71051351878        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1324E+02  1.6894E+02  1.5505E+01  1.7137E+02  1.0115E+02  4.2892E+01  1.6963E+01  7.4972E+00  6.3505E+01 -1.4422E+01
            -1.8129E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3367.70993937163        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.8301E-01  8.9711E-01  9.4267E-01  9.9813E-01  9.0515E-01  1.0088E+00  8.8453E-01  8.9295E-01  7.7841E-01  9.9800E-01
             1.6373E+00
 PARAMETER:  8.2868E-02 -8.5781E-03  4.0965E-02  9.8128E-02  3.4330E-04  1.0875E-01 -2.2694E-02 -1.3220E-02 -1.5050E-01  9.7999E-02
             5.9308E-01
 GRADIENT:   8.1136E+01  1.0892E+01  3.4659E+00 -1.0898E+00  9.2176E+00  1.9298E+01  1.2218E+01  1.7090E+01  2.1029E+01  1.4026E+00
             2.0162E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3372.63497597931        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.7934E-01  8.2684E-01  8.2200E-01  1.0302E+00  8.1894E-01  1.0165E+00  9.3207E-01  3.8092E-01  7.9732E-01  8.7589E-01
             1.6266E+00
 PARAMETER:  7.9125E-02 -9.0139E-02 -9.6009E-02  1.2974E-01 -9.9750E-02  1.1638E-01  2.9653E-02 -8.6516E-01 -1.2649E-01 -3.2515E-02
             5.8648E-01
 GRADIENT:   7.5315E+01  1.8989E+01  5.2983E+00  2.9205E+01  2.7632E+01  2.2999E+01  9.1273E+00  3.8202E+00  2.3742E+01 -1.7698E+01
             8.3146E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3378.85739148014        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      315
 NPARAMETR:  1.0265E+00  8.2686E-01  8.1626E-01  1.0407E+00  8.1574E-01  1.0054E+00  8.1193E-01  2.4607E-01  7.2925E-01  1.0020E+00
             1.6336E+00
 PARAMETER:  1.2612E-01 -9.0120E-02 -1.0302E-01  1.3987E-01 -1.0365E-01  1.0536E-01 -1.0834E-01 -1.3021E+00 -2.1573E-01  1.0198E-01
             5.9080E-01
 GRADIENT:   3.7406E+00 -2.6979E-01 -4.7601E+00 -2.4662E-01  7.4141E-01  1.4727E+00  1.5928E+00  1.5415E+00 -1.4910E+00  1.8851E+00
             1.5444E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3379.58788361431        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      490
 NPARAMETR:  1.0249E+00  8.2569E-01  8.1297E-01  1.0409E+00  8.1371E-01  1.0034E+00  7.9333E-01  4.5600E-02  7.3504E-01  1.0036E+00
             1.6323E+00
 PARAMETER:  1.2460E-01 -9.1535E-02 -1.0706E-01  1.4009E-01 -1.0615E-01  1.0343E-01 -1.3151E-01 -2.9879E+00 -2.0783E-01  1.0362E-01
             5.8997E-01
 GRADIENT:   4.7375E-01  1.2846E-01 -9.1081E-01 -1.1897E-02  5.0199E-01  7.2956E-01  2.1490E-01  4.8575E-02 -2.9884E-01  5.9038E-01
            -1.5143E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3379.61282325856        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      652
 NPARAMETR:  1.0247E+00  8.2504E-01  8.1282E-01  1.0412E+00  8.1301E-01  1.0017E+00  7.9183E-01  1.0000E-02  7.3606E-01  1.0012E+00
             1.6333E+00
 PARAMETER:  1.2439E-01 -9.2323E-02 -1.0725E-01  1.4041E-01 -1.0702E-01  1.0166E-01 -1.3341E-01 -4.6584E+00 -2.0644E-01  1.0116E-01
             5.9063E-01
 GRADIENT:  -2.9048E-02  7.6702E-02 -4.5623E-02  3.5449E-02  2.3334E-03  4.7550E-02  1.3955E-02  0.0000E+00  4.5034E-02 -5.7359E-02
            -3.1207E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      652
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.7774E-04 -1.6183E-02 -1.2024E-04  4.1852E-03 -9.9127E-03
 SE:             2.9775E-02  1.8929E-02  1.7597E-04  2.7081E-02  2.6665E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7648E-01  3.9260E-01  4.9442E-01  8.7718E-01  7.1007E-01

 ETASHRINKSD(%)  2.5068E-01  3.6584E+01  9.9410E+01  9.2747E+00  1.0670E+01
 ETASHRINKVR(%)  5.0073E-01  5.9784E+01  9.9997E+01  1.7689E+01  2.0202E+01
 EBVSHRINKSD(%)  5.9308E-01  3.6740E+01  9.9329E+01  9.7474E+00  1.1014E+01
 EBVSHRINKVR(%)  1.1826E+00  5.9982E+01  9.9995E+01  1.8545E+01  2.0815E+01
 RELATIVEINF(%)  9.8795E+01  1.0795E+01  1.6785E-03  4.2282E+01  1.6083E+01
 EPSSHRINKSD(%)  1.8000E+01
 EPSSHRINKVR(%)  3.2760E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3379.6128232585565     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1725.5234634901458     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.67
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3379.613       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  8.25E-01  8.13E-01  1.04E+00  8.13E-01  1.00E+00  7.92E-01  1.00E-02  7.36E-01  1.00E+00  1.63E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.743
Stop Time:
Fri Oct  1 00:11:04 CDT 2021

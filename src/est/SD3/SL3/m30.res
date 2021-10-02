Fri Oct  1 19:56:32 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat30.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      698
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

 TOT. NO. OF OBS RECS:      598
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
 RAW OUTPUT FILE (FILE): m30.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -508.515295080992        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5612E+02 -3.4839E+00 -2.2055E+01  1.8498E+02  1.0514E+02  5.8040E+01 -3.9640E+01 -5.2154E+01 -2.6572E+01 -2.7111E+01
            -3.8157E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1880.22197978492        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0740E+00  1.3196E+00  1.0789E+00  8.5910E-01  1.1587E+00  1.0514E+00  1.1110E+00  9.7372E-01  7.3418E-01  9.5826E-01
             3.1369E+00
 PARAMETER:  1.7136E-01  3.7733E-01  1.7598E-01 -5.1867E-02  2.4732E-01  1.5015E-01  2.0527E-01  7.3366E-02 -2.0900E-01  5.7364E-02
             1.2432E+00
 GRADIENT:   1.4365E+02  4.7193E+01 -6.9253E+00  4.2691E+01  1.6628E+01  1.8562E+01  4.9414E+00 -2.8512E-01  5.2511E+00 -4.7126E+00
             1.4655E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1882.74920513205        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0609E+00  1.2251E+00  1.5323E+00  9.1284E-01  1.2105E+00  1.0132E+00  1.2253E+00  1.0719E+00  6.2010E-01  9.7855E-01
             3.0942E+00
 PARAMETER:  1.5916E-01  3.0300E-01  5.2675E-01  8.8071E-03  2.9100E-01  1.1312E-01  3.0318E-01  1.6944E-01 -3.7788E-01  7.8316E-02
             1.2295E+00
 GRADIENT:   1.2643E+02  3.9089E+01  1.1229E+01  1.7492E+01 -1.6276E+01  5.0443E+00  7.3239E+00 -3.7269E+00  2.9280E+00 -1.0173E+01
             1.2976E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1892.76652370113        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0027E+00  1.1791E+00  2.3885E+00  9.2668E-01  1.3895E+00  9.9634E-01  1.2193E+00  2.3049E+00  5.5996E-01  1.2124E+00
             2.7782E+00
 PARAMETER:  1.0265E-01  2.6473E-01  9.7067E-01  2.3855E-02  4.2891E-01  9.6332E-02  2.9824E-01  9.3503E-01 -4.7988E-01  2.9262E-01
             1.1218E+00
 GRADIENT:  -2.0965E-01  7.0299E+00 -3.1736E+00  8.5581E+00  8.2157E+00 -1.3194E+00  7.3582E-01  5.0841E+00  6.5766E-01  4.8396E-01
             3.2033E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1895.91820618709        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      406
 NPARAMETR:  1.0419E+00  1.2566E+00  5.0698E+00  9.1161E-01  1.6674E+00  1.0180E+00  1.1458E+00  3.4722E+00  6.2725E-01  1.4578E+00
             2.7226E+00
 PARAMETER:  1.4103E-01  3.2843E-01  1.7233E+00  7.4541E-03  6.1124E-01  1.1782E-01  2.3608E-01  1.3448E+00 -3.6641E-01  4.7693E-01
             1.1016E+00
 GRADIENT:   1.1108E+01 -7.8980E-01 -2.1733E+00  4.7661E+00  1.5196E+01 -1.6361E+00 -2.1810E-02 -1.5410E+00  2.4409E-02  2.5211E+00
            -3.0086E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1896.40666373195        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      587
 NPARAMETR:  1.0359E+00  1.2941E+00  6.0627E+00  8.8892E-01  1.6808E+00  1.0199E+00  1.1062E+00  4.0395E+00  6.4520E-01  1.4664E+00
             2.7330E+00
 PARAMETER:  1.3527E-01  3.5784E-01  1.9022E+00 -1.7745E-02  6.1928E-01  1.1972E-01  2.0096E-01  1.4961E+00 -3.3819E-01  4.8281E-01
             1.1054E+00
 GRADIENT:  -1.6971E+00  3.0713E-01 -1.0067E-01  3.0397E+00  8.4374E+00 -1.0322E+00 -6.5782E-01 -2.3714E+00 -3.9418E-02  3.6957E+00
             4.0861E+00

0ITERATION NO.:   28    OBJECTIVE VALUE:  -1896.42684792157        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      684
 NPARAMETR:  1.0367E+00  1.2956E+00  6.0812E+00  8.8610E-01  1.6811E+00  1.0231E+00  1.1112E+00  4.0345E+00  6.3892E-01  1.4672E+00
             2.7343E+00
 PARAMETER:  1.3595E-01  3.5821E-01  1.9021E+00 -2.0949E-02  6.1865E-01  1.2303E-01  2.0545E-01  1.4970E+00 -3.4453E-01  4.8260E-01
             1.1046E+00
 GRADIENT:  -5.3438E-01 -1.2629E+00 -1.3821E+01 -9.6306E-02 -3.2367E+01  2.2141E-01 -2.7402E-03  1.7755E+01  1.2152E-01 -4.5336E+01
            -2.0366E+01
 NUMSIGDIG:         2.7         2.2         2.3         3.1         2.4         2.3         4.1         2.4         1.5         2.3
                    2.5

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      684
 NO. OF SIG. DIGITS IN FINAL EST.:  1.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.9674E-04 -1.9226E-03 -2.9013E-02 -1.6229E-02 -3.8890E-02
 SE:             2.9305E-02  2.3581E-02  1.1821E-02  1.3986E-02  2.2217E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7831E-01  9.3502E-01  1.4110E-02  2.4591E-01  8.0039E-02

 ETASHRINKSD(%)  1.8235E+00  2.1001E+01  6.0400E+01  5.3145E+01  2.5569E+01
 ETASHRINKVR(%)  3.6137E+00  3.7591E+01  8.4318E+01  7.8046E+01  4.4601E+01
 EBVSHRINKSD(%)  1.8701E+00  2.1078E+01  7.1363E+01  5.4192E+01  2.1091E+01
 EBVSHRINKVR(%)  3.7053E+00  3.7713E+01  9.1799E+01  7.9016E+01  3.7734E+01
 RELATIVEINF(%)  9.5970E+01  2.5567E+00  3.5817E+00  8.5253E-01  3.3827E+01
 EPSSHRINKSD(%)  2.3067E+01
 EPSSHRINKVR(%)  4.0813E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          598
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1099.0504857127885     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1896.4268479215655     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -797.37636220877698     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.91
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1896.427       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.29E+00  6.06E+00  8.86E-01  1.68E+00  1.02E+00  1.11E+00  4.04E+00  6.41E-01  1.47E+00  2.73E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.970
Stop Time:
Fri Oct  1 19:56:45 CDT 2021
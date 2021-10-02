Fri Oct  1 11:20:04 CDT 2021
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
$DATA ../../../../data/SD2/S1/dat83.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2133.52960379861        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3696E+02  3.4656E+01 -1.2119E+01  8.7009E+01 -7.9531E+00  2.9874E+01  1.2408E+01  3.1598E+00  2.8204E+01  3.2909E+01
            -1.1692E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2135.80622228897        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0538E+00  1.0393E+00  1.0745E+00  9.8308E-01  1.0639E+00  1.0537E+00  9.3707E-01  1.0129E+00  8.8292E-01  7.8667E-01
             1.0345E+00
 PARAMETER:  1.5242E-01  1.3854E-01  1.7188E-01  8.2933E-02  1.6195E-01  1.5230E-01  3.5001E-02  1.1278E-01 -2.4521E-02 -1.3994E-01
             1.3394E-01
 GRADIENT:   9.2984E+01 -1.2788E+00 -2.3315E+00  5.5792E+00  4.0141E+01  2.7417E+00 -2.6991E+00 -8.8050E+00 -1.1352E+01 -8.5090E+00
             4.5526E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2137.28145665857        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0437E+00  9.4912E-01  1.1270E+00  1.0416E+00  1.0261E+00  1.0485E+00  1.0390E+00  1.2299E+00  8.4843E-01  7.2188E-01
             1.0440E+00
 PARAMETER:  1.4276E-01  4.7784E-02  2.1960E-01  1.4073E-01  1.2573E-01  1.4740E-01  1.3829E-01  3.0695E-01 -6.4371E-02 -2.2590E-01
             1.4303E-01
 GRADIENT:   7.5173E+01  9.3303E-01 -5.4769E+00  4.3576E+00  2.0005E+01  2.5523E+00  1.4499E+00  1.1858E+00 -6.5655E+00 -8.3573E+00
             1.3493E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2139.49403416679        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      549
 NPARAMETR:  1.0050E+00  8.9340E-01  1.1828E+00  1.0775E+00  1.0195E+00  1.0338E+00  9.8839E-01  1.1990E+00  8.7647E-01  7.9473E-01
             1.0222E+00
 PARAMETER:  1.0496E-01 -1.2717E-02  2.6785E-01  1.7462E-01  1.1931E-01  1.3323E-01  8.8323E-02  2.8152E-01 -3.1850E-02 -1.2975E-01
             1.2196E-01
 GRADIENT:  -4.0568E-01  3.4782E+00  9.9888E-01  3.1608E+00 -2.3323E+00 -2.2106E-01  9.5566E-02 -1.0619E-01 -2.0208E-01  9.3456E-02
            -2.9074E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2139.57188876149        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      727
 NPARAMETR:  1.0030E+00  6.9841E-01  1.3590E+00  1.2063E+00  1.0109E+00  1.0340E+00  1.0706E+00  1.2845E+00  8.1874E-01  8.0673E-01
             1.0238E+00
 PARAMETER:  1.0300E-01 -2.5895E-01  4.0673E-01  2.8753E-01  1.1085E-01  1.3343E-01  1.6818E-01  3.5037E-01 -9.9986E-02 -1.1477E-01
             1.2355E-01
 GRADIENT:   5.2132E-01  3.2168E+00  6.1527E-01  5.5403E+00 -1.9175E+00  6.6083E-01 -3.2898E-01 -2.0699E-02 -3.3761E-01  2.7319E-02
             3.6632E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2139.59651147275        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      909
 NPARAMETR:  1.0022E+00  6.3090E-01  1.4113E+00  1.2464E+00  1.0073E+00  1.0320E+00  1.1268E+00  1.3103E+00  8.0143E-01  8.0996E-01
             1.0237E+00
 PARAMETER:  1.0222E-01 -3.6061E-01  4.4451E-01  3.2025E-01  1.0731E-01  1.3148E-01  2.1940E-01  3.7025E-01 -1.2136E-01 -1.1077E-01
             1.2342E-01
 GRADIENT:   8.2274E-01 -1.2988E-01 -2.3440E-01 -2.4361E+00  5.7686E-01  1.7070E-01 -5.8562E-03  5.9807E-02  6.4200E-01  4.2735E-02
             2.1670E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2139.59791340558        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1085
 NPARAMETR:  1.0031E+00  6.2737E-01  1.4121E+00  1.2478E+00  1.0064E+00  1.0320E+00  1.1436E+00  1.3098E+00  7.9753E-01  8.0899E-01
             1.0235E+00
 PARAMETER:  1.0307E-01 -3.6622E-01  4.4509E-01  3.2137E-01  1.0637E-01  1.3147E-01  2.3416E-01  3.6991E-01 -1.2623E-01 -1.1197E-01
             1.2321E-01
 GRADIENT:   2.7052E+00 -6.2829E-01 -1.0794E-01 -4.4244E+00  6.3689E-01  1.8327E-01  3.6746E-02  4.7300E-02  2.1947E-01  2.3609E-02
             3.0498E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2139.59791340558        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     1109
 NPARAMETR:  1.0031E+00  6.2737E-01  1.4121E+00  1.2478E+00  1.0064E+00  1.0320E+00  1.1436E+00  1.3098E+00  7.9753E-01  8.0899E-01
             1.0235E+00
 PARAMETER:  1.0307E-01 -3.6622E-01  4.4509E-01  3.2137E-01  1.0637E-01  1.3147E-01  2.3416E-01  3.6991E-01 -1.2623E-01 -1.1197E-01
             1.2321E-01
 GRADIENT:   9.7479E-01 -3.3231E-01 -7.8999E-02 -1.8693E+00  6.4644E-01  1.2603E-02  1.6194E-02  4.0828E-02  1.0817E-01  2.2838E-02
             3.1056E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1109
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.2975E-04 -8.3969E-03 -3.3075E-02  5.6533E-04 -3.7123E-02
 SE:             2.9885E-02  1.3056E-02  1.8249E-02  2.6961E-02  1.9673E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9654E-01  5.2013E-01  6.9914E-02  9.8327E-01  5.9158E-02

 ETASHRINKSD(%)  1.0000E-10  5.6261E+01  3.8864E+01  9.6788E+00  3.4093E+01
 ETASHRINKVR(%)  1.0000E-10  8.0869E+01  6.2624E+01  1.8421E+01  5.6562E+01
 EBVSHRINKSD(%)  3.1850E-01  5.6466E+01  4.1266E+01  1.0055E+01  3.2501E+01
 EBVSHRINKVR(%)  6.3599E-01  8.1048E+01  6.5504E+01  1.9099E+01  5.4439E+01
 RELATIVEINF(%)  9.6934E+01  4.1102E-01  5.5665E+00  2.0405E+00  7.0738E+00
 EPSSHRINKSD(%)  3.3707E+01
 EPSSHRINKVR(%)  5.6053E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2139.5979134055833     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1220.6593802009106     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.79
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2139.598       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  6.27E-01  1.41E+00  1.25E+00  1.01E+00  1.03E+00  1.14E+00  1.31E+00  7.98E-01  8.09E-01  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.833
Stop Time:
Fri Oct  1 11:20:22 CDT 2021
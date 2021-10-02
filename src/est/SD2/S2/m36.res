Fri Oct  1 13:32:36 CDT 2021
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
$DATA ../../../../data/SD2/S2/dat36.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m36.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2103.83900972991        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2732E+02 -3.3626E+01 -2.5517E+01  4.3019E+01  6.5154E+01  3.7488E+01 -7.7093E+00  8.1506E-01  2.8566E+01 -2.1162E+01
            -6.9914E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2112.77968447419        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0180E+00  1.1458E+00  9.9395E-01  9.6558E-01  1.0423E+00  1.1339E+00  1.0814E+00  1.0066E+00  8.5881E-01  1.1334E+00
             9.9521E-01
 PARAMETER:  1.1787E-01  2.3613E-01  9.3929E-02  6.4974E-02  1.4147E-01  2.2567E-01  1.7824E-01  1.0662E-01 -5.2212E-02  2.2525E-01
             9.5196E-02
 GRADIENT:   1.2332E+01  5.0305E+00 -1.1585E+01  3.0624E+01  1.7263E+01  1.2717E+01 -4.3547E+00  7.2296E-01 -1.2812E+00 -4.4055E+00
            -1.0953E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2113.09036528275        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      373
 NPARAMETR:  1.0107E+00  1.1806E+00  1.0233E+00  9.5022E-01  1.0786E+00  1.1098E+00  1.0952E+00  1.0062E+00  8.6606E-01  1.2126E+00
             1.0232E+00
 PARAMETER:  1.1063E-01  2.6599E-01  1.2299E-01  4.8936E-02  1.7568E-01  2.0415E-01  1.9090E-01  1.0615E-01 -4.3807E-02  2.9279E-01
             1.2290E-01
 GRADIENT:  -7.0194E-01  1.3108E+01 -9.8632E+00  3.3410E+01  1.4588E+01  4.3172E+00  1.3560E-01  3.8265E-01  3.8252E-01  9.6729E-01
             1.2019E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2113.89717176525        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      551
 NPARAMETR:  1.0128E+00  1.3833E+00  8.5367E-01  7.9942E-01  1.0857E+00  1.0978E+00  9.5258E-01  8.9663E-01  9.8068E-01  1.2029E+00
             1.0031E+00
 PARAMETER:  1.1268E-01  4.2450E-01 -5.8209E-02 -1.2387E-01  1.8219E-01  1.9327E-01  5.1417E-02 -9.1070E-03  8.0495E-02  2.8471E-01
             1.0310E-01
 GRADIENT:   2.8766E-01  7.0184E-01  5.2497E+00 -4.2394E+00 -8.4325E+00 -8.4268E-01 -1.6890E-01 -5.3047E-01 -3.9549E-01  7.8380E-01
            -2.6740E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2114.00298710032        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      727
 NPARAMETR:  1.0138E+00  1.5273E+00  7.1629E-01  7.1263E-01  1.0958E+00  1.1010E+00  8.8400E-01  7.5303E-01  1.0681E+00  1.1934E+00
             1.0055E+00
 PARAMETER:  1.1374E-01  5.2347E-01 -2.3367E-01 -2.3880E-01  1.9144E-01  1.9624E-01 -2.3300E-02 -1.8365E-01  1.6589E-01  2.7683E-01
             1.0547E-01
 GRADIENT:   1.8020E-01  1.3447E+01  3.6406E+00  6.3503E+00 -7.8661E+00 -1.5874E-01 -6.8612E-01 -2.2471E-01 -3.5104E-01  3.3817E-01
            -6.6933E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2114.07101946995        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      911             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0159E+00  1.5511E+00  6.8517E-01  6.9313E-01  1.1091E+00  1.1030E+00  8.7952E-01  7.1796E-01  1.0855E+00  1.1891E+00
             1.0062E+00
 PARAMETER:  1.1581E-01  5.3896E-01 -2.7809E-01 -2.6654E-01  2.0359E-01  1.9800E-01 -2.8381E-02 -2.3134E-01  1.8205E-01  2.7322E-01
             1.0616E-01
 GRADIENT:   5.2527E+02  4.9161E+02  8.1437E-01  1.1527E+02  1.9969E+01  1.5676E+02  5.8673E+00  1.8857E-01  7.1435E+00  2.1325E+00
             1.2453E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2114.10733704901        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:     1069            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0148E+00  1.5479E+00  6.8534E-01  6.9120E-01  1.1034E+00  1.1045E+00  8.7676E-01  7.1421E-01  1.0853E+00  1.1912E+00
             1.0059E+00
 PARAMETER:  1.1465E-01  5.3688E-01 -2.7785E-01 -2.6933E-01  1.9842E-01  1.9936E-01 -3.1519E-02 -2.3658E-01  1.8186E-01  2.7499E-01
             1.0588E-01
 GRADIENT:   5.1826E+02  4.8579E+02  3.1050E+00  1.1012E+02  1.3886E+01  1.5894E+02  5.3416E+00  1.4496E-01  6.7959E+00  3.0784E+00
             1.1171E+00

0ITERATION NO.:   32    OBJECTIVE VALUE:  -2114.10733704901        NO. OF FUNC. EVALS.:  62
 CUMULATIVE NO. OF FUNC. EVALS.:     1131
 NPARAMETR:  1.0148E+00  1.5479E+00  6.8534E-01  6.9120E-01  1.1034E+00  1.1045E+00  8.7676E-01  7.1421E-01  1.0853E+00  1.1912E+00
             1.0059E+00
 PARAMETER:  1.1465E-01  5.3688E-01 -2.7785E-01 -2.6933E-01  1.9842E-01  1.9936E-01 -3.1519E-02 -2.3658E-01  1.8186E-01  2.7499E-01
             1.0588E-01
 GRADIENT:  -2.1969E+05 -2.5194E-01  9.0695E+04  9.3498E+04  9.1835E+00 -3.2071E-01  2.5186E+05 -1.0656E+05  1.3847E+05 -6.7984E+00
            -7.4996E+02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1131
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.4168E-04 -2.2589E-02 -2.1814E-02  1.8448E-02 -3.2412E-02
 SE:             2.9935E-02  2.3267E-02  8.1464E-03  2.2455E-02  2.3168E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7757E-01  3.3162E-01  7.4123E-03  4.1133E-01  1.6181E-01

 ETASHRINKSD(%)  1.0000E-10  2.2052E+01  7.2708E+01  2.4772E+01  2.2384E+01
 ETASHRINKVR(%)  1.0000E-10  3.9241E+01  9.2552E+01  4.3408E+01  3.9758E+01
 EBVSHRINKSD(%)  2.8219E-01  2.1812E+01  7.6865E+01  2.7357E+01  1.8628E+01
 EBVSHRINKVR(%)  5.6359E-01  3.8866E+01  9.4648E+01  4.7230E+01  3.3786E+01
 RELATIVEINF(%)  9.9224E+01  3.2633E+00  5.8000E-01  2.5953E+00  1.6391E+01
 EPSSHRINKSD(%)  3.4190E+01
 EPSSHRINKVR(%)  5.6690E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2114.1073370490117     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1195.1688038443390     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.30
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2114.107       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.55E+00  6.85E-01  6.91E-01  1.10E+00  1.10E+00  8.77E-01  7.14E-01  1.09E+00  1.19E+00  1.01E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.339
Stop Time:
Fri Oct  1 13:32:56 CDT 2021
Fri Oct  1 16:51:34 CDT 2021
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
$DATA ../../../../data/SD3/B/dat60.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m60.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1947.06775543423        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1976E+02 -7.4726E+00  4.2485E+01 -2.1620E+01  5.8912E+01  5.0598E+01 -8.7613E+00 -2.2743E+02 -3.5184E+01  8.3455E+00
            -7.8750E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2462.36885643774        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  8.9142E-01  8.7750E-01  1.0381E+00  1.0607E+00  9.1894E-01  8.5227E-01  1.0628E+00  9.5927E-01  9.3558E-01  9.4871E-01
             1.2307E+00
 PARAMETER: -1.4937E-02 -3.0675E-02  1.3735E-01  1.5891E-01  1.5463E-02 -5.9856E-02  1.6090E-01  5.8414E-02  3.3416E-02  4.7345E-02
             3.0758E-01
 GRADIENT:  -5.2663E+01 -2.8443E+01 -4.7785E+00  3.1695E+01  9.1519E+00 -4.0925E+01 -1.0687E+01  1.3306E+01  1.2701E+01  1.3289E+01
             2.2065E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2473.91175601384        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  8.8152E-01  7.8121E-01  8.2253E-01  1.1124E+00  7.8502E-01  9.0269E-01  1.3908E+00  5.2772E-01  8.5627E-01  8.0886E-01
             1.1906E+00
 PARAMETER: -2.6103E-02 -1.4692E-01 -9.5373E-02  2.0650E-01 -1.4204E-01 -2.3791E-03  4.2989E-01 -5.3918E-01 -5.5175E-02 -1.1213E-01
             2.7445E-01
 GRADIENT:  -3.4430E+01 -4.0081E-01 -3.2751E+01  1.3480E+02  3.8804E+01 -1.2312E+01  1.6208E+01  4.8122E+00  1.2765E+01  1.1673E+01
             1.9175E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2522.44539114083        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      339
 NPARAMETR:  9.7404E-01  8.2849E-01  1.0455E+00  1.1165E+00  9.0941E-01  9.7858E-01  1.4801E+00  7.2142E-01  7.8410E-01  8.5039E-01
             9.7461E-01
 PARAMETER:  7.3700E-02 -8.8146E-02  1.4450E-01  2.1023E-01  5.0432E-03  7.8351E-02  4.9208E-01 -2.2653E-01 -1.4322E-01 -6.2060E-02
             7.4282E-02
 GRADIENT:  -5.8655E+01 -2.0117E+01 -1.7847E+00 -1.6247E+01  9.0245E+00 -1.6601E+01  3.8129E-01 -1.4669E+00 -8.9286E+00 -1.4908E+00
             1.0993E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2524.38917207207        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      514
 NPARAMETR:  9.9940E-01  8.8567E-01  1.0411E+00  1.1006E+00  9.2412E-01  1.0156E+00  1.3889E+00  7.5312E-01  8.3510E-01  8.7014E-01
             9.7245E-01
 PARAMETER:  9.9399E-02 -2.1408E-02  1.4026E-01  1.9582E-01  2.1085E-02  1.1546E-01  4.2850E-01 -1.8353E-01 -8.0204E-02 -3.9098E-02
             7.2063E-02
 GRADIENT:   2.7734E-01  3.3701E-01 -2.6622E-01  8.4853E-01  3.8213E-01  2.1262E-01  3.9995E-02  7.0112E-02  2.6548E-02 -1.9405E-01
             1.2727E-02

0ITERATION NO.:   24    OBJECTIVE VALUE:  -2524.39135951721        NO. OF FUNC. EVALS.: 128
 CUMULATIVE NO. OF FUNC. EVALS.:      642
 NPARAMETR:  1.0002E+00  8.8518E-01  1.0411E+00  1.0997E+00  9.2376E-01  1.0173E+00  1.3899E+00  7.5083E-01  8.3515E-01  8.7126E-01
             9.7241E-01
 PARAMETER:  1.0019E-01 -2.1960E-02  1.4030E-01  1.9504E-01  2.0692E-02  1.1719E-01  4.2925E-01 -1.8658E-01 -8.0145E-02 -3.7810E-02
             7.2020E-02
 GRADIENT:   1.7546E-02 -2.4853E-01  3.8675E-01 -2.4382E+04 -5.8649E-01  4.4404E-03 -1.3441E-02 -1.5030E-03  3.8200E-02  2.6568E-02
            -3.4453E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      642
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.8619E-04 -2.1898E-03 -2.5537E-02  1.4783E-05 -1.5364E-02
 SE:             2.9895E-02  2.2769E-02  1.2929E-02  2.5603E-02  2.3015E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9236E-01  9.2338E-01  4.8251E-02  9.9954E-01  5.0439E-01

 ETASHRINKSD(%)  1.0000E-10  2.3721E+01  5.6686E+01  1.4225E+01  2.2898E+01
 ETASHRINKVR(%)  1.0000E-10  4.1815E+01  8.1239E+01  2.6427E+01  4.0552E+01
 EBVSHRINKSD(%)  2.9077E-01  2.2885E+01  5.9063E+01  1.5463E+01  2.2380E+01
 EBVSHRINKVR(%)  5.8070E-01  4.0532E+01  8.3242E+01  2.8535E+01  3.9752E+01
 RELATIVEINF(%)  9.9400E+01  2.3617E+01  6.1993E+00  3.3332E+01  1.5377E+01
 EPSSHRINKSD(%)  3.0064E+01
 EPSSHRINKVR(%)  5.1089E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2524.3913595172062     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1421.6651196715991     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    10.75
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2524.391       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  8.85E-01  1.04E+00  1.10E+00  9.24E-01  1.02E+00  1.39E+00  7.51E-01  8.35E-01  8.71E-01  9.72E-01
 


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
 #CPUT: Total CPU Time in Seconds,       10.790
Stop Time:
Fri Oct  1 16:51:47 CDT 2021
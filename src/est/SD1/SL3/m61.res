Fri Oct  1 03:59:05 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat61.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      987
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

 TOT. NO. OF OBS RECS:      887
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
 RAW OUTPUT FILE (FILE): m61.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   493.010717469197        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9805E+02  5.1165E+01  1.5493E+02  1.6594E+02  1.4524E+02  6.4353E+01 -1.3798E+02 -2.4120E+02 -1.1978E+02 -2.2143E+01
            -8.1449E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2352.20774720670        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0850E+00  1.3134E+00  8.9733E-01  9.3599E-01  1.0926E+00  8.3737E-01  1.1140E+00  1.0366E+00  8.4267E-01  9.6445E-01
             5.2531E+00
 PARAMETER:  1.8156E-01  3.7260E-01 -8.3299E-03  3.3845E-02  1.8854E-01 -7.7491E-02  2.0792E-01  1.3592E-01 -7.1174E-02  6.3800E-02
             1.7588E+00
 GRADIENT:   1.1916E+01  5.3458E+00 -1.5838E+01  1.2518E+01  7.8547E+00 -3.0827E+01  1.9459E+01  6.5482E+00  2.0878E+01  8.3469E+00
             7.9609E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2512.50628749566        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0240E+00  1.1960E+00  2.9630E+00  9.4623E-01  1.4809E+00  9.8123E-01  1.0813E+00  5.8086E+00  2.6313E-01  1.0259E+00
             3.8300E+00
 PARAMETER:  1.2371E-01  2.7901E-01  1.1862E+00  4.4730E-02  4.9263E-01  8.1052E-02  1.7812E-01  1.8593E+00 -1.2351E+00  1.2557E-01
             1.4429E+00
 GRADIENT:  -2.9370E+01 -8.6573E+01 -9.5674E+00 -1.2241E+01  5.1141E+00  1.9505E+01 -3.4343E+01  4.9298E+01 -2.8154E+00 -1.2965E+01
             4.6509E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2630.39813483463        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0193E+00  1.1403E+00  7.2291E+00  1.0073E+00  1.8011E+00  9.2388E-01  1.3400E+00  2.2754E+00  3.1194E-01  1.6772E+00
             2.9177E+00
 PARAMETER:  1.1913E-01  2.3131E-01  2.0781E+00  1.0725E-01  6.8842E-01  2.0829E-02  3.9264E-01  9.2216E-01 -1.0649E+00  6.1711E-01
             1.1708E+00
 GRADIENT:   8.7344E+00  6.1013E+00 -4.1988E+00  2.2686E+01  5.1198E+00 -2.7401E+00 -5.0600E-01 -2.1167E+00 -2.8773E+00  2.6651E+00
            -1.7206E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2634.57582023991        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      343
 NPARAMETR:  1.0399E+00  1.2482E+00  8.1270E+00  9.3729E-01  1.9434E+00  9.3919E-01  1.2519E+00  2.8838E+00  3.8487E-01  1.7407E+00
             2.9561E+00
 PARAMETER:  1.3910E-01  3.2171E-01  2.1952E+00  3.5237E-02  7.6444E-01  3.7258E-02  3.2470E-01  1.1591E+00 -8.5486E-01  6.5427E-01
             1.1839E+00
 GRADIENT:  -1.0165E+01 -2.3436E+01 -7.7279E+00 -1.0326E+01  9.0966E+00 -1.8768E+00  2.6143E+00  2.2036E+00 -1.4158E+00 -5.5793E-01
             2.1549E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2639.88439993373        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      518
 NPARAMETR:  1.0369E+00  1.2683E+00  2.5098E+01  9.5917E-01  2.0912E+00  9.5842E-01  1.0786E+00  3.8420E+00  6.7598E-01  1.9094E+00
             2.9231E+00
 PARAMETER:  1.3622E-01  3.3768E-01  3.3228E+00  5.8313E-02  8.3773E-01  5.7535E-02  1.7564E-01  1.4460E+00 -2.9159E-01  7.4679E-01
             1.1726E+00
 GRADIENT:  -1.7660E+01 -5.6585E+00 -1.9203E+00 -6.5350E-02  3.8246E+00  4.4441E+00 -3.2447E+00 -9.7292E-01  1.3824E-01  6.9785E+00
            -1.2036E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2642.20221275455        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      693
 NPARAMETR:  1.0454E+00  1.0286E+00  1.2457E+03  1.1335E+00  2.1435E+00  9.4698E-01  1.3127E+00  1.7191E+01  5.8801E-01  1.8817E+00
             2.9408E+00
 PARAMETER:  1.4439E-01  1.2823E-01  7.2274E+00  2.2532E-01  8.6246E-01  4.5527E-02  3.7212E-01  2.9444E+00 -4.3101E-01  7.3215E-01
             1.1787E+00
 GRADIENT:  -4.1233E-01  3.4178E+00 -5.2669E-02  6.0500E+00  6.5835E-01  2.1363E-01 -7.0962E-01 -2.0662E-02 -8.6300E-01 -6.0286E-01
             3.5593E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2642.29141777682        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      869
 NPARAMETR:  1.0459E+00  9.0157E-01  2.5144E+04  1.2194E+00  2.1438E+00  9.4665E-01  1.4129E+00  5.7942E+01  6.0530E-01  1.8862E+00
             2.9347E+00
 PARAMETER:  1.4492E-01 -3.6129E-03  1.0232E+01  2.9832E-01  8.6257E-01  4.5173E-02  4.4563E-01  4.1594E+00 -4.0203E-01  7.3457E-01
             1.1766E+00
 GRADIENT:   1.3775E+00 -5.5740E-01 -3.2032E-03 -9.5682E-01  4.4621E-01  3.4930E-01 -2.8090E-01 -1.0342E-03 -1.4189E-02 -1.5457E-01
            -2.7459E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2642.29810097168        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1052
 NPARAMETR:  1.0456E+00  8.6265E-01  1.9404E+05  1.2466E+00  2.1412E+00  9.4642E-01  1.4580E+00  8.8313E+01  6.0419E-01  1.8878E+00
             2.9352E+00
 PARAMETER:  1.4460E-01 -4.7744E-02  1.2276E+01  3.2043E-01  8.6136E-01  4.4927E-02  4.7704E-01  4.5809E+00 -4.0386E-01  7.3542E-01
             1.1768E+00
 GRADIENT:  -1.1412E+01  1.1050E+01 -2.1804E-03  1.4372E+01 -1.0007E+00 -4.7194E+00  3.9681E+00  1.5516E-03 -1.7583E+00  3.6765E-01
             1.2879E+00

0ITERATION NO.:   43    OBJECTIVE VALUE:  -2642.29855373522        NO. OF FUNC. EVALS.: 102
 CUMULATIVE NO. OF FUNC. EVALS.:     1154
 NPARAMETR:  1.0456E+00  8.6283E-01  2.1938E+05  1.2468E+00  2.1411E+00  9.4646E-01  1.4572E+00  9.3928E+01  6.0270E-01  1.8878E+00
             2.9350E+00
 PARAMETER:  1.4458E-01 -4.7540E-02  1.2399E+01  3.2057E-01  8.6134E-01  4.4978E-02  4.7655E-01  4.6425E+00 -4.0633E-01  7.3540E-01
             1.1767E+00
 GRADIENT:  -9.9714E-03  1.1803E-01 -5.0989E-04  1.7654E-01 -1.5604E-02 -4.6817E-03 -8.3473E-02  7.0800E-04 -1.2690E-02  1.9035E-03
             2.9836E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1154
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1475E-03  1.0958E-02  2.3537E-05 -2.7026E-02 -1.6171E-02
 SE:             2.9242E-02  2.1720E-02  1.7436E-05  1.7468E-02  2.6649E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6870E-01  6.1391E-01  1.7706E-01  1.2182E-01  5.4397E-01

 ETASHRINKSD(%)  2.0358E+00  2.7234E+01  9.9942E+01  4.1481E+01  1.0723E+01
 ETASHRINKVR(%)  4.0302E+00  4.7052E+01  1.0000E+02  6.5755E+01  2.0296E+01
 EBVSHRINKSD(%)  2.0292E+00  2.8353E+01  9.9958E+01  4.0273E+01  8.8911E+00
 EBVSHRINKVR(%)  4.0172E+00  4.8667E+01  1.0000E+02  6.4326E+01  1.6992E+01
 RELATIVEINF(%)  9.5794E+01  2.1878E+00  9.9074E-06  1.5177E+00  4.7171E+01
 EPSSHRINKSD(%)  1.5185E+01
 EPSSHRINKVR(%)  2.8064E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          887
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1630.1969579050892     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2642.2985537352224     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1012.1015958301332     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    28.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2642.299       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  8.63E-01  2.19E+05  1.25E+00  2.14E+00  9.46E-01  1.46E+00  9.39E+01  6.03E-01  1.89E+00  2.94E+00
 


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
 #CPUT: Total CPU Time in Seconds,       28.335
Stop Time:
Fri Oct  1 03:59:35 CDT 2021

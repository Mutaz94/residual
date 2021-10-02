Fri Oct  1 15:08:55 CDT 2021
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
$DATA ../../../../data/SD2/D/dat4.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m4.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1943.79514857290        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8861E+02 -5.3619E+00 -4.6930E+01  8.7766E+01  1.2344E+02 -2.2770E+01 -6.6211E+01 -4.2966E+00 -6.8386E+01 -2.1119E+01
            -5.2875E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1970.91322952850        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.9330E-01  1.0564E+00  9.2822E-01  8.8476E-01  9.2156E-01  1.0172E+00  1.8395E+00  1.0193E+00  1.3938E+00  9.2310E-01
             1.0163E+00
 PARAMETER:  9.3274E-02  1.5491E-01  2.5513E-02 -2.2443E-02  1.8318E-02  1.1707E-01  7.0947E-01  1.1912E-01  4.3206E-01  1.9983E-02
             1.1614E-01
 GRADIENT:   4.5765E+02  5.3510E+01  8.3250E+00  2.8291E+01 -2.3264E+01 -5.0516E+00  1.1375E+02  4.2031E+00  8.4819E+01  1.1878E+01
            -2.8743E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1979.81039959933        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      268
 NPARAMETR:  9.9934E-01  9.6378E-01  1.0756E+00  1.0012E+00  9.0530E-01  1.1984E+00  1.9975E+00  1.0197E+00  1.2462E+00  8.9413E-01
             1.1038E+00
 PARAMETER:  9.9341E-02  6.3107E-02  1.7284E-01  1.0123E-01  5.1552E-04  2.8099E-01  7.9189E-01  1.1947E-01  3.2006E-01 -1.1909E-02
             1.9873E-01
 GRADIENT:   3.5193E+01  1.2046E+01  3.2310E+01 -3.6147E+01 -5.6308E+01  1.2634E+00  2.1212E+01 -3.5315E+00  2.4292E+01  3.7417E+00
             3.3421E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1985.79561115120        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      449
 NPARAMETR:  9.6929E-01  8.8991E-01  9.8869E-01  1.0610E+00  8.8415E-01  1.1906E+00  1.9522E+00  1.0066E+00  1.0630E+00  8.3627E-01
             1.0428E+00
 PARAMETER:  6.8809E-02 -1.6639E-02  8.8627E-02  1.5917E-01 -2.3132E-02  2.7443E-01  7.6897E-01  1.0658E-01  1.6106E-01 -7.8800E-02
             1.4195E-01
 GRADIENT:  -1.1192E+01  2.2879E+00 -5.7912E+00  4.5421E+00  1.4877E+01 -7.1567E-01  6.5101E+00 -4.6341E-01  3.9971E+00 -2.1064E+00
            -1.0698E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1986.28730759534        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      624
 NPARAMETR:  9.7387E-01  7.4854E-01  1.0874E+00  1.1501E+00  8.6350E-01  1.1884E+00  2.0926E+00  1.1003E+00  1.0042E+00  8.4661E-01
             1.0562E+00
 PARAMETER:  7.3525E-02 -1.8964E-01  1.8379E-01  2.3987E-01 -4.6756E-02  2.7261E-01  8.3839E-01  1.9558E-01  1.0422E-01 -6.6519E-02
             1.5467E-01
 GRADIENT:  -1.4738E+00  7.9083E-01  1.0276E+00  1.2476E+00 -1.5517E+00 -6.2258E-01 -1.0162E+00 -3.2090E-01 -3.3186E-02 -1.0881E-01
            -1.6491E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1986.30809459826        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      784
 NPARAMETR:  9.7515E-01  6.9570E-01  1.1295E+00  1.1801E+00  8.6288E-01  1.1938E+00  2.2102E+00  1.1403E+00  9.9080E-01  8.5201E-01
             1.0564E+00
 PARAMETER:  7.4837E-02 -2.6284E-01  2.2174E-01  2.6563E-01 -4.7478E-02  2.7718E-01  8.9310E-01  2.3131E-01  9.0757E-02 -6.0162E-02
             1.5482E-01
 GRADIENT:   1.7427E+00 -5.4701E-01  5.0897E-01 -3.5832E+00 -4.2566E-01  1.5532E+00  9.3071E-01 -1.9829E-02  2.3867E-01  7.8867E-02
             4.1862E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1986.30894202005        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      968             RESET HESSIAN, TYPE I
 NPARAMETR:  9.7500E-01  6.9851E-01  1.1280E+00  1.1810E+00  8.6291E-01  1.1934E+00  2.2090E+00  1.1399E+00  9.8961E-01  8.5083E-01
             1.0563E+00
 PARAMETER:  7.4683E-02 -2.5880E-01  2.2046E-01  2.6635E-01 -4.7445E-02  2.7684E-01  8.9253E-01  2.3093E-01  8.9555E-02 -6.1538E-02
             1.5477E-01
 GRADIENT:   3.8905E+02  5.0001E+01  5.3892E+00  3.0806E+02  7.6588E+00  1.5945E+02  8.3022E+01  6.7413E-01  1.2682E+01  4.7156E-01
             1.4663E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1986.30942170144        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1149
 NPARAMETR:  9.7501E-01  6.9853E-01  1.1278E+00  1.1805E+00  8.6272E-01  1.1935E+00  2.2080E+00  1.1390E+00  9.8987E-01  8.5107E-01
             1.0563E+00
 PARAMETER:  7.4693E-02 -2.5877E-01  2.2031E-01  2.6591E-01 -4.7669E-02  2.7686E-01  8.9211E-01  2.3014E-01  8.9819E-02 -6.1262E-02
             1.5479E-01
 GRADIENT:   1.4691E+00  3.8758E-01  4.6235E-01 -1.2576E+00 -5.0932E-01  1.4084E+00  1.0073E+00 -7.6800E-02 -1.1909E-02 -2.9172E-02
            -5.2668E-02

0ITERATION NO.:   36    OBJECTIVE VALUE:  -1986.30942170144        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     1173
 NPARAMETR:  9.7501E-01  6.9853E-01  1.1278E+00  1.1805E+00  8.6272E-01  1.1935E+00  2.2080E+00  1.1390E+00  9.8987E-01  8.5107E-01
             1.0563E+00
 PARAMETER:  7.4693E-02 -2.5877E-01  2.2031E-01  2.6591E-01 -4.7669E-02  2.7686E-01  8.9211E-01  2.3014E-01  8.9819E-02 -6.1262E-02
             1.5479E-01
 GRADIENT:  -1.6235E-02  2.1515E-01  4.7043E-01  6.8913E-01 -4.9909E-01 -6.1976E-03  1.3537E-01 -4.3400E-02 -4.3307E-02 -2.9843E-02
            -5.1716E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1173
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.7192E-04  1.8317E-02 -4.0335E-02 -2.0095E-02 -2.0813E-02
 SE:             2.9921E-02  2.1554E-02  1.6166E-02  2.3480E-02  1.9630E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7675E-01  3.9543E-01  1.2595E-02  3.9209E-01  2.8902E-01

 ETASHRINKSD(%)  1.0000E-10  2.7791E+01  4.5842E+01  2.1339E+01  3.4236E+01
 ETASHRINKVR(%)  1.0000E-10  4.7858E+01  7.0669E+01  3.8125E+01  5.6751E+01
 EBVSHRINKSD(%)  2.9132E-01  2.9191E+01  4.9121E+01  2.0199E+01  3.1732E+01
 EBVSHRINKVR(%)  5.8179E-01  4.9860E+01  7.4114E+01  3.6318E+01  5.3394E+01
 RELATIVEINF(%)  9.9004E+01  7.6706E+00  5.1504E+00  1.0278E+01  1.0668E+01
 EPSSHRINKSD(%)  3.4486E+01
 EPSSHRINKVR(%)  5.7079E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1986.3094217014384     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1067.3708884967657     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.66
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1986.309       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.75E-01  6.99E-01  1.13E+00  1.18E+00  8.63E-01  1.19E+00  2.21E+00  1.14E+00  9.90E-01  8.51E-01  1.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.703
Stop Time:
Fri Oct  1 15:09:16 CDT 2021
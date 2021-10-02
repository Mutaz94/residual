Fri Oct  1 20:06:20 CDT 2021
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
$DATA ../../../../data/SD3/SL3/dat63.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      695
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

 TOT. NO. OF OBS RECS:      595
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
 RAW OUTPUT FILE (FILE): m63.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1280.81064718292        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.1724E+02 -1.4207E+02 -1.7619E+01  2.0586E+01  1.6064E+02  1.7523E+01 -6.4931E+01 -5.8563E+01 -4.9343E+01 -1.4617E+01
            -2.2323E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2005.95447406705        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0371E+00  1.2400E+00  1.0171E+00  9.3768E-01  1.0636E+00  9.7754E-01  1.1109E+00  9.5321E-01  9.2498E-01  9.4060E-01
             2.1080E+00
 PARAMETER:  1.3647E-01  3.1511E-01  1.1693E-01  3.5655E-02  1.6168E-01  7.7281E-02  2.0521E-01  5.2081E-02  2.2017E-02  3.8768E-02
             8.4572E-01
 GRADIENT:   7.8840E+01 -2.8321E+00 -1.2222E+01 -8.9293E+00  4.6874E+01 -1.8440E+01  1.2691E+00  5.8825E-01 -1.2992E+01 -1.7133E+01
            -9.2934E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2009.56979914885        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0234E+00  1.1932E+00  1.0069E+00  9.6520E-01  1.0381E+00  1.0151E+00  1.0664E+00  2.7488E-01  1.0610E+00  1.0476E+00
             2.1666E+00
 PARAMETER:  1.2315E-01  2.7660E-01  1.0686E-01  6.4584E-02  1.3737E-01  1.1501E-01  1.6427E-01 -1.1914E+00  1.5923E-01  1.4652E-01
             8.7318E-01
 GRADIENT:   3.4510E+01 -2.1499E+01 -6.4104E+00 -9.4325E-01  4.1870E+01 -3.0435E+00 -2.0603E+00  1.9075E-01  7.6932E+00 -3.9004E+00
            -5.0472E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2017.54384369589        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      316
 NPARAMETR:  1.0683E+00  1.6239E+00  1.0382E+00  7.6908E-01  1.2628E+00  1.0463E+00  8.6207E-01  5.4226E-01  1.2132E+00  1.2996E+00
             2.2763E+00
 PARAMETER:  1.6607E-01  5.8486E-01  1.3752E-01 -1.6256E-01  3.3329E-01  1.4525E-01 -4.8420E-02 -5.1201E-01  2.9324E-01  3.6206E-01
             9.2254E-01
 GRADIENT:   4.8794E+00  3.2306E+01  1.3321E+00  3.2474E+01 -4.7017E+00  6.2368E-01 -2.7017E+00  8.3393E-02 -3.1766E-01  2.6804E+00
             5.3212E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2020.26570432770        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      495
 NPARAMETR:  1.0634E+00  2.0121E+00  7.6931E-01  4.9646E-01  1.4585E+00  1.0430E+00  7.7456E-01  2.0163E-01  1.5589E+00  1.4564E+00
             2.2500E+00
 PARAMETER:  1.6143E-01  7.9918E-01 -1.6226E-01 -6.0025E-01  4.7738E-01  1.4208E-01 -1.5546E-01 -1.5013E+00  5.4397E-01  4.7600E-01
             9.1092E-01
 GRADIENT:  -3.8701E+00  1.9873E+01  7.2525E-01  8.5810E+00 -4.0692E+00 -6.8781E-01 -7.2476E-01  2.1880E-02 -1.5908E+00  2.1804E+00
             1.4579E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2020.73811356208        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      672
 NPARAMETR:  1.0645E+00  2.2185E+00  5.8358E-01  3.5582E-01  1.5819E+00  1.0449E+00  7.3839E-01  4.7568E-02  1.9216E+00  1.5204E+00
             2.2374E+00
 PARAMETER:  1.6253E-01  8.9683E-01 -4.3857E-01 -9.3334E-01  5.5862E-01  1.4394E-01 -2.0329E-01 -2.9456E+00  7.5318E-01  5.1899E-01
             9.0530E-01
 GRADIENT:  -1.7898E+00  1.0811E+01 -1.6067E+00  6.5102E+00  4.7371E+00 -1.7476E-01 -1.2058E+00  2.0558E-03  6.4582E-01 -9.4255E-01
            -1.3116E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2020.80895589158        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      847
 NPARAMETR:  1.0658E+00  2.3044E+00  5.0975E-01  2.9471E-01  1.6325E+00  1.0460E+00  7.3294E-01  2.2989E-02  2.0872E+00  1.5704E+00
             2.2344E+00
 PARAMETER:  1.6376E-01  9.3483E-01 -5.7383E-01 -1.1218E+00  5.9012E-01  1.4495E-01 -2.1069E-01 -3.6727E+00  8.3581E-01  5.5133E-01
             9.0398E-01
 GRADIENT:   8.8919E-01  4.5257E+00 -1.2060E+00  3.0211E+00  2.8819E+00  3.1489E-01 -4.1283E-01  4.5905E-04 -1.7428E-01 -8.8077E-02
            -1.2872E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2020.86255399544        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1027
 NPARAMETR:  1.0650E+00  2.3044E+00  5.3118E-01  2.8958E-01  1.6346E+00  1.0446E+00  7.3067E-01  1.0000E-02  2.1322E+00  1.5748E+00
             2.2363E+00
 PARAMETER:  1.6293E-01  9.3483E-01 -5.3265E-01 -1.1393E+00  5.9137E-01  1.4367E-01 -2.1379E-01 -4.6340E+00  8.5714E-01  5.5413E-01
             9.0483E-01
 GRADIENT:  -3.3175E-01 -2.0352E+00  7.4879E-02  2.6805E-01 -3.3209E-01 -8.2605E-02 -1.3888E-02  0.0000E+00 -1.5656E-01 -1.6609E-01
             2.1358E-01

0ITERATION NO.:   36    OBJECTIVE VALUE:  -2020.86255399544        NO. OF FUNC. EVALS.:  28
 CUMULATIVE NO. OF FUNC. EVALS.:     1055
 NPARAMETR:  1.0667E+00  2.2977E+00  5.2869E-01  2.8852E-01  1.6357E+00  1.0456E+00  7.3086E-01  1.0000E-02  2.1444E+00  1.5786E+00
             2.2352E+00
 PARAMETER:  1.6293E-01  9.3483E-01 -5.3265E-01 -1.1393E+00  5.9137E-01  1.4367E-01 -2.1379E-01 -4.6340E+00  8.5714E-01  5.5413E-01
             9.0483E-01
 GRADIENT:  -1.3032E+00  3.5399E+00  5.9362E-02  2.2145E-01 -1.8780E-01 -1.4051E-01 -2.0029E-02  0.0000E+00 -2.0026E-01 -1.9733E-01
             2.4943E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1055
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0009E-03 -3.2244E-02 -7.5532E-05  3.0492E-02 -3.1754E-02
 SE:             2.9516E-02  2.4198E-02  3.4196E-05  1.8278E-02  2.4398E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7295E-01  1.8270E-01  2.7188E-02  9.5274E-02  1.9308E-01

 ETASHRINKSD(%)  1.1176E+00  1.8933E+01  9.9885E+01  3.8765E+01  1.8265E+01
 ETASHRINKVR(%)  2.2227E+00  3.4281E+01  1.0000E+02  6.2503E+01  3.3193E+01
 EBVSHRINKSD(%)  1.3265E+00  1.6916E+01  9.9892E+01  4.6475E+01  1.5275E+01
 EBVSHRINKVR(%)  2.6353E+00  3.0971E+01  1.0000E+02  7.1351E+01  2.8217E+01
 RELATIVEINF(%)  9.7239E+01  8.5518E+00  4.4454E-05  3.3308E+00  3.2949E+01
 EPSSHRINKSD(%)  2.5050E+01
 EPSSHRINKVR(%)  4.3825E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          595
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1093.5368545135605     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2020.8625539954428     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -927.32569948188234     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.23
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2020.863       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  2.30E+00  5.31E-01  2.90E-01  1.63E+00  1.04E+00  7.31E-01  1.00E-02  2.13E+00  1.57E+00  2.24E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.279
Stop Time:
Fri Oct  1 20:06:40 CDT 2021
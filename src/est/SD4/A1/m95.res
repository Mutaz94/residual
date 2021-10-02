Sat Oct  2 00:18:48 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat95.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1392.19629547321        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9345E+02 -3.2625E+01 -1.5138E+01 -4.8781E+01  1.1755E+02  4.3379E+01 -3.1356E+01 -2.1443E+00 -9.0965E+01 -7.8991E+00
            -3.8055E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1498.33981210294        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      107
 NPARAMETR:  1.0044E+00  9.2782E-01  9.7037E-01  1.0923E+00  8.5693E-01  9.1360E-01  1.0915E+00  9.6108E-01  1.3791E+00  7.9784E-01
             1.6878E+00
 PARAMETER:  1.0437E-01  2.5083E-02  6.9924E-02  1.8831E-01 -5.4397E-02  9.6388E-03  1.8753E-01  6.0305E-02  4.2140E-01 -1.2585E-01
             6.2344E-01
 GRADIENT:   6.4307E-02 -1.5893E+00  1.6867E+01 -2.0512E+01 -1.4550E+01 -1.8114E+01  2.2345E+00  3.2421E+00  2.1019E+01  7.4087E+00
             5.7161E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1506.94499035976        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      282
 NPARAMETR:  1.0026E+00  7.9870E-01  4.7261E-01  1.1794E+00  5.3630E-01  9.3829E-01  1.4192E+00  4.1637E-01  1.1248E+00  3.6902E-01
             1.6731E+00
 PARAMETER:  1.0265E-01 -1.2477E-01 -6.4949E-01  2.6499E-01 -5.2306E-01  3.6305E-02  4.5009E-01 -7.7618E-01  2.1760E-01 -8.9691E-01
             6.1468E-01
 GRADIENT:  -1.6288E+01  3.6182E+01 -1.8563E+01  7.4240E+01  1.0049E+01 -8.3628E+00  7.9051E+00  2.7482E-01  1.1369E+01  9.0627E-01
             9.8738E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1513.66098341739        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      461
 NPARAMETR:  1.0074E+00  4.9923E-01  4.0937E-01  1.2448E+00  4.1153E-01  9.7056E-01  1.8139E+00  5.5587E-01  9.5297E-01  3.1644E-01
             1.5729E+00
 PARAMETER:  1.0739E-01 -5.9469E-01 -7.9313E-01  3.1901E-01 -7.8787E-01  7.0116E-02  6.9548E-01 -4.8722E-01  5.1832E-02 -1.0506E+00
             5.5289E-01
 GRADIENT:  -2.3915E+00  7.9811E+00 -4.3702E+00  1.2674E+01 -3.1275E+00  5.3115E+00  3.6468E-01  7.8589E-01 -7.9956E+00  8.2058E-01
            -9.1823E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1515.89983387756        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      639
 NPARAMETR:  9.9562E-01  2.8864E-01  5.8926E-01  1.4166E+00  4.7113E-01  9.5234E-01  2.5799E+00  6.2883E-01  9.8911E-01  4.9540E-01
             1.6318E+00
 PARAMETER:  9.5613E-02 -1.1426E+00 -4.2889E-01  4.4827E-01 -6.5261E-01  5.1168E-02  1.0477E+00 -3.6390E-01  8.9051E-02 -6.0238E-01
             5.8969E-01
 GRADIENT:  -1.3716E+01  8.2353E+00  9.9053E+00  1.6206E+00 -1.7217E+01  7.3835E-01  3.6343E+00  1.8712E+00  3.7228E+00  2.3419E+00
             8.5935E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1519.55317203528        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      817
 NPARAMETR:  9.9469E-01  1.0455E-01  5.3994E-01  1.4850E+00  4.1876E-01  9.4280E-01  3.9094E+00  6.2174E-01  9.3054E-01  5.1144E-01
             1.6118E+00
 PARAMETER:  9.4681E-02 -2.1581E+00 -5.1629E-01  4.9542E-01 -7.7046E-01  4.1096E-02  1.4634E+00 -3.7523E-01  2.8005E-02 -5.7053E-01
             5.7733E-01
 GRADIENT:  -2.4187E+00 -1.5076E+00  8.4562E+00  1.4504E+01 -1.5186E+01 -8.5361E-01 -1.0058E+01  2.9142E+00 -3.2001E+00  4.1619E+00
             7.2408E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1520.94568235044        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      992
 NPARAMETR:  9.9233E-01  4.3144E-02  5.5905E-01  1.5208E+00  4.2138E-01  9.4205E-01  5.7658E+00  6.8050E-01  9.1804E-01  4.8184E-01
             1.5964E+00
 PARAMETER:  9.2298E-02 -3.0432E+00 -4.8152E-01  5.1923E-01 -7.6421E-01  4.0305E-02  1.8520E+00 -2.8493E-01  1.4483E-02 -6.3015E-01
             5.6773E-01
 GRADIENT:  -1.2036E+00 -3.5923E+00  1.7597E+01  2.5140E+01 -2.5796E+01 -1.1401E-01 -1.1733E+01  4.2573E+00 -2.9956E+00  4.2881E+00
             4.4106E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1522.33260785531        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1179
 NPARAMETR:  9.9222E-01  2.3807E-02  5.4456E-01  1.5053E+00  4.1579E-01  9.4544E-01  7.3674E+00  6.6586E-01  9.3626E-01  4.5483E-01
             1.5632E+00
 PARAMETER:  9.2185E-02 -3.6378E+00 -5.0778E-01  5.0899E-01 -7.7757E-01  4.3895E-02  2.0971E+00 -3.0668E-01  3.4140E-02 -6.8782E-01
             5.4675E-01
 GRADIENT:   2.3922E+00 -2.2810E+00 -3.6429E+00 -4.9149E+00  1.2385E+01  1.2083E+00 -3.8852E+00  2.3237E-01  3.6776E+00  3.8029E-01
            -6.0480E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1522.37255246110        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1340
 NPARAMETR:  9.9078E-01  2.3820E-02  5.4478E-01  1.5059E+00  4.1535E-01  9.4212E-01  7.3701E+00  6.6442E-01  9.2504E-01  4.5507E-01
             1.5644E+00
 PARAMETER:  9.0735E-02 -3.6372E+00 -5.0737E-01  5.0938E-01 -7.7864E-01  4.0382E-02  2.0974E+00 -3.0884E-01  2.2084E-02 -6.8731E-01
             5.4752E-01
 GRADIENT:  -4.7274E-01  6.3092E+00 -1.3198E+01 -1.7569E+01  2.4588E+01 -1.1415E+00  1.4279E+01 -4.8134E+00 -2.9679E+00 -4.0706E+00
            -1.0919E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1522.44206556861        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     1504
 NPARAMETR:  9.9074E-01  2.4185E-02  5.4459E-01  1.5053E+00  4.1371E-01  9.4264E-01  7.3916E+00  6.8060E-01  9.2685E-01  4.5475E-01
             1.5690E+00
 PARAMETER:  9.0693E-02 -3.6220E+00 -5.0772E-01  5.0901E-01 -7.8258E-01  4.0926E-02  2.1003E+00 -2.8478E-01  2.4041E-02 -6.8802E-01
             5.5042E-01
 GRADIENT:  -1.6779E+00 -1.4067E+00  6.1157E+00 -4.2967E+00 -3.2063E+00  7.1218E-02 -2.3269E+00  1.1652E+00  1.0469E-01  1.0663E+00
            -3.8069E+00

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1504
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2395E-03  1.7848E-02 -8.2168E-03 -6.4977E-03 -4.2369E-03
 SE:             2.9592E-02  9.6825E-03  1.7855E-02  2.8618E-02  1.6289E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6659E-01  6.5285E-02  6.4538E-01  8.2039E-01  7.9478E-01

 ETASHRINKSD(%)  8.6291E-01  6.7562E+01  4.0183E+01  4.1255E+00  4.5430E+01
 ETASHRINKVR(%)  1.7184E+00  8.9478E+01  6.4219E+01  8.0808E+00  7.0221E+01
 EBVSHRINKSD(%)  1.0765E+00  8.0145E+01  3.9290E+01  4.1829E+00  4.4258E+01
 EBVSHRINKVR(%)  2.1414E+00  9.6058E+01  6.3144E+01  8.1908E+00  6.8928E+01
 RELATIVEINF(%)  9.7538E+01  3.0062E+00  1.8796E+00  5.3168E+01  1.5525E+00
 EPSSHRINKSD(%)  4.0038E+01
 EPSSHRINKVR(%)  6.4045E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1522.4420655686110     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -787.29123900487286     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.50
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1522.442       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.91E-01  2.42E-02  5.45E-01  1.51E+00  4.14E-01  9.43E-01  7.39E+00  6.81E-01  9.27E-01  4.55E-01  1.57E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.542
Stop Time:
Sat Oct  2 00:19:09 CDT 2021
Sat Oct  2 05:04:44 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat52.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m52.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1675.60238826762        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8593E+02 -7.3020E+01 -3.4252E+00 -9.6729E+01 -2.1141E+01  3.8452E+01 -1.3531E+01  9.4431E+00  2.0028E+00  2.2701E+01
            -1.3915E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1686.78789767682        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  1.0028E+00  1.1575E+00  1.1444E+00  1.0264E+00  1.1925E+00  9.8453E-01  1.1393E+00  9.2685E-01  9.1291E-01  8.3967E-01
             1.0293E+00
 PARAMETER:  1.0284E-01  2.4623E-01  2.3487E-01  1.2608E-01  2.7609E-01  8.4409E-02  2.3042E-01  2.4038E-02  8.8811E-03 -7.4743E-02
             1.2889E-01
 GRADIENT:  -6.6776E+00 -3.5732E+00 -1.2235E+00  2.6868E+01  7.3384E+01 -3.2643E+00 -1.6147E+01 -8.5375E+00  1.9466E+00 -2.4755E+01
            -7.0403E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1689.37347903474        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  1.0031E+00  8.9841E-01  1.0838E+00  1.1982E+00  1.0058E+00  9.8855E-01  1.6137E+00  7.6834E-01  7.1753E-01  6.7210E-01
             1.0363E+00
 PARAMETER:  1.0312E-01 -7.1319E-03  1.8052E-01  2.8078E-01  1.0574E-01  8.8488E-02  5.7854E-01 -1.6353E-01 -2.3194E-01 -2.9735E-01
             1.3564E-01
 GRADIENT:  -3.5524E+00  2.5242E+01  2.9307E+00  6.2243E+01  5.6481E+01 -1.1969E+00 -1.0527E+00 -8.9963E+00 -9.4513E+00 -2.6333E+01
            -6.5828E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1695.01773579929        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      532
 NPARAMETR:  1.0096E+00  9.1606E-01  7.9488E-01  1.1335E+00  8.4095E-01  9.9181E-01  1.5389E+00  4.5547E-01  7.6177E-01  6.6603E-01
             1.0146E+00
 PARAMETER:  1.0957E-01  1.2332E-02 -1.2956E-01  2.2533E-01 -7.3220E-02  9.1775E-02  5.3110E-01 -6.8643E-01 -1.7211E-01 -3.0642E-01
             1.1445E-01
 GRADIENT:   6.1470E+00  6.7707E+00  4.0292E+00 -5.7897E-01 -1.4387E+00 -7.8411E-01  4.1468E-01  1.1999E-01 -2.8090E-01 -2.3350E+00
            -1.8794E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1695.63946149619        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  1.0063E+00  7.4469E-01  7.5653E-01  1.2203E+00  7.5234E-01  9.9294E-01  1.7994E+00  3.3150E-01  7.1541E-01  6.3433E-01
             1.0173E+00
 PARAMETER:  1.0627E-01 -1.9479E-01 -1.7901E-01  2.9914E-01 -1.8457E-01  9.2917E-02  6.8748E-01 -1.0041E+00 -2.3490E-01 -3.5518E-01
             1.1719E-01
 GRADIENT:   3.7365E-01  1.0839E+00  1.6073E+00 -4.9639E-01 -1.3543E+00 -9.8817E-02  2.0000E-01 -2.3968E-01 -5.3252E-01 -4.0823E-01
            -1.8072E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1695.64112510279        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  1.0058E+00  7.3255E-01  7.6579E-01  1.2287E+00  7.5439E-01  9.9331E-01  1.8133E+00  3.4872E-01  7.1466E-01  6.4159E-01
             1.0163E+00
 PARAMETER:  1.0582E-01 -2.1123E-01 -1.6685E-01  3.0592E-01 -1.8185E-01  9.3288E-02  6.9515E-01 -9.5348E-01 -2.3595E-01 -3.4380E-01
             1.1612E-01
 GRADIENT:  -1.6200E-01  8.8701E-02  8.4027E-02  1.3296E+00  3.6352E-01  9.5640E-02 -5.9351E-01 -2.1296E-01 -1.0994E-01 -1.1632E-01
            -3.5718E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1695.64233689867        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1057
 NPARAMETR:  1.0055E+00  7.2042E-01  7.8049E-01  1.2373E+00  7.5929E-01  9.9316E-01  1.8364E+00  3.8258E-01  7.1242E-01  6.4823E-01
             1.0158E+00
 PARAMETER:  1.0547E-01 -2.2792E-01 -1.4783E-01  3.1297E-01 -1.7537E-01  9.3132E-02  7.0783E-01 -8.6081E-01 -2.3909E-01 -3.3352E-01
             1.1565E-01
 GRADIENT:  -2.9333E-01 -2.8310E-01 -4.7221E-01  1.3563E+00  7.7887E-01  1.2305E-01 -6.4338E-01 -1.2488E-01  5.1306E-02  4.9864E-02
            -2.7213E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1695.64833113665        NO. OF FUNC. EVALS.: 165
 CUMULATIVE NO. OF FUNC. EVALS.:     1222
 NPARAMETR:  1.0064E+00  7.1959E-01  7.8266E-01  1.2374E+00  7.5985E-01  9.9304E-01  1.8479E+00  3.9475E-01  7.1169E-01  6.4724E-01
             1.0161E+00
 PARAMETER:  1.0635E-01 -2.2908E-01 -1.4506E-01  3.1303E-01 -1.7463E-01  9.3020E-02  7.1403E-01 -8.2949E-01 -2.4011E-01 -3.3505E-01
             1.1600E-01
 GRADIENT:   3.7156E-01  8.1158E-02  1.3042E-01  1.0537E+00 -5.2601E-01  2.7765E-02  1.0150E-02 -8.3478E-03  7.3123E-02  1.3453E-01
             1.5339E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1222
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.5310E-04  2.1297E-02 -2.1130E-02 -2.3087E-02 -3.4984E-04
 SE:             2.9829E-02  2.2792E-02  9.2410E-03  2.3597E-02  1.9572E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8788E-01  3.5010E-01  2.2223E-02  3.2788E-01  9.8574E-01

 ETASHRINKSD(%)  6.8054E-02  2.3643E+01  6.9042E+01  2.0946E+01  3.4430E+01
 ETASHRINKVR(%)  1.3606E-01  4.1696E+01  9.0416E+01  3.7505E+01  5.7006E+01
 EBVSHRINKSD(%)  4.6550E-01  2.3121E+01  7.0753E+01  2.0728E+01  3.3161E+01
 EBVSHRINKVR(%)  9.2884E-01  4.0896E+01  9.1446E+01  3.7160E+01  5.5325E+01
 RELATIVEINF(%)  9.8664E+01  8.6950E+00  7.8953E-01  1.0289E+01  3.4068E+00
 EPSSHRINKSD(%)  4.3091E+01
 EPSSHRINKVR(%)  6.7614E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1695.6483311366546     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -960.49750457291645     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.25
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1695.648       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  7.20E-01  7.83E-01  1.24E+00  7.60E-01  9.93E-01  1.85E+00  3.95E-01  7.12E-01  6.47E-01  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.286
Stop Time:
Sat Oct  2 05:05:00 CDT 2021

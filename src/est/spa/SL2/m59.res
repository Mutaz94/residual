Sat Sep 18 12:21:35 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat59.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m59.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1683.52141084084        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -9.9960E+01 -5.0532E+01 -2.9912E+01 -5.1786E+01  8.7903E+01 -3.9881E+01  1.8496E+00  3.6062E+00 -2.3678E+01 -7.8919E+00
            -5.3174E-01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1696.50628398361        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  1.0661E+00  9.3026E-01  9.5373E-01  1.0847E+00  8.6579E-01  1.0782E+00  9.2380E-01  9.4988E-01  1.1301E+00  9.4493E-01
             9.8399E-01
 PARAMETER:  1.6400E-01  2.7708E-02  5.2628E-02  1.8131E-01 -4.4115E-02  1.7526E-01  2.0740E-02  4.8576E-02  2.2231E-01  4.3355E-02
             8.3864E-02
 GRADIENT:   7.5072E+01  1.5960E+01  1.1931E+01  2.2291E+01 -2.2249E+01  6.3790E+00  3.9983E+00  4.7994E+00  1.7209E+01  5.2918E+00
            -3.3591E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1697.74091306235        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0630E+00  9.1967E-01  8.0406E-01  1.0935E+00  8.0292E-01  1.0938E+00  8.3291E-01  7.0492E-01  1.0970E+00  8.6269E-01
             9.9515E-01
 PARAMETER:  1.6111E-01  1.6263E-02 -1.1809E-01  1.8936E-01 -1.1950E-01  1.8964E-01 -8.2831E-02 -2.4967E-01  1.9259E-01 -4.7700E-02
             9.5134E-02
 GRADIENT:   6.2307E+01  1.2633E+01 -1.2010E+01  4.7091E+01  1.5164E+01  1.2074E+01 -2.9133E+00  2.1713E+00  8.5792E+00 -2.7129E+00
             2.5335E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1699.83462465867        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      323
 NPARAMETR:  1.0774E+00  6.8000E-01  7.6611E-01  1.2106E+00  6.9068E-01  1.1004E+00  1.1991E+00  4.2369E-01  9.2726E-01  8.5031E-01
             9.9136E-01
 PARAMETER:  1.7457E-01 -2.8567E-01 -1.6643E-01  2.9109E-01 -2.7008E-01  1.9571E-01  2.8153E-01 -7.5874E-01  2.4476E-02 -6.2155E-02
             9.1321E-02
 GRADIENT:   1.0749E+01  5.3315E+00  2.7604E-01 -3.7701E-01 -3.7949E+00  1.9750E+00  4.2063E-01 -5.2733E-02 -5.7966E+00  3.7432E-01
             1.1076E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1700.84621529838        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      499
 NPARAMETR:  1.0642E+00  4.5526E-01  8.2775E-01  1.3469E+00  6.5954E-01  1.0889E+00  1.4234E+00  4.8460E-01  8.6993E-01  8.6638E-01
             9.9323E-01
 PARAMETER:  1.6223E-01 -6.8689E-01 -8.9050E-02  3.9783E-01 -3.1622E-01  1.8521E-01  4.5307E-01 -6.2443E-01 -3.9346E-02 -4.3433E-02
             9.3211E-02
 GRADIENT:  -4.7276E+00  3.5411E+00  5.3231E-01  7.4795E+00 -2.4023E+00 -4.6729E-01 -5.6267E-01 -3.9560E-01 -4.7371E+00 -1.6566E+00
             2.0934E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1701.27469187849        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      674
 NPARAMETR:  1.0645E+00  3.2030E-01  8.7796E-01  1.4247E+00  6.5358E-01  1.0872E+00  1.7012E+00  5.7302E-01  8.4637E-01  8.8988E-01
             9.8348E-01
 PARAMETER:  1.6251E-01 -1.0385E+00 -3.0156E-02  4.5397E-01 -3.2529E-01  1.8360E-01  6.3136E-01 -4.5684E-01 -6.6800E-02 -1.6666E-02
             8.3347E-02
 GRADIENT:   2.5434E+00  1.3089E+00  1.5913E+00  3.2078E+00 -2.4397E+00  1.0287E-01  6.1322E-02  1.1021E-01 -1.8924E-01  5.9701E-01
            -6.2529E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1701.40918823448        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      849
 NPARAMETR:  1.0595E+00  1.8067E-01  8.9241E-01  1.5005E+00  6.3111E-01  1.0837E+00  2.2574E+00  6.1500E-01  8.1182E-01  8.9000E-01
             9.8322E-01
 PARAMETER:  1.5783E-01 -1.6111E+00 -1.3827E-02  5.0580E-01 -3.6028E-01  1.8041E-01  9.1422E-01 -3.8614E-01 -1.0848E-01 -1.6535E-02
             8.3073E-02
 GRADIENT:   6.4814E-01  2.6724E-01  3.8444E-01  2.6160E+00 -1.0418E+00  1.2478E-02 -2.3190E-02  1.5633E-02 -4.0541E-01 -8.5861E-02
            -1.7760E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1701.41164475150        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1024
 NPARAMETR:  1.0587E+00  1.6697E-01  8.9641E-01  1.5073E+00  6.3056E-01  1.0833E+00  2.3480E+00  6.2037E-01  8.0948E-01  8.9212E-01
             9.8348E-01
 PARAMETER:  1.5701E-01 -1.6899E+00 -9.3626E-03  5.1033E-01 -3.6115E-01  1.8003E-01  9.5357E-01 -3.7744E-01 -1.1136E-01 -1.4156E-02
             8.3344E-02
 GRADIENT:  -1.1877E-01  4.1947E-02  9.5258E-02  3.9521E-01 -1.2946E-01 -1.0809E-02 -2.5093E-03 -4.5109E-03 -1.7327E-02  7.2514E-03
            -4.1377E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1701.41170620324        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1206
 NPARAMETR:  1.0587E+00  1.6672E-01  8.9633E-01  1.5072E+00  6.3054E-01  1.0833E+00  2.3506E+00  6.2044E-01  8.0948E-01  8.9210E-01
             9.8348E-01
 PARAMETER:  1.5708E-01 -1.6915E+00 -9.4472E-03  5.1026E-01 -3.6117E-01  1.8006E-01  9.5469E-01 -3.7733E-01 -1.1136E-01 -1.4174E-02
             8.3338E-02
 GRADIENT:   2.5846E-02 -1.8294E-03 -3.6373E-02 -1.1164E-01  1.1602E-01  4.6737E-03 -5.9807E-04  3.0022E-03  5.8395E-03  5.0147E-03
             3.8107E-03

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1701.41170620324        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1228
 NPARAMETR:  1.0587E+00  1.6672E-01  8.9633E-01  1.5072E+00  6.3054E-01  1.0833E+00  2.3506E+00  6.2044E-01  8.0948E-01  8.9210E-01
             9.8348E-01
 PARAMETER:  1.5708E-01 -1.6915E+00 -9.4472E-03  5.1026E-01 -3.6117E-01  1.8006E-01  9.5469E-01 -3.7733E-01 -1.1136E-01 -1.4174E-02
             8.3338E-02
 GRADIENT:   2.5846E-02 -1.8294E-03 -3.6373E-02 -1.1164E-01  1.1602E-01  4.6737E-03 -5.9807E-04  3.0022E-03  5.8395E-03  5.0147E-03
             3.8107E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1228
 NO. OF SIG. DIGITS IN FINAL EST.:  3.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2182E-04 -1.4279E-03 -1.7462E-02 -3.9117E-03 -1.8461E-02
 SE:             2.9874E-02  6.3327E-03  1.3367E-02  2.8849E-02  2.4140E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9675E-01  8.2161E-01  1.9142E-01  8.9214E-01  4.4443E-01

 ETASHRINKSD(%)  1.0000E-10  7.8785E+01  5.5219E+01  3.3522E+00  1.9127E+01
 ETASHRINKVR(%)  1.0000E-10  9.5499E+01  7.9947E+01  6.5921E+00  3.4596E+01
 EBVSHRINKSD(%)  3.4921E-01  7.9323E+01  5.7472E+01  3.5333E+00  1.7264E+01
 EBVSHRINKVR(%)  6.9720E-01  9.5724E+01  8.1914E+01  6.9417E+00  3.1548E+01
 RELATIVEINF(%)  9.5005E+01  2.1419E-01  2.1956E+00  7.0378E+00  4.5640E+00
 EPSSHRINKSD(%)  4.5207E+01
 EPSSHRINKVR(%)  6.9977E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1701.4117062032449     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -966.26087963950670     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.55
 Elapsed covariance  time in seconds:     5.73
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1701.412       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  1.67E-01  8.96E-01  1.51E+00  6.31E-01  1.08E+00  2.35E+00  6.20E-01  8.09E-01  8.92E-01  9.83E-01
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         4.17E-02  7.84E-01  2.25E-01  4.24E-01  1.50E-01  7.30E-02  6.01E+00  4.16E-01  1.90E-01  1.35E-01  7.44E-02
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.74E-03
 
 TH 2
+        1.84E-02  6.15E-01
 
 TH 3
+       -1.32E-03 -7.86E-02  5.07E-02
 
 TH 4
+       -9.76E-03 -3.30E-01  4.89E-02  1.80E-01
 
 TH 5
+        3.11E-03  8.65E-02  9.03E-03 -4.31E-02  2.25E-02
 
 TH 6
+        6.90E-04  1.85E-02 -2.59E-03 -1.01E-02  2.61E-03  5.33E-03
 
 TH 7
+       -1.42E-01 -4.69E+00  5.71E-01  2.51E+00 -6.73E-01 -1.43E-01  3.61E+01
 
 TH 8
+       -5.14E-03 -1.83E-01  7.67E-02  1.07E-01 -2.64E-04 -5.86E-03  1.36E+00  1.73E-01
 
 TH 9
+        4.06E-03  1.39E-01 -2.31E-02 -7.52E-02  1.71E-02  4.58E-03 -1.04E+00 -4.95E-02  3.60E-02
 
 TH10
+       -4.30E-04 -4.39E-02  1.62E-02  2.49E-02 -1.63E-04 -1.99E-03  3.31E-01  1.43E-02 -1.14E-02  1.82E-02
 
 TH11
+        7.40E-04  1.98E-02 -4.86E-03 -1.12E-02  1.83E-03  6.78E-04 -1.44E-01 -1.38E-02  4.81E-03 -5.99E-04  5.54E-03
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        4.17E-02
 
 TH 2
+        5.63E-01  7.84E-01
 
 TH 3
+       -1.40E-01 -4.45E-01  2.25E-01
 
 TH 4
+       -5.52E-01 -9.93E-01  5.12E-01  4.24E-01
 
 TH 5
+        4.98E-01  7.35E-01  2.67E-01 -6.77E-01  1.50E-01
 
 TH 6
+        2.27E-01  3.23E-01 -1.58E-01 -3.27E-01  2.38E-01  7.30E-02
 
 TH 7
+       -5.66E-01 -9.96E-01  4.22E-01  9.85E-01 -7.47E-01 -3.27E-01  6.01E+00
 
 TH 8
+       -2.96E-01 -5.61E-01  8.18E-01  6.07E-01 -4.22E-03 -1.93E-01  5.42E-01  4.16E-01
 
 TH 9
+        5.13E-01  9.31E-01 -5.40E-01 -9.34E-01  5.99E-01  3.30E-01 -9.12E-01 -6.26E-01  1.90E-01
 
 TH10
+       -7.64E-02 -4.15E-01  5.35E-01  4.35E-01 -8.03E-03 -2.02E-01  4.09E-01  2.55E-01 -4.46E-01  1.35E-01
 
 TH11
+        2.39E-01  3.39E-01 -2.90E-01 -3.56E-01  1.64E-01  1.25E-01 -3.23E-01 -4.47E-01  3.40E-01 -5.96E-02  7.44E-02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        9.02E+02
 
 TH 2
+        1.25E+01  8.67E+02
 
 TH 3
+       -6.44E+01  1.70E+02  7.28E+02
 
 TH 4
+        2.64E+01  5.99E+02 -1.07E+02  8.23E+02
 
 TH 5
+        7.78E+01 -5.83E+02 -1.26E+03 -1.17E+02  2.69E+03
 
 TH 6
+       -2.82E+01  7.45E+01  2.38E+01  4.81E+01 -8.37E+01  2.21E+02
 
 TH 7
+        4.92E+00  5.08E+01 -1.71E+00  1.76E+01  4.72E-01  4.00E+00  4.97E+00
 
 TH 8
+        5.92E+00  1.08E+01 -4.09E+01  1.58E+01 -1.55E+01  3.56E+00 -3.41E-01  3.08E+01
 
 TH 9
+       -2.93E+01 -2.08E+02  9.05E+01 -6.97E+01 -1.36E+02 -2.86E+01 -1.77E+01  1.06E+01  3.18E+02
 
 TH10
+       -4.29E+01  5.77E+01  1.45E+01  4.42E+01 -1.86E+02  2.17E+01 -1.01E+00  3.06E+01  2.29E+01  1.29E+02
 
 TH11
+       -2.67E+01 -1.44E+01  1.47E+01  2.57E+01 -7.47E+01 -3.21E+00 -4.67E+00  2.38E+01  2.42E+01  4.86E+00  2.43E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.04
 #CPUT: Total CPU Time in Seconds,       20.349
Stop Time:
Sat Sep 18 12:21:57 CDT 2021
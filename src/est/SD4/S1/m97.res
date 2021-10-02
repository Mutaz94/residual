Sat Oct  2 01:58:23 CDT 2021
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
$DATA ../../../../data/SD4/S1/dat97.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m97.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1642.63153208184        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.5147E+02 -4.2369E+01 -3.6400E+01  2.4810E+00  4.0880E+01  3.0352E+01 -2.4798E+00  1.1875E+01  1.7245E+01  1.6727E+01
             3.0916E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1647.98621648795        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      171
 NPARAMETR:  9.8874E-01  1.1099E+00  1.1125E+00  1.0133E+00  1.0443E+00  1.1760E+00  1.0279E+00  9.3993E-01  9.4132E-01  9.0930E-01
             8.7599E-01
 PARAMETER:  8.8675E-02  2.0428E-01  2.0664E-01  1.1319E-01  1.4335E-01  2.6215E-01  1.2750E-01  3.8054E-02  3.9531E-02  4.9165E-03
            -3.2399E-02
 GRADIENT:   9.9833E+01  3.6896E+01  1.5530E+01  3.9665E+01 -6.2130E+00  3.5925E+01 -6.5316E+00 -1.7067E+00 -4.0692E+00 -1.0417E+01
            -3.3824E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1650.44737404362        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      349
 NPARAMETR:  9.7839E-01  9.7097E-01  1.0066E+00  1.1077E+00  9.5363E-01  1.1319E+00  1.3332E+00  6.2753E-01  7.9339E-01  8.4326E-01
             8.8968E-01
 PARAMETER:  7.8154E-02  7.0542E-02  1.0657E-01  2.0229E-01  5.2519E-02  2.2391E-01  3.8756E-01 -3.6596E-01 -1.3144E-01 -7.0485E-02
            -1.6896E-02
 GRADIENT:   8.8904E+01  4.3388E+01  2.8244E+00  7.2947E+01  2.5187E+01  2.3723E+01  1.5228E+00 -2.2761E+00 -1.4484E+01 -1.2230E+01
            -2.6370E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1657.70767170855        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  9.3064E-01  9.5819E-01  8.1874E-01  1.0601E+00  8.5198E-01  1.0469E+00  1.2757E+00  3.9039E-01  8.5273E-01  7.9148E-01
             9.3418E-01
 PARAMETER:  2.8114E-02  5.7288E-02 -9.9987E-02  1.5832E-01 -6.0188E-02  1.4585E-01  3.4350E-01 -8.4061E-01 -5.9314E-02 -1.3385E-01
             3.1914E-02
 GRADIENT:  -8.7431E-01  1.9129E+00 -4.0949E+00  5.7881E+00  2.8625E+00 -2.1818E+00 -8.1290E-02  9.7386E-01  6.6649E-01  1.5487E+00
             1.5197E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1657.99347520147        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.3089E-01  8.2799E-01  8.0122E-01  1.1300E+00  7.8957E-01  1.0524E+00  1.4464E+00  2.1233E-01  8.0487E-01  7.6268E-01
             9.3067E-01
 PARAMETER:  2.8382E-02 -8.8759E-02 -1.2162E-01  2.2218E-01 -1.3627E-01  1.5109E-01  4.6907E-01 -1.4496E+00 -1.1708E-01 -1.7091E-01
             2.8148E-02
 GRADIENT:   4.3819E-01 -1.1081E+00 -7.4770E-01 -6.1726E-01  5.9084E-01 -2.4783E-01  1.9597E-01  1.4411E-01  3.0529E-01  3.8036E-01
             1.5614E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1658.10936297890        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      883
 NPARAMETR:  9.3142E-01  8.9637E-01  7.7059E-01  1.0875E+00  7.9960E-01  1.0534E+00  1.3583E+00  5.7187E-02  8.2530E-01  7.5711E-01
             9.3036E-01
 PARAMETER:  2.8952E-02 -9.3981E-03 -1.6059E-01  1.8390E-01 -1.2365E-01  1.5202E-01  4.0622E-01 -2.7614E+00 -9.2004E-02 -1.7825E-01
             2.7818E-02
 GRADIENT:   3.5731E-01  2.4573E-02 -3.2962E-01  4.0456E-01  1.9697E-01 -4.5718E-02 -1.0236E-01  1.2078E-02 -8.4609E-02  1.0097E-01
            -5.5979E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1658.11498561949        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1058
 NPARAMETR:  9.3113E-01  9.0022E-01  7.6950E-01  1.0847E+00  8.0069E-01  1.0538E+00  1.3544E+00  2.5145E-02  8.2709E-01  7.5683E-01
             9.3062E-01
 PARAMETER:  2.8647E-02 -5.1123E-03 -1.6201E-01  1.8133E-01 -1.2229E-01  1.5242E-01  4.0336E-01 -3.5831E+00 -8.9842E-02 -1.7862E-01
             2.8098E-02
 GRADIENT:  -2.8944E-01 -2.1552E-01 -1.0995E-01 -3.4826E-01  1.6775E-01  1.1222E-01 -1.6732E-02  2.3709E-03 -4.2122E-03  1.3765E-02
             4.5804E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1658.11503547801        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1233
 NPARAMETR:  9.3120E-01  8.9834E-01  7.6980E-01  1.0860E+00  8.0003E-01  1.0537E+00  1.3568E+00  1.8265E-02  8.2642E-01  7.5680E-01
             9.3057E-01
 PARAMETER:  2.8721E-02 -7.2091E-03 -1.6162E-01  1.8248E-01 -1.2311E-01  1.5226E-01  4.0516E-01 -3.9028E+00 -9.0656E-02 -1.7866E-01
             2.8047E-02
 GRADIENT:  -1.2380E-01 -9.3810E-02 -5.4506E-02 -1.4665E-01  7.5538E-02  4.8300E-02 -6.9854E-03  1.2550E-03 -1.3420E-03  8.5690E-03
             2.0968E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1658.11507440872        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1408
 NPARAMETR:  9.3124E-01  8.9734E-01  7.6996E-01  1.0866E+00  7.9968E-01  1.0536E+00  1.3582E+00  1.1501E-02  8.2606E-01  7.5679E-01
             9.3055E-01
 PARAMETER:  2.8764E-02 -8.3258E-03 -1.6141E-01  1.8310E-01 -1.2355E-01  1.5217E-01  4.0613E-01 -4.3654E+00 -9.1087E-02 -1.7867E-01
             2.8017E-02
 GRADIENT:  -2.9674E-02 -2.4856E-02 -2.0022E-02 -3.4999E-02  2.2088E-02  1.1686E-02 -1.4222E-03  5.0810E-04  2.6827E-04  4.6342E-03
             6.4405E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1658.11632593170        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:     1568
 NPARAMETR:  9.3140E-01  8.9714E-01  7.6998E-01  1.0862E+00  7.9961E-01  1.0559E+00  1.3587E+00  1.0000E-02  8.2600E-01  7.5677E-01
             9.3053E-01
 PARAMETER:  2.8938E-02 -8.5422E-03 -1.6139E-01  1.8271E-01 -1.2363E-01  1.5435E-01  4.0652E-01 -4.5277E+00 -9.1155E-02 -1.7870E-01
             2.7998E-02
 GRADIENT:   3.3460E-01 -3.2808E-01  2.8746E-01 -1.1238E+00 -3.5615E-01  8.9996E-01  4.7475E-02  2.5944E-04 -1.3222E-02  3.4991E-02
             7.8096E-03

0ITERATION NO.:   46    OBJECTIVE VALUE:  -1658.11632593170        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     1592
 NPARAMETR:  9.3140E-01  8.9714E-01  7.6998E-01  1.0862E+00  7.9961E-01  1.0559E+00  1.3587E+00  1.0000E-02  8.2600E-01  7.5677E-01
             9.3053E-01
 PARAMETER:  2.8938E-02 -8.5422E-03 -1.6139E-01  1.8271E-01 -1.2363E-01  1.5435E-01  4.0652E-01 -4.5277E+00 -9.1155E-02 -1.7870E-01
             2.7998E-02
 GRADIENT:  -8.1196E-01 -3.2042E-01  2.9230E-01 -4.6567E-01 -3.3334E-01  1.7123E-03 -3.5371E-02  4.1778E-05 -2.4190E-02  3.2603E-02
             8.1964E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1592
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.3499E-04  5.4885E-03 -4.8821E-04 -7.8314E-03 -7.0535E-03
 SE:             2.9860E-02  2.2271E-02  2.0846E-04  2.4272E-02  2.2358E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8036E-01  8.0534E-01  1.9183E-02  7.4696E-01  7.5239E-01

 ETASHRINKSD(%)  1.0000E-10  2.5388E+01  9.9302E+01  1.8687E+01  2.5099E+01
 ETASHRINKVR(%)  1.0000E-10  4.4331E+01  9.9995E+01  3.3882E+01  4.3899E+01
 EBVSHRINKSD(%)  3.4428E-01  2.5131E+01  9.9359E+01  1.8741E+01  2.4286E+01
 EBVSHRINKVR(%)  6.8738E-01  4.3947E+01  9.9996E+01  3.3970E+01  4.2674E+01
 RELATIVEINF(%)  9.9057E+01  4.5545E+00  4.4000E-04  6.3303E+00  4.6938E+00
 EPSSHRINKSD(%)  4.3852E+01
 EPSSHRINKVR(%)  6.8474E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1658.1163259317011     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -922.96549936796293     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.59
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1658.116       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.31E-01  8.97E-01  7.70E-01  1.09E+00  8.00E-01  1.06E+00  1.36E+00  1.00E-02  8.26E-01  7.57E-01  9.31E-01
 


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
 #CPUT: Total CPU Time in Seconds,       19.627
Stop Time:
Sat Oct  2 01:58:44 CDT 2021
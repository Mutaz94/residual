Fri Oct  1 04:06:25 CDT 2021
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
$DATA ../../../../data/SD1/SL3/dat78.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      985
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

 TOT. NO. OF OBS RECS:      885
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
 RAW OUTPUT FILE (FILE): m78.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1018.31873138934        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6753E+02  3.0188E+01  1.0404E+02  7.2504E+01  1.6161E+02  3.4156E+01 -1.4740E+02 -2.0079E+02 -8.7360E+01 -2.9565E+00
            -5.1483E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2771.04950975375        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0332E+00  1.3153E+00  1.0465E+00  9.6734E-01  1.0937E+00  9.3239E-01  1.3207E+00  9.3671E-01  1.0252E+00  9.1754E-01
             2.3041E+00
 PARAMETER:  1.3264E-01  3.7405E-01  1.4542E-01  6.6794E-02  1.8958E-01  3.0000E-02  3.7820E-01  3.4621E-02  1.2486E-01  1.3945E-02
             9.3471E-01
 GRADIENT:   2.0947E+02  1.4125E+02 -6.1353E+00  8.8668E+01 -9.6185E+00 -1.6299E+01  2.3119E+01  1.3184E+00 -3.4802E+00 -1.1732E+01
            -1.9364E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2780.47489817419        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0183E+00  1.2231E+00  9.5874E-01  9.9119E-01  1.0416E+00  9.5027E-01  1.3296E+00  2.2393E-01  1.0374E+00  9.6907E-01
             2.4064E+00
 PARAMETER:  1.1817E-01  3.0138E-01  5.7863E-02  9.1147E-02  1.4077E-01  4.8990E-02  3.8485E-01 -1.3964E+00  1.3668E-01  6.8586E-02
             9.7812E-01
 GRADIENT:   1.4909E+02  8.1284E+01 -2.3195E+01  7.6070E+01  7.0603E+00 -5.6081E+00  2.3975E+01  3.4981E-02  5.8874E+00  2.9117E+00
            -9.5683E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2788.05292127019        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  9.9517E-01  1.2324E+00  1.0810E+00  9.4779E-01  1.1135E+00  9.5263E-01  1.1520E+00  1.7180E-01  1.0439E+00  1.0844E+00
             2.4715E+00
 PARAMETER:  9.5157E-02  3.0898E-01  1.7791E-01  4.6378E-02  2.0752E-01  5.1469E-02  2.4147E-01 -1.6614E+00  1.4295E-01  1.8100E-01
             1.0048E+00
 GRADIENT:   7.5970E+01  3.4335E+01 -5.6204E+00  3.3853E+01  4.6098E+00 -1.8679E+00  4.2143E+00  6.0457E-02  5.7671E+00  8.4828E+00
            -2.4480E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2802.70261796757        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      405
 NPARAMETR:  9.8933E-01  1.8727E+00  1.8000E+00  5.8202E-01  1.8372E+00  9.6662E-01  9.3122E-01  3.9760E-01  1.1495E+00  1.5755E+00
             2.4647E+00
 PARAMETER:  8.9272E-02  7.2736E-01  6.8776E-01 -4.4125E-01  7.0825E-01  6.6054E-02  2.8739E-02 -8.2232E-01  2.3935E-01  5.5459E-01
             1.0021E+00
 GRADIENT:  -8.6598E+00  2.2835E+01 -1.0146E+01  3.7597E+01  2.8220E+01 -3.7501E+00  2.6139E+00  5.9196E-03 -5.8020E-01  4.0405E+00
            -2.1298E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2809.85659931864        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      580
 NPARAMETR:  9.9409E-01  2.2647E+00  2.8627E+00  3.0328E-01  2.0716E+00  9.7500E-01  7.8160E-01  1.0087E+00  1.7040E+00  1.7394E+00
             2.4728E+00
 PARAMETER:  9.4069E-02  9.1743E-01  1.1518E+00 -1.0931E+00  8.2833E-01  7.4687E-02 -1.4642E-01  1.0862E-01  6.3300E-01  6.5354E-01
             1.0054E+00
 GRADIENT:   2.1149E+00  6.5978E+00 -8.1102E-01  3.7528E+00 -6.6482E-01 -9.5057E-01 -3.3054E+00 -6.8256E-02 -1.1894E+00  1.4080E+00
             3.0928E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2810.60982337880        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      756
 NPARAMETR:  9.9299E-01  2.4526E+00  4.4803E+00  1.7744E-01  2.1364E+00  9.7926E-01  7.5506E-01  3.7702E+00  2.5168E+00  1.7713E+00
             2.4715E+00
 PARAMETER:  9.2967E-02  9.9716E-01  1.5997E+00 -1.6291E+00  8.5910E-01  7.9041E-02 -1.8095E-01  1.4271E+00  1.0230E+00  6.7170E-01
             1.0048E+00
 GRADIENT:  -5.6213E-01  9.5021E+00 -2.8286E-01  2.5511E+00  1.0364E+00  2.8574E-01  1.6805E+00 -3.7807E-03  1.0124E+00  1.3142E+00
             1.9963E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2810.81703730408        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      933
 NPARAMETR:  9.9340E-01  2.5630E+00  7.2030E+00  1.0001E-01  2.1432E+00  9.7888E-01  7.3368E-01  1.5105E+01  3.4142E+00  1.7706E+00
             2.4705E+00
 PARAMETER:  9.3378E-02  1.0412E+00  2.0745E+00 -2.2025E+00  8.6230E-01  7.8656E-02 -2.0969E-01  2.8151E+00  1.3279E+00  6.7132E-01
             1.0044E+00
 GRADIENT:   2.3353E-01  7.9747E+00 -9.5489E-02  1.4197E+00 -1.7379E-01  1.1413E-01 -7.8751E-01  4.9806E-02  6.8662E-01  5.5903E-01
             1.4440E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2810.85619078686        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1108
 NPARAMETR:  9.9330E-01  2.5917E+00  8.8507E+00  7.8029E-02  2.1431E+00  9.7917E-01  7.2938E-01  2.4979E+01  3.8273E+00  1.7670E+00
             2.4703E+00
 PARAMETER:  9.3279E-02  1.0523E+00  2.2805E+00 -2.4507E+00  8.6224E-01  7.8954E-02 -2.1557E-01  3.3180E+00  1.4422E+00  6.6928E-01
             1.0043E+00
 GRADIENT:   5.1724E-02  2.6471E+00 -3.4229E-01  1.9214E+00 -6.0124E-01  2.3532E-01 -2.1524E+00  4.5773E-01  1.6147E+00 -3.2718E-01
             1.0614E+00

0ITERATION NO.:   41    OBJECTIVE VALUE:  -2810.85619078686        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     1132
 NPARAMETR:  9.9330E-01  2.5917E+00  8.8507E+00  7.8029E-02  2.1431E+00  9.7917E-01  7.2938E-01  2.4979E+01  3.8273E+00  1.7670E+00
             2.4703E+00
 PARAMETER:  9.3279E-02  1.0523E+00  2.2805E+00 -2.4507E+00  8.6224E-01  7.8954E-02 -2.1557E-01  3.3180E+00  1.4422E+00  6.6928E-01
             1.0043E+00
 GRADIENT:  -2.1114E-01 -1.6196E+02 -3.9748E+01  3.7190E+01 -2.1033E+02  1.3085E-01 -4.2076E+02  2.7757E+01  6.2930E+01 -2.7093E+02
            -1.7964E+02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1132
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0702E-03 -1.1579E-02 -6.4847E-04  7.8715E-04 -1.4580E-02
 SE:             2.9305E-02  2.7985E-02  6.0075E-04  6.6449E-03  2.6966E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7087E-01  6.7905E-01  2.8039E-01  9.0570E-01  5.8873E-01

 ETASHRINKSD(%)  1.8230E+00  6.2477E+00  9.7987E+01  7.7739E+01  9.6596E+00
 ETASHRINKVR(%)  3.6128E+00  1.2105E+01  9.9959E+01  9.5044E+01  1.8386E+01
 EBVSHRINKSD(%)  1.6319E+00  6.4008E+00  9.8516E+01  7.8534E+01  7.9525E+00
 EBVSHRINKVR(%)  3.2371E+00  1.2392E+01  9.9978E+01  9.5392E+01  1.5273E+01
 RELATIVEINF(%)  9.6698E+01  2.8664E-01  1.2727E-02  1.5024E-02  5.3425E+01
 EPSSHRINKSD(%)  1.6014E+01
 EPSSHRINKVR(%)  2.9464E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          885
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1626.5212037722706     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2810.8561907868602     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1184.3349870145896     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.48
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2810.856       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  2.59E+00  8.85E+00  7.80E-02  2.14E+00  9.79E-01  7.29E-01  2.50E+01  3.83E+00  1.77E+00  2.47E+00
 


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
 #CPUT: Total CPU Time in Seconds,       26.551
Stop Time:
Fri Oct  1 04:06:53 CDT 2021

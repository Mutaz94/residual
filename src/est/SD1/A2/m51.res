Fri Oct  1 00:38:59 CDT 2021
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
$DATA ../../../../data/SD1/A2/dat51.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
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

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m51.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2990.06686057695        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.3885E+02  1.7612E+02  7.8482E+01  8.5237E+01  1.6736E+02  5.0111E+01 -1.2788E+01 -2.0657E+02 -3.8191E+01 -8.0095E+01
            -1.2658E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3255.89969119961        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  8.9907E-01  8.3781E-01  8.8419E-01  1.0387E+00  8.1856E-01  9.0208E-01  9.4924E-01  1.1863E+00  1.0185E+00  1.1130E+00
             1.7002E+00
 PARAMETER: -6.3936E-03 -7.6966E-02 -2.3082E-02  1.3796E-01 -1.0021E-01 -3.0513E-03  4.7903E-02  2.7083E-01  1.1830E-01  2.0710E-01
             6.3073E-01
 GRADIENT:   1.5462E+00  4.8699E-01  1.1261E+01 -9.8514E-02 -9.0360E+00 -1.6046E+00  1.3123E+01 -2.3129E+00  5.2404E+00  8.1056E+00
             1.7804E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3258.88021893371        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  8.9872E-01  8.7330E-01  9.1196E-01  1.0273E+00  8.7270E-01  9.0002E-01  7.0086E-01  1.2844E+00  1.0376E+00  1.2113E+00
             1.6934E+00
 PARAMETER: -6.7803E-03 -3.5473E-02  7.8378E-03  1.2692E-01 -3.6165E-02 -5.3397E-03 -2.5544E-01  3.5033E-01  1.3693E-01  2.9171E-01
             6.2676E-01
 GRADIENT:   1.2119E+00 -1.1850E+01  2.2189E+00  5.5843E+00  2.6268E+01 -2.5498E+00 -9.4712E-01 -1.3687E+00  5.3660E+00  1.5647E+01
             1.7281E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3274.19702288016        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      232
 NPARAMETR:  8.8449E-01  8.0502E-01  8.9180E-01  1.0504E+00  7.9961E-01  9.0588E-01  8.6538E-01  1.6186E+00  9.4161E-01  1.0989E+00
             1.4794E+00
 PARAMETER: -2.2743E-02 -1.1688E-01 -1.4513E-02  1.4916E-01 -1.2363E-01  1.1476E-03 -4.4587E-02  5.8154E-01  3.9834E-02  1.9434E-01
             4.9164E-01
 GRADIENT:   6.2200E+00  9.4811E+00  6.9983E+00 -1.1283E+00 -2.1177E+00 -2.5214E+00 -7.7729E+00 -5.3053E+00 -2.8764E+01 -6.2459E+00
             1.1071E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3282.79994240473        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      415             RESET HESSIAN, TYPE I
 NPARAMETR:  9.0442E-01  8.3513E-01  9.3876E-01  1.0647E+00  8.4124E-01  9.2883E-01  8.8713E-01  1.7163E+00  9.6085E-01  1.1309E+00
             1.4794E+00
 PARAMETER: -4.5907E-04 -8.0170E-02  3.6808E-02  1.6273E-01 -7.2879E-02  2.6166E-02 -1.9759E-02  6.4017E-01  6.0068E-02  2.2298E-01
             4.9161E-01
 GRADIENT:   7.1555E+01  2.2284E+01  4.2943E+00  5.9387E+01  7.6770E+00  1.2911E+01 -5.2299E+00  2.4615E+00 -1.8448E+01 -2.2771E-01
             1.4866E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3282.93984830866        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      591
 NPARAMETR:  9.0442E-01  8.3513E-01  9.4207E-01  1.0748E+00  8.4125E-01  9.4423E-01  8.8713E-01  1.7164E+00  9.6085E-01  1.1309E+00
             1.4794E+00
 PARAMETER: -4.5608E-04 -8.0163E-02  4.0326E-02  1.7217E-01 -7.2871E-02  4.2613E-02 -1.9765E-02  6.4025E-01  6.0063E-02  2.2299E-01
             4.9163E-01
 GRADIENT:  -1.1022E+02  8.2210E-01 -4.2594E-02  1.8406E-01 -2.1341E+01  1.1725E-01 -7.1487E+00 -1.6906E+01 -2.2757E+01 -1.3751E+01
             5.7759E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3288.62287749292        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:      757
 NPARAMETR:  9.4842E-01  8.5628E-01  9.8760E-01  1.0717E+00  8.7078E-01  9.2474E-01  9.1621E-01  1.9005E+00  1.0322E+00  1.2003E+00
             1.4652E+00
 PARAMETER:  4.7039E-02 -5.5163E-02  8.7520E-02  1.6927E-01 -3.8364E-02  2.1761E-02  1.2492E-02  7.4210E-01  1.3165E-01  2.8255E-01
             4.8199E-01
 GRADIENT:   7.3935E+00  9.8880E-01  5.2605E-01  1.1162E+01 -1.9166E+01 -2.6666E+00 -2.4872E+00 -2.1049E+00 -5.2297E-01 -3.1921E+00
            -7.0949E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3288.66127082841        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      941
 NPARAMETR:  9.4859E-01  8.5662E-01  9.8903E-01  1.0718E+00  8.7144E-01  9.3111E-01  9.1702E-01  1.9226E+00  1.0340E+00  1.2019E+00
             1.4635E+00
 PARAMETER:  4.7226E-02 -5.4757E-02  8.8970E-02  1.6937E-01 -3.7614E-02  2.8617E-02  1.3377E-02  7.5368E-01  1.3345E-01  2.8388E-01
             4.8084E-01
 GRADIENT:   7.8651E+00  1.1578E+00 -4.2874E-02  1.1418E+01 -1.9672E+01  1.0942E-03 -2.3774E+00  4.6018E-02 -2.0618E-02 -3.0366E+00
            -8.9890E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3288.87751916912        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1103
 NPARAMETR:  9.4613E-01  8.5561E-01  9.9610E-01  1.0676E+00  8.7974E-01  9.3095E-01  9.4102E-01  1.9309E+00  1.0335E+00  1.2100E+00
             1.4599E+00
 PARAMETER:  4.4625E-02 -5.5937E-02  9.6097E-02  1.6543E-01 -2.8129E-02  2.8451E-02  3.9213E-02  7.5800E-01  1.3292E-01  2.9059E-01
             4.7836E-01
 GRADIENT:   1.4126E+00 -7.6315E+00 -5.5487E-01  4.8551E+00 -1.2461E+01 -5.3320E-02 -9.6549E-02 -1.8477E-01  4.2533E-01 -1.3311E+00
            -1.2964E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3288.95095471987        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     1277
 NPARAMETR:  9.4616E-01  8.5704E-01  9.9877E-01  1.0671E+00  8.8242E-01  9.3105E-01  9.4257E-01  1.9389E+00  1.0312E+00  1.2119E+00
             1.4612E+00
 PARAMETER:  4.4588E-02 -5.4202E-02  9.7765E-02  1.6486E-01 -2.5009E-02  2.8536E-02  4.0778E-02  7.6181E-01  1.3063E-01  2.9197E-01
             4.7962E-01
 GRADIENT:  -2.6572E+04  2.6554E+04 -1.0239E+00 -1.6124E+04  2.6555E+04 -6.3723E-02 -2.6578E+04 -3.8786E-01 -1.0172E+04 -4.5539E+03
             5.5478E+03
 NUMSIGDIG:         2.3         2.3         1.2         2.3         2.3         2.8         2.3         2.6         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1277
 NO. OF SIG. DIGITS IN FINAL EST.:  1.2
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.8421E-04 -2.7968E-02 -3.2810E-02  7.4105E-03 -3.0058E-02
 SE:             2.9788E-02  1.9099E-02  2.2300E-02  2.7763E-02  2.4446E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8435E-01  1.4309E-01  1.4121E-01  7.8953E-01  2.1887E-01

 ETASHRINKSD(%)  2.0597E-01  3.6017E+01  2.5294E+01  6.9895E+00  1.8102E+01
 ETASHRINKVR(%)  4.1152E-01  5.9062E+01  4.4190E+01  1.3491E+01  3.2927E+01
 EBVSHRINKSD(%)  6.3421E-01  3.5393E+01  2.6649E+01  7.5982E+00  1.7886E+01
 EBVSHRINKVR(%)  1.2644E+00  5.8259E+01  4.6196E+01  1.4619E+01  3.2572E+01
 RELATIVEINF(%)  9.8727E+01  2.0615E+01  4.1077E+01  6.1995E+01  3.2023E+01
 EPSSHRINKSD(%)  2.1069E+01
 EPSSHRINKVR(%)  3.7699E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3288.9509547198695     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1634.8615949514588     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    33.93
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3288.951       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.46E-01  8.57E-01  9.98E-01  1.07E+00  8.82E-01  9.31E-01  9.42E-01  1.94E+00  1.03E+00  1.21E+00  1.46E+00
 


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
 #CPUT: Total CPU Time in Seconds,       33.988
Stop Time:
Fri Oct  1 00:39:40 CDT 2021
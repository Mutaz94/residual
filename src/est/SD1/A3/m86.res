Fri Oct  1 01:32:34 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat86.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m86.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1625.79297282207        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7500E+02  2.2876E+02  3.5189E+02  1.0854E+00  3.4796E+02  4.7873E+01 -2.4828E+02 -4.7716E+02 -6.5279E+01 -2.3202E+02
            -3.4438E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2893.06182990963        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0321E+00  8.5806E-01  6.8557E-01  1.1187E+00  7.2141E-01  8.6811E-01  1.1079E+00  1.0928E+00  8.6728E-01  1.0423E+00
             2.6688E+00
 PARAMETER:  1.3155E-01 -5.3083E-02 -2.7751E-01  2.1218E-01 -2.2655E-01 -4.1439E-02  2.0245E-01  1.8878E-01 -4.2389E-02  1.4145E-01
             1.0816E+00
 GRADIENT:   7.0128E+01  4.9627E+01 -1.1045E+01  1.1304E+01  2.3992E+00 -2.0723E+01  3.5999E+00  2.3147E+01 -8.1699E+00  1.8155E+01
             2.8008E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2915.71265359457        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      201
 NPARAMETR:  1.0407E+00  6.1950E-01  3.9149E-01  1.1770E+00  4.2889E-01  8.6212E-01  1.3308E+00  9.8516E-01  9.7274E-01  8.9550E-01
             2.4567E+00
 PARAMETER:  1.3986E-01 -3.7884E-01 -8.3780E-01  2.6298E-01 -7.4655E-01 -4.8364E-02  3.8577E-01  8.5044E-02  7.2366E-02 -1.0379E-02
             9.9884E-01
 GRADIENT:   2.1912E+01  1.8232E+02 -4.1952E+01 -2.1052E+01 -7.9095E+01 -3.3897E+01 -2.0497E+01  2.1044E+01 -8.8291E-01  2.3655E+01
             2.3317E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2934.32797938620        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      379
 NPARAMETR:  1.0396E+00  4.9952E-01  2.1936E-01  1.1552E+00  2.5344E-01  8.6596E-01  2.5009E+00  1.1077E+00  1.1376E+00  3.5223E-01
             2.2312E+00
 PARAMETER:  1.3883E-01 -5.9411E-01 -1.4170E+00  2.4428E-01 -1.2726E+00 -4.3920E-02  1.0166E+00  2.0225E-01  2.2891E-01 -9.4348E-01
             9.0256E-01
 GRADIENT:   2.1244E+01  1.8253E+02  7.1749E+01  4.8649E+01 -2.4397E+02 -3.6794E+01  6.9495E+00 -1.2693E+01 -1.2590E+01 -3.8099E+00
             2.5153E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3026.18531568623        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      556
 NPARAMETR:  1.0212E+00  2.9254E-01  1.8983E-01  1.1514E+00  2.3904E-01  9.1467E-01  1.6809E+00  1.2033E+00  1.2887E+00  1.6024E-01
             1.8333E+00
 PARAMETER:  1.2102E-01 -1.1291E+00 -1.5616E+00  2.4097E-01 -1.3311E+00  1.0806E-02  6.1931E-01  2.8506E-01  3.5361E-01 -1.7311E+00
             7.0611E-01
 GRADIENT:  -9.9494E+00  4.6944E+01  1.0975E+01  5.9868E+01 -6.7977E+01 -1.3594E+01 -5.9501E+00 -1.8127E+01 -7.4337E+00 -6.9390E+00
            -8.9453E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3043.87604279692        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      732
 NPARAMETR:  1.0294E+00  2.5239E-01  1.7105E-01  1.0618E+00  2.2158E-01  9.4156E-01  1.5993E+00  1.1492E+00  1.3158E+00  5.0529E-01
             1.8818E+00
 PARAMETER:  1.2896E-01 -1.2768E+00 -1.6658E+00  1.5995E-01 -1.4070E+00  3.9784E-02  5.6959E-01  2.3910E-01  3.7442E-01 -5.8263E-01
             7.3220E-01
 GRADIENT:   7.4032E+00 -6.6876E+00  1.0102E+01 -6.9366E+00  2.0142E+01 -1.3869E+00  6.1886E+00 -8.4709E-02  5.9789E-01 -5.4705E+00
             3.8990E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3046.51351242145        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      907
 NPARAMETR:  1.0264E+00  2.3287E-01  1.4730E-01  1.0225E+00  2.0125E-01  9.4224E-01  1.5013E+00  1.1002E+00  1.3839E+00  6.2703E-01
             1.8682E+00
 PARAMETER:  1.2604E-01 -1.3573E+00 -1.8153E+00  1.2229E-01 -1.5032E+00  4.0507E-02  5.0636E-01  1.9553E-01  4.2489E-01 -3.6677E-01
             7.2496E-01
 GRADIENT:   7.9892E-01 -1.6738E-01  8.8789E-01 -7.3773E-02 -1.5602E+00 -7.3738E-04 -7.4124E-02 -1.3105E-01 -7.3221E-02 -4.9040E-01
            -5.8313E-01

0ITERATION NO.:   32    OBJECTIVE VALUE:  -3046.51642223251        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      964
 NPARAMETR:  1.0260E+00  2.3276E-01  1.4705E-01  1.0224E+00  2.0114E-01  9.4217E-01  1.4999E+00  1.0991E+00  1.3841E+00  6.3247E-01
             1.8688E+00
 PARAMETER:  1.2563E-01 -1.3577E+00 -1.8170E+00  1.2220E-01 -1.5038E+00  4.0433E-02  5.0537E-01  1.9448E-01  4.2507E-01 -3.5813E-01
             7.2529E-01
 GRADIENT:  -2.7850E-01  1.4708E-02  9.4417E-02  3.0551E-01 -1.6934E-01 -1.7685E-02  4.8797E-02 -1.1149E-01 -1.6759E-02  2.9837E-01
             2.7866E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      964
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1982E-03  1.3304E-02  1.1862E-02 -8.0884E-04  1.6585E-02
 SE:             2.9609E-02  2.5955E-02  2.1531E-02  2.7961E-02  2.1225E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6772E-01  6.0825E-01  5.8167E-01  9.7692E-01  4.3456E-01

 ETASHRINKSD(%)  8.0765E-01  1.3049E+01  2.7870E+01  6.3280E+00  2.8895E+01
 ETASHRINKVR(%)  1.6088E+00  2.4395E+01  4.7972E+01  1.2256E+01  4.9440E+01
 EBVSHRINKSD(%)  1.0514E+00  1.1320E+01  2.7129E+01  5.7027E+00  3.0093E+01
 EBVSHRINKVR(%)  2.0917E+00  2.1359E+01  4.6899E+01  1.1080E+01  5.1130E+01
 RELATIVEINF(%)  9.7895E+01  3.2486E+01  1.1071E+01  5.7013E+01  8.7500E+00
 EPSSHRINKSD(%)  2.2234E+01
 EPSSHRINKVR(%)  3.9525E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3046.5164222325102     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1392.4270624640994     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.44
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3046.516       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  2.33E-01  1.47E-01  1.02E+00  2.01E-01  9.42E-01  1.50E+00  1.10E+00  1.38E+00  6.32E-01  1.87E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.510
Stop Time:
Fri Oct  1 01:33:00 CDT 2021

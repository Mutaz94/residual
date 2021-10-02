Fri Oct  1 16:28:10 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	One-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/28/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD2/All/dat48.csv ignore=@
$SUBR ADVAN2 TRANS2
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK

ET1 = EXP(ETA(1)*THETA(4))
ET2 = EXP(ETA(2)*THETA(5))
ET3 = EXP(ETA(3)*THETA(6))


CL = 5.0 * THETA(1) * ET1
V = 85  * THETA(2) * ET2
KA = 0.7 * THETA(3) * ET3

SC = V
$ERROR
CVERR 	= 0.05
W  	= THETA(7)*F*CVERR
Y  	= F + W * ERR(1)
$THETA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvKA
(0,1) ; tvCL
(0,1) ; tvV
(0,1) ; tvK
(0,1) ; RUV
$OMEGA (0.09 FIX)x3
$SIGMA  1  FIX;        [P]

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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:   7
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   3
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
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 ONE COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN2)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   3
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   ELIMINATION RATE (K) IS BASIC PK PARAMETER NO.:  1
   ABSORPTION RATE (KA) IS BASIC PK PARAMETER NO.:  3

 TRANSLATOR WILL CONVERT PARAMETERS
 CLEARANCE (CL) AND VOLUME (V) TO K (TRANS2)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            4           *           *           *           *
    3            *           -           -           -           -
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
 RAW OUTPUT FILE (FILE): m48.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   15355.8523397724        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   5.6958E+02  9.0335E+01 -5.3772E+02 -1.2096E+03 -1.8689E+03 -6.5887E+02 -3.0668E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -650.112333645021        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  1.2052E+00  1.7315E+00  3.8755E+00  3.7269E+00  3.5511E+00  1.1667E+00  1.1271E+01
 PARAMETER:  2.8667E-01  6.4897E-01  1.4547E+00  1.4156E+00  1.3673E+00  2.5420E-01  2.5222E+00
 GRADIENT:  -5.4738E-02  2.9332E+01  5.9133E-01  1.4240E+02  9.8942E+01  4.8252E-02  2.3025E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -706.980884498552        NO. OF FUNC. EVALS.:  55
 CUMULATIVE NO. OF FUNC. EVALS.:      114
 NPARAMETR:  1.2981E+00  1.8350E+00  3.1774E+01  2.0901E+00  3.2952E+00  1.8419E+01  1.0072E+01
 PARAMETER:  3.6093E-01  7.0703E-01  3.5586E+00  8.3722E-01  1.2925E+00  3.0134E+00  2.4098E+00
 GRADIENT:   4.9382E+01  5.9727E+01  1.3781E-01  3.8818E+00  8.3330E+01  1.0888E-01  1.2926E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -711.680546321651        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:      212
 NPARAMETR:  1.2825E+00  1.7957E+00  3.3398E+01  2.0680E+00  3.2320E+00  2.1287E+01  9.7059E+00
 PARAMETER:  3.4883E-01  6.8537E-01  3.6085E+00  8.2660E-01  1.2731E+00  3.1581E+00  2.3727E+00
 GRADIENT:   2.6853E+01  4.5766E+01  9.9930E-01 -1.9172E+01  5.6466E+01  7.6922E+00  8.1510E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -743.042777945051        NO. OF FUNC. EVALS.:  68
 CUMULATIVE NO. OF FUNC. EVALS.:      280
 NPARAMETR:  9.9772E-01  1.7917E+00  2.3597E+00  1.7126E+00  3.2068E+00  5.5410E-01  7.8561E+00
 PARAMETER:  9.7719E-02  6.8314E-01  9.5855E-01  6.3803E-01  1.2653E+00 -4.9042E-01  2.1613E+00
 GRADIENT:  -3.4294E+01  7.1594E+01  4.4809E-01  3.5916E+00  4.4621E+01  4.0473E-01 -8.1510E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -750.065077021444        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      332
 NPARAMETR:  1.0769E+00  1.7875E+00  2.4376E+00  1.7010E+00  3.1877E+00  5.4484E-01  8.5279E+00
 PARAMETER:  1.7411E-01  6.8083E-01  9.9101E-01  6.3121E-01  1.2593E+00 -5.0726E-01  2.2433E+00
 GRADIENT:   4.3276E+00  6.2093E+01  1.1029E+00  5.9582E+00  3.8608E+01  3.0547E-01 -2.4838E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -751.116813781224        NO. OF FUNC. EVALS.: 107
 CUMULATIVE NO. OF FUNC. EVALS.:      439
 NPARAMETR:  1.1115E+00  1.7457E+00  2.1853E+00  1.7584E+00  3.1826E+00  4.4196E-01  8.7662E+00
 PARAMETER:  2.0574E-01  6.5716E-01  8.8175E-01  6.6443E-01  1.2577E+00 -7.1653E-01  2.2709E+00
 GRADIENT:   5.6845E+00  2.8546E+01 -9.2733E-01  6.7949E+00 -1.7183E+00  3.1966E-01  4.2211E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -752.836703704806        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      557
 NPARAMETR:  1.1095E+00  1.5852E+00  2.0469E+00  1.7935E+00  3.1134E+00  1.9346E-01  8.6544E+00
 PARAMETER:  2.0390E-01  5.6069E-01  8.1634E-01  6.8420E-01  1.2357E+00 -1.5427E+00  2.2581E+00
 GRADIENT:   6.5717E+00  1.0523E+01 -1.7120E+00  1.1848E+01 -6.8675E+00  8.1195E-02 -1.5477E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -752.924466317135        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:      657
 NPARAMETR:  1.1082E+00  1.5893E+00  2.0387E+00  1.7832E+00  3.1181E+00  2.3793E-02  8.6561E+00
 PARAMETER:  2.0271E-01  5.6328E-01  8.1232E-01  6.7843E-01  1.2372E+00 -3.6384E+00  2.2583E+00
 GRADIENT:   5.9705E+00  1.1104E+01 -1.7477E+00  1.0330E+01 -6.3371E+00  1.2464E-03 -1.5029E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -753.119102089767        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:      775
 NPARAMETR:  1.1076E+00  1.5875E+00  2.0416E+00  1.7644E+00  3.1856E+00  1.0000E-02  8.6701E+00
 PARAMETER:  2.0223E-01  5.6216E-01  8.1374E-01  6.6783E-01  1.2586E+00 -6.5894E+00  2.2599E+00
 GRADIENT:   6.1201E+00  1.0374E+01 -1.7187E+00  7.4851E+00  1.5556E+00  0.0000E+00  3.4804E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -753.495470531082        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      894            RESET HESSIAN, TYPE II
 NPARAMETR:  1.1004E+00  1.5437E+00  2.0929E+00  1.7109E+00  3.1766E+00  1.0000E-02  8.6781E+00
 PARAMETER:  1.9566E-01  5.3419E-01  8.3854E-01  6.3703E-01  1.2558E+00 -1.3844E+01  2.2608E+00
 GRADIENT:   1.6671E+01  2.5896E+01 -4.5525E-01  8.5288E+00  3.7017E+01  0.0000E+00  2.4936E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -753.533568434825        NO. OF FUNC. EVALS.: 108
 CUMULATIVE NO. OF FUNC. EVALS.:     1002
 NPARAMETR:  1.0957E+00  1.5381E+00  2.1259E+00  1.7128E+00  3.1800E+00  1.0000E-02  8.6448E+00
 PARAMETER:  1.9143E-01  5.3058E-01  8.5419E-01  6.3810E-01  1.2569E+00 -1.3844E+01  2.2570E+00
 GRADIENT:   1.4706E+00  4.0035E+00 -1.5578E-01 -4.5004E-01  1.0615E+00  0.0000E+00 -6.8008E-01

0ITERATION NO.:   59    OBJECTIVE VALUE:  -753.568766344301        NO. OF FUNC. EVALS.:  91
 CUMULATIVE NO. OF FUNC. EVALS.:     1093
 NPARAMETR:  1.0914E+00  1.5304E+00  2.1294E+00  1.7045E+00  3.2224E+00  1.0000E-02  8.8336E+00
 PARAMETER:  1.8938E-01  5.2031E-01  8.5902E-01  6.3967E-01  1.2576E+00 -1.3844E+01  2.2572E+00
 GRADIENT:   7.1674E+03 -2.6056E+03  4.5579E-02  2.1074E+03 -1.0602E+03  0.0000E+00 -2.3216E+02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1093
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.2594E-03 -1.3047E-02 -2.7682E-05
 SE:             2.7339E-02  2.9291E-02  1.8141E-05
 N:                     100         100         100

 P VAL.:         9.0510E-01  6.5602E-01  1.2703E-01

 ETASHRINKSD(%)  8.4102E+00  1.8706E+00  9.9939E+01
 ETASHRINKVR(%)  1.6113E+01  3.7062E+00  1.0000E+02
 EBVSHRINKSD(%)  8.8413E+00  2.8515E+00  9.9886E+01
 EBVSHRINKVR(%)  1.6901E+01  5.6217E+00  1.0000E+02
 RELATIVEINF(%)  8.2779E+01  9.3491E+01  1.2844E-04
 EPSSHRINKSD(%)  1.3926E+01
 EPSSHRINKVR(%)  2.5912E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -753.56876634430137     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       165.36976686037133     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    12.55
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -753.569       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.09E+00  1.52E+00  2.14E+00  1.72E+00  3.18E+00  1.00E-02  8.65E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       12.593
Stop Time:
Fri Oct  1 16:28:24 CDT 2021
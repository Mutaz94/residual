Fri Oct  1 16:34:54 CDT 2021
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
$DATA ../../../../data/SD2/All/dat99.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m99.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   29085.0380285027        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   1.0541E+03  8.3230E+02 -3.6804E+02 -1.9937E+03 -2.7862E+03 -7.4496E+02 -5.4628E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -397.774437456949        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:       59
 NPARAMETR:  1.1419E+00  1.3812E+00  1.8989E+00  1.7786E+00  1.0419E+00  9.7606E-01  1.5071E+01
 PARAMETER:  2.3273E-01  4.2294E-01  7.4125E-01  6.7582E-01  1.4104E-01  7.5764E-02  2.8128E+00
 GRADIENT:  -5.6397E+01  1.0508E+02 -1.4137E+01  3.3639E+01 -1.8753E+01  1.6693E+00  1.8659E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -410.269510851418        NO. OF FUNC. EVALS.:  51
 CUMULATIVE NO. OF FUNC. EVALS.:      110
 NPARAMETR:  1.1858E+00  1.1860E+00  3.0774E+00  1.3878E+00  8.9994E-01  2.3077E+00  1.4995E+01
 PARAMETER:  2.7039E-01  2.7055E-01  1.2241E+00  4.2769E-01 -5.4308E-03  9.3625E-01  2.8077E+00
 GRADIENT:   3.3056E+00 -2.4240E+00 -4.6535E+00 -9.0994E-01  5.9202E+00  7.9098E-01  2.4585E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -411.033617501938        NO. OF FUNC. EVALS.:  52
 CUMULATIVE NO. OF FUNC. EVALS.:      162
 NPARAMETR:  1.1506E+00  1.1333E+00  5.3569E+00  1.3485E+00  7.7141E-01  6.9484E+00  1.4554E+01
 PARAMETER:  2.4028E-01  2.2513E-01  1.7784E+00  3.9896E-01 -1.5954E-01  2.0385E+00  2.7779E+00
 GRADIENT:   1.0752E+01 -1.0323E+01 -2.7020E+00  1.0501E+00  7.2788E-01  5.7679E-01 -8.5346E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -411.767930966467        NO. OF FUNC. EVALS.:  53
 CUMULATIVE NO. OF FUNC. EVALS.:      215
 NPARAMETR:  1.1323E+00  1.1194E+00  1.0610E+01  1.3203E+00  6.7769E-01  9.5152E+00  1.4670E+01
 PARAMETER:  2.2426E-01  2.1280E-01  2.4618E+00  3.7783E-01 -2.8906E-01  2.3529E+00  2.7858E+00
 GRADIENT:   4.4748E+00 -2.2715E+00 -1.3746E-01  1.5298E+00 -1.4025E+00 -3.8210E-01 -8.8777E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -413.119057336415        NO. OF FUNC. EVALS.:  82
 CUMULATIVE NO. OF FUNC. EVALS.:      297
 NPARAMETR:  1.1733E+00  1.1618E+00  2.2872E+01  1.3294E+00  7.3858E-01  1.1676E+01  1.5308E+01
 PARAMETER:  2.5985E-01  2.4999E-01  3.2299E+00  3.8475E-01 -2.0303E-01  2.5576E+00  2.8284E+00
 GRADIENT:   1.3726E+00 -4.5797E-01  3.3489E-02 -4.6389E+00  4.8720E-01 -7.0448E-02 -6.8885E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -413.210511000762        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      413
 NPARAMETR:  1.1769E+00  1.1690E+00  2.8064E+01  1.3555E+00  7.4064E-01  1.2136E+01  1.5420E+01
 PARAMETER:  2.6291E-01  2.5618E-01  3.4345E+00  4.0415E-01 -2.0024E-01  2.5962E+00  2.8357E+00
 GRADIENT:   3.5255E-01  2.8263E-02 -7.3449E-03 -1.7428E-02 -5.0569E-02 -2.4480E-02 -2.2305E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -413.210511000762        NO. OF FUNC. EVALS.:  14
 CUMULATIVE NO. OF FUNC. EVALS.:      427
 NPARAMETR:  1.1769E+00  1.1690E+00  2.8064E+01  1.3555E+00  7.4064E-01  1.2136E+01  1.5420E+01
 PARAMETER:  2.6291E-01  2.5618E-01  3.4345E+00  4.0415E-01 -2.0024E-01  2.5962E+00  2.8357E+00
 GRADIENT:   3.5255E-01  2.8263E-02 -7.3449E-03 -1.7428E-02 -5.0569E-02 -2.4480E-02 -2.2305E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      427
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.0162E-03 -2.1986E-02 -2.3812E-03
 SE:             2.6607E-02  1.7224E-02  2.2506E-03
 N:                     100         100         100

 P VAL.:         7.6320E-01  2.0181E-01  2.9003E-01

 ETASHRINKSD(%)  1.0863E+01  4.2296E+01  9.2460E+01
 ETASHRINKVR(%)  2.0546E+01  6.6702E+01  9.9432E+01
 EBVSHRINKSD(%)  9.8217E+00  4.3204E+01  9.5574E+01
 EBVSHRINKVR(%)  1.8679E+01  6.7743E+01  9.9804E+01
 RELATIVEINF(%)  4.0136E+01  1.4027E+01  7.8766E-02
 EPSSHRINKSD(%)  3.8901E+00
 EPSSHRINKVR(%)  7.6289E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -413.21051100076221     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       505.72802220391048     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:     3.99
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -413.211       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.18E+00  1.17E+00  2.81E+01  1.36E+00  7.41E-01  1.21E+01  1.54E+01
 


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
 #CPUT: Total CPU Time in Seconds,        4.042
Stop Time:
Fri Oct  1 16:35:00 CDT 2021
Sat Oct  2 00:58:50 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat25.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m25.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -125.865109866259        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7232E+02  2.3309E+01  8.8760E+01 -7.0819E+01  5.3319E+01  5.1952E+01 -2.5090E+01 -3.4261E+01 -6.7940E+01 -5.5187E+01
            -2.8327E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1278.93544484797        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:       88
 NPARAMETR:  1.0021E+00  1.0297E+00  1.1055E+00  1.0103E+00  1.1292E+00  7.7267E-01  8.8179E-01  9.2818E-01  9.2141E-01  7.1666E-01
             3.0209E+00
 PARAMETER:  1.0212E-01  1.2925E-01  2.0027E-01  1.1022E-01  2.2152E-01 -1.5790E-01 -2.5804E-02  2.5470E-02  1.8148E-02 -2.3315E-01
             1.2055E+00
 GRADIENT:   1.4244E+02 -7.2972E+01 -1.5573E+01 -9.5809E+01  3.7065E+01 -3.9071E+01  7.3596E-01  2.4887E+00 -1.2984E+01  6.3862E+00
            -1.3764E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1295.73903334925        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  9.7815E-01  1.3189E+00  3.8670E+00  9.5032E-01  1.9894E+00  9.8413E-01  4.1456E-01  4.3827E-01  1.1367E+00  2.2778E-01
             3.6257E+00
 PARAMETER:  7.7910E-02  3.7683E-01  1.4525E+00  4.9046E-02  7.8783E-01  8.4002E-02 -7.8053E-01 -7.2492E-01  2.2812E-01 -1.3794E+00
             1.3880E+00
 GRADIENT:   8.6961E+00 -1.5336E+01 -6.1740E-01 -1.0553E+01  2.4468E+01  4.1181E+01  2.8358E+00  7.8305E-03  1.5548E+01  1.1455E-01
             6.4152E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1304.79937853601        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      229
 NPARAMETR:  9.7314E-01  1.0703E+00  1.1260E+00  1.0512E+00  1.1189E+00  8.5020E-01  3.7058E-01  1.2591E-01  1.1067E+00  3.0064E-01
             3.5395E+00
 PARAMETER:  7.2775E-02  1.6798E-01  2.1867E-01  1.4989E-01  2.1237E-01 -6.2285E-02 -8.9270E-01 -1.9722E+00  2.0138E-01 -1.1018E+00
             1.3640E+00
 GRADIENT:   2.0154E+00 -2.2027E+00 -8.9264E-01 -7.6031E-01  1.4813E+00 -1.4395E+00  9.2633E-01  1.1124E-01  2.7758E+00  5.9224E-01
             3.2394E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1305.06533511646        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      300
 NPARAMETR:  9.7147E-01  1.0506E+00  1.1770E+00  1.0602E+00  1.1346E+00  8.5320E-01  1.6808E-01  9.9466E-02  1.1049E+00  2.0252E-01
             3.5485E+00
 PARAMETER:  7.1050E-02  1.4936E-01  2.6293E-01  1.5843E-01  2.2630E-01 -5.8765E-02 -1.6833E+00 -2.2079E+00  1.9974E-01 -1.4969E+00
             1.3665E+00
 GRADIENT:  -6.8431E-01 -2.8776E+00 -1.4900E-01 -2.5071E+00  6.3663E-01 -7.5525E-02  1.7782E-01  6.7320E-02  1.0567E+00  1.4514E-01
             2.6230E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1305.47665100365        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      417
 NPARAMETR:  9.8094E-01  1.0669E+00  1.2133E+00  1.0574E+00  1.1621E+00  8.5714E-01  1.0000E-02  1.2820E-02  1.1107E+00  3.0425E-02
             3.5858E+00
 PARAMETER:  8.0757E-02  1.6479E-01  2.9337E-01  1.5578E-01  2.5019E-01 -5.4154E-02 -5.4179E+00 -4.2567E+00  2.0498E-01 -3.3925E+00
             1.3770E+00
 GRADIENT:  -6.1400E+00 -3.5172E+00  5.2147E-01 -4.4562E+00 -1.1717E+00 -4.4094E-01  0.0000E+00  9.9438E-04  3.1702E-01  1.1570E-03
            -3.2615E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1305.63380930171        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      592
 NPARAMETR:  9.8442E-01  1.2391E+00  1.1799E+00  9.5478E-01  1.2401E+00  8.6040E-01  1.0000E-02  1.0000E-02  1.2291E+00  1.0000E-02
             3.6023E+00
 PARAMETER:  8.4297E-02  3.1440E-01  2.6544E-01  5.3728E-02  3.1521E-01 -5.0354E-02 -8.3505E+00 -5.9495E+00  3.0628E-01 -4.9085E+00
             1.3816E+00
 GRADIENT:  -2.4143E+00  3.4314E+00  3.8617E-01  3.9828E+00 -1.3566E+00  6.1974E-02  0.0000E+00  0.0000E+00 -3.3287E-02  0.0000E+00
            -1.5567E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1305.69186848132        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      770
 NPARAMETR:  9.8628E-01  1.3973E+00  1.1257E+00  8.4615E-01  1.3053E+00  8.6088E-01  1.0000E-02  1.0000E-02  1.3720E+00  1.0625E-02
             3.6132E+00
 PARAMETER:  8.6184E-02  4.3454E-01  2.1844E-01 -6.7055E-02  3.6641E-01 -4.9796E-02 -7.5227E+00 -5.6631E+00  4.1628E-01 -4.4446E+00
             1.3846E+00
 GRADIENT:   5.6408E-01  6.7433E-01  9.4563E-02  3.8675E-01 -2.3722E-01  9.9396E-02  0.0000E+00  0.0000E+00 -1.6460E-01  1.2112E-04
             1.8330E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1305.69227795854        NO. OF FUNC. EVALS.: 169
 CUMULATIVE NO. OF FUNC. EVALS.:      939
 NPARAMETR:  9.8607E-01  1.4037E+00  1.1205E+00  8.4121E-01  1.3071E+00  8.6065E-01  1.0000E-02  1.0000E-02  1.3813E+00  1.0000E-02
             3.6117E+00
 PARAMETER:  8.5976E-02  4.3908E-01  2.1382E-01 -7.2913E-02  3.6783E-01 -5.0065E-02 -7.4282E+00 -5.6170E+00  4.2300E-01 -4.8113E+00
             1.3842E+00
 GRADIENT:   1.1840E-01 -1.0834E-01 -2.6297E-02 -3.2486E-02  6.7331E-02  7.6525E-03  0.0000E+00  0.0000E+00 -6.6972E-04  0.0000E+00
             1.4697E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      939
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.6750E-03 -5.8940E-04  7.7481E-05 -4.8013E-04  3.4881E-05
 SE:             2.8421E-02  2.5220E-04  4.3767E-05  2.3271E-02  1.3404E-04
 N:                     100         100         100         100         100

 P VAL.:         8.6935E-01  1.9435E-02  7.6678E-02  9.8354E-01  7.9469E-01

 ETASHRINKSD(%)  4.7847E+00  9.9155E+01  9.9853E+01  2.2039E+01  9.9551E+01
 ETASHRINKVR(%)  9.3405E+00  9.9993E+01  1.0000E+02  3.9221E+01  9.9998E+01
 EBVSHRINKSD(%)  5.0737E+00  9.9215E+01  9.9793E+01  2.0785E+01  9.9551E+01
 EBVSHRINKVR(%)  9.8900E+00  9.9994E+01  1.0000E+02  3.7249E+01  9.9998E+01
 RELATIVEINF(%)  8.7577E+01  3.8676E-04  1.1872E-04  5.6383E+00  3.3866E-04
 EPSSHRINKSD(%)  1.9037E+01
 EPSSHRINKVR(%)  3.4451E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1305.6922779585377     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -570.54145139479954     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    10.11
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1305.692       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.86E-01  1.40E+00  1.12E+00  8.41E-01  1.31E+00  8.61E-01  1.00E-02  1.00E-02  1.38E+00  1.00E-02  3.61E+00
 


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
 #CPUT: Total CPU Time in Seconds,       10.146
Stop Time:
Sat Oct  2 00:59:02 CDT 2021

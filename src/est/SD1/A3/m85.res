Fri Oct  1 01:32:06 CDT 2021
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
$DATA ../../../../data/SD1/A3/dat85.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m85.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1531.56881111451        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6978E+02  1.4481E+02  2.2849E+02 -4.5202E+01  2.2461E+02  6.1397E+01 -1.7016E+02 -3.1933E+02 -7.4128E+01 -1.0852E+02
            -3.9028E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2876.95800704929        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.7449E-01  1.0097E+00  8.9726E-01  1.0532E+00  9.2401E-01  8.3119E-01  1.1169E+00  9.8315E-01  1.0089E+00  8.7582E-01
             2.3826E+00
 PARAMETER:  7.4157E-02  1.0968E-01 -8.4045E-03  1.5184E-01  2.0968E-02 -8.4895E-02  2.1057E-01  8.3011E-02  1.0890E-01 -3.2592E-02
             9.6817E-01
 GRADIENT:   9.6080E+01  1.2884E+01  4.9264E+00 -7.8164E+00 -1.0851E+01 -1.1569E+01 -6.8003E+00  1.1872E+01  3.1043E+00  1.6011E+01
             4.3103E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2889.70697621657        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.6775E-01  6.5386E-01  5.4467E-01  1.2854E+00  5.7797E-01  8.9090E-01  1.5009E+00  5.8475E-01  1.0203E+00  5.7714E-01
             2.2738E+00
 PARAMETER:  6.7221E-02 -3.2486E-01 -5.0758E-01  3.5105E-01 -4.4823E-01 -1.5526E-02  5.0608E-01 -4.3658E-01  1.2008E-01 -4.4967E-01
             9.2144E-01
 GRADIENT:   8.1607E+01  5.1746E+01 -4.1491E+01  1.8215E+02  1.5707E+02  1.2252E+01  2.2468E+01  7.4868E+00  2.9870E+00 -7.6818E+00
             1.2740E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2896.14003030099        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      337
 NPARAMETR:  9.6365E-01  6.3647E-01  5.3624E-01  1.2617E+00  5.6029E-01  8.5753E-01  1.5498E+00  1.9502E-01  1.0221E+00  7.6795E-01
             2.2995E+00
 PARAMETER:  6.2975E-02 -3.5182E-01 -5.2318E-01  3.3244E-01 -4.7931E-01 -5.3694E-02  5.3816E-01 -1.5346E+00  1.2188E-01 -1.6403E-01
             9.3267E-01
 GRADIENT:   3.5590E+00  2.7309E+01 -4.9809E+01  6.1594E+01  5.3450E+01 -5.3900E+00  2.5821E+01  1.0184E+00  2.1192E+00  1.3955E+01
             2.4824E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2924.31068006244        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      515
 NPARAMETR:  9.6023E-01  2.8200E-01  1.9240E-01  1.1491E+00  2.3542E-01  8.7326E-01  1.0660E+00  1.0000E-02  1.1431E+00  7.5474E-01
             2.2221E+00
 PARAMETER:  5.9417E-02 -1.1658E+00 -1.5482E+00  2.3896E-01 -1.3464E+00 -3.5525E-02  1.6390E-01 -1.2214E+01  2.3379E-01 -1.8138E-01
             8.9843E-01
 GRADIENT:  -1.3115E+01  6.5353E+01 -7.3169E+01  3.1054E+01  5.2367E+01 -3.8314E+00 -2.6223E+01  0.0000E+00 -1.5973E+01 -6.4821E+00
             6.9653E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2947.32959973493        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      691
 NPARAMETR:  9.6165E-01  1.7839E-01  1.0120E-01  9.1136E-01  1.5494E-01  8.8102E-01  1.3413E+00  1.0000E-02  1.5654E+00  8.1397E-01
             2.0338E+00
 PARAMETER:  6.0897E-02 -1.6238E+00 -2.1907E+00  7.1854E-03 -1.7647E+00 -2.6680E-02  3.9365E-01 -1.6610E+01  5.4813E-01 -1.0583E-01
             8.0989E-01
 GRADIENT:   6.0257E-01 -1.7152E+00 -6.0421E+00  6.3539E+00  3.2892E+00 -3.0731E-02 -1.3983E+00  0.0000E+00  1.9912E+00 -3.9581E+00
            -1.6330E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2947.48148270628        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      871             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6200E-01  1.8127E-01  1.0367E-01  9.1253E-01  1.5645E-01  8.8070E-01  1.3423E+00  1.0000E-02  1.5329E+00  8.2022E-01
             2.0505E+00
 PARAMETER:  6.1261E-02 -1.6078E+00 -2.1665E+00  8.4632E-03 -1.7550E+00 -2.7039E-02  3.9439E-01 -1.6596E+01  5.2716E-01 -9.8189E-02
             8.1810E-01
 GRADIENT:   6.6431E+01  1.0913E+02  1.1776E+02  9.7000E+00  7.8202E+02  4.6567E+00  4.4678E+00  0.0000E+00  1.2389E+01  2.0040E+00
             1.4506E+01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2947.48185253528        NO. OF FUNC. EVALS.: 121
 CUMULATIVE NO. OF FUNC. EVALS.:      992
 NPARAMETR:  9.6199E-01  1.8048E-01  1.0362E-01  9.1239E-01  1.5609E-01  8.8073E-01  1.3421E+00  1.0000E-02  1.5334E+00  8.2186E-01
             2.0506E+00
 PARAMETER:  6.1246E-02 -1.6084E+00 -2.1669E+00  8.4198E-03 -1.7545E+00 -2.7031E-02  3.9428E-01 -1.6596E+01  5.2717E-01 -9.7189E-02
             8.1812E-01
 GRADIENT:   5.7202E-03  2.1655E+01  2.2257E-01  1.3622E-01  2.4612E+01 -1.3419E-02  1.6594E-02  0.0000E+00 -1.4838E-01 -2.4679E-01
            -3.8421E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      992
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.1948E-03  9.0909E-03  3.1633E-04 -6.9914E-03  5.2932E-03
 SE:             2.9391E-02  2.5866E-02  2.7573E-04  2.6644E-02  2.8265E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4047E-01  7.2524E-01  2.5128E-01  7.9302E-01  8.5145E-01

 ETASHRINKSD(%)  1.5350E+00  1.3346E+01  9.9076E+01  1.0738E+01  5.3076E+00
 ETASHRINKVR(%)  3.0464E+00  2.4911E+01  9.9991E+01  2.0323E+01  1.0334E+01
 EBVSHRINKSD(%)  1.6705E+00  1.2623E+01  9.9226E+01  7.5488E+00  6.5268E+00
 EBVSHRINKVR(%)  3.3131E+00  2.3653E+01  9.9994E+01  1.4528E+01  1.2628E+01
 RELATIVEINF(%)  9.6619E+01  2.9397E+01  8.7879E-04  4.5271E+01  1.5285E+01
 EPSSHRINKSD(%)  2.0549E+01
 EPSSHRINKVR(%)  3.6876E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2947.4818525352839     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1293.3924927668731     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.58
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2947.482       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.62E-01  1.81E-01  1.04E-01  9.12E-01  1.57E-01  8.81E-01  1.34E+00  1.00E-02  1.53E+00  8.21E-01  2.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.648
Stop Time:
Fri Oct  1 01:32:33 CDT 2021

Fri Oct  1 14:08:00 CDT 2021
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
$DATA ../../../../data/SD2/TD1/dat31.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m31.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2059.82670127005        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7108E+02 -1.2234E+01 -2.1954E+01  4.2022E+01  8.4246E+01  2.8087E+01  8.2629E+00 -5.9282E-01  1.4394E+01 -1.4400E+01
            -5.8529E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2065.60455298652        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  9.7767E-01  1.0201E+00  9.9401E-01  1.0236E+00  9.5609E-01  1.0207E+00  9.7980E-01  1.0036E+00  9.7792E-01  1.0189E+00
             1.0699E+00
 PARAMETER:  7.7414E-02  1.1991E-01  9.3988E-02  1.2334E-01  5.5102E-02  1.2049E-01  7.9590E-02  1.0363E-01  7.7670E-02  1.1876E-01
             1.6761E-01
 GRADIENT:   1.4649E+00  3.6329E+00 -2.3650E+00  1.0664E+01  1.2250E+01 -1.9429E+00  5.2880E+00  2.7022E-01  4.3208E+00 -2.2857E+00
            -5.8696E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2066.11542135512        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  9.7841E-01  1.0051E+00  9.6780E-01  1.0268E+00  9.3159E-01  1.0233E+00  8.5135E-01  9.3713E-01  9.8519E-01  1.0285E+00
             1.0630E+00
 PARAMETER:  7.8175E-02  1.0511E-01  6.7268E-02  1.2640E-01  2.9142E-02  1.2307E-01 -6.0928E-02  3.5068E-02  8.5082E-02  1.2813E-01
             1.6108E-01
 GRADIENT:   2.9974E+00  2.6405E+00  1.0980E+00  5.1942E+00  2.5549E+00 -9.0501E-01  1.3523E-01 -6.4328E-01 -7.6450E-01 -1.0539E+00
            -5.2772E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2066.64861208581        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.7844E-01  1.2084E+00  6.4880E-01  8.8545E-01  8.4964E-01  1.0288E+00  8.3979E-01  5.9061E-01  1.0513E+00  9.4764E-01
             1.0690E+00
 PARAMETER:  7.8203E-02  2.8932E-01 -3.3263E-01 -2.1663E-02 -6.2941E-02  1.2841E-01 -7.4607E-02 -4.2661E-01  1.5003E-01  4.6224E-02
             1.6676E-01
 GRADIENT:  -3.2722E+00  1.2936E+01  1.7407E+00  9.3460E+00 -1.5039E+01 -1.0808E-01  2.2512E-01  1.3323E+00 -1.9405E+00  2.8385E+00
             4.4956E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2067.19484509846        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.8098E-01  1.3898E+00  5.7194E-01  7.6481E-01  9.1545E-01  1.0293E+00  7.7802E-01  4.0098E-01  1.1729E+00  9.7204E-01
             1.0623E+00
 PARAMETER:  8.0793E-02  4.2915E-01 -4.5873E-01 -1.6813E-01  1.1663E-02  1.2893E-01 -1.5100E-01 -8.1384E-01  2.5951E-01  7.1638E-02
             1.6047E-01
 GRADIENT:   8.0681E-01  1.5576E+00 -1.3528E+00  3.0068E+00  1.5070E+00 -3.7666E-01 -1.9145E-01  3.5036E-01  1.7281E-02  4.3580E-01
            -1.6840E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2067.28142598427        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:      847
 NPARAMETR:  9.7856E-01  1.3951E+00  5.6624E-01  7.5745E-01  9.1653E-01  1.0289E+00  7.8087E-01  1.6834E-01  1.1783E+00  9.7383E-01
             1.0650E+00
 PARAMETER:  7.8327E-02  4.3295E-01 -4.6874E-01 -1.7779E-01  1.2842E-02  1.2854E-01 -1.4734E-01 -1.6818E+00  2.6409E-01  7.3479E-02
             1.6296E-01
 GRADIENT:  -4.3648E+00 -5.4478E-01  2.6197E+00 -2.3947E+00  1.6722E-01 -5.2728E-01 -4.5712E-01  1.1596E-02 -2.0568E-01 -8.1606E-01
            -7.9565E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2067.33718313295        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1022
 NPARAMETR:  9.8027E-01  1.3882E+00  5.5076E-01  7.6102E-01  9.0182E-01  1.0306E+00  7.8743E-01  8.3915E-02  1.1695E+00  9.6431E-01
             1.0648E+00
 PARAMETER:  8.0077E-02  4.2798E-01 -4.9646E-01 -1.7309E-01 -3.3404E-03  1.3016E-01 -1.3897E-01 -2.3780E+00  2.5654E-01  6.3654E-02
             1.6274E-01
 GRADIENT:  -9.0610E-01 -1.0148E+00 -3.8229E-01 -1.0372E+00 -4.5608E-01  3.8098E-02  2.3796E-02  1.3636E-02 -1.9815E-01  2.8527E-01
            -3.0682E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2067.34445028943        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1198
 NPARAMETR:  9.8085E-01  1.3892E+00  5.5241E-01  7.6136E-01  9.0337E-01  1.0306E+00  7.8774E-01  2.1567E-02  1.1705E+00  9.6503E-01
             1.0651E+00
 PARAMETER:  8.0669E-02  4.2870E-01 -4.9347E-01 -1.7265E-01 -1.6280E-03  1.3016E-01 -1.3859E-01 -3.7366E+00  2.5747E-01  6.4399E-02
             1.6310E-01
 GRADIENT:   3.2967E-01  4.4768E-01  1.6565E-01 -2.2836E-02 -3.7265E-01  5.0943E-02  1.7991E-02  8.0442E-04 -9.5004E-02  8.0191E-03
             4.5098E-02

0ITERATION NO.:   39    OBJECTIVE VALUE:  -2067.34528975262        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     1327
 NPARAMETR:  9.8139E-01  1.3885E+00  5.5257E-01  7.6114E-01  9.0382E-01  1.0309E+00  7.8743E-01  1.0000E-02  1.1715E+00  9.6542E-01
             1.0651E+00
 PARAMETER:  8.1217E-02  4.2820E-01 -4.9318E-01 -1.7293E-01 -1.1223E-03  1.3047E-01 -1.3899E-01 -4.9610E+00  2.5825E-01  6.4805E-02
             1.6304E-01
 GRADIENT:   1.4856E+00 -1.1281E+00 -1.7567E-01 -5.6937E-01  5.3382E-01  1.7593E-01  1.6078E-02  0.0000E+00  6.1854E-02  1.7085E-02
             3.1008E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1327
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.3100E-04 -2.5412E-02 -2.8125E-04  1.6152E-02 -2.5120E-02
 SE:             2.9850E-02  2.1113E-02  1.4190E-04  2.5267E-02  2.3599E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9115E-01  2.2874E-01  4.7470E-02  5.2266E-01  2.8712E-01

 ETASHRINKSD(%)  1.0000E-10  2.9269E+01  9.9525E+01  1.5351E+01  2.0939E+01
 ETASHRINKVR(%)  1.0000E-10  4.9971E+01  9.9998E+01  2.8345E+01  3.7494E+01
 EBVSHRINKSD(%)  3.7403E-01  2.9093E+01  9.9575E+01  1.5700E+01  2.0427E+01
 EBVSHRINKVR(%)  7.4666E-01  4.9723E+01  9.9998E+01  2.8935E+01  3.6681E+01
 RELATIVEINF(%)  9.9194E+01  3.4671E+00  3.5997E-04  6.2399E+00  9.1974E+00
 EPSSHRINKSD(%)  3.3852E+01
 EPSSHRINKVR(%)  5.6244E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2067.3452897526240     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1148.4067565479513     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.56
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2067.345       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.81E-01  1.39E+00  5.53E-01  7.61E-01  9.04E-01  1.03E+00  7.87E-01  1.00E-02  1.17E+00  9.65E-01  1.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.607
Stop Time:
Fri Oct  1 14:08:21 CDT 2021

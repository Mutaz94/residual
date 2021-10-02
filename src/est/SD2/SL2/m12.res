Fri Oct  1 12:08:55 CDT 2021
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
$DATA ../../../../data/SD2/SL2/dat12.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m12.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2089.00159222432        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3019E+02 -3.2506E+01 -3.3776E+01  2.6946E+01  3.7157E+01  5.3689E+01 -1.4238E+01  9.9722E+00  7.1665E+00  9.3780E-01
            -4.7446E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2093.47532738571        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  1.0061E+00  1.1313E+00  1.1052E+00  1.0279E+00  1.0529E+00  1.0067E+00  1.0998E+00  9.5302E-01  9.9347E-01  9.9745E-01
             1.0981E+00
 PARAMETER:  1.0612E-01  2.2339E-01  2.0001E-01  1.2752E-01  1.5153E-01  1.0670E-01  1.9515E-01  5.1882E-02  9.3450E-02  9.7445E-02
             1.9354E-01
 GRADIENT:   1.3108E+01  5.4037E+01 -8.2511E-01  8.0352E+01 -1.3173E+01  1.0191E+00 -7.8824E+00  1.6920E+00 -1.7182E-01 -5.6086E+00
             2.5075E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2094.89721589051        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      356
 NPARAMETR:  1.0060E+00  1.0810E+00  1.2189E+00  1.0500E+00  1.0692E+00  9.9761E-01  1.2358E+00  9.1919E-01  9.3779E-01  1.0793E+00
             1.0796E+00
 PARAMETER:  1.0600E-01  1.7785E-01  2.9793E-01  1.4882E-01  1.6688E-01  9.7610E-02  3.1173E-01  1.5739E-02  3.5768E-02  1.7631E-01
             1.7660E-01
 GRADIENT:   1.5613E+01  5.0214E+01  1.5926E+01  5.3223E+01 -2.9799E+01 -2.1434E+00 -9.0924E-02 -3.0983E+00 -2.1780E+00  1.3520E+00
             1.2214E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2096.99818323178        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      534
 NPARAMETR:  9.9876E-01  1.0346E+00  1.1180E+00  1.0279E+00  1.0458E+00  1.0029E+00  1.2537E+00  8.5225E-01  9.3079E-01  1.0344E+00
             1.0601E+00
 PARAMETER:  9.8761E-02  1.3399E-01  2.1151E-01  1.2749E-01  1.4478E-01  1.0293E-01  3.2608E-01 -5.9877E-02  2.8277E-02  1.3381E-01
             1.5837E-01
 GRADIENT:  -1.0274E-01 -1.7377E-01 -7.7081E-01  4.7378E-01  5.3285E-01  1.8094E-02 -4.9205E-01  7.2311E-02  3.1057E-03 -1.2944E-01
            -2.1373E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2097.02311329320        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      711
 NPARAMETR:  9.9776E-01  9.1879E-01  1.2278E+00  1.1101E+00  1.0387E+00  1.0015E+00  1.3967E+00  9.5162E-01  8.7513E-01  1.0433E+00
             1.0616E+00
 PARAMETER:  9.7755E-02  1.5299E-02  3.0522E-01  2.0442E-01  1.3800E-01  1.0148E-01  4.3410E-01  5.0412E-02 -3.3382E-02  1.4235E-01
             1.5977E-01
 GRADIENT:   4.4288E-01  5.7027E+00 -1.0441E+00  8.7813E+00 -7.3098E-01 -3.6645E-02  5.2138E-01  4.0845E-01 -2.2661E-01  6.0236E-01
             8.6074E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2097.17334285964        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      890
 NPARAMETR:  9.9492E-01  7.0223E-01  1.4283E+00  1.2507E+00  1.0253E+00  9.9890E-01  1.6914E+00  1.0956E+00  7.9732E-01  1.0457E+00
             1.0599E+00
 PARAMETER:  9.4908E-02 -2.5349E-01  4.5651E-01  3.2371E-01  1.2500E-01  9.8897E-02  6.2556E-01  1.9132E-01 -1.2650E-01  1.4469E-01
             1.5820E-01
 GRADIENT:  -2.8662E-01  5.0805E+00  2.4013E+00  8.9201E+00 -5.4234E+00 -3.3546E-02 -1.4767E+00 -4.2174E-01 -1.5010E+00 -4.9072E-01
            -1.0618E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2097.30423619610        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1074
 NPARAMETR:  9.9430E-01  6.1879E-01  1.5350E+00  1.2997E+00  1.0380E+00  9.9808E-01  1.8274E+00  1.1879E+00  7.8158E-01  1.0635E+00
             1.0609E+00
 PARAMETER:  9.4283E-02 -3.7999E-01  5.2855E-01  3.6214E-01  1.3727E-01  9.8079E-02  7.0291E-01  2.7221E-01 -1.4644E-01  1.6158E-01
             1.5915E-01
 GRADIENT:   6.2551E-01 -3.6161E-01 -3.3836E-01 -1.7923E+00 -6.3458E-03  7.1736E-02 -2.0414E+00  1.3676E-01  2.1980E-02 -1.8690E-01
            -2.0620E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2097.33080010785        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1249            RESET HESSIAN, TYPE II
 NPARAMETR:  9.9464E-01  6.1710E-01  1.5379E+00  1.2978E+00  1.0381E+00  9.9832E-01  1.8743E+00  1.1869E+00  7.7755E-01  1.0656E+00
             1.0609E+00
 PARAMETER:  9.4629E-02 -3.8273E-01  5.3042E-01  3.6069E-01  1.3742E-01  9.8317E-02  7.2823E-01  2.7133E-01 -1.5161E-01  1.6352E-01
             1.5915E-01
 GRADIENT:   3.8129E+02  5.0357E+01  8.1377E+00  4.2146E+02  6.6115E+00  4.8624E+01  3.0591E+01  4.9006E-01  9.4544E+00  1.3962E+00
             1.6890E+00

0ITERATION NO.:   38    OBJECTIVE VALUE:  -2097.33227495573        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1342
 NPARAMETR:  9.9430E-01  6.1759E-01  1.5361E+00  1.2978E+00  1.0386E+00  9.9807E-01  1.8721E+00  1.1883E+00  7.7637E-01  1.0649E+00
             1.0609E+00
 PARAMETER:  9.4289E-02 -3.8193E-01  5.2926E-01  3.6068E-01  1.3788E-01  9.8068E-02  7.2709E-01  2.7250E-01 -1.5313E-01  1.6292E-01
             1.5908E-01
 GRADIENT:   7.1910E-01 -3.6873E-01  1.1024E-01 -6.9221E+00  7.7121E-02  9.2681E-02  5.6414E-02  9.3769E-03  1.8057E-01  4.9278E-02
             3.3647E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1342
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1303E-03  1.3498E-02 -3.6030E-02 -1.4685E-02 -3.1410E-02
 SE:             2.9875E-02  1.9144E-02  1.5334E-02  2.3542E-02  2.1396E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6982E-01  4.8078E-01  1.8794E-02  5.3278E-01  1.4210E-01

 ETASHRINKSD(%)  1.0000E-10  3.5864E+01  4.8628E+01  2.1131E+01  2.8320E+01
 ETASHRINKVR(%)  1.0000E-10  5.8866E+01  7.3609E+01  3.7798E+01  4.8620E+01
 EBVSHRINKSD(%)  3.9633E-01  3.8383E+01  5.2976E+01  1.9759E+01  2.4668E+01
 EBVSHRINKVR(%)  7.9110E-01  6.2033E+01  7.7887E+01  3.5613E+01  4.3251E+01
 RELATIVEINF(%)  9.8423E+01  2.8085E+00  4.9044E+00  4.9034E+00  1.4666E+01
 EPSSHRINKSD(%)  3.3607E+01
 EPSSHRINKVR(%)  5.5920E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2097.3322749557269     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1178.3937417510542     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.74
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2097.332       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.94E-01  6.18E-01  1.54E+00  1.30E+00  1.04E+00  9.98E-01  1.87E+00  1.19E+00  7.76E-01  1.06E+00  1.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.778
Stop Time:
Fri Oct  1 12:09:18 CDT 2021
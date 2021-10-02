Sat Oct  2 04:02:26 CDT 2021
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
$DATA ../../../../data/SD4/S2/dat64.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m64.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1680.57098368911        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4188E+02 -3.3519E+01 -6.0433E+01  6.3748E+01  9.7557E+01  2.7930E+01 -4.3264E+00  3.4356E+00  2.1902E+01  2.0329E+01
            -1.7886E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1688.71582357943        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.9532E-01  1.1073E+00  1.1223E+00  9.4672E-01  1.0105E+00  1.1903E+00  1.0353E+00  9.9318E-01  9.1181E-01  8.3865E-01
             1.0195E+00
 PARAMETER:  9.5310E-02  2.0195E-01  2.1541E-01  4.5244E-02  1.1047E-01  2.7419E-01  1.3464E-01  9.3152E-02  7.6710E-03 -7.5961E-02
             1.1930E-01
 GRADIENT:  -1.5341E+01 -1.3616E+01  1.7476E+01 -2.6447E+01 -3.1956E+00  3.5062E+01 -9.8451E+00 -9.8207E+00 -3.1516E+00 -4.9985E-01
            -3.2887E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1690.44255951696        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.9259E-01  1.0896E+00  9.4863E-01  9.5767E-01  9.0873E-01  1.1659E+00  1.1962E+00  1.2478E+00  7.9264E-01  6.1829E-01
             1.0358E+00
 PARAMETER:  9.2565E-02  1.8585E-01  4.7266E-02  5.6752E-02  4.2885E-03  2.5346E-01  2.7911E-01  3.2136E-01 -1.3239E-01 -3.8080E-01
             1.3517E-01
 GRADIENT:  -2.2322E+01  7.9683E+00  1.4284E+01 -1.6004E+01 -3.0580E+01  2.7549E+01 -2.0794E+00  4.6059E+00 -6.2271E+00 -2.8063E+00
             1.0764E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1693.47549627847        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  1.0074E+00  9.5204E-01  8.4598E-01  1.0376E+00  8.2652E-01  1.0760E+00  1.3463E+00  8.3392E-01  7.8779E-01  6.1748E-01
             1.0224E+00
 PARAMETER:  1.0735E-01  5.0853E-02 -6.7263E-02  1.3688E-01 -9.0532E-02  1.7322E-01  3.9733E-01 -8.1623E-02 -1.3852E-01 -3.8211E-01
             1.2217E-01
 GRADIENT:   1.3362E+00  4.9991E+00  1.5103E+00  5.0835E+00 -9.6809E-01 -2.6329E+00 -1.4454E-01 -2.1862E-01  6.2792E-01 -4.8873E-01
             2.1121E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1693.63884631042        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  1.0060E+00  8.1983E-01  8.3654E-01  1.1072E+00  7.7332E-01  1.0823E+00  1.5327E+00  7.8557E-01  7.3660E-01  5.8535E-01
             1.0190E+00
 PARAMETER:  1.0602E-01 -9.8659E-02 -7.8477E-02  2.0185E-01 -1.5706E-01  1.7913E-01  5.2704E-01 -1.4134E-01 -2.0571E-01 -4.3554E-01
             1.1879E-01
 GRADIENT:  -5.5087E-02  4.6894E-01  1.6312E+00 -2.4774E+00 -3.1949E+00  1.4633E-01  1.2728E-01 -2.4190E-03 -1.2271E-01 -3.6715E-03
             2.1861E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1693.64103553802        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      881             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0066E+00  8.1058E-01  8.4585E-01  1.1137E+00  7.7597E-01  1.0829E+00  1.5461E+00  7.9386E-01  7.3468E-01  5.8950E-01
             1.0186E+00
 PARAMETER:  1.0658E-01 -1.1000E-01 -6.7411E-02  2.0772E-01 -1.5364E-01  1.7961E-01  5.3576E-01 -1.3085E-01 -2.0832E-01 -4.2847E-01
             1.1842E-01
 GRADIENT:   4.5217E+02  2.4613E+01  2.1307E+00  2.0950E+02  1.6594E+01  1.0084E+02  2.4055E+01  3.9164E-01  9.1311E+00  1.3140E+00
             1.0558E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1693.64168547512        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1060
 NPARAMETR:  1.0068E+00  8.1087E-01  8.4608E-01  1.1136E+00  7.7600E-01  1.0833E+00  1.5461E+00  7.9284E-01  7.3488E-01  5.9043E-01
             1.0184E+00
 PARAMETER:  1.0681E-01 -1.0964E-01 -6.7139E-02  2.0762E-01 -1.5360E-01  1.8001E-01  5.3572E-01 -1.3214E-01 -2.0804E-01 -4.2690E-01
             1.1825E-01
 GRADIENT:   1.7671E+00 -2.9211E-01 -5.3655E-01 -7.2336E-01  5.2326E-01  5.5769E-01  1.7753E-01  8.6126E-02  6.4651E-02  4.2555E-04
             6.8214E-02

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1693.64177883010        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1117
 NPARAMETR:  1.0068E+00  8.1106E-01  8.4646E-01  1.1138E+00  7.7595E-01  1.0831E+00  1.5458E+00  7.9179E-01  7.3483E-01  5.9044E-01
             1.0184E+00
 PARAMETER:  1.0677E-01 -1.0942E-01 -6.6696E-02  2.0782E-01 -1.5366E-01  1.7982E-01  5.3552E-01 -1.3346E-01 -2.0812E-01 -4.2688E-01
             1.1820E-01
 GRADIENT:   1.6800E+00  1.2055E-01 -4.0429E-02 -4.1862E-01 -1.9018E-01  4.8191E-01  1.3423E-01 -9.4494E-03  6.9789E-03 -4.8567E-02
             1.3710E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1117
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.4856E-04  1.2765E-02 -2.8701E-02 -1.5933E-02 -1.3551E-02
 SE:             2.9866E-02  2.2756E-02  1.4646E-02  2.2803E-02  1.8067E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8267E-01  5.7483E-01  5.0030E-02  4.8473E-01  4.5324E-01

 ETASHRINKSD(%)  1.0000E-10  2.3764E+01  5.0936E+01  2.3606E+01  3.9474E+01
 ETASHRINKVR(%)  1.0000E-10  4.1880E+01  7.5927E+01  4.1640E+01  6.3366E+01
 EBVSHRINKSD(%)  4.0616E-01  2.3960E+01  5.2761E+01  2.3452E+01  3.8559E+01
 EBVSHRINKVR(%)  8.1066E-01  4.2179E+01  7.7685E+01  4.1405E+01  6.2250E+01
 RELATIVEINF(%)  9.8753E+01  5.9490E+00  1.8739E+00  6.3249E+00  3.5329E+00
 EPSSHRINKSD(%)  4.3945E+01
 EPSSHRINKVR(%)  6.8578E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1693.6417788301021     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -958.49095226636393     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.78
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1693.642       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  8.11E-01  8.46E-01  1.11E+00  7.76E-01  1.08E+00  1.55E+00  7.92E-01  7.35E-01  5.90E-01  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       14.817
Stop Time:
Sat Oct  2 04:02:42 CDT 2021
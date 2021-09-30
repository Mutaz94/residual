Wed Sep 29 10:50:39 CDT 2021
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
$DATA ../../../../data/int/All/dat94.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m94.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   51865.1249323508        NO. OF FUNC. EVALS.:   9
 CUMULATIVE NO. OF FUNC. EVALS.:        9
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
 GRADIENT:   1.3526E+03  9.0830E+02 -1.4008E+03 -1.4467E+03 -2.5463E+03 -1.4902E+03 -1.0157E+05

0ITERATION NO.:    5    OBJECTIVE VALUE:   13332.7109334882        NO. OF FUNC. EVALS.:  80
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  1.0653E+00  1.1164E+00  1.4478E+00  2.0553E+00  1.8451E+00  1.1775E+00  1.8303E+00
 PARAMETER:  1.6322E-01  2.1011E-01  4.7006E-01  8.2040E-01  7.1255E-01  2.6335E-01  7.0450E-01
 GRADIENT:   2.1824E+02  1.8868E+02 -4.6599E+02 -1.0334E+03 -3.5832E+02 -3.7825E+02 -2.9721E+04

0ITERATION NO.:   10    OBJECTIVE VALUE:   12389.3768734305        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      208
 NPARAMETR:  5.3858E+00  5.5537E-01  9.1199E-01  2.6834E+00  1.7969E+00  2.6672E+00  1.9327E+00
 PARAMETER:  1.7838E+00 -4.8811E-01  7.8705E-03  1.0871E+00  6.8604E-01  1.0810E+00  7.5893E-01
 GRADIENT:   8.6860E+02 -2.6498E+02 -2.3110E+02 -5.1127E+03 -1.0718E+03 -1.4614E+02 -2.6468E+04

0ITERATION NO.:   15    OBJECTIVE VALUE:   2720.51774575447        NO. OF FUNC. EVALS.: 120
 CUMULATIVE NO. OF FUNC. EVALS.:      328
 NPARAMETR:  7.6062E-01  1.4938E+00  9.8580E-01  2.3669E+00  1.8692E+00  5.2869E+00  3.4515E+00
 PARAMETER: -1.7362E-01  5.0129E-01  8.5703E-02  9.6159E-01  7.2552E-01  1.7652E+00  1.3388E+00
 GRADIENT:  -1.5476E+01  2.6443E+02 -6.7543E+01 -1.2620E+02 -7.4799E+02  9.6437E+01 -8.0448E+03

0ITERATION NO.:   20    OBJECTIVE VALUE:  -572.910057069349        NO. OF FUNC. EVALS.: 115
 CUMULATIVE NO. OF FUNC. EVALS.:      443
 NPARAMETR:  1.0343E+00  1.4650E+00  2.8260E+00  3.0951E+00  2.3235E+00  4.1262E+00  1.2355E+01
 PARAMETER:  1.3372E-01  4.8186E-01  1.1389E+00  1.2298E+00  9.4307E-01  1.5173E+00  2.6141E+00
 GRADIENT:  -2.8428E+01 -1.9832E+01  6.7001E+00  5.6405E+01 -1.1685E+02  9.3329E+01  9.2022E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -672.276472957520        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      560
 NPARAMETR:  1.0371E+00  1.5327E+00  2.5559E+00  2.1810E+00  4.0068E+00  1.4040E+00  1.1392E+01
 PARAMETER:  1.3646E-01  5.2704E-01  1.0384E+00  8.7980E-01  1.4880E+00  4.3936E-01  2.5329E+00
 GRADIENT:   2.4349E+00  2.9462E+00  9.4848E+00 -3.1655E+00  5.5002E+01  2.8867E+01 -2.2563E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -687.627226558923        NO. OF FUNC. EVALS.: 106
 CUMULATIVE NO. OF FUNC. EVALS.:      666
 NPARAMETR:  1.0401E+00  1.4759E+00  2.5476E+00  2.1747E+00  3.9663E+00  1.3381E-01  1.1415E+01
 PARAMETER:  1.3933E-01  4.8925E-01  1.0351E+00  8.7687E-01  1.4778E+00 -1.9113E+00  2.5350E+00
 GRADIENT:   1.1163E+01  1.9408E+01  1.3127E+01  1.2165E+01  1.1219E+02  2.7444E-01  3.2053E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -688.158157288353        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      716
 NPARAMETR:  1.0398E+00  1.4724E+00  2.5397E+00  2.1660E+00  3.6957E+00  9.4684E-02  1.0931E+01
 PARAMETER:  1.3902E-01  4.8693E-01  1.0321E+00  8.7290E-01  1.4072E+00 -2.2572E+00  2.4916E+00
 GRADIENT:   1.8929E+01  2.3157E+01  1.2568E+01  1.1101E+01  8.8691E+01  1.3942E-01 -4.8042E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -688.675149460773        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      766
 NPARAMETR:  1.0392E+00  1.4654E+00  2.5243E+00  2.1512E+00  3.2864E+00  5.6982E-02  1.0893E+01
 PARAMETER:  1.3846E-01  4.8212E-01  1.0260E+00  8.6602E-01  1.2898E+00 -2.7650E+00  2.4882E+00
 GRADIENT:   1.8531E+01  2.2588E+01  1.0644E+01  9.7775E+00  3.8326E+01  5.1650E-02 -5.9575E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -688.810575864110        NO. OF FUNC. EVALS.:  50
 CUMULATIVE NO. OF FUNC. EVALS.:      816
 NPARAMETR:  1.0389E+00  1.4614E+00  2.5160E+00  2.1440E+00  3.1354E+00  4.6763E-02  1.1040E+01
 PARAMETER:  1.3820E-01  4.7937E-01  1.0227E+00  8.6266E-01  1.2428E+00 -2.9627E+00  2.5015E+00
 GRADIENT:   1.5335E+01  2.0180E+01  9.6238E+00  8.9700E+00  1.5219E+01  3.5123E-02 -3.6357E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -692.061339279751        NO. OF FUNC. EVALS.: 105
 CUMULATIVE NO. OF FUNC. EVALS.:      921            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0361E+00  1.4982E+00  2.4623E+00  2.1854E+00  3.3953E+00  3.8214E-02  1.1538E+01
 PARAMETER:  1.3545E-01  5.0428E-01  1.0011E+00  8.8180E-01  1.3224E+00 -3.1646E+00  2.5456E+00
 GRADIENT:   6.3971E+00  2.1837E+01  1.7405E+00  1.5219E+01  5.1199E+01  2.2952E-02  4.4471E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -692.068188871521        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:     1038
 NPARAMETR:  1.0361E+00  1.4967E+00  2.4698E+00  2.1833E+00  3.3804E+00  1.4223E-02  1.1553E+01
 PARAMETER:  1.3546E-01  5.0325E-01  1.0041E+00  8.8084E-01  1.3180E+00 -4.1529E+00  2.5469E+00
 GRADIENT:   1.7935E-01  3.2168E-01  4.7764E-02  1.5802E-01  3.6910E-01  2.9865E-03  7.5882E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -692.074287126377        NO. OF FUNC. EVALS.: 107
 CUMULATIVE NO. OF FUNC. EVALS.:     1145
 NPARAMETR:  1.0355E+00  1.4930E+00  2.4690E+00  2.1847E+00  3.3956E+00  1.0000E-02  1.1544E+01
 PARAMETER:  1.3491E-01  5.0077E-01  1.0038E+00  8.8149E-01  1.3225E+00 -4.5946E+00  2.5462E+00
 GRADIENT:   1.6379E-01 -5.1133E-02  1.3302E-02  3.3225E-01  2.0079E+00  0.0000E+00 -1.7319E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1145
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.7818E-03 -6.7389E-03 -9.4423E-05
 SE:             2.7907E-02  2.9614E-02  9.1218E-05
 N:                     100         100         100

 P VAL.:         7.2595E-01  8.1999E-01  3.0061E-01

 ETASHRINKSD(%)  6.5090E+00  7.9019E-01  9.9694E+01
 ETASHRINKVR(%)  1.2594E+01  1.5741E+00  9.9999E+01
 EBVSHRINKSD(%)  7.5129E+00  1.6084E+00  9.9587E+01
 EBVSHRINKVR(%)  1.4461E+01  3.1909E+00  9.9998E+01
 RELATIVEINF(%)  8.5433E+01  9.5407E+01  1.6764E-03
 EPSSHRINKSD(%)  6.5209E+00
 EPSSHRINKVR(%)  1.2617E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -692.07428712637716     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       962.01507264203360     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           300
  
 #TERE:
 Elapsed estimation  time in seconds:    25.89
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0INVERSE COVARIANCE MATRIX SET TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S
 Elapsed covariance  time in seconds:     4.30
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -692.074       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         1.04E+00  1.49E+00  2.47E+00  2.18E+00  3.40E+00  1.00E-02  1.15E+01
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7     
 
         9.32E-02  1.67E-01  1.55E-01  1.54E-01  3.79E-01  0.00E+00  1.40E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        8.69E-03
 
 TH 2
+        9.15E-03  2.78E-02
 
 TH 3
+        9.63E-04  3.58E-03  2.39E-02
 
 TH 4
+        1.95E-03  4.43E-03  2.44E-04  2.37E-02
 
 TH 5
+       -3.52E-04  4.42E-02 -4.76E-03  8.45E-03  1.44E-01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+        7.79E-02  8.70E-02 -1.06E-03  1.18E-02  4.92E-02  0.00E+00  1.97E+00
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        9.32E-02
 
 TH 2
+        5.89E-01  1.67E-01
 
 TH 3
+        6.68E-02  1.39E-01  1.55E-01
 
 TH 4
+        1.36E-01  1.73E-01  1.02E-02  1.54E-01
 
 TH 5
+       -9.97E-03  7.00E-01 -8.12E-02  1.45E-01  3.79E-01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+        5.95E-01  3.72E-01 -4.88E-03  5.47E-02  9.24E-02  0.00E+00  1.40E+00
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        1.86E+02
 
 TH 2
+       -7.97E+00  1.30E+01
 
 TH 3
+       -7.93E+00 -1.37E-01  4.20E+01
 
 TH 4
+       -8.45E+00 -3.59E+00  1.96E-01  4.39E+01
 
 TH 5
+       -4.73E+00  5.19E+00 -2.72E-01 -1.30E+00  2.31E+00
 
 TH 6
+       -1.68E-16  5.00E-17  8.71E-16  3.51E-18  1.65E-17 -2.78E-32
 
 TH 7
+       -6.32E+00 -7.96E-01  4.22E-01  2.48E-01  5.96E-02 -9.25E-18  7.84E-01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      OM11      OM12      OM13      OM22      OM23  
             OM33      SG11  
 
 TH 1
+        1.87E+02
 
 TH 2
+        4.28E+01  4.19E+01
 
 TH 3
+       -2.79E+00 -3.07E+00  1.79E+01
 
 TH 4
+        1.37E+01  3.76E+00 -1.45E+00  2.85E+01
 
 TH 5
+       -4.36E+00  2.74E+01 -5.06E+00  3.58E+00  3.84E+01
 
 TH 6
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 7
+       -1.86E+01 -1.72E+01 -1.64E+00  6.52E+00  1.49E+01  0.00E+00  1.22E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 Elapsed finaloutput time in seconds:     0.02
 #CPUT: Total CPU Time in Seconds,       30.302
Stop Time:
Wed Sep 29 10:51:10 CDT 2021

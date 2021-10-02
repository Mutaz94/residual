Sat Oct  2 05:03:23 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat48.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1672.73936634063        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2934E+02  1.5342E+01  3.9250E+01  2.2110E+00 -3.4164E+01  9.8737E+00 -2.3243E+00 -1.5530E+01  1.2034E+01 -2.8506E+00
             4.9686E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1678.45080138732        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      175
 NPARAMETR:  9.9941E-01  1.0083E+00  9.3289E-01  1.0162E+00  1.0065E+00  1.1832E+00  1.0414E+00  1.0893E+00  9.5438E-01  1.0405E+00
             7.8424E-01
 PARAMETER:  9.9410E-02  1.0825E-01  3.0529E-02  1.1604E-01  1.0648E-01  2.6822E-01  1.4058E-01  1.8556E-01  5.3307E-02  1.3965E-01
            -1.4304E-01
 GRADIENT:  -4.3388E+00 -2.1340E+01 -1.9835E+00 -2.7627E+01  3.2772E+00  3.0243E+01 -6.2341E+00 -3.6708E+00  4.2041E-01  8.9180E-01
            -4.3182E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1680.34446147548        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  1.0082E+00  1.1041E+00  1.1480E+00  9.6959E-01  1.1824E+00  1.1502E+00  1.0714E+00  1.6703E+00  9.6365E-01  1.1467E+00
             8.1787E-01
 PARAMETER:  1.0817E-01  1.9907E-01  2.3799E-01  6.9115E-02  2.6757E-01  2.3993E-01  1.6896E-01  6.1299E-01  6.2972E-02  2.3688E-01
            -1.0105E-01
 GRADIENT:   1.1727E+01 -2.2721E+01 -9.9869E+00 -2.1600E+01  1.2737E+01  2.0523E+01  1.7229E+00  9.9542E+00  4.5159E-01 -3.2082E+00
            -2.5912E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1682.97863272257        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  1.0037E+00  9.1837E-01  1.2153E+00  1.1045E+00  1.1077E+00  1.0950E+00  1.1793E+00  1.3510E+00  8.8702E-01  1.1586E+00
             8.5564E-01
 PARAMETER:  1.0374E-01  1.4847E-02  2.9503E-01  1.9940E-01  2.0233E-01  1.9075E-01  2.6494E-01  4.0086E-01 -1.9883E-02  2.4721E-01
            -5.5903E-02
 GRADIENT:   6.1516E+00  2.1842E+00  2.2545E+00 -3.0200E+00 -9.7835E-01  2.2737E+00 -1.1406E+00 -3.0682E+00 -2.4419E+00  1.6938E+00
            -4.9477E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1683.33853308373        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.9708E-01  7.4771E-01  1.4061E+00  1.2288E+00  1.1070E+00  1.0839E+00  1.3384E+00  1.4973E+00  8.4453E-01  1.1573E+00
             8.7282E-01
 PARAMETER:  9.7078E-02 -1.9074E-01  4.4079E-01  3.0601E-01  2.0162E-01  1.8057E-01  3.9146E-01  5.0366E-01 -6.8978E-02  2.4605E-01
            -3.6025E-02
 GRADIENT:  -2.5031E+00  1.0486E+01  3.2638E+00  1.5046E+01 -5.0142E+00 -1.0143E+00  5.6113E-01 -2.3656E-01 -3.3568E-01 -9.0096E-01
             2.7331E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1683.55615570127        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      879
 NPARAMETR:  9.9515E-01  5.6248E-01  1.6164E+00  1.3511E+00  1.1296E+00  1.0926E+00  1.5909E+00  1.6477E+00  7.9871E-01  1.2058E+00
             8.5761E-01
 PARAMETER:  9.5136E-02 -4.7541E-01  5.8021E-01  4.0095E-01  2.2189E-01  1.8855E-01  5.6428E-01  5.9936E-01 -1.2475E-01  2.8713E-01
            -5.3606E-02
 GRADIENT:  -6.8317E-01  7.5489E+00 -1.1105E-01  1.4572E+01  2.5357E+00  2.8804E+00  1.6692E+00  1.1161E+00 -2.2211E-01 -1.5631E+00
            -4.4944E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1683.69554210061        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1054
 NPARAMETR:  9.9351E-01  4.1549E-01  1.7266E+00  1.4472E+00  1.1192E+00  1.0911E+00  1.8045E+00  1.7200E+00  7.7436E-01  1.2210E+00
             8.5472E-01
 PARAMETER:  9.3488E-02 -7.7829E-01  6.4616E-01  4.6966E-01  2.1262E-01  1.8719E-01  6.9028E-01  6.4230E-01 -1.5572E-01  2.9967E-01
            -5.6986E-02
 GRADIENT:   3.2052E-01  6.1005E+00 -5.8482E-01  1.6498E+01  2.5859E+00  2.8733E+00  1.2836E+00  5.8390E-01 -2.2720E-01 -8.4517E-01
            -5.4893E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1683.74143695847        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1229
 NPARAMETR:  9.9233E-01  3.3520E-01  1.7748E+00  1.4972E+00  1.1080E+00  1.0877E+00  1.9490E+00  1.7604E+00  7.6147E-01  1.2212E+00
             8.5699E-01
 PARAMETER:  9.2299E-02 -9.9302E-01  6.7369E-01  5.0362E-01  2.0257E-01  1.8410E-01  7.6731E-01  6.6553E-01 -1.7251E-01  2.9984E-01
            -5.4326E-02
 GRADIENT:   3.9599E-01  4.4167E+00 -5.1371E-01  1.3694E+01  1.6248E+00  1.9788E+00  7.4873E-01  2.6270E-01 -2.6212E-01 -3.7425E-01
            -4.0850E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1683.92094639634        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1414             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9344E-01  3.1890E-01  1.7756E+00  1.4936E+00  1.0984E+00  1.0833E+00  1.8019E+00  1.7578E+00  7.6565E-01  1.2223E+00
             8.6482E-01
 PARAMETER:  9.3422E-02 -1.0429E+00  6.7412E-01  5.0117E-01  1.9387E-01  1.7998E-01  6.8886E-01  6.6408E-01 -1.6703E-01  3.0074E-01
            -4.5238E-02
 GRADIENT:   5.8680E+02  6.0650E+01  1.4204E+01  1.0602E+03  1.1642E+01  1.0953E+02  8.2516E+00  7.2066E+00  2.3712E+01  4.3136E+00
             8.8218E-01

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1683.92214646274        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:     1511
 NPARAMETR:  9.9259E-01  3.1858E-01  1.7730E+00  1.4954E+00  1.0998E+00  1.0829E+00  1.7896E+00  1.7569E+00  7.6572E-01  1.2204E+00
             8.6477E-01
 PARAMETER:  9.2561E-02 -1.0439E+00  6.7265E-01  5.0241E-01  1.9513E-01  1.7963E-01  6.8198E-01  6.6354E-01 -1.6694E-01  2.9918E-01
            -4.5293E-02
 GRADIENT:  -9.1200E-01  2.7641E-01  7.4746E-01  4.1720E+00 -8.8895E-02 -1.2704E-01 -1.9917E-02  1.6300E-01 -1.5919E-01  2.0414E-01
             2.6660E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1511
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.2769E-04 -3.9405E-03 -4.7875E-02 -7.7078E-03 -5.6886E-02
 SE:             2.9886E-02  9.0846E-03  1.9352E-02  2.8118E-02  1.9830E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7791E-01  6.6447E-01  1.3363E-02  7.8399E-01  4.1220E-03

 ETASHRINKSD(%)  1.0000E-10  6.9566E+01  3.5169E+01  5.8016E+00  3.3567E+01
 ETASHRINKVR(%)  1.0000E-10  9.0737E+01  5.7970E+01  1.1267E+01  5.5866E+01
 EBVSHRINKSD(%)  2.8905E-01  7.0088E+01  3.8843E+01  6.2603E+00  2.8217E+01
 EBVSHRINKVR(%)  5.7726E-01  9.1053E+01  6.2599E+01  1.2129E+01  4.8472E+01
 RELATIVEINF(%)  9.5911E+01  2.6680E-01  1.3897E+01  2.9163E+00  1.0370E+01
 EPSSHRINKSD(%)  4.6753E+01
 EPSSHRINKVR(%)  7.1647E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1683.9221464627449     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -948.77131989900670     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.08
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1683.922       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  3.19E-01  1.77E+00  1.50E+00  1.10E+00  1.08E+00  1.79E+00  1.76E+00  7.66E-01  1.22E+00  8.65E-01
 


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
 #CPUT: Total CPU Time in Seconds,       20.116
Stop Time:
Sat Oct  2 05:03:45 CDT 2021

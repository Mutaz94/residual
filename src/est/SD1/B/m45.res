Thu Sep 30 23:15:28 CDT 2021
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
$DATA ../../../../data/SD1/B/dat45.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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
 RAW OUTPUT FILE (FILE): m45.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3577.35129126687        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.3725E+02  4.6053E+01  4.5776E+01  6.9351E+01  1.2126E+02  3.7903E-01  2.1141E+01 -4.5758E+02 -1.0392E+02  4.0725E+00
             4.6607E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3650.40424647909        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:       90
 NPARAMETR:  1.0163E+00  9.2967E-01  1.0161E+00  1.0141E+00  9.4504E-01  9.3366E-01  9.9666E-01  1.3610E+00  9.1105E-01  9.8632E-01
             9.7482E-01
 PARAMETER:  1.1614E-01  2.7070E-02  1.1595E-01  1.1397E-01  4.3472E-02  3.1357E-02  9.6651E-02  4.0820E-01  6.8458E-03  8.6221E-02
             7.4501E-02
 GRADIENT:   6.7694E+02  2.3440E+01  2.8023E+01  7.3836E+01  1.1487E+02 -4.7773E+01 -7.8494E+00 -2.7558E+02 -4.5073E+01 -5.2124E+00
             2.3026E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3673.06177661417        NO. OF FUNC. EVALS.: 103
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0199E+00  9.8279E-01  1.1344E+00  9.9312E-01  1.0068E+00  1.0087E+00  1.1341E+00  1.4887E+00  8.5370E-01  9.7811E-01
             1.0191E+00
 PARAMETER:  1.1972E-01  8.2637E-02  2.2608E-01  9.3096E-02  1.0677E-01  1.0868E-01  2.2584E-01  4.9791E-01 -5.8180E-02  7.7868E-02
             1.1890E-01
 GRADIENT:   1.1792E+02 -2.4836E+01  2.8515E+01 -5.2416E+01  4.1907E+01 -7.3131E+01  3.2406E+00 -2.7479E+02 -5.1294E+01 -4.1703E+01
             1.0770E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3687.66752759964        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:      385             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0472E+00  9.8508E-01  1.0346E+00  1.0003E+00  9.7332E-01  1.1692E+00  1.0413E+00  1.5554E+00  8.2082E-01  1.3207E+00
             1.0239E+00
 PARAMETER:  1.4613E-01  8.4965E-02  1.3403E-01  1.0028E-01  7.2955E-02  2.5635E-01  1.4048E-01  5.4173E-01 -9.7456E-02  3.7818E-01
             1.2360E-01
 GRADIENT:   7.5926E+02  4.9157E+01  1.4071E+01  6.5381E+01  6.3786E+01  1.4397E+02 -2.5142E-01 -2.0719E+02 -4.8694E+01  1.3287E+02
             1.2884E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3695.34864103124        NO. OF FUNC. EVALS.: 126
 CUMULATIVE NO. OF FUNC. EVALS.:      511
 NPARAMETR:  1.0468E+00  9.8487E-01  1.0341E+00  1.0000E+00  9.7353E-01  1.1862E+00  1.0412E+00  1.5574E+00  1.0865E+00  1.3175E+00
             1.0238E+00
 PARAMETER:  1.4570E-01  8.4754E-02  1.3354E-01  1.0004E-01  7.3169E-02  2.7076E-01  1.4040E-01  5.4301E-01  1.8299E-01  3.7575E-01
             1.2349E-01
 GRADIENT:   7.5415E+02  4.7350E+01  1.7917E+01  7.5572E+01  6.9027E+01  1.5887E+02  1.1944E+01 -1.8075E+02  1.8481E+01  1.3635E+02
             1.3248E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3695.87229326752        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      691
 NPARAMETR:  1.0463E+00  9.8486E-01  1.0340E+00  1.0000E+00  9.7355E-01  1.2616E+00  1.0412E+00  1.5644E+00  1.0525E+00  1.3165E+00
             1.0237E+00
 PARAMETER:  1.4527E-01  8.4749E-02  1.3348E-01  1.0003E-01  7.3190E-02  3.3236E-01  1.4035E-01  5.4753E-01  1.5115E-01  3.7500E-01
             1.2338E-01
 GRADIENT:   1.1340E+02 -2.8042E+01  7.9957E+00 -2.0267E+01  7.5028E+00  2.1694E+01  1.9558E+00 -2.1129E+02 -2.5822E+00  3.1189E+01
             1.3042E+02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3755.25619393585        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:      878             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0317E+00  9.8451E-01  1.0319E+00  9.9946E-01  9.7437E-01  1.1878E+00  1.0396E+00  2.5857E+00  9.3400E-01  1.2843E+00
             1.0202E+00
 PARAMETER:  1.3116E-01  8.4392E-02  1.3138E-01  9.9461E-02  7.4038E-02  2.7209E-01  1.3879E-01  1.0500E+00  3.1717E-02  3.5025E-01
             1.2003E-01
 GRADIENT:   6.7218E+02  5.3822E+01 -1.0610E+01  6.6487E+01  4.4293E+01  1.6991E+02  1.7252E+00  2.8664E+01  6.8385E+00  1.3557E+02
             1.4447E+02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3756.12436646307        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:     1035
 NPARAMETR:  1.0316E+00  9.8450E-01  1.0319E+00  9.9945E-01  9.7439E-01  1.1806E+00  1.0395E+00  2.8111E+00  9.3009E-01  1.2843E+00
             1.0202E+00
 PARAMETER:  1.3114E-01  8.4380E-02  1.3136E-01  9.9449E-02  7.4052E-02  2.6600E-01  1.3877E-01  1.1336E+00  2.7522E-02  3.5020E-01
             1.2004E-01
 GRADIENT:   1.0576E+02 -1.9420E+01 -2.0128E+01 -3.3789E+01 -2.4345E+01 -1.2131E+00 -8.7326E+00  1.6744E-01  2.0241E-03  1.8086E+01
             1.4322E+02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3785.19989746976        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:     1174
 NPARAMETR:  1.0045E+00  9.8171E-01  1.0448E+00  9.9906E-01  9.7328E-01  1.1463E+00  1.0449E+00  2.7696E+00  9.2864E-01  1.2251E+00
             1.0066E+00
 PARAMETER:  1.0448E-01  8.1536E-02  1.4382E-01  9.9061E-02  7.2914E-02  2.3657E-01  1.4394E-01  1.1187E+00  2.5961E-02  3.0303E-01
             1.0656E-01
 GRADIENT:   6.6348E+01 -5.1660E+01 -1.7252E+01 -3.9457E+01 -4.9556E+01 -8.6416E+00  1.1630E+01 -5.3307E+00 -1.1274E+00  3.8085E+01
             1.2034E+02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3787.37013462076        NO. OF FUNC. EVALS.: 154
 CUMULATIVE NO. OF FUNC. EVALS.:     1328
 NPARAMETR:  9.9758E-01  9.8345E-01  1.0473E+00  1.0001E+00  9.7603E-01  1.1395E+00  1.0383E+00  2.7623E+00  9.2892E-01  1.2012E+00
             1.0000E+00
 PARAMETER:  9.7579E-02  8.3308E-02  1.4620E-01  1.0005E-01  7.5743E-02  2.3059E-01  1.3757E-01  1.1161E+00  2.6268E-02  2.8330E-01
             1.0001E-01
 GRADIENT:   5.5271E+01 -4.8633E+01 -1.6988E+01 -3.6694E+01 -4.7401E+01 -1.0378E+01  1.0570E+01 -6.1338E+00 -1.5940E+00  3.4831E+01
             1.0760E+02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -3789.87870399488        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1496
 NPARAMETR:  9.9747E-01  9.8845E-01  1.0476E+00  1.0023E+00  9.8115E-01  1.1681E+00  1.0276E+00  2.7990E+00  9.3508E-01  1.1683E+00
             9.9259E-01
 PARAMETER:  9.7467E-02  8.8382E-02  1.4653E-01  1.0227E-01  8.0970E-02  2.5537E-01  1.2727E-01  1.1293E+00  3.2881E-02  2.5553E-01
             9.2567E-02
 GRADIENT:   5.2950E+02  5.0612E+01 -7.0162E+00  7.7934E+01  7.9670E+00  2.0455E+02  2.3120E+01  4.5578E+01  7.7947E+00  4.3810E+01
             9.4217E+01

0ITERATION NO.:   54    OBJECTIVE VALUE:  -3791.31041736618        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:     1633
 NPARAMETR:  9.9746E-01  9.9165E-01  1.0476E+00  1.0006E+00  9.8766E-01  1.1674E+00  1.0277E+00  2.7927E+00  9.3794E-01  1.1485E+00
             9.8588E-01
 PARAMETER:  9.7456E-02  9.1610E-02  1.4652E-01  1.0061E-01  8.7682E-02  2.5229E-01  1.2732E-01  1.1281E+00  3.5878E-02  2.3820E-01
             8.5780E-02
 GRADIENT:   5.1450E+01 -5.6315E+01 -4.2018E-01 -4.3555E+01  2.8478E+04 -2.6892E+00 -4.0332E-01  2.4838E+03 -7.1716E-02 -1.1947E+04
             6.6050E+01
 NUMSIGDIG:         5.3         5.3         7.3         5.4         2.3         1.3         7.3         2.3         2.5         2.3
                    5.2

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1633
 NO. OF SIG. DIGITS IN FINAL EST.:  1.3
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.6425E-02 -2.2508E-02 -8.7573E-03  3.2651E-02 -3.2783E-02
 SE:             3.0020E-02  2.1060E-02  2.5809E-02  2.6880E-02  2.1688E-02
 N:                     100         100         100         100         100

 P VAL.:         3.7872E-01  2.8518E-01  7.3437E-01  2.2447E-01  1.3064E-01

 ETASHRINKSD(%)  1.0000E-10  2.9448E+01  1.3536E+01  9.9501E+00  2.7344E+01
 ETASHRINKVR(%)  1.0000E-10  5.0224E+01  2.5240E+01  1.8910E+01  4.7210E+01
 EBVSHRINKSD(%)  1.9512E-01  2.5772E+01  1.4041E+01  1.0913E+01  1.9708E+01
 EBVSHRINKVR(%)  3.8985E-01  4.4902E+01  2.6111E+01  2.0635E+01  3.5532E+01
 RELATIVEINF(%)  9.9609E+01  3.2060E+01  6.6745E+01  5.5894E+01  4.0332E+01
 EPSSHRINKSD(%)  2.6421E+01
 EPSSHRINKVR(%)  4.5862E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3791.3104173661768     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2137.2210575977660     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    48.12
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3791.310       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.97E-01  9.92E-01  1.05E+00  1.00E+00  9.88E-01  1.16E+00  1.03E+00  2.80E+00  9.38E-01  1.15E+00  9.86E-01
 


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
 #CPUT: Total CPU Time in Seconds,       48.171
Stop Time:
Thu Sep 30 23:16:18 CDT 2021
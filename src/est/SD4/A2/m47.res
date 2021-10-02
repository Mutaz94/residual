Sat Oct  2 00:34:30 CDT 2021
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
$DATA ../../../../data/SD4/A2/dat47.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m47.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1107.15321815442        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3435E+02  2.0669E+01  5.6623E+01 -3.1282E+01  1.1573E+02  6.3985E+01 -3.2066E+01 -2.1588E+01 -6.0171E+01 -9.9254E+01
            -8.6495E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1347.38815864822        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.2513E+00  9.1536E-01  9.3336E-01  1.1107E+00  8.6026E-01  1.1469E+00  1.0255E+00  9.3475E-01  1.1461E+00  1.1335E+00
             2.3050E+00
 PARAMETER:  3.2414E-01  1.1562E-02  3.1039E-02  2.0502E-01 -5.0523E-02  2.3704E-01  1.2518E-01  3.2529E-02  2.3636E-01  2.2527E-01
             9.3509E-01
 GRADIENT:   6.2333E+02  5.8509E+00  1.1812E+01  1.2699E-01 -1.2964E+01  4.7526E+00  3.6205E+00  7.9030E+00  9.4274E+00  4.8165E+00
             1.0338E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1373.82361131653        NO. OF FUNC. EVALS.:  96
 CUMULATIVE NO. OF FUNC. EVALS.:      180
 NPARAMETR:  1.1733E+00  5.2503E-01  4.5320E-01  1.3656E+00  4.2684E-01  1.1170E+00  6.7377E-01  8.2925E-02  1.0396E+00  9.3709E-01
             1.9646E+00
 PARAMETER:  2.5982E-01 -5.4429E-01 -6.9142E-01  4.1161E-01 -7.5134E-01  2.1067E-01 -2.9487E-01 -2.3898E+00  1.3881E-01  3.5025E-02
             7.7528E-01
 GRADIENT:   2.8456E+02  7.4080E+01  3.4374E+01  1.6189E+02 -7.9528E+01  2.1831E+01 -3.8799E+00  1.3402E-01 -9.5209E+00  1.7913E+01
            -5.0786E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1414.33195217885        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      357
 NPARAMETR:  9.6219E-01  4.4513E-01  5.8100E-01  1.3509E+00  4.9378E-01  8.1983E-01  1.0273E+00  1.0000E-02  9.9920E-01  8.9890E-01
             2.0237E+00
 PARAMETER:  6.1461E-02 -7.0938E-01 -4.4301E-01  4.0079E-01 -6.0567E-01 -9.8661E-02  1.2696E-01 -5.7135E+00  9.9196E-02 -6.5823E-03
             8.0492E-01
 GRADIENT:  -9.4124E+01  3.1298E+01  4.2845E+01  4.0495E+01 -5.4648E+01 -3.5843E+01 -2.4250E+00  0.0000E+00  9.4846E-01 -5.9310E-01
            -3.2050E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1426.41337666416        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  1.0025E+00  3.5287E-01  2.9082E-01  1.2261E+00  2.9998E-01  9.5205E-01  1.3887E+00  1.0000E-02  9.7430E-01  6.6676E-01
             2.0860E+00
 PARAMETER:  1.0248E-01 -9.4165E-01 -1.1350E+00  3.0381E-01 -1.1040E+00  5.0867E-02  4.2835E-01 -9.3388E+00  7.3962E-02 -3.0532E-01
             8.3525E-01
 GRADIENT:   1.0599E+01  1.3080E+01  4.0193E-01  2.2206E+01 -7.1965E+00  1.9147E+01  1.3467E+00  0.0000E+00 -4.0818E+00 -4.0427E+00
             6.0700E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1430.70324157864        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      708
 NPARAMETR:  9.9486E-01  1.7895E-01  3.2185E-01  1.3123E+00  2.9545E-01  8.9600E-01  2.2436E+00  1.0000E-02  9.4452E-01  7.2318E-01
             2.0552E+00
 PARAMETER:  9.4845E-02 -1.6206E+00 -1.0337E+00  3.7182E-01 -1.1192E+00 -9.8131E-03  9.0808E-01 -1.2336E+01  4.2922E-02 -2.2410E-01
             8.2035E-01
 GRADIENT:   8.9502E+00  4.7536E+00 -3.7504E+00  2.0752E+01 -2.6611E+00  3.4609E-01  2.0438E+00  0.0000E+00 -2.8227E+00 -4.2283E+00
            -3.0941E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1432.79552949393        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      884
 NPARAMETR:  9.7970E-01  3.9597E-02  3.6559E-01  1.3923E+00  3.1015E-01  8.9340E-01  4.1173E+00  1.0000E-02  9.1642E-01  7.6899E-01
             2.0617E+00
 PARAMETER:  7.9494E-02 -3.1290E+00 -9.0623E-01  4.3093E-01 -1.0707E+00 -1.2717E-02  1.5152E+00 -2.1448E+01  1.2717E-02 -1.6267E-01
             8.2352E-01
 GRADIENT:  -4.7732E+00  6.1531E-01  6.7582E+00  6.9907E+00 -1.0949E+01  1.3232E+00 -9.4038E-02  0.0000E+00  9.4864E-01  1.0251E-01
            -2.2904E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1433.13961450553        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1060            RESET HESSIAN, TYPE II
 NPARAMETR:  9.7956E-01  1.0000E-02  3.6945E-01  1.4017E+00  3.1140E-01  8.8919E-01  8.1755E+00  1.0000E-02  9.0619E-01  7.7087E-01
             2.0740E+00
 PARAMETER:  7.9346E-02 -4.7389E+00 -8.9575E-01  4.3768E-01 -1.0667E+00 -1.7449E-02  2.2011E+00 -3.2219E+01  1.4894E-03 -1.6023E-01
             8.2947E-01
 GRADIENT:   7.3045E+01  0.0000E+00  2.3214E+01  1.2013E+02  8.8578E+01  5.4168E+00  5.5439E-02  0.0000E+00  3.5028E+00  8.7458E-01
             6.6972E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1433.13961450553        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1118
 NPARAMETR:  9.7956E-01  1.0000E-02  3.6945E-01  1.4017E+00  3.1140E-01  8.8919E-01  8.1755E+00  1.0000E-02  9.0619E-01  7.7087E-01
             2.0740E+00
 PARAMETER:  7.9346E-02 -4.7389E+00 -8.9575E-01  4.3768E-01 -1.0667E+00 -1.7449E-02  2.2011E+00 -3.2219E+01  1.4894E-03 -1.6023E-01
             8.2947E-01
 GRADIENT:   3.4754E-01  0.0000E+00 -7.7085E-01 -1.3705E+00  1.5416E+00  4.6874E-02 -2.0368E-02  0.0000E+00  6.1535E-02  8.8697E-02
             6.2091E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1118
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -7.1452E-05 -3.3458E-04  1.7823E-05 -7.5305E-03 -4.7612E-03
 SE:             2.9304E-02  1.1599E-03  2.4306E-04  2.7730E-02  2.4490E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9805E-01  7.7299E-01  9.4155E-01  7.8596E-01  8.4585E-01

 ETASHRINKSD(%)  1.8273E+00  9.6114E+01  9.9186E+01  7.1009E+00  1.7955E+01
 ETASHRINKVR(%)  3.6212E+00  9.9849E+01  9.9993E+01  1.3697E+01  3.2686E+01
 EBVSHRINKSD(%)  1.9603E+00  9.6384E+01  9.9182E+01  6.4142E+00  1.7159E+01
 EBVSHRINKVR(%)  3.8822E+00  9.9869E+01  9.9993E+01  1.2417E+01  3.1373E+01
 RELATIVEINF(%)  7.5892E+01  1.2656E-02  2.6307E-04  1.3596E+01  2.2544E+00
 EPSSHRINKSD(%)  3.7259E+01
 EPSSHRINKVR(%)  6.0636E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1433.1396145055301     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -697.98878794179188     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.01
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1433.140       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.80E-01  1.00E-02  3.69E-01  1.40E+00  3.11E-01  8.89E-01  8.18E+00  1.00E-02  9.06E-01  7.71E-01  2.07E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.042
Stop Time:
Sat Oct  2 00:34:44 CDT 2021

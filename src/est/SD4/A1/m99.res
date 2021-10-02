Sat Oct  2 00:19:58 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat99.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1473.58523276779        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2574E+02 -1.9108E+01 -4.1371E+01  4.4843E+01  1.0478E+02  6.2368E+01 -1.1427E+01  5.7288E+00 -3.4591E+00 -1.5445E+00
            -3.6794E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1523.65314703944        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  9.5511E-01  1.0572E+00  1.1002E+00  9.9731E-01  9.6656E-01  8.2711E-01  1.0391E+00  9.3821E-01  9.8075E-01  8.3650E-01
             2.4338E+00
 PARAMETER:  5.4070E-02  1.5558E-01  1.9552E-01  9.7301E-02  6.5991E-02 -8.9812E-02  1.3838E-01  3.6221E-02  8.0565E-02 -7.8526E-02
             9.8946E-01
 GRADIENT:  -9.5015E+01  7.7622E+00 -5.3248E+00  5.7160E+00 -2.5218E+01 -2.9786E+01  3.5629E+00  4.9879E+00  8.8963E+00  1.9260E+01
             1.5331E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1536.32835788001        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.6881E-01  9.0716E-01  5.8329E-01  1.0839E+00  6.8139E-01  8.8551E-01  1.1193E+00  4.4749E-01  8.1794E-01  4.3235E-01
             2.1704E+00
 PARAMETER:  6.8310E-02  2.5627E-03 -4.3907E-01  1.8061E-01 -2.8362E-01 -2.1589E-02  2.1268E-01 -7.0410E-01 -1.0097E-01 -7.3852E-01
             8.7490E-01
 GRADIENT:  -3.7343E+01 -6.3656E+00 -5.8866E+01  1.2823E+02  7.5904E+01 -7.6272E+00 -1.7785E+01  2.9745E+00 -6.5062E+00  3.9512E+00
             1.0808E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1560.07172656676        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      274
 NPARAMETR:  9.9884E-01  1.0161E+00  6.3076E-01  9.8111E-01  7.4256E-01  9.0117E-01  1.2204E+00  1.9604E-01  9.1781E-01  5.6651E-01
             1.6908E+00
 PARAMETER:  9.8843E-02  1.1595E-01 -3.6083E-01  8.0927E-02 -1.9766E-01 -4.0636E-03  2.9918E-01 -1.5294E+00  1.4230E-02 -4.6825E-01
             6.2517E-01
 GRADIENT:  -1.7067E+01 -2.4234E+00 -4.4939E+00 -4.6400E-01  3.6933E+00 -6.7876E+00  5.0582E-01  2.2206E-01  4.6301E-01  8.0084E-01
             1.1837E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1560.44405194817        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      449
 NPARAMETR:  1.0039E+00  9.7367E-01  6.8152E-01  1.0133E+00  7.5375E-01  9.1686E-01  1.2481E+00  1.4336E-01  9.1673E-01  6.2338E-01
             1.6438E+00
 PARAMETER:  1.0387E-01  7.3315E-02 -2.8343E-01  1.1317E-01 -1.8269E-01  1.3204E-02  3.2162E-01 -1.8424E+00  1.3056E-02 -3.7260E-01
             5.9699E-01
 GRADIENT:  -1.1020E+00 -1.4665E+00 -6.6262E-01 -1.0225E+00  1.2578E+00 -1.3563E-01 -5.4670E-01  5.4252E-02  4.4148E-01  1.4064E-01
            -4.3678E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1560.47019546452        NO. OF FUNC. EVALS.: 156
 CUMULATIVE NO. OF FUNC. EVALS.:      605
 NPARAMETR:  1.0045E+00  9.3680E-01  6.7921E-01  1.0349E+00  7.3584E-01  9.1669E-01  1.2936E+00  5.5965E-02  8.9702E-01  6.1464E-01
             1.6438E+00
 PARAMETER:  1.0454E-01  3.4716E-02 -2.8682E-01  1.3431E-01 -2.0674E-01  1.3017E-02  3.5740E-01 -2.7830E+00 -8.6813E-03 -3.8672E-01
             5.9701E-01
 GRADIENT:   1.5765E+02  1.1548E+01  5.3533E+00  3.7167E+01  6.3149E+00  1.2516E+01  5.4808E+00  1.4388E-02  2.4435E+00  3.1003E-01
             4.4184E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1560.47578242027        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      784
 NPARAMETR:  1.0047E+00  9.3761E-01  6.7811E-01  1.0344E+00  7.3645E-01  9.1732E-01  1.2945E+00  2.1895E-02  8.9830E-01  6.1887E-01
             1.6432E+00
 PARAMETER:  1.0466E-01  3.5575E-02 -2.8844E-01  1.3384E-01 -2.0591E-01  1.3704E-02  3.5816E-01 -3.7215E+00 -7.2548E-03 -3.7987E-01
             5.9663E-01
 GRADIENT:   9.5760E-01  9.8343E-02  1.2135E-01  1.4190E-01 -2.1653E-01  1.5450E-01  1.6865E-01  1.0988E-03  5.0607E-02  1.0963E-01
            -7.0382E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1560.47918698260        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      960
 NPARAMETR:  1.0045E+00  9.5517E-01  6.7037E-01  1.0232E+00  7.3915E-01  9.1723E-01  1.2766E+00  1.0000E-02  9.0342E-01  6.1207E-01
             1.6445E+00
 PARAMETER:  1.0453E-01  5.4134E-02 -2.9992E-01  1.2297E-01 -2.0225E-01  1.3606E-02  3.4417E-01 -1.1285E+01 -1.5661E-03 -3.9091E-01
             5.9741E-01
 GRADIENT:   3.2780E-01  2.4481E-01  1.2235E-01  1.0080E-01 -1.7497E-01  3.7356E-02  6.0373E-02  0.0000E+00 -3.7751E-02 -2.7680E-02
            -4.6435E-02

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1560.47919379565        NO. OF FUNC. EVALS.:  63
 CUMULATIVE NO. OF FUNC. EVALS.:     1023
 NPARAMETR:  1.0053E+00  9.5322E-01  6.7039E-01  1.0233E+00  7.3916E-01  9.1732E-01  1.2763E+00  1.0000E-02  9.0400E-01  6.1371E-01
             1.6446E+00
 PARAMETER:  1.0449E-01  5.3088E-02 -2.9931E-01  1.2353E-01 -2.0242E-01  1.3556E-02  3.4471E-01 -1.0898E+01 -1.7885E-03 -3.9025E-01
             5.9741E-01
 GRADIENT:  -3.6579E-01  1.4077E-01  7.5359E-02  1.4564E-01 -6.5896E-02 -1.0072E-02  1.8139E-02  0.0000E+00 -2.6448E-02 -1.9929E-02
            -9.1194E-03

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1023
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.0421E-04  5.9928E-03 -3.1509E-04 -1.0534E-02 -7.8265E-03
 SE:             2.9545E-02  2.2307E-02  1.6836E-04  2.3518E-02  1.7809E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9178E-01  7.8820E-01  6.1275E-02  6.5421E-01  6.6033E-01

 ETASHRINKSD(%)  1.0199E+00  2.5269E+01  9.9436E+01  2.1212E+01  4.0336E+01
 ETASHRINKVR(%)  2.0295E+00  4.4153E+01  9.9997E+01  3.7925E+01  6.4402E+01
 EBVSHRINKSD(%)  1.2835E+00  2.5100E+01  9.9446E+01  2.1158E+01  4.0387E+01
 EBVSHRINKVR(%)  2.5506E+00  4.3900E+01  9.9997E+01  3.7839E+01  6.4463E+01
 RELATIVEINF(%)  9.7031E+01  4.3055E+00  2.2920E-04  6.3389E+00  2.1051E+00
 EPSSHRINKSD(%)  3.7814E+01
 EPSSHRINKVR(%)  6.1329E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1560.4791937956456     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -825.32836723190746     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.59
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1560.479       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  9.54E-01  6.71E-01  1.02E+00  7.39E-01  9.17E-01  1.28E+00  1.00E-02  9.03E-01  6.12E-01  1.64E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.634
Stop Time:
Sat Oct  2 00:20:11 CDT 2021
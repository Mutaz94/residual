Fri Oct  1 23:57:52 CDT 2021
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
$DATA ../../../../data/SD4/A1/dat30.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m30.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1357.12203846052        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3325E+02  3.8284E+01  5.4362E+01  5.0269E+01  4.3347E+00  5.1384E+01 -1.1047E+01 -2.4512E+01  2.0979E+01 -1.3271E+01
            -5.9312E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1477.35411493776        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.1331E+00  1.1115E+00  8.9813E-01  9.6541E-01  1.0047E+00  1.2243E+00  1.0367E+00  1.0472E+00  7.3653E-01  9.1969E-01
             2.7344E+00
 PARAMETER:  2.2496E-01  2.0568E-01 -7.4436E-03  6.4801E-02  1.0464E-01  3.0240E-01  1.3601E-01  1.4615E-01 -2.0581E-01  1.6281E-02
             1.1059E+00
 GRADIENT:   2.7957E+02 -2.1837E+00 -2.7790E+00 -6.6916E+00 -1.4531E+01  6.6787E+01  2.8587E+00  5.0774E+00  4.1345E+00  1.1918E+01
             1.4593E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1496.81692402963        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      158
 NPARAMETR:  1.0595E+00  8.6533E-01  3.0949E-01  1.0285E+00  4.8465E-01  1.0778E+00  1.2244E+00  6.2269E-01  6.3798E-01  3.4744E-01
             2.2041E+00
 PARAMETER:  1.5776E-01 -4.4649E-02 -1.0728E+00  1.2812E-01 -6.2433E-01  1.7497E-01  3.0243E-01 -3.7371E-01 -3.4945E-01 -9.5718E-01
             8.9031E-01
 GRADIENT:   1.8419E+02  5.9134E+01 -3.4709E+01  1.8236E+02  2.8256E+01  2.7771E+01  2.4307E+00  5.4540E+00 -1.5281E+01  2.1821E+00
             7.0311E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1514.38918053985        NO. OF FUNC. EVALS.: 135
 CUMULATIVE NO. OF FUNC. EVALS.:      293
 NPARAMETR:  1.0204E+00  9.1205E-01  4.8943E-01  1.0026E+00  6.4888E-01  1.0435E+00  1.2025E+00  5.7419E-01  7.4638E-01  7.0849E-01
             1.9648E+00
 PARAMETER:  1.2023E-01  7.9437E-03 -6.1452E-01  1.0263E-01 -3.3250E-01  1.4258E-01  2.8441E-01 -4.5480E-01 -1.9252E-01 -2.4463E-01
             7.7538E-01
 GRADIENT:  -2.5095E+00 -1.6573E+01 -9.1922E+00 -2.3836E+01 -9.8703E+00  6.4810E+00 -1.9988E+00  5.0958E+00  2.1682E+00  1.3017E+01
             2.7912E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1518.23391624756        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      468
 NPARAMETR:  1.0199E+00  9.3097E-01  6.8881E-01  1.0383E+00  7.9929E-01  1.0191E+00  1.2754E+00  5.0145E-01  7.5911E-01  8.0024E-01
             1.8973E+00
 PARAMETER:  1.1966E-01  2.8470E-02 -2.7279E-01  1.3760E-01 -1.2403E-01  1.1888E-01  3.4330E-01 -5.9024E-01 -1.7561E-01 -1.2285E-01
             7.4043E-01
 GRADIENT:   1.2981E+00 -2.1699E+00  1.8627E+00 -6.0001E+00 -1.6718E+00 -2.8087E-01 -8.9798E-01  3.1256E-01  1.0007E+00 -9.2523E-02
             2.9900E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1518.34707055033        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      643
 NPARAMETR:  1.0204E+00  8.6850E-01  6.6253E-01  1.0717E+00  7.5532E-01  1.0203E+00  1.3573E+00  3.8055E-01  7.3637E-01  7.7561E-01
             1.8932E+00
 PARAMETER:  1.2022E-01 -4.0988E-02 -3.1169E-01  1.6929E-01 -1.8062E-01  1.2011E-01  4.0550E-01 -8.6613E-01 -2.0602E-01 -1.5411E-01
             7.3825E-01
 GRADIENT:   2.1411E+00 -8.2612E-01 -1.1716E-01 -5.7027E-01  7.1373E-01  4.4534E-02 -2.1309E-01  1.0317E-01  9.7774E-02 -1.5293E-01
            -5.4909E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1518.37098305165        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      821
 NPARAMETR:  1.0202E+00  8.8798E-01  6.2942E-01  1.0555E+00  7.4063E-01  1.0197E+00  1.3299E+00  2.5511E-01  7.4222E-01  7.6437E-01
             1.8945E+00
 PARAMETER:  1.2004E-01 -1.8812E-02 -3.6295E-01  1.5400E-01 -2.0026E-01  1.1956E-01  3.8509E-01 -1.2661E+00 -1.9811E-01 -1.6870E-01
             7.3897E-01
 GRADIENT:   7.7188E-01 -5.6683E-03  1.1529E+00 -2.1427E+00 -1.7634E+00 -4.3380E-01  2.5060E-02  1.7677E-02  1.3719E-01 -3.8066E-02
            -1.3403E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1518.37421042404        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:      983
 NPARAMETR:  1.0199E+00  8.8507E-01  6.2826E-01  1.0577E+00  7.3941E-01  1.0209E+00  1.3333E+00  2.1610E-01  7.4109E-01  7.6642E-01
             1.8957E+00
 PARAMETER:  1.1973E-01 -2.2093E-02 -3.6480E-01  1.5614E-01 -2.0190E-01  1.2068E-01  3.8762E-01 -1.4320E+00 -1.9963E-01 -1.6602E-01
             7.3958E-01
 GRADIENT:   1.9418E-02  5.3376E-02  8.5166E-02 -1.2543E-02 -1.0513E-01 -4.2409E-03 -5.2741E-03 -3.6704E-04 -5.3303E-03 -1.5439E-02
            -4.3285E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      983
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.8217E-04  8.7070E-03 -6.1515E-03 -1.6580E-02 -9.6540E-03
 SE:             2.9550E-02  2.1669E-02  3.5697E-03  2.1535E-02  1.8938E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8428E-01  6.8782E-01  8.4840E-02  4.4136E-01  6.1021E-01

 ETASHRINKSD(%)  1.0036E+00  2.7405E+01  8.8041E+01  2.7854E+01  3.6556E+01
 ETASHRINKVR(%)  1.9971E+00  4.7300E+01  9.8570E+01  4.7950E+01  5.9749E+01
 EBVSHRINKSD(%)  1.3152E+00  2.7321E+01  8.8453E+01  2.7628E+01  3.5789E+01
 EBVSHRINKVR(%)  2.6131E+00  4.7177E+01  9.8667E+01  4.7623E+01  5.8769E+01
 RELATIVEINF(%)  9.6837E+01  3.9238E+00  9.1653E-02  4.6325E+00  2.3978E+00
 EPSSHRINKSD(%)  3.6231E+01
 EPSSHRINKVR(%)  5.9335E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1518.3742104240357     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -783.22338386029753     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1518.374       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  8.85E-01  6.28E-01  1.06E+00  7.39E-01  1.02E+00  1.33E+00  2.16E-01  7.41E-01  7.66E-01  1.90E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.315
Stop Time:
Fri Oct  1 23:58:05 CDT 2021

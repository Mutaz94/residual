Sat Oct  2 04:57:24 CDT 2021
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
$DATA ../../../../data/SD4/TD2/dat31.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1635.98534268460        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6197E+02 -2.0131E+01 -1.7836E+01  1.6073E+01  7.1879E+01  2.7773E+01  7.2289E+00 -1.7086E+00  9.4888E+00 -1.2221E+01
            -1.2008E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1639.79828170967        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.7762E-01  1.0164E+00  9.8667E-01  1.0341E+00  9.5672E-01  1.0304E+00  9.7344E-01  1.0118E+00  9.8068E-01  1.0265E+00
             1.0345E+00
 PARAMETER:  7.7364E-02  1.1622E-01  8.6585E-02  1.3349E-01  5.5758E-02  1.2991E-01  7.3077E-02  1.1172E-01  8.0493E-02  1.2617E-01
             1.3390E-01
 GRADIENT:  -1.0277E+00  2.9083E+00 -4.2672E+00  8.7357E+00  9.5102E+00  1.6297E+00  4.5311E+00 -7.9857E-02  2.0823E+00 -6.6234E-01
             3.0357E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1640.07050999105        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.7926E-01  9.7154E-01  1.0495E+00  1.0657E+00  9.6038E-01  1.0181E+00  7.9362E-01  1.0174E+00  1.0210E+00  1.0545E+00
             1.0348E+00
 PARAMETER:  7.9038E-02  7.1124E-02  1.4836E-01  1.6365E-01  5.9575E-02  1.1796E-01 -1.3115E-01  1.1721E-01  1.2083E-01  1.5309E-01
             1.3420E-01
 GRADIENT:   3.6979E+00  6.6231E+00  1.7060E+00  1.3642E+01  1.1998E+00 -2.9738E+00  9.1706E-01 -2.9917E+00  5.0788E+00 -1.5679E+00
             2.3297E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1640.59280177060        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      527
 NPARAMETR:  9.7733E-01  1.1261E+00  1.1426E+00  9.6363E-01  1.0615E+00  1.0265E+00  6.0106E-01  1.4004E+00  1.1221E+00  1.1161E+00
             1.0283E+00
 PARAMETER:  7.7073E-02  2.1876E-01  2.3328E-01  6.2953E-02  1.5972E-01  1.2614E-01 -4.0906E-01  4.3676E-01  2.1519E-01  2.0987E-01
             1.2789E-01
 GRADIENT:  -6.0353E-01  5.1815E+00  4.7521E-01  5.3887E+00 -1.1188E+00  3.2588E-01  2.0450E-01 -2.1212E-01 -3.9486E-01  4.1098E-01
            -9.8403E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1640.65344954746        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  9.7724E-01  1.0289E+00  1.2597E+00  1.0238E+00  1.0618E+00  1.0250E+00  4.7428E-01  1.4703E+00  1.1015E+00  1.1262E+00
             1.0325E+00
 PARAMETER:  7.6975E-02  1.2847E-01  3.3091E-01  1.2348E-01  1.6000E-01  1.2472E-01 -6.4595E-01  4.8545E-01  1.9668E-01  2.1889E-01
             1.3197E-01
 GRADIENT:   9.5005E-01  2.7937E+00  1.6149E+00  2.2515E+00 -2.3271E+00  5.1630E-02  7.5009E-02 -2.5311E-01  6.4486E-01 -2.4228E-01
             9.9269E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1640.68610049984        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      879
 NPARAMETR:  9.7546E-01  9.0945E-01  1.3188E+00  1.1008E+00  1.0385E+00  1.0242E+00  3.6423E-01  1.4354E+00  1.0487E+00  1.1303E+00
             1.0254E+00
 PARAMETER:  7.5150E-02  5.0804E-03  3.7669E-01  1.9606E-01  1.3782E-01  1.2393E-01 -9.0997E-01  4.6144E-01  1.4758E-01  2.2245E-01
             1.2504E-01
 GRADIENT:  -9.2535E-01  2.3260E+00  6.0341E-01  3.1205E+00 -1.3414E+00 -6.5040E-02  6.9093E-02 -1.6714E-01  1.8951E-01  4.1706E-01
            -1.1579E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1640.69465049442        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1054
 NPARAMETR:  9.7513E-01  8.3771E-01  1.3528E+00  1.1466E+00  1.0247E+00  1.0238E+00  2.7961E-01  1.4221E+00  1.0173E+00  1.1269E+00
             1.0262E+00
 PARAMETER:  7.4812E-02 -7.7086E-02  4.0216E-01  2.3676E-01  1.2437E-01  1.2356E-01 -1.1744E+00  4.5214E-01  1.1713E-01  2.1948E-01
             1.2585E-01
 GRADIENT:  -3.7950E-01  1.0259E+00  2.4674E-01  2.1329E+00 -6.4013E-01 -3.9077E-02  9.5663E-02 -4.3194E-02  4.6928E-01  2.7671E-01
            -4.0086E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1640.71622165616        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1236
 NPARAMETR:  9.7497E-01  8.2989E-01  1.3556E+00  1.1498E+00  1.0233E+00  1.0240E+00  1.6653E-01  1.4226E+00  1.0202E+00  1.1285E+00
             1.0275E+00
 PARAMETER:  7.4648E-02 -8.6465E-02  4.0428E-01  2.3963E-01  1.2300E-01  1.2372E-01 -1.6926E+00  4.5248E-01  1.2001E-01  2.2092E-01
             1.2712E-01
 GRADIENT:  -5.9831E-01  5.0704E-01 -1.7290E-02  8.1961E-01 -6.0355E-01  5.4328E-02  4.4536E-02 -4.3016E-02  3.2802E-01  1.8849E-01
             2.0616E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1640.73154758704        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1411
 NPARAMETR:  9.7516E-01  8.2504E-01  1.3657E+00  1.1519E+00  1.0254E+00  1.0239E+00  2.3472E-02  1.4343E+00  1.0208E+00  1.1303E+00
             1.0266E+00
 PARAMETER:  7.4850E-02 -9.2323E-02  4.1164E-01  2.4142E-01  1.2510E-01  1.2358E-01 -3.6520E+00  4.6069E-01  1.2055E-01  2.2248E-01
             1.2630E-01
 GRADIENT:  -8.7968E-03 -1.5736E-01 -1.8368E-01 -6.1199E-01 -1.6248E-02  2.0137E-02  2.2900E-03  5.8425E-03  5.3431E-02  5.1342E-02
            -1.2796E-01

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1640.73236777519        NO. OF FUNC. EVALS.: 128
 CUMULATIVE NO. OF FUNC. EVALS.:     1539
 NPARAMETR:  9.7602E-01  8.2394E-01  1.3694E+00  1.1527E+00  1.0260E+00  1.0242E+00  1.0000E-02  1.4377E+00  1.0199E+00  1.1303E+00
             1.0270E+00
 PARAMETER:  7.5732E-02 -9.3652E-02  4.1437E-01  2.4209E-01  1.2565E-01  1.2394E-01 -4.8259E+00  4.6302E-01  1.1971E-01  2.2252E-01
             1.2667E-01
 GRADIENT:   1.8757E+00 -1.2603E-01  2.2655E-02 -7.2179E-01 -2.1393E-01  1.7095E-01  0.0000E+00 -1.4788E-02 -9.2960E-04  3.0376E-02
            -6.3856E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1539
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.7916E-04 -5.4886E-04 -3.8144E-02 -3.6885E-03 -3.7084E-02
 SE:             2.9835E-02  1.8082E-04  1.6532E-02  2.9192E-02  2.2238E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8184E-01  2.4024E-03  2.1037E-02  8.9945E-01  9.5402E-02

 ETASHRINKSD(%)  4.9958E-02  9.9394E+01  4.4617E+01  2.2035E+00  2.5499E+01
 ETASHRINKVR(%)  9.9892E-02  9.9996E+01  6.9327E+01  4.3584E+00  4.4496E+01
 EBVSHRINKSD(%)  4.4356E-01  9.9479E+01  4.8250E+01  2.7445E+00  2.2593E+01
 EBVSHRINKVR(%)  8.8515E-01  9.9997E+01  7.3219E+01  5.4136E+00  4.0082E+01
 RELATIVEINF(%)  9.8774E+01  2.2969E-04  7.8780E+00  9.4662E+00  1.6550E+01
 EPSSHRINKSD(%)  4.5247E+01
 EPSSHRINKVR(%)  7.0021E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1640.7323677751920     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -905.58154121145378     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    19.34
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1640.732       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.76E-01  8.24E-01  1.37E+00  1.15E+00  1.03E+00  1.02E+00  1.00E-02  1.44E+00  1.02E+00  1.13E+00  1.03E+00
 


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
 #CPUT: Total CPU Time in Seconds,       19.374
Stop Time:
Sat Oct  2 04:57:45 CDT 2021
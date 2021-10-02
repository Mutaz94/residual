Sat Oct  2 05:30:07 CDT 2021
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
$DATA ../../../../data/SD4/D/dat15.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m15.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -945.766748581378        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.2731E+02 -1.6741E+02 -4.0038E+01 -2.3694E+02  2.1107E+02 -3.6209E+02 -3.3666E+02 -5.9746E+01 -4.9022E+02 -1.5237E+02
            -4.1999E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1408.22922260128        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      129
 NPARAMETR:  1.2676E+00  1.1376E+00  8.7516E-01  1.0500E+00  1.1629E+00  1.3713E+00  2.5151E+00  1.1055E+00  1.5386E+00  1.2894E+00
             9.9566E-01
 PARAMETER:  3.3709E-01  2.2889E-01 -3.3344E-02  1.4880E-01  2.5088E-01  4.1574E-01  1.0223E+00  2.0028E-01  5.3086E-01  3.5421E-01
             9.5652E-02
 GRADIENT:   1.3740E+02 -6.1479E+01 -5.5042E+01  9.3108E+01  9.8430E+01 -1.6125E+02 -8.9207E+01 -1.0159E+01  1.8876E+01  7.6629E+00
             1.3490E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1451.25930646927        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      306
 NPARAMETR:  1.1902E+00  1.4299E+00  9.2473E-01  8.4295E-01  1.1908E+00  1.5738E+00  3.4928E+00  1.7396E+00  1.4017E+00  1.1623E+00
             8.6707E-01
 PARAMETER:  2.7408E-01  4.5761E-01  2.1751E-02 -7.0851E-02  2.7463E-01  5.5351E-01  1.3507E+00  6.5366E-01  4.3769E-01  2.5039E-01
            -4.2639E-02
 GRADIENT:   5.1535E+01 -7.0370E+00 -2.9706E+01 -3.8458E-01  4.5000E+01 -5.1641E+01  2.8908E+01  5.9416E+00  7.9634E+00 -2.3090E+00
            -4.0670E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1452.65872834208        NO. OF FUNC. EVALS.: 199
 CUMULATIVE NO. OF FUNC. EVALS.:      505
 NPARAMETR:  1.1894E+00  1.4253E+00  9.4423E-01  8.4826E-01  1.1974E+00  1.5941E+00  3.5029E+00  1.7644E+00  1.3988E+00  1.1719E+00
             8.7454E-01
 PARAMETER:  2.7344E-01  4.5435E-01  4.2609E-02 -6.4567E-02  2.8013E-01  5.6629E-01  1.3536E+00  6.6781E-01  4.3563E-01  2.5865E-01
            -3.4052E-02
 GRADIENT:   4.9799E+01 -6.5135E+00 -2.8917E+01 -6.5876E-01  4.5053E+01 -4.4075E+01  2.8576E+01  5.6935E+00  8.0490E+00 -1.8766E+00
            -3.6464E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1457.06201942284        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      686             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1891E+00  1.4253E+00  9.7508E-01  8.4839E-01  1.1975E+00  1.6490E+00  3.4964E+00  1.7650E+00  1.3711E+00  1.1713E+00
             9.6940E-01
 PARAMETER:  2.7318E-01  4.5437E-01  7.4762E-02 -6.4409E-02  2.8023E-01  6.0020E-01  1.3517E+00  6.6818E-01  4.1559E-01  2.5809E-01
             6.8924E-02
 GRADIENT:   1.2942E+03  3.1481E+02 -2.1368E+01  5.5862E+01  5.3408E+01  7.7247E+02  8.9759E+02  6.3816E+00  3.3572E+01  2.7099E+00
             8.5368E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1458.53336226815        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:      826
 NPARAMETR:  1.1890E+00  1.4253E+00  1.1040E+00  8.4841E-01  1.1974E+00  1.6489E+00  3.4959E+00  1.7649E+00  1.2860E+00  1.1873E+00
             9.5276E-01
 PARAMETER:  2.7310E-01  4.5441E-01  1.9896E-01 -6.4396E-02  2.8019E-01  6.0009E-01  1.3516E+00  6.6810E-01  3.5152E-01  2.7169E-01
             5.1611E-02
 GRADIENT:   4.4983E+01 -1.3274E+00  1.7312E+00 -3.4196E+01  8.2345E+00 -2.7495E+01  2.5373E+01 -4.8928E+00 -2.9686E+00  1.1534E+00
             4.6879E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1461.65318758008        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     1018             RESET HESSIAN, TYPE I
 NPARAMETR:  1.1895E+00  1.4204E+00  1.1037E+00  8.9016E-01  1.1881E+00  1.7409E+00  3.5030E+00  1.7638E+00  1.2853E+00  1.1804E+00
             9.5259E-01
 PARAMETER:  2.7352E-01  4.5096E-01  1.9866E-01 -1.6353E-02  2.7239E-01  6.5438E-01  1.3536E+00  6.6745E-01  3.5098E-01  2.6588E-01
             5.1430E-02
 GRADIENT:   1.3398E+03  3.0797E+02 -2.4948E+00  5.6872E+01  3.3233E+01  9.0684E+02  8.8830E+02 -4.6697E-01  2.4673E+01  3.5904E+00
             1.1162E+00

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1461.65318758008        NO. OF FUNC. EVALS.:  66
 CUMULATIVE NO. OF FUNC. EVALS.:     1084
 NPARAMETR:  1.1910E+00  1.4204E+00  1.1027E+00  8.8975E-01  1.1896E+00  1.7462E+00  3.5248E+00  1.7638E+00  1.2832E+00  1.1790E+00
             9.5164E-01
 PARAMETER:  2.7352E-01  4.5096E-01  1.9866E-01 -1.6353E-02  2.7239E-01  6.5438E-01  1.3536E+00  6.6745E-01  3.5098E-01  2.6588E-01
             5.1430E-02
 GRADIENT:  -1.3687E+04  5.1893E+00  1.8894E+04  3.7497E+04 -1.3756E+04 -2.8888E+03 -2.7333E+03 -1.1842E+02  5.3420E+03  7.0562E+03
             2.1648E-01
 NUMSIGDIG:         2.3         5.8         2.3         2.3         2.3         2.3         2.3         4.3         2.3         2.3
                    1.9

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1084
 NO. OF SIG. DIGITS IN FINAL EST.:  1.9
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.1923E-02  1.9071E-03 -5.1466E-02 -9.7598E-03 -4.6453E-02
 SE:             3.1533E-02  2.3199E-02  1.5346E-02  1.8260E-02  1.9698E-02
 N:                     100         100         100         100         100

 P VAL.:         4.8690E-01  9.3448E-01  7.9755E-04  5.9299E-01  1.8363E-02

 ETASHRINKSD(%)  1.0000E-10  2.2282E+01  4.8588E+01  3.8828E+01  3.4008E+01
 ETASHRINKVR(%)  1.0000E-10  3.9598E+01  7.3568E+01  6.2580E+01  5.6451E+01
 EBVSHRINKSD(%)  1.3949E-01  7.8241E+00  5.6037E+01  4.4077E+01  2.8420E+01
 EBVSHRINKVR(%)  2.7879E-01  1.5036E+01  8.0672E+01  6.8726E+01  4.8763E+01
 RELATIVEINF(%)  9.9625E+01  3.0217E+01  5.1106E+00  6.9366E+00  2.0030E+01
 EPSSHRINKSD(%)  4.7067E+01
 EPSSHRINKVR(%)  7.1981E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1461.6531875800761     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -726.50236101633789     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.25
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1461.653       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.19E+00  1.42E+00  1.10E+00  8.90E-01  1.19E+00  1.74E+00  3.50E+00  1.76E+00  1.29E+00  1.18E+00  9.53E-01
 


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
 #CPUT: Total CPU Time in Seconds,       17.280
Stop Time:
Sat Oct  2 05:30:26 CDT 2021
Sat Oct  2 04:33:03 CDT 2021
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
$DATA ../../../../data/SD4/TD1/dat60.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m60.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1684.02119802473        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4910E+02 -3.7041E+01 -4.9398E+01  4.2702E+01  6.4770E+01  8.9396E+01 -1.1871E+01  7.0491E+00  1.4636E+01  5.0246E+00
             2.2648E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1686.48625359619        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0171E+00  1.1512E+00  1.1709E+00  9.6297E-01  1.0196E+00  1.0821E+00  1.1116E+00  9.6391E-01  9.6594E-01  9.6032E-01
             8.9037E-01
 PARAMETER:  1.1695E-01  2.4084E-01  2.5779E-01  6.2264E-02  1.1941E-01  1.7894E-01  2.0576E-01  6.3244E-02  6.5347E-02  5.9511E-02
            -1.6117E-02
 GRADIENT:   3.4030E+01  4.1019E+01  4.5448E+01  1.0691E+00 -8.2068E+01  2.4919E+01 -7.2051E+00 -9.1442E+00 -8.7080E-01 -1.0534E+01
            -3.5996E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1689.26128518449        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      332
 NPARAMETR:  1.0164E+00  1.0703E+00  1.5599E+00  1.0195E+00  1.1441E+00  1.0837E+00  1.3396E+00  1.2474E+00  8.6426E-01  1.0898E+00
             9.4584E-01
 PARAMETER:  1.1629E-01  1.6793E-01  5.4463E-01  1.1935E-01  2.3458E-01  1.8042E-01  3.9239E-01  3.2103E-01 -4.5886E-02  1.8601E-01
             4.4318E-02
 GRADIENT:   3.4690E+01  2.3628E+01  2.6606E+01 -5.4573E+00 -2.6240E+01  2.5903E+01  8.6184E+00 -1.1892E+01 -3.8278E+00 -3.1234E+00
            -9.2170E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1691.47815314756        NO. OF FUNC. EVALS.: 196
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.9763E-01  1.0434E+00  1.5682E+00  1.0375E+00  1.1654E+00  1.0121E+00  1.2544E+00  1.2588E+00  9.0027E-01  1.1247E+00
             9.6491E-01
 PARAMETER:  9.7629E-02  1.4252E-01  5.4993E-01  1.3684E-01  2.5302E-01  1.1207E-01  3.2662E-01  3.3014E-01 -5.0561E-03  2.1750E-01
             6.4282E-02
 GRADIENT:  -1.9754E+00  1.2343E+01  1.2703E+01  6.5112E+00 -8.6603E-01 -4.1649E-01  9.2905E-01 -8.8546E+00 -1.5631E-01  4.3880E-01
             2.3765E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1692.47049627450        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.9613E-01  7.2323E-01  1.5682E+00  1.2413E+00  1.0490E+00  1.0102E+00  1.6505E+00  1.2588E+00  7.8983E-01  1.0324E+00
             9.5657E-01
 PARAMETER:  9.6126E-02 -2.2402E-01  5.4990E-01  3.1615E-01  1.4779E-01  1.1019E-01  6.0109E-01  3.3015E-01 -1.3594E-01  1.3193E-01
             5.5594E-02
 GRADIENT:  -2.1745E-01  8.5991E+00  7.8563E-01  1.7811E+01 -2.1581E+00 -2.1453E-01 -2.4877E-01 -2.1579E+00 -1.7505E-01 -1.1056E+00
            -3.1503E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1692.61434614007        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      884             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9648E-01  6.6776E-01  1.5752E+00  1.2582E+00  1.0380E+00  1.0123E+00  1.7441E+00  1.2770E+00  7.7528E-01  1.0342E+00
             9.5542E-01
 PARAMETER:  9.6475E-02 -3.0382E-01  5.5438E-01  3.2970E-01  1.3728E-01  1.1224E-01  6.5627E-01  3.4448E-01 -1.5453E-01  1.3358E-01
             5.4395E-02
 GRADIENT:   4.9672E+02  5.4082E+01  7.1830E+00  4.6762E+02  9.1688E+00  1.1663E+02  3.0345E+01  7.5003E-01  1.5461E+01  1.4818E+00
             9.4203E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1692.64479865330        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1047
 NPARAMETR:  9.9602E-01  6.6709E-01  1.5928E+00  1.2643E+00  1.0412E+00  1.0125E+00  1.7342E+00  1.2918E+00  7.7585E-01  1.0315E+00
             9.5609E-01
 PARAMETER:  9.6010E-02 -3.0483E-01  5.6549E-01  3.3452E-01  1.4041E-01  1.1244E-01  6.5055E-01  3.5602E-01 -1.5379E-01  1.3101E-01
             5.5101E-02
 GRADIENT:   4.9524E+02  5.6421E+01  7.3946E+00  4.8380E+02  9.2122E+00  1.1705E+02  2.8705E+01  6.1433E-01  1.5344E+01  6.4736E-01
             9.2102E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1692.65501560854        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:     1211
 NPARAMETR:  9.9634E-01  6.6722E-01  1.5975E+00  1.2637E+00  1.0418E+00  1.0122E+00  1.7423E+00  1.2964E+00  7.7608E-01  1.0345E+00
             9.5586E-01
 PARAMETER:  9.6336E-02 -3.0464E-01  5.6843E-01  3.3408E-01  1.4094E-01  1.1209E-01  6.5522E-01  3.5958E-01 -1.5350E-01  1.3393E-01
             5.4855E-02
 GRADIENT:  -2.7526E+05 -9.0360E+04 -2.4200E+04  3.5085E-01 -9.7650E+04 -2.4557E+05  4.2010E+04  7.6449E+04 -1.7933E+05  2.0552E+05
            -2.7569E+05

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1211
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.0812E-04  9.7896E-03 -3.6807E-02 -1.4758E-02 -3.3602E-02
 SE:             2.9882E-02  1.9269E-02  1.5590E-02  2.3156E-02  2.1356E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8376E-01  6.1141E-01  1.8224E-02  5.2392E-01  1.1563E-01

 ETASHRINKSD(%)  1.0000E-10  3.5448E+01  4.7773E+01  2.2426E+01  2.8453E+01
 ETASHRINKVR(%)  1.0000E-10  5.8330E+01  7.2723E+01  3.9822E+01  4.8811E+01
 EBVSHRINKSD(%)  3.8085E-01  3.7289E+01  5.3191E+01  2.1658E+01  2.4486E+01
 EBVSHRINKVR(%)  7.6025E-01  6.0673E+01  7.8089E+01  3.8625E+01  4.2977E+01
 RELATIVEINF(%)  9.8526E+01  2.1827E+00  4.4630E+00  3.5635E+00  1.2792E+01
 EPSSHRINKSD(%)  4.5007E+01
 EPSSHRINKVR(%)  6.9758E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1692.6550156085411     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -957.50418904480296     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.73
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1692.655       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.96E-01  6.67E-01  1.60E+00  1.26E+00  1.04E+00  1.01E+00  1.74E+00  1.30E+00  7.76E-01  1.03E+00  9.56E-01
 


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
 #CPUT: Total CPU Time in Seconds,       16.773
Stop Time:
Sat Oct  2 04:33:21 CDT 2021

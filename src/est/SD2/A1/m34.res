Fri Oct  1 09:22:06 CDT 2021
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
$DATA ../../../../data/SD2/A1/dat34.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m34.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1733.50388432595        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9784E+02 -4.7509E+01  2.4302E+01 -1.9880E+01  1.7066E+02 -5.1149E+00 -2.7643E+01 -2.4619E+01  3.3609E+01 -8.6423E+01
            -5.2422E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1854.89818242065        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  9.1225E-01  1.0063E+00  7.5423E-01  1.0634E+00  7.8394E-01  9.3836E-01  1.0994E+00  1.0348E+00  7.6524E-01  1.2105E+00
             1.6717E+00
 PARAMETER:  8.1603E-03  1.0629E-01 -1.8206E-01  1.6148E-01 -1.4342E-01  3.6379E-02  1.9477E-01  1.3417E-01 -1.6756E-01  2.9104E-01
             6.1383E-01
 GRADIENT:   2.5250E+01  2.3116E+01 -7.0358E+00  6.8525E+01  4.2944E+00 -3.6588E+01 -1.1343E+01  1.0332E+01  2.1216E+00  2.9125E+01
             7.9048E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1858.18767966296        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      204
 NPARAMETR:  9.0487E-01  9.2280E-01  6.4883E-01  1.1138E+00  6.6235E-01  9.7307E-01  1.5733E+00  8.7474E-01  6.3402E-01  1.1752E+00
             1.5671E+00
 PARAMETER:  3.5037E-05  1.9655E-02 -3.3258E-01  2.0775E-01 -3.1196E-01  7.2702E-02  5.5321E-01 -3.3831E-02 -3.5567E-01  2.6140E-01
             5.4920E-01
 GRADIENT:  -1.1247E+02  5.0061E+01 -4.9095E+00  4.5915E+01 -3.6099E+01 -3.6025E+01  1.2430E+01  8.5747E+00 -1.2497E+01  3.5495E+01
             3.8826E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1876.50567376343        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      384
 NPARAMETR:  9.4702E-01  6.5866E-01  5.1820E-01  1.2092E+00  5.0839E-01  1.0615E+00  1.5690E+00  4.5266E-01  7.5665E-01  7.3121E-01
             1.4786E+00
 PARAMETER:  4.5569E-02 -3.1755E-01 -5.5740E-01  2.8995E-01 -5.7650E-01  1.5965E-01  5.5043E-01 -6.9261E-01 -1.7886E-01 -2.1305E-01
             4.9112E-01
 GRADIENT:  -3.1680E+00  2.0151E+01  1.1365E+01  3.4713E+01 -1.9671E+01  4.4254E+00 -1.1523E+00 -1.6481E+00 -1.3554E-02 -4.1710E+00
            -1.1609E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1877.76345519340        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      559
 NPARAMETR:  9.4615E-01  5.3270E-01  5.6015E-01  1.2648E+00  5.0252E-01  1.0442E+00  1.8457E+00  6.8215E-01  7.2020E-01  7.1775E-01
             1.5000E+00
 PARAMETER:  4.4644E-02 -5.2980E-01 -4.7955E-01  3.3494E-01 -5.8812E-01  1.4324E-01  7.1287E-01 -2.8250E-01 -2.2822E-01 -2.3164E-01
             5.0549E-01
 GRADIENT:  -1.2413E+00  2.6285E+00  3.9670E-01  2.9409E+00 -2.4264E+00 -2.1726E-01  2.0391E-01  5.6503E-01  1.3168E+00  4.3117E-01
             2.2667E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1877.83877081165        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      738             RESET HESSIAN, TYPE I
 NPARAMETR:  9.4535E-01  4.6575E-01  5.8982E-01  1.3027E+00  5.0420E-01  1.0429E+00  2.0399E+00  7.1656E-01  7.0014E-01  7.3205E-01
             1.4973E+00
 PARAMETER:  4.3800E-02 -6.6411E-01 -4.2794E-01  3.6446E-01 -5.8477E-01  1.4204E-01  8.1290E-01 -2.3329E-01 -2.5648E-01 -2.1190E-01
             5.0363E-01
 GRADIENT:   1.5275E+02  2.3900E+01  1.3569E+01  1.7412E+02  5.4943E+01  1.8398E+01  1.4451E+01  5.7249E-01  8.8055E+00  1.5553E+00
             5.2411E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1877.83944934208        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:      904
 NPARAMETR:  9.4535E-01  4.6614E-01  5.8995E-01  1.3028E+00  5.0414E-01  1.0429E+00  2.0400E+00  7.1181E-01  7.0009E-01  7.3123E-01
             1.4971E+00
 PARAMETER:  4.3796E-02 -6.6327E-01 -4.2772E-01  3.6450E-01 -5.8491E-01  1.4200E-01  8.1293E-01 -2.3995E-01 -2.5655E-01 -2.1302E-01
             5.0351E-01
 GRADIENT:   1.4160E-05  5.0411E-02  5.3425E-01  2.1465E-01 -5.1688E-01  1.9502E-03  4.6149E-02 -2.8126E-02 -2.8323E-02 -7.9832E-02
            -7.7798E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:      904
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4190E-03  2.7623E-02 -2.1122E-02 -2.2434E-02  1.1487E-03
 SE:             2.9690E-02  1.9167E-02  1.4296E-02  2.4948E-02  1.9655E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6188E-01  1.4953E-01  1.3955E-01  3.6854E-01  9.5340E-01

 ETASHRINKSD(%)  5.3633E-01  3.5790E+01  5.2108E+01  1.6421E+01  3.4154E+01
 ETASHRINKVR(%)  1.0698E+00  5.8770E+01  7.7063E+01  3.0145E+01  5.6644E+01
 EBVSHRINKSD(%)  7.9023E-01  3.8616E+01  5.2313E+01  1.5367E+01  3.2508E+01
 EBVSHRINKVR(%)  1.5742E+00  6.2320E+01  7.7259E+01  2.8372E+01  5.4448E+01
 RELATIVEINF(%)  9.7831E+01  7.1766E+00  2.6218E+00  1.6452E+01  5.5340E+00
 EPSSHRINKSD(%)  3.2430E+01
 EPSSHRINKVR(%)  5.4343E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1877.8394493420813     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -958.90091613740856     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.26
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1877.839       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.45E-01  4.66E-01  5.90E-01  1.30E+00  5.04E-01  1.04E+00  2.04E+00  7.12E-01  7.00E-01  7.31E-01  1.50E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.295
Stop Time:
Fri Oct  1 09:22:21 CDT 2021

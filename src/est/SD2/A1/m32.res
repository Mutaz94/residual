Fri Oct  1 09:21:34 CDT 2021
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
$DATA ../../../../data/SD2/A1/dat32.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m32.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1810.43713241965        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.3808E+02 -1.5395E+01  5.5904E+01  1.8951E+01  9.1902E+01  7.4419E+01  5.4618E+00 -1.5743E+02  1.1981E+01 -1.4078E+01
            -5.0079E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1899.45525422024        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1251E+00  1.1008E+00  7.7139E-01  1.0087E+00  8.6345E-01  1.0270E+00  8.6942E-01  1.6337E+00  8.0855E-01  7.5520E-01
             2.2576E+00
 PARAMETER:  2.1784E-01  1.9605E-01 -1.5956E-01  1.0863E-01 -4.6819E-02  1.2668E-01 -3.9933E-02  5.9087E-01 -1.1251E-01 -1.8077E-01
             9.1429E-01
 GRADIENT:   3.1677E+02  1.9738E+01 -1.9444E+01  4.6739E+01 -1.2785E+01  5.2526E+01 -4.6697E+00  2.9913E+01 -1.5050E+01  1.7882E+01
             2.0579E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1908.29589502403        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0915E+00  1.0650E+00  4.2020E-01  9.8102E-01  5.9102E-01  1.0147E+00  1.0317E+00  1.3320E+00  9.4271E-01  3.0506E-01
             2.1255E+00
 PARAMETER:  1.8758E-01  1.6299E-01 -7.6701E-01  8.0834E-02 -4.2591E-01  1.1455E-01  1.3119E-01  3.8666E-01  4.1003E-02 -1.0873E+00
             8.5400E-01
 GRADIENT:   2.3712E+02  9.1131E+01  1.6389E+01  3.8800E+01 -9.6165E+01  5.2081E+01  1.5770E+01  3.1854E+01  1.5231E+01  4.1451E+00
             1.8126E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1945.88864977742        NO. OF FUNC. EVALS.: 116
 CUMULATIVE NO. OF FUNC. EVALS.:      272
 NPARAMETR:  1.0109E+00  9.3476E-01  5.0083E-01  1.0313E+00  6.1591E-01  8.4829E-01  1.1157E+00  1.0017E+00  8.4619E-01  3.0830E-01
             1.7816E+00
 PARAMETER:  1.1083E-01  3.2530E-02 -5.9149E-01  1.3084E-01 -3.8466E-01 -6.4529E-02  2.0949E-01  1.0169E-01 -6.7006E-02 -1.0767E+00
             6.7749E-01
 GRADIENT:  -1.1399E+02  2.1416E+01  5.0745E+00 -8.2858E+00 -4.0053E+01 -1.9386E+01  4.1923E+00  1.2244E+01 -2.4048E+00  8.2954E-01
             6.3324E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1956.09020788333        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      447
 NPARAMETR:  1.0497E+00  8.4734E-01  6.2349E-01  1.1045E+00  6.7875E-01  8.7882E-01  1.1933E+00  4.9929E-01  8.4075E-01  6.2677E-01
             1.6434E+00
 PARAMETER:  1.4855E-01 -6.5657E-02 -3.7242E-01  1.9935E-01 -2.8750E-01 -2.9177E-02  2.7670E-01 -5.9457E-01 -7.3458E-02 -3.6717E-01
             5.9676E-01
 GRADIENT:   1.0826E+01  3.6315E-01 -4.3643E+00  6.0501E+00  9.5084E+00  4.4971E-01 -1.4482E-01  9.1660E-01 -8.3488E-02  1.3336E+00
            -3.5921E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1956.57892735852        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      623            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0461E+00  7.6679E-01  5.6357E-01  1.1307E+00  6.1071E-01  8.7777E-01  1.2985E+00  3.2841E-01  8.1902E-01  5.7230E-01
             1.6509E+00
 PARAMETER:  1.4511E-01 -1.6555E-01 -4.7346E-01  2.2286E-01 -3.9313E-01 -3.0376E-02  3.6123E-01 -1.0135E+00 -9.9653E-02 -4.5809E-01
             6.0129E-01
 GRADIENT:   2.1622E+02  1.2301E+01  9.1552E+00  7.8909E+01  2.3321E+01  1.1442E+01  4.2137E+00  2.2856E-01  2.1660E+00  6.0543E-01
             5.8293E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1956.58142540786        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      798
 NPARAMETR:  1.0459E+00  7.6794E-01  5.6344E-01  1.1303E+00  6.1060E-01  8.7771E-01  1.2984E+00  3.1712E-01  8.1941E-01  5.7567E-01
             1.6510E+00
 PARAMETER:  1.4487E-01 -1.6404E-01 -4.7369E-01  2.2244E-01 -3.9332E-01 -3.0444E-02  3.6112E-01 -1.0485E+00 -9.9175E-02 -4.5221E-01
             6.0136E-01
 GRADIENT:   3.9761E-01  1.7614E-01  1.0644E+00  8.5155E-02 -1.1812E+00  1.1103E-02  6.8359E-02  1.1796E-03 -7.7565E-02 -1.2643E-01
            -6.2039E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1956.58142540786        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      820
 NPARAMETR:  1.0459E+00  7.6794E-01  5.6344E-01  1.1303E+00  6.1060E-01  8.7771E-01  1.2984E+00  3.1712E-01  8.1941E-01  5.7567E-01
             1.6510E+00
 PARAMETER:  1.4487E-01 -1.6404E-01 -4.7369E-01  2.2244E-01 -3.9332E-01 -3.0444E-02  3.6112E-01 -1.0485E+00 -9.9175E-02 -4.5221E-01
             6.0136E-01
 GRADIENT:   3.9761E-01  1.7614E-01  1.0644E+00  8.5155E-02 -1.1812E+00  1.1103E-02  6.8359E-02  1.1796E-03 -7.7565E-02 -1.2643E-01
            -6.2039E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      820
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0073E-03  1.0719E-02 -1.0029E-02 -1.0209E-02 -1.5042E-03
 SE:             2.9640E-02  2.0803E-02  6.6314E-03  2.5671E-02  1.7967E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7289E-01  6.0637E-01  1.3044E-01  6.9085E-01  9.3328E-01

 ETASHRINKSD(%)  7.0076E-01  3.0307E+01  7.7784E+01  1.4000E+01  3.9807E+01
 ETASHRINKVR(%)  1.3966E+00  5.1429E+01  9.5064E+01  2.6039E+01  6.3768E+01
 EBVSHRINKSD(%)  1.0750E+00  3.0443E+01  7.8314E+01  1.4029E+01  3.9834E+01
 EBVSHRINKVR(%)  2.1384E+00  5.1618E+01  9.5297E+01  2.6091E+01  6.3801E+01
 RELATIVEINF(%)  9.7448E+01  4.9569E+00  4.4886E-01  1.2996E+01  2.2456E+00
 EPSSHRINKSD(%)  3.0134E+01
 EPSSHRINKVR(%)  5.1187E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1956.5814254078593     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1037.6428922031866     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.03
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1956.581       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  7.68E-01  5.63E-01  1.13E+00  6.11E-01  8.78E-01  1.30E+00  3.17E-01  8.19E-01  5.76E-01  1.65E+00
 


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
 #CPUT: Total CPU Time in Seconds,       11.085
Stop Time:
Fri Oct  1 09:21:47 CDT 2021

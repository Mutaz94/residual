Fri Oct  1 04:41:01 CDT 2021
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
$DATA ../../../../data/SD1/S2/dat76.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m76.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -3767.39439159504        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2423E+02  1.0908E+02  5.8838E+01  1.3078E+02  4.7100E+01 -3.6384E+00  1.6398E+00 -1.3778E+01 -3.2820E-01 -1.1122E+01
            -4.8722E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3772.97840412165        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.6073E-01  9.6598E-01  8.8636E-01  9.9943E-01  9.3931E-01  1.1821E+00  1.0136E+00  1.0406E+00  1.0477E+00  1.0698E+00
             9.9170E-01
 PARAMETER:  5.9941E-02  6.5390E-02 -2.0630E-02  9.9425E-02  3.7387E-02  2.6729E-01  1.1351E-01  1.3975E-01  1.4662E-01  1.6745E-01
             9.1667E-02
 GRADIENT:  -1.4122E+01  2.5849E+01 -1.4635E+01  1.9236E-01 -1.9775E+01  2.2272E+01  6.7975E-01  3.2626E+00  4.2679E-01  4.7620E+00
            -4.6275E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3773.18764336216        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.6262E-01  9.3955E-01  8.6756E-01  1.0139E+00  9.0815E-01  1.1747E+00  1.0107E+00  9.8814E-01  1.0630E+00  1.0280E+00
             9.9693E-01
 PARAMETER:  6.1904E-02  3.7649E-02 -4.2066E-02  1.1384E-01  3.6546E-03  2.6099E-01  1.1065E-01  8.8072E-02  1.6107E-01  1.2759E-01
             9.6927E-02
 GRADIENT:  -1.1173E+01  2.6448E+01 -1.1743E+01  3.9813E+00 -2.9836E+01  1.9992E+01 -1.3800E+00  2.3139E+00  3.1284E+00  2.3767E+00
            -3.5655E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3774.86818816147        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.6977E-01  9.5098E-01  9.0354E-01  1.0022E+00  9.4916E-01  1.1153E+00  1.0075E+00  9.9659E-01  1.0474E+00  1.0382E+00
             1.0158E+00
 PARAMETER:  6.9307E-02  4.9737E-02 -1.4390E-03  1.0217E-01  4.7825E-02  2.0915E-01  1.0748E-01  9.6588E-02  1.4632E-01  1.3753E-01
             1.1565E-01
 GRADIENT:  -4.1558E-02  8.8124E-01 -9.6491E-01 -2.0318E-01 -9.2821E-02  6.8000E-01 -5.4652E-01 -6.6833E-01  9.5206E-01  5.9678E-01
            -1.1647E+00

0ITERATION NO.:   17    OBJECTIVE VALUE:  -3774.87778323945        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:      585
 NPARAMETR:  9.6981E-01  9.5027E-01  9.0610E-01  1.0026E+00  9.4977E-01  1.1134E+00  1.0136E+00  1.0065E+00  1.0429E+00  1.0346E+00
             1.0160E+00
 PARAMETER:  6.9343E-02  4.8996E-02  1.3908E-03  1.0261E-01  4.8463E-02  2.0740E-01  1.1347E-01  1.0646E-01  1.4197E-01  1.3405E-01
             1.1591E-01
 GRADIENT:  -4.5518E-03  5.3690E-02 -7.1791E-02  2.2110E-02 -2.2816E-02 -4.3424E-03  6.4822E-03  1.5369E-03 -2.6882E-03  2.2072E-03
            -3.1440E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      585
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1714E-03 -3.0160E-02 -2.4396E-02  1.3933E-02 -3.0513E-02
 SE:             2.9934E-02  2.2460E-02  1.9076E-02  2.8019E-02  2.4433E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6878E-01  1.7933E-01  2.0092E-01  6.1900E-01  2.1173E-01

 ETASHRINKSD(%)  1.0000E-10  2.4756E+01  3.6094E+01  6.1320E+00  1.8145E+01
 ETASHRINKVR(%)  1.0000E-10  4.3384E+01  5.9160E+01  1.1888E+01  3.2998E+01
 EBVSHRINKSD(%)  2.4690E-01  2.4657E+01  3.6873E+01  6.9471E+00  1.7589E+01
 EBVSHRINKVR(%)  4.9320E-01  4.3235E+01  6.0150E+01  1.3412E+01  3.2084E+01
 RELATIVEINF(%)  9.9504E+01  2.8449E+01  2.7663E+01  6.2960E+01  2.9887E+01
 EPSSHRINKSD(%)  2.1840E+01
 EPSSHRINKVR(%)  3.8911E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3774.8777832394503     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -2120.7884234710396     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.41
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3774.878       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.70E-01  9.50E-01  9.06E-01  1.00E+00  9.50E-01  1.11E+00  1.01E+00  1.01E+00  1.04E+00  1.03E+00  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.482
Stop Time:
Fri Oct  1 04:41:18 CDT 2021
Fri Oct  1 10:48:39 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat88.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m88.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   274.362509286710        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2716E+02  3.0568E+01  1.4863E+02  4.6148E+00  2.9948E+02  4.6337E+01 -6.9109E+01 -2.1400E+02 -3.4316E+01 -1.6951E+02
            -4.2280E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1511.83692372465        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0376E+00  1.0743E+00  1.0143E+00  1.0961E+00  9.2926E-01  8.8154E-01  9.6884E-01  9.9225E-01  9.1157E-01  9.2232E-01
             4.1827E+00
 PARAMETER:  1.3688E-01  1.7165E-01  1.1417E-01  1.9173E-01  2.6633E-02 -2.6086E-02  6.8346E-02  9.2218E-02  7.4132E-03  1.9135E-02
             1.5310E+00
 GRADIENT:   5.2228E+01  1.5255E+01 -9.4513E+00  3.2780E+01 -1.4717E+01 -1.0473E+01  7.9908E+00  5.7440E+00  1.4285E+01  2.1753E+01
             1.7214E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1529.59704323772        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  9.9915E-01  9.7162E-01  1.0005E+00  1.1188E+00  9.2057E-01  9.0931E-01  1.3351E+00  8.7035E-02  7.7872E-01  7.1559E-01
             3.7680E+00
 PARAMETER:  9.9152E-02  7.1205E-02  1.0049E-01  2.1223E-01  1.7242E-02  4.9313E-03  3.8900E-01 -2.3414E+00 -1.5011E-01 -2.3465E-01
             1.4266E+00
 GRADIENT:  -1.7776E+01  8.8106E-02 -1.3022E+01  4.4398E+00  1.2293E+01 -1.2386E+00  1.6041E+01  4.2726E-02  1.1251E+01  1.2517E+01
             8.3871E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1538.18573101977        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0013E+00  1.0423E+00  1.3546E+00  1.0908E+00  1.0872E+00  9.1107E-01  8.6928E-01  2.0463E-01  8.8049E-01  3.7057E-01
             3.5340E+00
 PARAMETER:  1.0130E-01  1.4139E-01  4.0348E-01  1.8694E-01  1.8359E-01  6.8592E-03 -4.0088E-02 -1.4865E+00 -2.7272E-02 -8.9272E-01
             1.3624E+00
 GRADIENT:   5.6021E+00  3.1613E+00 -3.4096E+00  9.5802E+00  5.9800E+00 -4.7591E-01  2.0205E+00  1.3414E-01 -4.3636E-01  1.6371E+00
            -5.3634E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1539.58373666904        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      297
 NPARAMETR:  9.9991E-01  1.1442E+00  1.6548E+00  1.0111E+00  1.2009E+00  9.1150E-01  3.9582E-01  2.6923E-01  1.0684E+00  1.4488E-01
             3.5459E+00
 PARAMETER:  9.9915E-02  2.3474E-01  6.0369E-01  1.1100E-01  2.8311E-01  7.3360E-03 -8.2679E-01 -1.2122E+00  1.6615E-01 -1.8319E+00
             1.3658E+00
 GRADIENT:   4.2413E+00 -4.1011E+00  4.7012E-01 -1.0860E+01  2.0803E-01  6.8658E-01  9.9890E-01  1.6845E-01  1.2773E+00  1.4733E-01
            -5.4958E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1540.04534292566        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  9.9889E-01  1.0674E+00  1.7302E+00  1.0688E+00  1.1954E+00  9.1086E-01  1.2146E-01  1.2702E-01  1.0528E+00  2.1215E-02
             3.5622E+00
 PARAMETER:  9.8894E-02  1.6521E-01  6.4821E-01  1.6649E-01  2.7847E-01  6.6367E-03 -2.0081E+00 -1.9634E+00  1.5142E-01 -3.7530E+00
             1.3704E+00
 GRADIENT:   8.9589E-01  2.8134E+00  3.3256E-01  4.4356E+00 -7.8144E-01  4.1985E-01  1.1704E-01  3.9031E-02  7.2453E-01  3.0259E-03
            -2.4211E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1540.05926987943        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      440
 NPARAMETR:  9.9862E-01  1.0656E+00  1.7079E+00  1.0674E+00  1.1915E+00  9.0981E-01  7.6688E-02  7.8799E-02  1.0539E+00  1.0704E-02
             3.5669E+00
 PARAMETER:  9.8620E-02  1.6353E-01  6.3525E-01  1.6526E-01  2.7518E-01  5.4792E-03 -2.4680E+00 -2.4409E+00  1.5254E-01 -4.4371E+00
             1.3717E+00
 GRADIENT:   2.4028E-01  9.5309E-01  7.4612E-03  1.8259E+00  3.1962E-02  9.0082E-02  5.4592E-02  1.5867E-02  5.5806E-01  8.1024E-04
            -6.2796E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1540.41194543013        NO. OF FUNC. EVALS.: 114
 CUMULATIVE NO. OF FUNC. EVALS.:      554
 NPARAMETR:  1.0100E+00  1.0657E+00  1.7623E+00  1.0741E+00  1.2079E+00  9.1577E-01  6.5498E-02  7.5091E-02  1.0460E+00  1.0000E-02
             3.6130E+00
 PARAMETER:  1.0995E-01  1.6366E-01  6.6661E-01  1.7146E-01  2.8891E-01  1.2006E-02 -2.6257E+00 -2.4891E+00  1.4498E-01 -4.6519E+00
             1.3845E+00
 GRADIENT:  -4.9568E+00 -2.9732E+00 -6.0057E-01 -3.8262E+00  1.0614E+00  3.3348E-01  1.0375E-02  1.2741E-02  1.5167E-01  0.0000E+00
            -7.0331E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1540.44236091823        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      729
 NPARAMETR:  1.0124E+00  1.0626E+00  1.8481E+00  1.0810E+00  1.2218E+00  9.1481E-01  2.2227E-02  3.1062E-02  1.0390E+00  1.0000E-02
             3.6185E+00
 PARAMETER:  1.1234E-01  1.6069E-01  7.1416E-01  1.7787E-01  3.0034E-01  1.0965E-02 -3.7064E+00 -3.3718E+00  1.3830E-01 -6.2707E+00
             1.3861E+00
 GRADIENT:   1.0594E-01  3.3751E-02  7.4463E-02 -8.5134E-02 -1.4805E-01 -8.8400E-03  1.2023E-03  1.9107E-03 -1.1426E-01  0.0000E+00
             7.2576E-02

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1540.44398279184        NO. OF FUNC. EVALS.: 127
 CUMULATIVE NO. OF FUNC. EVALS.:      856
 NPARAMETR:  1.0123E+00  1.0712E+00  1.8377E+00  1.0751E+00  1.2231E+00  9.1493E-01  1.0000E-02  1.0000E-02  1.0458E+00  1.0000E-02
             3.6178E+00
 PARAMETER:  1.1227E-01  1.6881E-01  7.0854E-01  1.7238E-01  3.0138E-01  1.1097E-02 -4.8686E+00 -4.5188E+00  1.4476E-01 -7.9784E+00
             1.3859E+00
 GRADIENT:  -1.4298E-01 -1.6237E-02  9.4946E-04 -1.2430E-03 -2.2197E-03  1.9763E-02  0.0000E+00  7.3796E-05  1.7998E-02  0.0000E+00
            -1.4181E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      856
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.8475E-03 -4.4821E-04  3.3506E-05 -2.6991E-03  1.8809E-05
 SE:             2.8742E-02  1.8951E-04  3.8119E-05  2.5205E-02  1.3975E-04
 N:                     100         100         100         100         100

 P VAL.:         8.9351E-01  1.8027E-02  3.7942E-01  9.1472E-01  8.9294E-01

 ETASHRINKSD(%)  3.7114E+00  9.9365E+01  9.9872E+01  1.5560E+01  9.9532E+01
 ETASHRINKVR(%)  7.2851E+00  9.9996E+01  1.0000E+02  2.8699E+01  9.9998E+01
 EBVSHRINKSD(%)  3.8585E+00  9.9404E+01  9.9839E+01  1.5034E+01  9.9503E+01
 EBVSHRINKVR(%)  7.5681E+00  9.9996E+01  1.0000E+02  2.7808E+01  9.9998E+01
 RELATIVEINF(%)  9.1017E+01  1.9976E-04  5.0361E-05  4.7715E+00  3.6776E-04
 EPSSHRINKSD(%)  1.6298E+01
 EPSSHRINKVR(%)  2.9940E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1540.4439827918445     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -621.50544958717182     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    10.43
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1540.444       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.07E+00  1.84E+00  1.08E+00  1.22E+00  9.15E-01  1.00E-02  1.00E-02  1.05E+00  1.00E-02  3.62E+00
 


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
 #CPUT: Total CPU Time in Seconds,       10.476
Stop Time:
Fri Oct  1 10:48:51 CDT 2021
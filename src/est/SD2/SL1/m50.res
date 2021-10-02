Fri Oct  1 11:45:12 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat50.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m50.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2130.24008532122        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2614E+02 -8.4280E+00 -3.2170E+01  2.6139E+01  6.9226E+00  3.8301E+01  1.5838E+01  1.7005E+01  2.1140E+01  2.2560E+01
            -2.5414E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2134.06671791854        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.9501E-01  1.0446E+00  1.2487E+00  1.0093E+00  1.1274E+00  1.0235E+00  8.8707E-01  8.6511E-01  8.9460E-01  8.5633E-01
             1.0928E+00
 PARAMETER:  9.5001E-02  1.4367E-01  3.2209E-01  1.0928E-01  2.1996E-01  1.2327E-01 -1.9836E-02 -4.4898E-02 -1.1379E-02 -5.5098E-02
             1.8874E-01
 GRADIENT:  -7.5964E+00 -4.8530E+00  8.5674E+00 -2.9109E+01  2.9347E+01  5.5642E+00  1.9188E+00  1.6038E+00 -1.8627E+01 -2.9820E+01
             2.6364E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2142.27837145516        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  9.9770E-01  8.8175E-01  1.6358E+00  1.1297E+00  1.2090E+00  9.4977E-01  4.7369E-01  4.0975E-01  1.0076E+00  1.3333E+00
             1.0744E+00
 PARAMETER:  9.7695E-02 -2.5845E-02  5.9214E-01  2.2192E-01  2.8979E-01  4.8461E-02 -6.4721E-01 -7.9221E-01  1.0758E-01  3.8769E-01
             1.7175E-01
 GRADIENT:   5.0740E+00  8.7138E+00  9.6940E+00  6.7697E+00 -2.2938E+01 -2.3320E+01  1.0344E+00  1.1383E+00  8.7497E+00  1.2679E+01
             2.4404E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2144.61853254897        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.9602E-01  7.9532E-01  1.4649E+00  1.1838E+00  1.1261E+00  9.9946E-01  5.0528E-01  3.0486E-01  9.4042E-01  1.1705E+00
             1.0420E+00
 PARAMETER:  9.6016E-02 -1.2901E-01  4.8179E-01  2.6873E-01  2.1872E-01  9.9458E-02 -5.8265E-01 -1.0879E+00  3.8572E-02  2.5746E-01
             1.4114E-01
 GRADIENT:   2.4707E+00  8.8084E+00 -6.5093E-01  1.4736E+01 -2.9503E+00 -2.0480E+00  4.4253E-01  6.9875E-01  1.8209E-01 -5.5742E-01
            -3.5545E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2145.14429924947        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      708
 NPARAMETR:  9.9309E-01  6.2542E-01  1.5589E+00  1.2838E+00  1.1036E+00  1.0013E+00  3.6861E-01  1.2262E-01  8.7625E-01  1.1943E+00
             1.0444E+00
 PARAMETER:  9.3062E-02 -3.6934E-01  5.4400E-01  3.4979E-01  1.9856E-01  1.0133E-01 -8.9801E-01 -1.9987E+00 -3.2108E-02  2.7758E-01
             1.4346E-01
 GRADIENT:   5.8293E-01 -9.8604E-01  7.0017E-01 -3.9561E+00 -1.6335E-01 -3.2250E-01  1.3248E-01  8.0888E-02 -8.3989E-02 -5.2689E-01
            -1.3104E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2145.19096672825        NO. OF FUNC. EVALS.: 139
 CUMULATIVE NO. OF FUNC. EVALS.:      847
 NPARAMETR:  9.9230E-01  6.2218E-01  1.5561E+00  1.2864E+00  1.1024E+00  1.0022E+00  2.6544E-01  1.8900E-02  8.7571E-01  1.1999E+00
             1.0476E+00
 PARAMETER:  9.2269E-02 -3.7453E-01  5.4221E-01  3.5181E-01  1.9750E-01  1.0215E-01 -1.2264E+00 -3.8686E+00 -3.2725E-02  2.8223E-01
             1.4651E-01
 GRADIENT:  -1.1515E+00  2.4870E-01 -4.4136E-01 -1.2065E+00  1.8613E-01  3.9988E-02 -1.0525E-02  2.0023E-03 -1.6556E+00  4.0715E-01
             1.4687E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2145.19818010628        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1023
 NPARAMETR:  9.9325E-01  6.2187E-01  1.5569E+00  1.2865E+00  1.1023E+00  1.0023E+00  2.6311E-01  1.1535E-02  8.7956E-01  1.1983E+00
             1.0459E+00
 PARAMETER:  9.3228E-02 -3.7502E-01  5.4273E-01  3.5191E-01  1.9741E-01  1.0226E-01 -1.2352E+00 -4.3624E+00 -2.8331E-02  2.8091E-01
             1.4484E-01
 GRADIENT:   1.0087E+00 -2.1892E-01 -3.4552E-02 -1.3096E+00  2.3648E-02  7.7595E-02  7.4750E-03  7.3746E-04 -5.0732E-02  1.5747E-03
            -2.8648E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2145.19890171447        NO. OF FUNC. EVALS.: 134
 CUMULATIVE NO. OF FUNC. EVALS.:     1157
 NPARAMETR:  9.9382E-01  6.2471E-01  1.5554E+00  1.2858E+00  1.1026E+00  1.0025E+00  2.6901E-01  1.0000E-02  8.7959E-01  1.1980E+00
             1.0459E+00
 PARAMETER:  9.3149E-02 -3.7421E-01  5.4269E-01  3.5124E-01  1.9733E-01  1.0221E-01 -1.2087E+00 -5.9713E+00 -2.8157E-02  2.8094E-01
             1.4487E-01
 GRADIENT:  -6.1108E-01 -5.5644E-01  1.8311E-01 -1.7753E-01 -1.8927E-01 -5.4357E-02  4.3974E-04  0.0000E+00  2.2076E-02  2.3450E-02
             1.4574E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1157
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.0640E-03 -7.5829E-03 -1.9476E-04 -2.6735E-03 -2.8027E-02
 SE:             2.9878E-02  3.3757E-03  1.2151E-04  2.9255E-02  2.4627E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7159E-01  2.4682E-02  1.0896E-01  9.2718E-01  2.5511E-01

 ETASHRINKSD(%)  1.0000E-10  8.8691E+01  9.9593E+01  1.9931E+00  1.7495E+01
 ETASHRINKVR(%)  1.0000E-10  9.8721E+01  9.9998E+01  3.9464E+00  3.1930E+01
 EBVSHRINKSD(%)  3.5366E-01  8.9585E+01  9.9569E+01  2.1372E+00  1.3643E+01
 EBVSHRINKVR(%)  7.0606E-01  9.8915E+01  9.9998E+01  4.2287E+00  2.5424E+01
 RELATIVEINF(%)  9.8701E+01  7.3202E-02  4.3385E-04  7.4039E+00  1.4377E+01
 EPSSHRINKSD(%)  3.1032E+01
 EPSSHRINKVR(%)  5.2434E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2145.1989017144651     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1226.2603685097924     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.88
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2145.199       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.93E-01  6.22E-01  1.56E+00  1.29E+00  1.10E+00  1.00E+00  2.70E-01  1.00E-02  8.80E-01  1.20E+00  1.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.923
Stop Time:
Fri Oct  1 11:45:30 CDT 2021
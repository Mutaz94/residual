Fri Oct  1 11:33:09 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat18.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m18.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2085.66997470435        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2760E+02 -5.4744E+01 -5.1627E+01  1.2583E+01  9.8522E+01  4.7093E+01 -2.9600E+01  2.5925E+00 -1.9635E+01 -1.7829E+01
             2.3770E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2094.55848069744        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.9254E-01  1.0928E+00  1.1189E+00  9.6298E-01  1.0150E+00  9.2899E-01  1.2949E+00  9.9280E-01  1.2167E+00  1.0974E+00
             9.9923E-01
 PARAMETER:  9.2510E-02  1.8873E-01  2.1236E-01  6.2279E-02  1.1487E-01  2.6342E-02  3.5847E-01  9.2773E-02  2.9612E-01  1.9297E-01
             9.9229E-02
 GRADIENT:  -1.2181E+01 -2.5401E+01  9.7702E+00 -3.5122E+01 -2.3020E+01 -1.9258E+01  2.3330E+00 -2.3629E+00  2.8364E+01  1.8881E+00
             4.0276E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2096.07094076122        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.8526E-01  1.1493E+00  1.2213E+00  9.3518E-01  1.0945E+00  9.6534E-01  1.3926E+00  1.1706E+00  1.1358E+00  1.2776E+00
             9.9313E-01
 PARAMETER:  8.5146E-02  2.3919E-01  2.9994E-01  3.2982E-02  1.9031E-01  6.4725E-02  4.3118E-01  2.5756E-01  2.2734E-01  3.4497E-01
             9.3111E-02
 GRADIENT:  -2.8057E+01 -2.2176E+01  4.4762E+00 -3.4783E+01 -1.9309E+01 -3.7736E+00  1.0006E+01 -1.2556E+00  2.0939E+01  1.7530E+01
             1.9576E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2100.07505381475        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.9661E-01  9.4511E-01  1.3088E+00  1.0876E+00  1.0352E+00  9.6561E-01  1.5288E+00  1.1394E+00  8.8896E-01  1.1028E+00
             9.9861E-01
 PARAMETER:  9.6604E-02  4.3548E-02  3.6914E-01  1.8396E-01  1.3460E-01  6.5005E-02  5.2451E-01  2.3050E-01 -1.7704E-02  1.9786E-01
             9.8614E-02
 GRADIENT:   1.9571E+00 -4.1568E+00  9.9707E+00 -1.7081E+01 -7.5391E+00 -2.5714E+00 -5.7478E+00 -4.8737E+00 -1.0401E+00 -4.6097E+00
             2.4485E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2101.44902681791        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.9555E-01  7.3582E-01  1.9935E+00  1.2580E+00  1.1494E+00  9.7207E-01  1.9845E+00  1.7644E+00  7.6289E-01  1.2435E+00
             9.9354E-01
 PARAMETER:  9.5536E-02 -2.0677E-01  7.8988E-01  3.2953E-01  2.3927E-01  7.1673E-02  7.8538E-01  6.6781E-01 -1.7064E-01  3.1797E-01
             9.3519E-02
 GRADIENT:   4.2660E+00  1.0170E+01  2.7593E+00  1.3726E+01 -7.2358E-01  2.3601E-01  1.0515E+00 -1.9638E+00 -2.3185E+00 -9.6936E-01
            -7.4515E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2101.90352250149        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  9.9168E-01  5.0897E-01  2.3422E+00  1.4014E+00  1.1343E+00  9.7088E-01  2.4615E+00  1.9432E+00  7.4725E-01  1.2416E+00
             9.9439E-01
 PARAMETER:  9.1645E-02 -5.7537E-01  9.5111E-01  4.3747E-01  2.2605E-01  7.0447E-02  1.0008E+00  7.6434E-01 -1.9136E-01  3.1640E-01
             9.4377E-02
 GRADIENT:  -6.2813E-01  4.5792E+00  5.5251E+00  4.8818E+00 -9.7069E+00  2.0986E-01  3.9276E-01 -8.1697E-01  2.5625E-01 -4.6800E-01
            -1.6999E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2102.17795404149        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1061             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9078E-01  3.8058E-01  2.1889E+00  1.4665E+00  1.0882E+00  9.6941E-01  2.8662E+00  1.8179E+00  7.4211E-01  1.2089E+00
             9.9383E-01
 PARAMETER:  9.0735E-02 -8.6606E-01  8.8338E-01  4.8287E-01  1.8455E-01  6.8935E-02  1.1530E+00  6.9767E-01 -1.9826E-01  2.8971E-01
             9.3814E-02
 GRADIENT:   4.3084E+02  6.3430E+01  1.0257E+01  7.9673E+02  1.2130E+01  3.7322E+01  7.6212E+01  4.6670E+00  1.7247E+01  3.3195E+00
             1.1299E+00

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2102.17997849027        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1154
 NPARAMETR:  9.9066E-01  3.8213E-01  2.1885E+00  1.4691E+00  1.0879E+00  9.6918E-01  2.8616E+00  1.8173E+00  7.4064E-01  1.2093E+00
             9.9380E-01
 PARAMETER:  9.0614E-02 -8.6198E-01  8.8319E-01  4.8463E-01  1.8421E-01  6.8699E-02  1.1514E+00  6.9734E-01 -2.0024E-01  2.9005E-01
             9.3782E-02
 GRADIENT:   1.0715E+00 -1.6226E-02  8.3162E-02 -5.2259E+00  3.0650E-01  1.2460E-01  3.7137E-01  1.5155E-01  2.7709E-01 -1.7965E-01
             1.6531E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1154
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1777E-03  3.0093E-02 -4.8001E-02 -3.2554E-02 -3.9326E-02
 SE:             2.9844E-02  1.9110E-02  1.7472E-02  2.2841E-02  2.1223E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6852E-01  1.1531E-01  6.0103E-03  1.5408E-01  6.3880E-02

 ETASHRINKSD(%)  1.9503E-02  3.5980E+01  4.1465E+01  2.3481E+01  2.8901E+01
 ETASHRINKVR(%)  3.9001E-02  5.9014E+01  6.5736E+01  4.1448E+01  4.9450E+01
 EBVSHRINKSD(%)  3.9840E-01  4.1293E+01  4.6611E+01  1.9119E+01  2.3934E+01
 EBVSHRINKVR(%)  7.9521E-01  6.5535E+01  7.1496E+01  3.4583E+01  4.2139E+01
 RELATIVEINF(%)  9.8829E+01  5.4327E+00  9.7979E+00  1.0214E+01  2.1773E+01
 EPSSHRINKSD(%)  3.4527E+01
 EPSSHRINKVR(%)  5.7133E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2102.1799784902723     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1183.2414452855996     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.55
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2102.180       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.91E-01  3.82E-01  2.19E+00  1.47E+00  1.09E+00  9.69E-01  2.86E+00  1.82E+00  7.41E-01  1.21E+00  9.94E-01
 


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
 #CPUT: Total CPU Time in Seconds,       18.597
Stop Time:
Fri Oct  1 11:33:29 CDT 2021

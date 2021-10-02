Sat Oct  2 02:39:21 CDT 2021
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
$DATA ../../../../data/SD4/SL2/dat29.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m29.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1558.32520935376        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.7802E+02 -1.9981E+01 -1.2798E+01  1.4530E+01  4.4267E+01  1.1102E+01 -3.0401E+01 -1.7377E+00 -2.4191E+01 -3.4286E+00
            -1.0336E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1568.09068930302        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  9.9318E-01  1.0736E+00  1.0056E+00  9.7697E-01  1.0401E+00  1.0074E+00  1.3770E+00  9.8764E-01  1.1673E+00  9.1074E-01
             1.4902E+00
 PARAMETER:  9.3153E-02  1.7103E-01  1.0556E-01  7.6701E-02  1.3936E-01  1.0734E-01  4.1989E-01  8.7561E-02  2.5473E-01  6.4978E-03
             4.9888E-01
 GRADIENT:   2.1565E+02  3.6968E+00 -2.0668E+01  2.3586E+01  4.0873E+01 -5.4225E+00  2.0813E+01  3.7276E+00  2.7525E+01  3.5341E+00
             7.4978E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1572.50377266075        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      248
 NPARAMETR:  9.8364E-01  1.1501E+00  7.5304E-01  9.4843E-01  8.9379E-01  1.0189E+00  1.4562E+00  8.9277E-01  1.0858E+00  7.1372E-01
             1.4085E+00
 PARAMETER:  8.3509E-02  2.3987E-01 -1.8364E-01  4.7050E-02 -1.2279E-02  1.1872E-01  4.7585E-01 -1.3425E-02  1.8228E-01 -2.3726E-01
             4.4252E-01
 GRADIENT:  -4.9116E+00  1.4186E+01 -9.7466E+00  1.7891E+01 -5.1204E+00 -2.6445E+01  1.8021E+01  4.7514E+00  1.1159E+01  4.7312E+00
             5.6401E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1579.36020374042        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      424
 NPARAMETR:  9.7024E-01  1.2122E+00  6.9621E-01  8.8915E-01  9.0289E-01  1.0897E+00  1.2800E+00  5.9092E-01  1.0827E+00  7.6180E-01
             1.2272E+00
 PARAMETER:  6.9792E-02  2.9242E-01 -2.6211E-01 -1.7485E-02 -2.1501E-03  1.8593E-01  3.4683E-01 -4.2608E-01  1.7943E-01 -1.7207E-01
             3.0477E-01
 GRADIENT:  -2.7189E+01  3.6411E+00  2.1715E+00  2.7207E+00 -4.6310E+00 -1.1103E+00  7.1329E-01  4.1110E-01 -1.6496E-03 -4.6654E-01
             3.4310E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1580.00939383440        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      600
 NPARAMETR:  9.8642E-01  1.4513E+00  5.4493E-01  7.3230E-01  9.4500E-01  1.0892E+00  1.1159E+00  2.2376E-01  1.2109E+00  7.8060E-01
             1.2162E+00
 PARAMETER:  8.6328E-02  4.7246E-01 -5.0710E-01 -2.1156E-01  4.3433E-02  1.8549E-01  2.0962E-01 -1.3972E+00  2.9133E-01 -1.4769E-01
             2.9573E-01
 GRADIENT:   2.0506E+00  4.6268E+00  2.0811E-01  2.1476E+00 -2.4166E+00 -1.1018E+00  9.2469E-01  1.1430E-01  2.3253E-01  4.1445E-01
            -2.6590E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1580.05934838303        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      781
 NPARAMETR:  9.8604E-01  1.4557E+00  5.4312E-01  7.2466E-01  9.5056E-01  1.0949E+00  1.1040E+00  8.4570E-02  1.2172E+00  7.7814E-01
             1.2169E+00
 PARAMETER:  8.5944E-02  4.7551E-01 -5.1042E-01 -2.2205E-01  4.9297E-02  1.9068E-01  1.9898E-01 -2.3702E+00  2.9657E-01 -1.5085E-01
             2.9630E-01
 GRADIENT:   1.4418E+00 -8.8286E-01  9.1039E-01 -1.4335E+00  3.7113E-01  9.2002E-01 -8.9259E-01  1.3185E-02 -6.0161E-01 -8.8739E-01
            -6.3712E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1580.07366402822        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      959
 NPARAMETR:  9.8535E-01  1.4557E+00  5.4225E-01  7.2561E-01  9.4975E-01  1.0926E+00  1.1076E+00  1.8517E-02  1.2187E+00  7.8464E-01
             1.2176E+00
 PARAMETER:  8.5240E-02  4.7550E-01 -5.1204E-01 -2.2075E-01  4.8444E-02  1.8854E-01  2.0216E-01 -3.8891E+00  2.9776E-01 -1.4253E-01
             2.9689E-01
 GRADIENT:   9.2701E-02 -1.7935E-01  1.4237E-01 -3.6471E-01 -1.8150E-01  9.4290E-02 -1.3106E-02  7.6244E-04  4.0358E-02  6.7424E-04
             3.1659E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1580.07443186169        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1139
 NPARAMETR:  9.8543E-01  1.4551E+00  5.4189E-01  7.2618E-01  9.4882E-01  1.0923E+00  1.1090E+00  1.0000E-02  1.2173E+00  7.8305E-01
             1.2174E+00
 PARAMETER:  8.5321E-02  4.7508E-01 -5.1268E-01 -2.1995E-01  4.7459E-02  1.8831E-01  2.0342E-01 -4.9765E+00  2.9664E-01 -1.4456E-01
             2.9674E-01
 GRADIENT:   2.3736E-01  3.0369E-01  2.3227E-01 -2.5025E-01 -3.3818E-01  9.4645E-04  1.1835E-01  0.0000E+00 -2.0702E-02 -5.4533E-02
            -5.1527E-02

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1580.07444713542        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1196
 NPARAMETR:  9.8539E-01  1.4551E+00  5.4186E-01  7.2618E-01  9.4890E-01  1.0923E+00  1.1087E+00  1.0000E-02  1.2174E+00  7.8335E-01
             1.2174E+00
 PARAMETER:  8.5279E-02  4.7509E-01 -5.1274E-01 -2.1996E-01  4.7549E-02  1.8831E-01  2.0314E-01 -4.9267E+00  2.9668E-01 -1.4418E-01
             2.9676E-01
 GRADIENT:   1.5748E-01  2.0867E-01  1.5528E-01 -1.7476E-01 -2.1647E-01  2.9938E-04  7.6676E-02  0.0000E+00 -1.2949E-02 -3.5039E-02
            -3.3650E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1196
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.5523E-04 -1.4208E-02 -3.3046E-04  1.1195E-02 -2.4862E-02
 SE:             2.9794E-02  2.5102E-02  1.2670E-04  2.3228E-02  1.9611E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7978E-01  5.7139E-01  9.1006E-03  6.2983E-01  2.0488E-01

 ETASHRINKSD(%)  1.8751E-01  1.5905E+01  9.9576E+01  2.2184E+01  3.4300E+01
 ETASHRINKVR(%)  3.7468E-01  2.9280E+01  9.9998E+01  3.9447E+01  5.6835E+01
 EBVSHRINKSD(%)  5.7367E-01  1.5653E+01  9.9620E+01  2.2835E+01  3.4342E+01
 EBVSHRINKVR(%)  1.1440E+00  2.8856E+01  9.9999E+01  4.0455E+01  5.6891E+01
 RELATIVEINF(%)  9.8816E+01  6.1625E+00  1.3681E-04  4.7590E+00  6.0126E+00
 EPSSHRINKSD(%)  4.2959E+01
 EPSSHRINKVR(%)  6.7463E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1580.0744471354171     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -844.92362057167895     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.14
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1580.074       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.85E-01  1.46E+00  5.42E-01  7.26E-01  9.49E-01  1.09E+00  1.11E+00  1.00E-02  1.22E+00  7.83E-01  1.22E+00
 


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
 #CPUT: Total CPU Time in Seconds,       15.175
Stop Time:
Sat Oct  2 02:39:38 CDT 2021
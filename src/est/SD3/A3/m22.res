Fri Oct  1 18:09:36 CDT 2021
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
$DATA ../../../../data/SD3/A3/dat22.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m22.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -299.957767205193        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2327E+02  1.1234E+02  1.3668E+02  1.5455E+02  2.5206E+02  6.5859E+01 -7.1442E+01 -9.0402E+01  2.2173E+01 -7.9991E+01
            -4.0220E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1693.52637406704        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0107E+00  1.0108E+00  9.3826E-01  9.9562E-01  8.8081E-01  7.4104E-01  9.3228E-01  9.5823E-01  8.2715E-01  8.7920E-01
             4.8402E+00
 PARAMETER:  1.1060E-01  1.1071E-01  3.6267E-02  9.5608E-02 -2.6917E-02 -1.9969E-01  2.9876E-02  5.7337E-02 -8.9764E-02 -2.8746E-02
             1.6770E+00
 GRADIENT:   7.3156E+01 -3.0489E+01 -4.9020E+00 -4.2860E+01 -7.2259E+00 -2.6429E+01  1.1838E+01  6.2400E+00  1.6574E+01  2.5190E+01
             4.5686E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1721.07600714617        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  9.8461E-01  7.2634E-01  3.1188E-01  1.1136E+00  4.5378E-01  7.9223E-01  1.2252E+00  3.2192E-01  6.8501E-01  3.3370E-01
             4.3708E+00
 PARAMETER:  8.4493E-02 -2.1973E-01 -1.0651E+00  2.0758E-01 -6.9014E-01 -1.3291E-01  3.0309E-01 -1.0335E+00 -2.7832E-01 -9.9751E-01
             1.5749E+00
 GRADIENT:  -1.2159E+01  3.2385E+01 -1.0698E+02  1.3827E+02  8.7842E+01 -2.2004E+01  2.3235E+01  1.6085E+00 -1.4773E+01  5.4915E+00
             3.7406E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1826.48164589291        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  9.1860E-01  6.1727E-01  3.6656E-01  1.1003E+00  4.2337E-01  8.8541E-01  1.7659E+00  1.6445E-01  8.4937E-01  4.1617E-01
             2.5439E+00
 PARAMETER:  1.5091E-02 -3.8245E-01 -9.0359E-01  1.9557E-01 -7.5950E-01 -2.1705E-02  6.6864E-01 -1.7051E+00 -6.3258E-02 -7.7667E-01
             1.0337E+00
 GRADIENT:  -6.2503E+01  8.4501E+01 -3.4525E+00  4.2774E+01  7.4399E+01  1.3264E+01  4.8322E+01  3.8503E-01 -1.5199E+01  3.8755E-01
            -8.1314E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1843.65959331329        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      404
 NPARAMETR:  9.7106E-01  5.3569E-01  3.8050E-01  1.1607E+00  4.0675E-01  8.3101E-01  1.2226E+00  2.9774E-01  8.8044E-01  5.1021E-01
             2.6777E+00
 PARAMETER:  7.0633E-02 -5.2420E-01 -8.6627E-01  2.4905E-01 -7.9955E-01 -8.5111E-02  3.0102E-01 -1.1115E+00 -2.7339E-02 -5.7293E-01
             1.0849E+00
 GRADIENT:   2.6068E+01  3.9789E+01  1.8422E+01  7.4383E+01 -2.3841E+01 -7.7753E+00 -6.3628E+00  9.6078E-01 -6.0180E+00 -4.0214E+00
            -2.9325E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1857.87215789615        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      579
 NPARAMETR:  9.5250E-01  3.1521E-01  1.9174E-01  1.0424E+00  2.3581E-01  8.7267E-01  1.2330E+00  1.1865E-01  1.0634E+00  5.5024E-01
             2.5883E+00
 PARAMETER:  5.1335E-02 -1.0545E+00 -1.5516E+00  1.4151E-01 -1.3447E+00 -3.6203E-02  3.0944E-01 -2.0316E+00  1.6149E-01 -4.9739E-01
             1.0510E+00
 GRADIENT:  -2.7045E+01  1.2310E+01 -9.6416E+00  3.3231E+01 -1.5432E+01  4.7886E+00  7.2517E-01  1.2326E-01 -4.2656E+00 -3.9399E+00
             9.8692E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1858.71027155674        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      754
 NPARAMETR:  9.6139E-01  3.0721E-01  1.9228E-01  1.0204E+00  2.3495E-01  8.5837E-01  1.2057E+00  9.3636E-02  1.0741E+00  5.8304E-01
             2.5640E+00
 PARAMETER:  6.0620E-02 -1.0802E+00 -1.5488E+00  1.2016E-01 -1.3484E+00 -5.2722E-02  2.8705E-01 -2.2683E+00  1.7144E-01 -4.3950E-01
             1.0416E+00
 GRADIENT:   2.5756E-01 -1.1192E+00 -6.6214E-02 -2.3272E+00  1.7669E+00 -2.0356E-02 -1.2917E-01  1.1289E-01  4.5081E-01  3.3360E-01
            -8.6179E-04

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1858.76383378642        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      931
 NPARAMETR:  9.6132E-01  3.0778E-01  1.9247E-01  1.0219E+00  2.3491E-01  8.5847E-01  1.2074E+00  2.7040E-02  1.0724E+00  5.8252E-01
             2.5647E+00
 PARAMETER:  6.0552E-02 -1.0784E+00 -1.5478E+00  1.2162E-01 -1.3485E+00 -5.2608E-02  2.8849E-01 -3.5105E+00  1.6992E-01 -4.4040E-01
             1.0419E+00
 GRADIENT:  -3.2716E-02  7.2552E-01  1.1933E+00 -1.2540E-01 -2.9155E+00  4.7352E-03  6.9799E-03  9.2489E-03  3.4961E-02 -4.5067E-02
            -2.7067E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1858.76688931843        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1109             RESET HESSIAN, TYPE I
 NPARAMETR:  9.6136E-01  3.0817E-01  1.9276E-01  1.0223E+00  2.3517E-01  8.5846E-01  1.2082E+00  1.0000E-02  1.0720E+00  5.8228E-01
             2.5653E+00
 PARAMETER:  6.0597E-02 -1.0771E+00 -1.5463E+00  1.2204E-01 -1.3474E+00 -5.2614E-02  2.8909E-01 -4.5516E+00  1.6950E-01 -4.4080E-01
             1.0421E+00
 GRADIENT:   4.7021E+01  2.6229E+01  4.1223E+01  1.4089E+01  1.9254E+02  3.0829E+00  9.9898E-01  0.0000E+00  3.0306E+00  1.8697E+00
             1.2345E+01

0ITERATION NO.:   42    OBJECTIVE VALUE:  -1858.76688931843        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1166
 NPARAMETR:  9.6136E-01  3.0817E-01  1.9276E-01  1.0223E+00  2.3517E-01  8.5846E-01  1.2082E+00  1.0000E-02  1.0720E+00  5.8228E-01
             2.5653E+00
 PARAMETER:  6.0597E-02 -1.0771E+00 -1.5463E+00  1.2204E-01 -1.3474E+00 -5.2614E-02  2.8909E-01 -4.5516E+00  1.6950E-01 -4.4080E-01
             1.0421E+00
 GRADIENT:   9.8730E-02  8.9788E-01  1.2313E+00 -8.3261E-02 -2.9931E+00  1.4082E-02  3.8092E-02  0.0000E+00  4.5603E-02 -3.0297E-02
            -1.6145E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1166
 NO. OF SIG. DIGITS IN FINAL EST.:  2.8
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.6540E-04  1.4045E-02 -4.5700E-05 -1.1080E-02  9.8086E-03
 SE:             2.9085E-02  2.0001E-02  2.1653E-04  2.7089E-02  2.2091E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8723E-01  4.8254E-01  8.3285E-01  6.8253E-01  6.5703E-01

 ETASHRINKSD(%)  2.5602E+00  3.2994E+01  9.9275E+01  9.2471E+00  2.5993E+01
 ETASHRINKVR(%)  5.0548E+00  5.5102E+01  9.9995E+01  1.7639E+01  4.5230E+01
 EBVSHRINKSD(%)  2.5619E+00  3.2995E+01  9.9235E+01  8.4069E+00  2.5676E+01
 EBVSHRINKVR(%)  5.0581E+00  5.5103E+01  9.9994E+01  1.6107E+01  4.4760E+01
 RELATIVEINF(%)  9.4789E+01  7.7966E+00  3.5461E-04  3.2537E+01  2.1969E+00
 EPSSHRINKSD(%)  2.5304E+01
 EPSSHRINKVR(%)  4.4204E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1858.7668893184252     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -756.04064947281813     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    22.25
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1858.767       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.61E-01  3.08E-01  1.93E-01  1.02E+00  2.35E-01  8.58E-01  1.21E+00  1.00E-02  1.07E+00  5.82E-01  2.57E+00
 


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
 #CPUT: Total CPU Time in Seconds,       22.294
Stop Time:
Fri Oct  1 18:10:00 CDT 2021
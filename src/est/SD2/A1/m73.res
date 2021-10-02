Fri Oct  1 09:34:45 CDT 2021
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
$DATA ../../../../data/SD2/A1/dat73.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m73.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1861.43992424174        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0871E+02  1.6988E+01  1.8006E+01  1.5970E+01 -1.1932E+01  7.9226E+01 -1.5221E+01  5.4586E+00 -3.6554E+00  1.3718E+01
            -5.3908E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1950.32984723816        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0159E+00  1.0832E+00  1.1846E+00  1.0163E+00  1.1606E+00  8.1370E-01  1.1603E+00  8.2076E-01  1.0484E+00  5.9453E-01
             1.9287E+00
 PARAMETER:  1.1579E-01  1.7988E-01  2.6940E-01  1.1621E-01  2.4891E-01 -1.0616E-01  2.4870E-01 -9.7527E-02  1.4725E-01 -4.1999E-01
             7.5684E-01
 GRADIENT:   1.3320E+02  2.1803E+01 -1.0496E+00  3.6835E+01  4.2159E+01 -1.1103E+01  1.0156E+01 -4.2545E+00  9.2762E+00 -1.7617E+00
             1.3552E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1957.77391908222        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0006E+00  9.6084E-01  6.0714E-01  1.0399E+00  7.6052E-01  8.6479E-01  1.2144E+00  6.3597E-01  9.2763E-01  1.8422E-01
             1.8631E+00
 PARAMETER:  1.0061E-01  6.0055E-02 -3.9900E-01  1.3914E-01 -1.7375E-01 -4.5267E-02  2.9424E-01 -3.5261E-01  2.4882E-02 -1.5916E+00
             7.2225E-01
 GRADIENT:   6.5562E+01 -6.5343E+00 -3.6397E+01  7.1579E+01  5.6490E+01  9.5907E+00 -3.2511E+00  5.2472E+00  3.1771E+00  4.5025E-01
             1.3927E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1966.06022772145        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      227
 NPARAMETR:  9.6940E-01  9.7063E-01  4.5535E-01  9.7560E-01  6.5154E-01  8.4401E-01  1.2387E+00  4.1181E-01  9.3168E-01  1.9989E-01
             1.5825E+00
 PARAMETER:  6.8919E-02  7.0194E-02 -6.8670E-01  7.5296E-02 -3.2842E-01 -6.9594E-02  3.1409E-01 -7.8719E-01  2.9236E-02 -1.5100E+00
             5.5903E-01
 GRADIENT:   1.1006E+01  4.4986E+00 -2.1055E+01  1.4648E+01  3.2095E+01 -4.3623E+00  7.1821E+00  2.1933E+00  1.2737E+00  1.8829E-01
             3.3083E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1975.47467751977        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      404
 NPARAMETR:  1.0160E+00  8.8591E-01  6.2200E-01  1.0628E+00  7.2812E-01  8.6010E-01  1.3774E+00  3.0621E-01  8.9964E-01  5.1913E-01
             1.5044E+00
 PARAMETER:  1.1585E-01 -2.1144E-02 -3.7481E-01  1.6091E-01 -2.1730E-01 -5.0706E-02  4.2018E-01 -1.0835E+00 -5.7581E-03 -5.5560E-01
             5.0838E-01
 GRADIENT:   4.4792E+00  1.5587E+00 -5.1555E+00 -3.9344E+00  8.2800E+00 -1.1825E+00  6.3026E-01  9.4490E-01 -1.6883E+00  3.8061E-01
            -5.7058E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1976.67678303775        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      579
 NPARAMETR:  1.0139E+00  6.7723E-01  6.0115E-01  1.1685E+00  6.3384E-01  8.6084E-01  1.6778E+00  1.4777E-01  8.4583E-01  5.3095E-01
             1.5039E+00
 PARAMETER:  1.1380E-01 -2.8975E-01 -4.0891E-01  2.5573E-01 -3.5596E-01 -4.9851E-02  6.1748E-01 -1.8121E+00 -6.7436E-02 -5.3310E-01
             5.0809E-01
 GRADIENT:   4.0094E+00 -1.2419E+00 -3.0003E+00 -1.6665E+00  2.2962E+00  1.0789E-01  2.2679E-01  1.7860E-01  6.8408E-01  4.5046E-01
             1.8042E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1976.70893136264        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      756
 NPARAMETR:  1.0129E+00  6.6587E-01  6.1277E-01  1.1783E+00  6.3811E-01  8.6108E-01  1.7075E+00  1.1424E-01  8.4173E-01  5.4283E-01
             1.5037E+00
 PARAMETER:  1.1283E-01 -3.0666E-01 -3.8977E-01  2.6404E-01 -3.4924E-01 -4.9564E-02  6.3500E-01 -2.0695E+00 -7.2297E-02 -5.1096E-01
             5.0794E-01
 GRADIENT:   2.0725E+00 -9.3363E-01 -2.5054E+00  1.8711E+00  3.7459E+00  3.6636E-01  4.1019E-01  7.9539E-02  3.5343E-01  8.8519E-02
             1.1541E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1976.75668125062        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      932
 NPARAMETR:  1.0125E+00  6.7695E-01  6.0677E-01  1.1710E+00  6.3722E-01  8.6066E-01  1.6808E+00  1.8943E-02  8.4357E-01  5.4190E-01
             1.5021E+00
 PARAMETER:  1.1243E-01 -2.9016E-01 -3.9961E-01  2.5783E-01 -3.5065E-01 -5.0057E-02  6.1924E-01 -3.8663E+00 -7.0111E-02 -5.1268E-01
             5.0689E-01
 GRADIENT:   2.7261E-01 -5.9897E-02 -1.6187E-02 -8.9408E-03  2.5650E-02  7.2583E-02 -1.9275E-02  2.0279E-03  2.9554E-02 -5.2775E-02
             1.8209E-01

0ITERATION NO.:   38    OBJECTIVE VALUE:  -1976.75745882616        NO. OF FUNC. EVALS.:  92
 CUMULATIVE NO. OF FUNC. EVALS.:     1024
 NPARAMETR:  1.0124E+00  6.7713E-01  6.0690E-01  1.1709E+00  6.3737E-01  8.6050E-01  1.6811E+00  1.0000E-02  8.4349E-01  5.4268E-01
             1.5017E+00
 PARAMETER:  1.1235E-01 -2.8989E-01 -3.9939E-01  2.5775E-01 -3.5040E-01 -5.0240E-02  6.1942E-01 -4.8197E+00 -7.0207E-02 -5.1123E-01
             5.0660E-01
 GRADIENT:   4.3809E-02 -1.6521E-02 -3.4191E-02 -9.4294E-02  2.1394E-02  1.4695E-03  3.3394E-02  0.0000E+00  2.3506E-03  2.5599E-03
            -8.1000E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1024
 NO. OF SIG. DIGITS IN FINAL EST.:  2.7
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3961E-03  2.0971E-02 -4.6546E-04 -1.6581E-02  6.9317E-03
 SE:             2.9674E-02  2.2104E-02  2.2337E-04  2.5910E-02  1.7358E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6248E-01  3.4276E-01  3.7180E-02  5.2220E-01  6.8964E-01

 ETASHRINKSD(%)  5.8771E-01  2.5949E+01  9.9252E+01  1.3197E+01  4.1850E+01
 ETASHRINKVR(%)  1.1720E+00  4.5164E+01  9.9994E+01  2.4653E+01  6.6185E+01
 EBVSHRINKSD(%)  9.7555E-01  2.5841E+01  9.9244E+01  1.3022E+01  4.1499E+01
 EBVSHRINKVR(%)  1.9416E+00  4.5005E+01  9.9994E+01  2.4348E+01  6.5776E+01
 RELATIVEINF(%)  9.7616E+01  8.5731E+00  5.4322E-04  1.8432E+01  2.3390E+00
 EPSSHRINKSD(%)  3.0354E+01
 EPSSHRINKVR(%)  5.1494E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1976.7574588261630     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1057.8189256214903     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.46
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1976.757       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  6.77E-01  6.07E-01  1.17E+00  6.37E-01  8.61E-01  1.68E+00  1.00E-02  8.43E-01  5.43E-01  1.50E+00
 


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
 #CPUT: Total CPU Time in Seconds,       13.500
Stop Time:
Fri Oct  1 09:35:00 CDT 2021
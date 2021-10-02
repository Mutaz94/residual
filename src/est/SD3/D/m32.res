Fri Oct  1 21:54:40 CDT 2021
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
$DATA ../../../../data/SD3/D/dat32.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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


0ITERATION NO.:    0    OBJECTIVE VALUE:   19773.9462706841        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3680E+02  2.6802E+02 -6.1637E+01  4.3590E+01  1.2995E+02 -1.3492E+03 -7.1812E+02 -5.5006E+01 -1.3624E+03 -3.5334E+02
            -4.0273E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -710.257905965031        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.7483E+00  1.3093E+00  9.3952E-01  2.0908E+00  1.1415E+00  2.7938E+00  1.9509E+00  9.8181E-01  2.0407E+00  1.0604E+00
             1.3451E+01
 PARAMETER:  6.5862E-01  3.6948E-01  3.7618E-02  8.3753E-01  2.3233E-01  1.1274E+00  7.6827E-01  8.1643E-02  8.1327E-01  1.5864E-01
             2.6990E+00
 GRADIENT:   5.7344E+01 -1.4534E+01 -6.4477E+01  8.4599E+01  5.9800E+01  1.0592E+02  8.1142E-01  4.3868E+00 -8.8800E+00  1.1767E+01
             2.5518E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -766.415280902252        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.7522E+00  1.2273E+00  8.7265E+00  2.7466E+00  3.4061E+00  2.5127E+00  4.7657E+00  7.5765E-01  3.2645E+00  1.0932E+00
             1.2587E+01
 PARAMETER:  6.6086E-01  3.0481E-01  2.2664E+00  1.1104E+00  1.3256E+00  1.0213E+00  1.6614E+00 -1.7754E-01  1.2831E+00  1.8907E-01
             2.6327E+00
 GRADIENT:   7.1843E+01  1.2292E+01 -5.1929E+00  6.5309E+01  9.3721E+00  6.0968E+01  1.9770E+01  3.1010E-01  6.9623E+01  1.5430E+00
             2.5349E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -830.778700161691        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.1951E+00  6.4023E-01  1.3271E+01  1.7933E+00  1.9252E+00  1.8137E+00  4.3554E+00  2.9722E+00  1.6091E+00  8.3467E-01
             1.0757E+01
 PARAMETER:  2.7821E-01 -3.4593E-01  2.6856E+00  6.8404E-01  7.5502E-01  6.9539E-01  1.5714E+00  1.1893E+00  5.7569E-01 -8.0717E-02
             2.4755E+00
 GRADIENT:  -6.7819E+01 -1.2144E+01  1.0567E+00 -7.2551E+00 -6.5829E+00 -2.2620E+01  3.9813E-01  7.1458E-01  7.3861E+00  5.4759E+00
             2.3092E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -861.338146790022        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      298
 NPARAMETR:  1.3044E+00  1.5184E+00  4.1922E+00  1.2248E+00  1.8075E+00  2.0390E+00  3.1525E+00  5.5810E-01  1.6980E+00  2.9405E-01
             8.6529E+00
 PARAMETER:  3.6578E-01  5.1767E-01  1.5332E+00  3.0274E-01  6.9195E-01  8.1244E-01  1.2482E+00 -4.8322E-01  6.2943E-01 -1.1240E+00
             2.2579E+00
 GRADIENT:   2.6275E+01  1.0289E+01  2.5254E+00  1.8592E+01 -1.1237E+01  1.1418E+01 -4.2976E+00  5.1244E-02  4.4187E+00  7.2873E-01
            -1.2815E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -864.593659121312        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:      434
 NPARAMETR:  1.2958E+00  1.4671E+00  5.1257E+00  1.2355E+00  2.0248E+00  2.1592E+00  3.7824E+00  2.8437E-01  1.4833E+00  2.5061E-01
             8.9895E+00
 PARAMETER:  3.5911E-01  4.8331E-01  1.7343E+00  3.1145E-01  8.0545E-01  8.6975E-01  1.4303E+00 -1.1575E+00  4.9429E-01 -1.2839E+00
             2.2961E+00
 GRADIENT:  -1.0041E+01  2.8143E+00 -2.3876E-01 -2.5184E+00  3.6815E+00  8.3293E-01  7.1650E+00  1.0987E-02  7.4529E+00  4.7669E-01
             1.9884E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -867.131183944380        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      609
 NPARAMETR:  1.3204E+00  1.9096E+00  2.3703E+00  8.8601E-01  1.8705E+00  2.1267E+00  3.2995E+00  1.0000E-02  6.1319E-01  6.0912E-02
             8.8744E+00
 PARAMETER:  3.7792E-01  7.4688E-01  9.6302E-01 -2.1022E-02  7.2621E-01  8.5459E-01  1.2938E+00 -6.5389E+00 -3.8907E-01 -2.6983E+00
             2.2832E+00
 GRADIENT:   6.2705E-01  4.2988E+00 -3.4999E-01  1.6600E+00  1.1548E+00 -3.9994E+00  3.1291E+00  0.0000E+00  6.0762E-01  2.9194E-02
             8.6319E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -867.377301093832        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      784
 NPARAMETR:  1.3145E+00  1.9396E+00  1.9593E+00  8.2865E-01  1.8021E+00  2.1554E+00  3.1753E+00  1.0000E-02  4.1772E-01  3.7631E-02
             8.8602E+00
 PARAMETER:  3.7345E-01  7.6249E-01  7.7260E-01 -8.7955E-02  6.8895E-01  8.6800E-01  1.2554E+00 -8.5829E+00 -7.7295E-01 -3.1799E+00
             2.2816E+00
 GRADIENT:  -6.3054E-01 -1.5454E-01 -2.1487E-01  1.8247E-01  1.8988E-01  1.2642E+00 -3.4133E-01  0.0000E+00  2.0653E-01  1.1815E-02
             8.0934E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -867.468148988497        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      959
 NPARAMETR:  1.3190E+00  2.0372E+00  1.7984E+00  7.7232E-01  1.8101E+00  2.1469E+00  3.0831E+00  1.0000E-02  1.1424E-01  1.0609E-02
             8.8636E+00
 PARAMETER:  3.7685E-01  8.1156E-01  6.8691E-01 -1.5836E-01  6.9338E-01  8.6401E-01  1.2260E+00 -1.3972E+01 -2.0694E+00 -4.4460E+00
             2.2819E+00
 GRADIENT:   7.8458E-01  7.6636E-02  9.2589E-02 -5.8479E-01 -1.0736E-01 -3.0356E-02  4.4537E-01  0.0000E+00  1.8843E-02  9.3962E-04
             6.2909E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -867.477390310967        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1134
 NPARAMETR:  1.3169E+00  2.0335E+00  1.7576E+00  7.7234E-01  1.7991E+00  2.1466E+00  3.0808E+00  1.0000E-02  3.7345E-02  1.0000E-02
             8.8597E+00
 PARAMETER:  3.7529E-01  8.0978E-01  6.6395E-01 -1.5833E-01  6.8729E-01  8.6388E-01  1.2252E+00 -1.8503E+01 -3.1876E+00 -5.4716E+00
             2.2815E+00
 GRADIENT:   1.6095E-01 -2.4650E-02 -9.3837E-03  5.9256E-02 -1.3521E-02  2.9928E-03  2.3862E-03  0.0000E+00  1.7312E-03  0.0000E+00
             4.1846E-02

0ITERATION NO.:   49    OBJECTIVE VALUE:  -867.478234056201        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:     1270
 NPARAMETR:  1.3185E+00  2.0339E+00  1.7583E+00  7.7078E-01  1.8002E+00  2.1627E+00  3.0725E+00  1.0000E-02  1.0000E-02  1.0000E-02
             8.8564E+00
 PARAMETER:  3.7495E-01  8.1132E-01  6.6357E-01 -1.6017E-01  6.8814E-01  8.6387E-01  1.2241E+00 -2.3779E+01 -4.5082E+00 -6.6724E+00
             2.2814E+00
 GRADIENT:  -3.4330E-01  1.3826E-01 -8.1827E-03  2.4439E-02  2.3123E-02 -1.2620E+00  2.2514E-01  0.0000E+00  3.0019E-05  0.0000E+00
             1.9806E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1270
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.9863E-03  2.2309E-04 -3.6512E-07 -5.1423E-04 -2.7678E-05
 SE:             2.8937E-02  2.7132E-02  2.1736E-05  1.2170E-04  7.2913E-05
 N:                     100         100         100         100         100

 P VAL.:         7.5614E-01  9.9344E-01  9.8660E-01  2.3852E-05  7.0424E-01

 ETASHRINKSD(%)  3.0578E+00  9.1056E+00  9.9927E+01  9.9592E+01  9.9756E+01
 ETASHRINKVR(%)  6.0220E+00  1.7382E+01  1.0000E+02  9.9998E+01  9.9999E+01
 EBVSHRINKSD(%)  2.9949E+00  6.9592E+00  9.9917E+01  9.9719E+01  9.9687E+01
 EBVSHRINKVR(%)  5.9001E+00  1.3434E+01  1.0000E+02  9.9999E+01  9.9999E+01
 RELATIVEINF(%)  9.3332E+01  3.4359E+01  1.2406E-05  3.1397E-04  1.7331E-04
 EPSSHRINKSD(%)  9.4716E+00
 EPSSHRINKVR(%)  1.8046E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -867.47823405620068     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       235.24800578940642     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.41
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -867.478       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.32E+00  2.04E+00  1.76E+00  7.71E-01  1.80E+00  2.15E+00  3.08E+00  1.00E-02  1.00E-02  1.00E-02  8.86E+00
 


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
 #CPUT: Total CPU Time in Seconds,       24.457
Stop Time:
Fri Oct  1 21:55:06 CDT 2021

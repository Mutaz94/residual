Fri Oct  1 02:46:00 CDT 2021
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
$DATA ../../../../data/SD1/SL2/dat2.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      998
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E19.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      898
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
 RAW OUTPUT FILE (FILE): m2.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1983.75258145338        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6820E+02  9.5298E+01  6.2048E+01  8.1458E+01  4.4342E+01  3.7395E+01 -3.1361E+01 -1.3757E+02 -5.5167E+01 -1.9264E+01
            -3.4438E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3014.89911732839        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.9161E-01  1.2886E+00  1.2794E+00  8.7572E-01  1.3202E+00  9.1050E-01  7.7119E-01  7.9227E-01  7.6671E-01  1.0498E+00
             2.0467E+00
 PARAMETER:  9.1576E-02  3.5353E-01  3.4637E-01 -3.2707E-02  3.7776E-01  6.2336E-03 -1.5982E-01 -1.3285E-01 -1.6564E-01  1.4856E-01
             8.1621E-01
 GRADIENT:   1.1141E+02  7.6659E+01  5.8450E+00  1.4846E+01  4.2976E+01 -2.1924E+01 -3.9026E+00 -3.2440E+00 -4.4353E+01 -4.5173E+01
            -8.0395E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3024.36158027738        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.8442E-01  1.2845E+00  1.1290E+00  8.8654E-01  1.2895E+00  9.5171E-01  4.6457E-01  2.3604E-01  1.1804E+00  1.1761E+00
             2.0744E+00
 PARAMETER:  8.4300E-02  3.5036E-01  2.2133E-01 -2.0434E-02  3.5428E-01  5.0504E-02 -6.6665E-01 -1.3438E+00  2.6586E-01  2.6224E-01
             8.2965E-01
 GRADIENT:   9.1632E+01  5.0548E+01 -1.1007E+00  5.5064E+01  6.1087E+01 -3.4092E+00 -1.5691E+00 -2.6905E-01  2.2052E+01 -3.2048E+01
            -3.3194E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3035.50375182691        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      336
 NPARAMETR:  9.8463E-01  1.6357E+00  1.2208E+00  6.5853E-01  1.5914E+00  9.8126E-01  5.3376E-01  7.8965E-01  1.2323E+00  1.4748E+00
             2.1130E+00
 PARAMETER:  8.4506E-02  5.9210E-01  2.9949E-01 -3.1774E-01  5.6463E-01  8.1080E-02 -5.2782E-01 -1.3617E-01  3.0889E-01  4.8851E-01
             8.4811E-01
 GRADIENT:  -8.3965E+00  1.8996E+01  3.7404E+00  1.0859E+01 -1.6702E+00 -6.1483E-01 -1.4013E+00 -2.4894E+00 -1.0414E+01  7.5684E+00
             1.6770E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3038.48892577292        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      511
 NPARAMETR:  9.8792E-01  1.7661E+00  1.4509E+00  5.6404E-01  1.7692E+00  9.8355E-01  5.2827E-01  2.1288E+00  1.4412E+00  1.4829E+00
             2.0731E+00
 PARAMETER:  8.7850E-02  6.6875E-01  4.7219E-01 -4.7263E-01  6.7055E-01  8.3411E-02 -5.3814E-01  8.5554E-01  4.6548E-01  4.9397E-01
             8.2904E-01
 GRADIENT:   8.3089E-01 -1.3919E+01 -3.0240E+00 -2.3447E+00  4.2563E+00 -2.1309E-01  2.7538E-01  1.2707E+00  1.6318E+00 -1.4375E+00
            -2.9140E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3039.08816030891        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      687
 NPARAMETR:  9.8804E-01  1.7945E+00  1.8111E+00  5.5470E-01  1.8435E+00  9.8258E-01  5.9060E-01  2.6851E+00  1.3409E+00  1.5062E+00
             2.0758E+00
 PARAMETER:  8.7966E-02  6.8471E-01  6.9393E-01 -4.8933E-01  7.1169E-01  8.2425E-02 -4.2662E-01  1.0877E+00  3.9337E-01  5.0956E-01
             8.3037E-01
 GRADIENT:   8.2479E-01 -6.0005E-01 -1.0229E+00 -5.4996E+00 -5.7170E-01 -6.9763E-01  1.5645E+00 -1.5209E+00  3.6811E-02  3.5695E-01
             4.5555E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3040.50720719907        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      864
 NPARAMETR:  9.8791E-01  1.5843E+00  2.5214E+00  7.1061E-01  1.7583E+00  9.8005E-01  5.4737E-01  3.1260E+00  1.1673E+00  1.4600E+00
             2.0501E+00
 PARAMETER:  8.7835E-02  5.6015E-01  1.0248E+00 -2.4163E-01  6.6435E-01  7.9852E-02 -5.0263E-01  1.2398E+00  2.5467E-01  4.7845E-01
             8.1787E-01
 GRADIENT:   1.0987E+00  2.7767E+01 -1.7872E+00  1.3160E+01 -6.7990E+00 -1.7909E+00 -3.2151E+00  1.2436E+00 -2.4150E+00  3.9148E+00
            -1.2225E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3041.30228070019        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1039
 NPARAMETR:  9.8666E-01  1.4142E+00  3.0037E+00  8.2060E-01  1.7067E+00  9.8425E-01  6.2275E-01  3.1554E+00  1.0177E+00  1.3701E+00
             2.0564E+00
 PARAMETER:  8.6574E-02  4.4658E-01  1.1998E+00 -9.7717E-02  6.3458E-01  8.4122E-02 -3.7362E-01  1.2491E+00  1.1750E-01  4.1485E-01
             8.2096E-01
 GRADIENT:  -1.2751E+00  1.8214E+00 -6.7529E-01  2.2533E+00  1.2974E+00  3.1484E-02 -8.7321E-01  1.6693E-01 -3.3036E-02 -1.0204E-01
             2.3069E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3041.36497997464        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1201
 NPARAMETR:  9.8715E-01  1.3698E+00  3.1471E+00  8.5151E-01  1.6887E+00  9.8409E-01  6.9322E-01  3.1910E+00  9.4469E-01  1.3488E+00
             2.0526E+00
 PARAMETER:  8.7071E-02  4.1463E-01  1.2465E+00 -6.0749E-02  6.2394E-01  8.3960E-02 -2.6641E-01  1.2603E+00  4.3102E-02  3.9918E-01
             8.1910E-01
 GRADIENT:   5.6814E-02 -3.7179E-01 -2.2087E-02 -2.1482E-01 -3.0790E-02 -2.5961E-02 -7.1915E-02  1.4713E-02 -4.8073E-02  4.3516E-04
             1.8477E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1201
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3918E-03 -3.1220E-02 -3.4188E-02  1.8403E-02 -3.3486E-02
 SE:             2.9615E-02  1.8176E-02  1.8383E-02  2.3763E-02  2.3934E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6252E-01  8.5851E-02  6.2912E-02  4.3867E-01  1.6178E-01

 ETASHRINKSD(%)  7.8756E-01  3.9110E+01  3.8416E+01  2.0392E+01  1.9817E+01
 ETASHRINKVR(%)  1.5689E+00  6.2924E+01  6.2074E+01  3.6626E+01  3.5707E+01
 EBVSHRINKSD(%)  1.0469E+00  3.8647E+01  4.2201E+01  2.2988E+01  1.6259E+01
 EBVSHRINKVR(%)  2.0828E+00  6.2358E+01  6.6592E+01  4.0692E+01  2.9874E+01
 RELATIVEINF(%)  9.7880E+01  3.6747E+00  1.5359E+01  6.0445E+00  3.7134E+01
 EPSSHRINKSD(%)  1.8056E+01
 EPSSHRINKVR(%)  3.2852E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          898
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1650.4136056355921     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3041.3649799746422     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1390.9513743390501     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    30.97
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3041.365       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.87E-01  1.37E+00  3.15E+00  8.52E-01  1.69E+00  9.84E-01  6.93E-01  3.19E+00  9.45E-01  1.35E+00  2.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       31.027
Stop Time:
Fri Oct  1 02:46:33 CDT 2021

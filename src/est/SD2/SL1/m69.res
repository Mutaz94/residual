Fri Oct  1 11:51:46 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat69.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m69.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2083.96662120051        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3143E+02  6.2118E+01 -5.1540E+01  1.7984E+02  1.3619E+02  4.3356E+01 -4.0294E-01  6.8899E+00 -2.5408E+00 -1.4933E+01
            -5.8637E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2094.77734271473        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:      176
 NPARAMETR:  1.0328E+00  9.7592E-01  1.0156E+00  9.6856E-01  9.2268E-01  1.0226E+00  1.0058E+00  9.8351E-01  1.0257E+00  1.0041E+00
             1.0770E+00
 PARAMETER:  1.3223E-01  7.5628E-02  1.1549E-01  6.8052E-02  1.9528E-02  1.2234E-01  1.0575E-01  8.3377E-02  1.2536E-01  1.0408E-01
             1.7417E-01
 GRADIENT:   6.2260E+00  3.9231E+00  4.1165E-01 -2.8003E+00  9.1491E+00 -1.3284E+00 -4.6916E-01  6.3175E+00 -3.0126E+00  3.2857E+00
             7.5567E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2098.21725312533        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      354
 NPARAMETR:  1.0134E+00  6.6455E-01  8.5017E-01  1.1449E+00  7.3748E-01  1.0110E+00  1.3784E+00  4.7634E-01  9.1867E-01  9.4909E-01
             1.0429E+00
 PARAMETER:  1.1336E-01 -3.0864E-01 -6.2324E-02  2.3530E-01 -2.0451E-01  1.1095E-01  4.2093E-01 -6.4161E-01  1.5171E-02  4.7752E-02
             1.4202E-01
 GRADIENT:  -2.9404E+01 -4.6840E-01 -1.7550E+01  2.3748E+01  8.5725E+00 -5.3524E+00 -1.1646E+00  1.8318E+00  4.8127E+00  1.2508E+01
            -1.1031E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2099.93384266880        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      531
 NPARAMETR:  1.0308E+00  7.6610E-01  7.6771E-01  1.0633E+00  7.2920E-01  1.0316E+00  1.3674E+00  3.2516E-01  9.3333E-01  8.3562E-01
             1.0607E+00
 PARAMETER:  1.3036E-01 -1.6644E-01 -1.6434E-01  1.6135E-01 -2.1580E-01  1.3114E-01  4.1290E-01 -1.0234E+00  3.1000E-02 -7.9578E-02
             1.5892E-01
 GRADIENT:   3.6961E+00 -1.6396E+00 -1.2730E+00 -2.0037E+00  1.0847E+00  2.3722E+00  9.1593E-01  5.0095E-01  1.8197E+00  5.1085E-01
             1.2676E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2100.12871518700        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  1.0295E+00  8.0885E-01  7.3478E-01  1.0356E+00  7.2829E-01  1.0253E+00  1.3036E+00  1.2830E-01  9.4644E-01  8.3535E-01
             1.0589E+00
 PARAMETER:  1.2906E-01 -1.1215E-01 -2.0819E-01  1.3495E-01 -2.1706E-01  1.2495E-01  3.6514E-01 -1.9534E+00  4.4947E-02 -7.9908E-02
             1.5727E-01
 GRADIENT:  -5.3596E-01 -4.2018E-01  3.2611E-01 -1.6280E+00 -5.4887E-01 -3.4393E-01  1.6723E-01  5.5231E-02  1.8239E-01  1.9319E-01
            -1.2374E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2100.15548428545        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  1.0298E+00  8.1426E-01  7.2855E-01  1.0323E+00  7.2747E-01  1.0264E+00  1.2970E+00  2.9676E-02  9.4810E-01  8.3463E-01
             1.0592E+00
 PARAMETER:  1.2939E-01 -1.0547E-01 -2.1670E-01  1.3176E-01 -2.1818E-01  1.2605E-01  3.6007E-01 -3.4174E+00  4.6707E-02 -8.0769E-02
             1.5754E-01
 GRADIENT:  -3.5729E-02 -2.8729E-01 -3.2862E-01 -4.0963E-01  3.3303E-01  5.2962E-02  1.1582E-01  2.9969E-03  1.9826E-03  1.9130E-01
             8.3784E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2100.15881578367        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:     1055
 NPARAMETR:  1.0312E+00  8.1512E-01  7.2840E-01  1.0319E+00  7.2753E-01  1.0268E+00  1.2955E+00  1.0000E-02  9.4862E-01  8.3411E-01
             1.0592E+00
 PARAMETER:  1.3074E-01 -1.0442E-01 -2.1690E-01  1.3136E-01 -2.1810E-01  1.2642E-01  3.5893E-01 -4.5655E+00  4.7248E-02 -8.1390E-02
             1.5749E-01
 GRADIENT:   2.8302E+00 -8.2355E-02  1.2719E-01 -3.9072E-01 -1.5761E-01  1.9779E-01  6.7011E-02  0.0000E+00  2.6909E-02  3.4642E-02
            -1.2644E-02

0ITERATION NO.:   31    OBJECTIVE VALUE:  -2100.15881578367        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1077
 NPARAMETR:  1.0312E+00  8.1512E-01  7.2840E-01  1.0319E+00  7.2753E-01  1.0268E+00  1.2955E+00  1.0000E-02  9.4862E-01  8.3411E-01
             1.0592E+00
 PARAMETER:  1.3074E-01 -1.0442E-01 -2.1690E-01  1.3136E-01 -2.1810E-01  1.2642E-01  3.5893E-01 -4.5655E+00  4.7248E-02 -8.1390E-02
             1.5749E-01
 GRADIENT:   2.8302E+00 -8.2355E-02  1.2719E-01 -3.9072E-01 -1.5761E-01  1.9779E-01  6.7011E-02  0.0000E+00  2.6909E-02  3.4642E-02
            -1.2644E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1077
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.7832E-04  7.2958E-04 -4.0224E-04 -2.2512E-03 -8.2585E-03
 SE:             2.9865E-02  1.9861E-02  1.9772E-04  2.6068E-02  2.3830E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9256E-01  9.7070E-01  4.1904E-02  9.3118E-01  7.2893E-01

 ETASHRINKSD(%)  1.0000E-10  3.3463E+01  9.9338E+01  1.2667E+01  2.0165E+01
 ETASHRINKVR(%)  1.0000E-10  5.5729E+01  9.9996E+01  2.3730E+01  3.6264E+01
 EBVSHRINKSD(%)  3.5541E-01  3.3606E+01  9.9392E+01  1.2636E+01  1.9791E+01
 EBVSHRINKVR(%)  7.0956E-01  5.5918E+01  9.9996E+01  2.3676E+01  3.5665E+01
 RELATIVEINF(%)  9.8895E+01  4.9582E+00  5.3884E-04  1.1213E+01  9.4827E+00
 EPSSHRINKSD(%)  3.3641E+01
 EPSSHRINKVR(%)  5.5965E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2100.1588157836741     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1181.2202825790014     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.13
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2100.159       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  8.15E-01  7.28E-01  1.03E+00  7.28E-01  1.03E+00  1.30E+00  1.00E-02  9.49E-01  8.34E-01  1.06E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.172
Stop Time:
Fri Oct  1 11:52:03 CDT 2021

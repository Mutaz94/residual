Sat Oct  2 04:10:32 CDT 2021
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
$DATA ../../../../data/SD4/S2/dat89.csv ignore=@
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
 (E4.0,E3.0,E19.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m89.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1674.34969608406        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0764E+02 -1.8035E+01 -2.0492E+01  2.4546E+01  5.1631E+01  6.3684E+01  3.7754E+00  4.4094E+00  2.2639E+01 -5.8388E+00
             1.1702E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1678.60238446535        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.9571E-01  1.0418E+00  1.0132E+00  1.0060E+00  9.8197E-01  8.6536E-01  9.9056E-01  9.8663E-01  9.2534E-01  1.0197E+00
             9.6456E-01
 PARAMETER:  9.5705E-02  1.4093E-01  1.1313E-01  1.0595E-01  8.1804E-02 -4.4605E-02  9.0517E-02  8.6541E-02  2.2404E-02  1.1947E-01
             6.3913E-02
 GRADIENT:   3.3850E+00  4.5717E+00  4.9055E+00 -3.8633E-01 -7.2420E+00 -1.5840E+01 -7.8254E-01  9.9547E-01  1.0789E+00 -2.0555E+00
            -6.6921E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1679.08420998295        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  9.9689E-01  8.9740E-01  9.9980E-01  1.1027E+00  9.2080E-01  8.8146E-01  1.1982E+00  7.2282E-01  8.1242E-01  1.0006E+00
             9.8134E-01
 PARAMETER:  9.6885E-02 -8.2489E-03  9.9797E-02  1.9780E-01  1.7490E-02 -2.6179E-02  2.8084E-01 -2.2460E-01 -1.0774E-01  1.0055E-01
             8.1161E-02
 GRADIENT:   7.6424E+00  1.6056E+01  1.2424E+01  1.4532E+01 -7.9442E-01 -8.2579E+00 -1.5017E+00 -4.6579E+00 -5.8500E+00 -1.2750E-01
            -8.4523E-01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1681.56125235039        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.9242E-01  6.8761E-01  6.2693E-01  1.2066E+00  6.3028E-01  9.2465E-01  1.5730E+00  2.9996E-01  7.5245E-01  6.8751E-01
             9.7944E-01
 PARAMETER:  9.2389E-02 -2.7454E-01 -3.6693E-01  2.8782E-01 -3.6159E-01  2.1663E-02  5.5301E-01 -1.1041E+00 -1.8442E-01 -2.7467E-01
             7.9224E-02
 GRADIENT:  -1.2892E+01  2.4527E+01 -3.3632E+01  9.4696E+01  3.0573E+01  8.9187E+00 -5.4938E-01  1.2127E+00 -5.6210E-01  2.6561E+00
            -4.6579E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1685.17331488907        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      707
 NPARAMETR:  9.9724E-01  5.2291E-01  5.6184E-01  1.2323E+00  5.4278E-01  9.0237E-01  1.9049E+00  1.8070E-01  7.1946E-01  5.6518E-01
             9.9327E-01
 PARAMETER:  9.7234E-02 -5.4835E-01 -4.7654E-01  3.0890E-01 -5.1105E-01 -2.7323E-03  7.4442E-01 -1.6109E+00 -2.2925E-01 -4.7062E-01
             9.3245E-02
 GRADIENT:   1.7674E+00 -7.3388E-01 -7.7375E+00  6.5498E+00  1.5066E+01 -1.0937E-01 -2.5949E+00  6.1135E-02 -4.5370E-01 -3.8746E+00
             1.5058E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1685.65761199024        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      882
 NPARAMETR:  9.9485E-01  4.2473E-01  5.7976E-01  1.2860E+00  5.2741E-01  9.0140E-01  2.2214E+00  1.2862E-01  6.9976E-01  6.2595E-01
             9.8966E-01
 PARAMETER:  9.4836E-02 -7.5629E-01 -4.4515E-01  3.5157E-01 -5.3978E-01 -3.8026E-03  8.9814E-01 -1.9509E+00 -2.5702E-01 -3.6849E-01
             8.9603E-02
 GRADIENT:   1.5116E-01  6.5536E-01  1.0199E+00  2.9914E-01 -1.7646E+00 -1.2697E-01 -2.4910E-01 -8.6875E-02 -3.9110E-01  1.4638E-01
            -1.5447E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1685.68981206315        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1064
 NPARAMETR:  9.9452E-01  4.2257E-01  5.8098E-01  1.2865E+00  5.2747E-01  9.0163E-01  2.2330E+00  2.0155E-01  6.9976E-01  6.1538E-01
             9.8874E-01
 PARAMETER:  9.4500E-02 -7.6140E-01 -4.4303E-01  3.5191E-01 -5.3967E-01 -3.5468E-03  9.0332E-01 -1.5017E+00 -2.5701E-01 -3.8552E-01
             8.8679E-02
 GRADIENT:  -4.8077E-01  3.7751E-01 -8.6955E-01 -1.6864E+00 -8.9250E-01  3.0476E-03 -2.0640E-01  4.6660E-02 -2.3174E-01  2.2523E-01
             1.3357E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1685.69401280645        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1242
 NPARAMETR:  9.9559E-01  4.2022E-01  5.8204E-01  1.2872E+00  5.2757E-01  9.0169E-01  2.2538E+00  2.0190E-01  7.0040E-01  6.1632E-01
             9.8906E-01
 PARAMETER:  9.5579E-02 -7.6697E-01 -4.4122E-01  3.5248E-01 -5.3948E-01 -3.4859E-03  9.1262E-01 -1.5000E+00 -2.5611E-01 -3.8399E-01
             8.9004E-02
 GRADIENT:   2.6693E+00  5.8899E-01 -3.7536E-01 -3.9969E+00 -1.2542E+00  4.5062E-02  7.1365E-01  3.8656E-02  1.2646E-01  3.6622E-01
             1.9059E-01

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1685.69490793821        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1299
 NPARAMETR:  9.9543E-01  4.2007E-01  5.8208E-01  1.2878E+00  5.2763E-01  9.0173E-01  2.2506E+00  1.9890E-01  7.0035E-01  6.1541E-01
             9.8895E-01
 PARAMETER:  9.5417E-02 -7.6733E-01 -4.4116E-01  3.5290E-01 -5.3935E-01 -3.4371E-03  9.1118E-01 -1.5150E+00 -2.5617E-01 -3.8546E-01
             8.8892E-02
 GRADIENT:   2.2244E+00  5.0744E-01 -3.9171E-01 -2.3281E+00 -8.6687E-01  6.1162E-02  3.6803E-01  3.8570E-03  7.5797E-02 -1.6697E-02
             1.7076E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1299
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.5223E-04  3.7667E-02 -1.2698E-02 -2.6359E-02  1.8497E-02
 SE:             2.9838E-02  2.0613E-02  5.6714E-03  2.5728E-02  2.1545E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8523E-01  6.7647E-02  2.5159E-02  3.0559E-01  3.9062E-01

 ETASHRINKSD(%)  4.0053E-02  3.0944E+01  8.1000E+01  1.3809E+01  2.7820E+01
 ETASHRINKVR(%)  8.0090E-02  5.2313E+01  9.6390E+01  2.5711E+01  4.7901E+01
 EBVSHRINKSD(%)  5.1076E-01  3.3148E+01  8.1554E+01  1.2620E+01  2.5285E+01
 EBVSHRINKVR(%)  1.0189E+00  5.5308E+01  9.6597E+01  2.3647E+01  4.4177E+01
 RELATIVEINF(%)  9.8365E+01  9.1138E+00  2.0872E-01  2.2267E+01  2.9254E+00
 EPSSHRINKSD(%)  4.4300E+01
 EPSSHRINKVR(%)  6.8975E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1685.6949079382100     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -950.54408137447183     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.18
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1685.695       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.95E-01  4.20E-01  5.82E-01  1.29E+00  5.28E-01  9.02E-01  2.25E+00  1.99E-01  7.00E-01  6.15E-01  9.89E-01
 


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
 #CPUT: Total CPU Time in Seconds,       16.218
Stop Time:
Sat Oct  2 04:10:50 CDT 2021
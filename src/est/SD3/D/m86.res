Fri Oct  1 22:37:19 CDT 2021
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
$DATA ../../../../data/SD3/D/dat86.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m86.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   29643.5241463854        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   7.8757E+02  6.5327E+02  7.0033E+00  5.5568E+02  1.5877E+02 -2.8590E+03 -1.3643E+03 -1.9447E+01 -2.0627E+03 -7.7017E+02
            -5.6385E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -462.944785523511        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.3134E+00  1.2557E+00  1.0010E+00  1.5367E+00  1.0702E+00  2.2850E+00  1.3745E+00  9.5016E-01  1.3359E+00  9.2729E-01
             1.4252E+01
 PARAMETER:  3.7262E-01  3.2771E-01  1.0101E-01  5.2967E-01  1.6782E-01  9.2637E-01  4.1808E-01  4.8875E-02  3.8962E-01  2.4513E-02
             2.7569E+00
 GRADIENT:   6.9797E+00  3.4002E+01 -1.0677E+01  6.5939E+01  3.2773E+00  5.6804E+01 -1.8592E+01  5.4081E+00 -3.6894E+01  1.2139E+01
             3.9517E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -524.807994680514        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.2989E+00  2.3410E+00  4.5367E+00  1.1798E+00  3.7464E+00  2.7240E+00  1.3750E+00  2.3909E-01  4.8671E+00  2.9977E-01
             1.3595E+01
 PARAMETER:  3.6151E-01  9.5058E-01  1.6122E+00  2.6534E-01  1.4208E+00  1.1021E+00  4.1842E-01 -1.3309E+00  1.6825E+00 -1.1047E+00
             2.7097E+00
 GRADIENT:  -5.5773E+00  4.9382E+01 -1.6105E+01  2.6512E+01  6.4379E+00  4.0115E+01  8.7775E+00  1.9726E-01  9.6964E+00  1.6515E-01
             1.4169E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -538.995498845440        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      230
 NPARAMETR:  1.1859E+00  1.6829E+00  5.9755E+00  9.8798E-01  2.7560E+00  2.5886E+00  9.1457E-01  8.7780E-02  4.2223E+00  1.3546E+00
             1.2472E+01
 PARAMETER:  2.7047E-01  6.2050E-01  1.8877E+00  8.7909E-02  1.1138E+00  1.0511E+00  1.0703E-02 -2.3329E+00  1.5404E+00  4.0354E-01
             2.6235E+00
 GRADIENT:  -2.8637E+01 -7.9224E+00 -8.5170E+00 -7.1281E+00  1.6825E+00  5.0943E+00  7.2483E+00  1.7245E-02  4.3957E+00  7.6668E+00
             1.3431E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -557.766655291718        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      305
 NPARAMETR:  1.1908E+00  1.4077E+00  1.9991E+01  8.4702E-01  1.9116E+00  2.5315E+00  3.5923E-01  7.5988E-01  4.3251E+00  2.0888E-01
             1.0439E+01
 PARAMETER:  2.7460E-01  4.4199E-01  3.0953E+00 -6.6029E-02  7.4793E-01  1.0288E+00 -9.2380E-01 -1.7460E-01  1.5644E+00 -1.4660E+00
             2.4455E+00
 GRADIENT:   8.6216E+00 -4.3021E+00 -2.9679E+00 -1.3966E+01 -1.1885E+01  3.0024E+00  2.8766E-01  3.6230E-01 -2.4963E+00  4.5825E-01
            -3.7833E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -576.013414395116        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      402
 NPARAMETR:  1.1886E+00  1.4130E+00  2.5149E+01  1.1111E+00  2.1702E+00  2.3766E+00  3.4808E-01  4.1422E-01  4.2554E+00  9.9948E-02
             1.0941E+01
 PARAMETER:  2.7274E-01  4.4569E-01  3.3248E+00  2.0536E-01  8.7483E-01  9.6569E-01 -9.5534E-01 -7.8137E-01  1.5482E+00 -2.2031E+00
             2.4925E+00
 GRADIENT:  -1.0189E+00 -1.4137E+00 -2.3269E+00  2.4396E+00  1.9030E+00 -4.1998E+00  4.6092E-01  1.1037E-01 -2.7923E+01  8.3476E-02
            -3.7971E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -580.658860617913        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      579
 NPARAMETR:  1.2170E+00  1.6213E+00  3.4360E+01  8.6217E-01  2.1838E+00  2.3944E+00  2.8717E-01  3.5334E-01  5.1936E+00  6.5941E-02
             1.1332E+01
 PARAMETER:  2.9641E-01  5.8321E-01  3.6369E+00 -4.8300E-02  8.8107E-01  9.7311E-01 -1.1477E+00 -9.4031E-01  1.7474E+00 -2.6190E+00
             2.5277E+00
 GRADIENT:   3.4178E+00 -3.1841E+00 -4.7239E-01 -1.1948E+00  1.7693E+00 -4.8977E-01 -8.7263E-01  5.5415E-02 -2.9045E+00  3.3284E-02
             5.1309E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -582.430421286665        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      756
 NPARAMETR:  1.1985E+00  2.0289E+00  4.8805E+01  5.7310E-01  2.1568E+00  2.3753E+00  8.6110E-01  2.9756E-01  6.0623E+00  1.5612E-01
             1.1398E+01
 PARAMETER:  2.8109E-01  8.0752E-01  3.9878E+00 -4.5669E-01  8.6862E-01  9.6512E-01 -4.9539E-02 -1.1121E+00  1.9021E+00 -1.7571E+00
             2.5334E+00
 GRADIENT:  -3.0199E+00 -1.2088E+00  7.7667E-01 -4.3973E-01 -1.3065E-01 -6.8690E-01 -6.1511E-01  2.3466E-02 -1.6237E+00  2.1203E-01
             2.6578E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -582.715868823275        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:      941
 NPARAMETR:  1.2063E+00  2.1147E+00  4.4085E+01  5.2486E-01  2.1384E+00  2.3866E+00  9.9076E-01  1.6770E-01  6.2321E+00  7.6034E-02
             1.1353E+01
 PARAMETER:  2.8758E-01  8.4890E-01  3.8861E+00 -5.4463E-01  8.6007E-01  9.6987E-01  9.0718E-02 -1.6856E+00  1.9297E+00 -2.4766E+00
             2.5295E+00
 GRADIENT:  -1.6036E-01 -2.4534E+00  5.5065E-01 -5.1419E-02 -3.6848E-01  8.7327E-01  1.1192E+00  8.9117E-03 -1.5362E+00  5.2003E-02
            -1.8413E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -582.763191986395        NO. OF FUNC. EVALS.: 171
 CUMULATIVE NO. OF FUNC. EVALS.:     1112
 NPARAMETR:  1.2062E+00  2.1242E+00  4.2977E+01  5.2493E-01  2.1404E+00  2.3671E+00  9.9069E-01  2.6839E-02  6.2516E+00  1.7150E-02
             1.1373E+01
 PARAMETER:  2.8744E-01  8.5354E-01  3.8601E+00 -5.4439E-01  8.6114E-01  9.6148E-01  9.0632E-02 -3.4831E+00  1.9330E+00 -3.9295E+00
             2.5314E+00
 GRADIENT:  -3.8051E+01  2.5701E+01 -5.2436E+00  2.0978E+01  2.5390E+01 -1.0362E+01 -2.2537E+02  2.2061E-04  7.5493E+00  2.7880E-03
             3.5636E+00
 NUMSIGDIG:         2.3         2.4         2.3         2.3         2.3         2.2         2.3         0.5         2.5         0.6
                    3.1

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1112
 NO. OF SIG. DIGITS IN FINAL EST.:  0.5

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4255E-02 -7.1171E-02  5.8319E-06  4.0582E-02  4.2971E-05
 SE:             2.8492E-02  1.2779E-02  2.4978E-05  2.3103E-02  7.2604E-05
 N:                     100         100         100         100         100

 P VAL.:         6.1684E-01  2.5638E-08  8.1539E-01  7.8987E-02  5.5394E-01

 ETASHRINKSD(%)  4.5498E+00  5.7189E+01  9.9916E+01  2.2604E+01  9.9757E+01
 ETASHRINKVR(%)  8.8925E+00  8.1672E+01  1.0000E+02  4.0098E+01  9.9999E+01
 EBVSHRINKSD(%)  5.0627E+00  5.7709E+01  9.9860E+01  1.9864E+01  9.9555E+01
 EBVSHRINKVR(%)  9.8691E+00  8.2114E+01  1.0000E+02  3.5782E+01  9.9998E+01
 RELATIVEINF(%)  8.9358E+01  8.4375E+00  1.9441E-04  3.1711E+01  1.7490E-03
 EPSSHRINKSD(%)  6.4278E+00
 EPSSHRINKVR(%)  1.2442E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -582.76319198639487     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       519.96304785921222     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.76
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -582.763       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.21E+00  2.12E+00  4.30E+01  5.25E-01  2.14E+00  2.37E+00  9.91E-01  2.78E-02  6.25E+00  1.78E-02  1.14E+01
 


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
 #CPUT: Total CPU Time in Seconds,       21.811
Stop Time:
Fri Oct  1 22:37:42 CDT 2021

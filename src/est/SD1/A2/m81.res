Fri Oct  1 00:50:06 CDT 2021
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
$DATA ../../../../data/SD1/A2/dat81.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m81.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2442.96590723812        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8891E+02  1.4935E+02  2.0251E+02  1.2783E+01  2.4875E+02  3.2332E+01 -1.5296E+02 -3.2090E+02 -3.8765E+01 -1.0472E+02
            -2.2224E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3132.81807415291        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  9.8410E-01  8.2053E-01  7.7202E-01  1.1364E+00  7.5911E-01  9.7872E-01  1.0817E+00  9.8913E-01  8.0387E-01  9.1695E-01
             1.8393E+00
 PARAMETER:  8.3975E-02 -9.7805E-02 -1.5875E-01  2.2791E-01 -1.7560E-01  7.8488E-02  1.7851E-01  8.9069E-02 -1.1832E-01  1.3297E-02
             7.0941E-01
 GRADIENT:   3.8192E+01  2.5864E+01  9.2671E+00  1.0259E+02  5.7906E+01 -3.6178E+00 -1.1707E+01  9.7037E+00 -1.4834E+01  5.5664E+00
            -1.0338E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3136.72304218951        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      224
 NPARAMETR:  1.0138E+00  6.9867E-01  6.2807E-01  1.1707E+00  6.6514E-01  9.4137E-01  1.3230E+00  7.7702E-01  8.1713E-01  7.4363E-01
             1.8084E+00
 PARAMETER:  1.1366E-01 -2.5858E-01 -3.6511E-01  2.5763E-01 -3.0776E-01  3.9583E-02  3.7990E-01 -1.5228E-01 -1.0196E-01 -1.9622E-01
             6.9242E-01
 GRADIENT:  -2.0041E+01 -2.9794E+01 -5.2449E+01  3.6012E+01  1.2578E+02 -3.3152E+01  4.2409E-01  2.9851E+00 -1.4785E+01 -8.7648E+00
            -1.3394E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3147.85435081291        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      402
 NPARAMETR:  1.0368E+00  5.8724E-01  5.1740E-01  1.2316E+00  5.3455E-01  1.0314E+00  1.3627E+00  4.7580E-01  8.9634E-01  7.0104E-01
             1.8905E+00
 PARAMETER:  1.3618E-01 -4.3231E-01 -5.5894E-01  3.0833E-01 -5.2632E-01  1.3088E-01  4.0943E-01 -6.4276E-01 -9.4312E-03 -2.5519E-01
             7.3683E-01
 GRADIENT:   2.9089E+01 -9.6223E+00 -2.3097E+01  8.1696E+01  5.9323E+01  4.0213E+00  3.4882E+00 -1.9239E+00  1.1486E+01 -5.9901E+00
            -2.2437E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3180.92573582685        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      582
 NPARAMETR:  1.0222E+00  3.0616E-01  2.2403E-01  1.2073E+00  2.6474E-01  1.0190E+00  1.6089E+00  1.3073E+00  1.0154E+00  4.0380E-01
             1.7064E+00
 PARAMETER:  1.2199E-01 -1.0836E+00 -1.3960E+00  2.8836E-01 -1.2290E+00  1.1885E-01  5.7558E-01  3.6800E-01  1.1531E-01 -8.0684E-01
             6.3436E-01
 GRADIENT:  -3.8238E+00  2.0660E+00  2.3151E+01  1.4923E+02 -6.6446E+01 -9.8932E+00  1.2538E+01  5.3410E+00 -3.4170E+01  3.7617E+00
             7.4007E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3195.19623125165        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      759
 NPARAMETR:  1.0215E+00  2.7640E-01  1.8516E-01  1.0954E+00  2.3965E-01  1.0370E+00  1.5528E+00  1.4058E+00  1.1972E+00  3.6649E-01
             1.5909E+00
 PARAMETER:  1.2127E-01 -1.1859E+00 -1.5865E+00  1.9113E-01 -1.3286E+00  1.3630E-01  5.4007E-01  4.4061E-01  2.8002E-01 -9.0378E-01
             5.6431E-01
 GRADIENT:  -2.7140E-01 -2.0318E+00 -3.3321E+00  5.0434E+00  1.3258E+01 -1.7417E+00 -1.8231E+00 -4.5230E+00  5.5458E-01 -1.0842E+00
            -1.9632E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3195.43398636261        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      938             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0219E+00  2.7287E-01  1.8121E-01  1.0855E+00  2.3490E-01  1.0411E+00  1.5574E+00  1.4201E+00  1.2068E+00  3.9320E-01
             1.5914E+00
 PARAMETER:  1.2164E-01 -1.1987E+00 -1.6081E+00  1.8205E-01 -1.3486E+00  1.4026E-01  5.4301E-01  4.5074E-01  2.8794E-01 -8.3343E-01
             5.6463E-01
 GRADIENT:   1.5638E+02  1.5127E+02  1.6160E+02  5.9908E+01  7.8044E+02  1.7460E+01  1.4760E+01  1.1117E+01  1.4801E+01  6.9672E+00
             1.0441E+01

0ITERATION NO.:   33    OBJECTIVE VALUE:  -3195.43629003320        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1031
 NPARAMETR:  1.0218E+00  2.7245E-01  1.8104E-01  1.0844E+00  2.3513E-01  1.0412E+00  1.5556E+00  1.4189E+00  1.2061E+00  3.8994E-01
             1.5913E+00
 PARAMETER:  1.2154E-01 -1.2003E+00 -1.6090E+00  1.8100E-01 -1.3476E+00  1.4041E-01  5.4186E-01  4.4990E-01  2.8736E-01 -8.4177E-01
             5.6457E-01
 GRADIENT:   2.8291E-01  1.1857E+00  2.3901E-01  1.4555E-01 -2.7109E+00 -2.8853E-02  2.3506E-01  1.5632E-01  1.0359E-01  7.9294E-02
             1.2287E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1031
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.0928E-04  7.4949E-03  1.4732E-03 -3.3567E-04  1.1232E-02
 SE:             2.9765E-02  2.7412E-02  2.6421E-02  2.8575E-02  1.4305E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8367E-01  7.8453E-01  9.5554E-01  9.9063E-01  4.3233E-01

 ETASHRINKSD(%)  2.8500E-01  8.1672E+00  1.1487E+01  4.2700E+00  5.2077E+01
 ETASHRINKVR(%)  5.6918E-01  1.5667E+01  2.1654E+01  8.3576E+00  7.7034E+01
 EBVSHRINKSD(%)  6.2132E-01  6.8602E+00  1.1029E+01  4.4241E+00  5.3937E+01
 EBVSHRINKVR(%)  1.2388E+00  1.3250E+01  2.0842E+01  8.6524E+00  7.8782E+01
 RELATIVEINF(%)  9.8755E+01  4.4697E+01  2.6502E+01  7.2613E+01  5.2780E+00
 EPSSHRINKSD(%)  2.3171E+01
 EPSSHRINKVR(%)  4.0972E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3195.4362900332039     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1541.3469302647932     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.90
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3195.436       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  2.72E-01  1.81E-01  1.08E+00  2.35E-01  1.04E+00  1.56E+00  1.42E+00  1.21E+00  3.90E-01  1.59E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.964
Stop Time:
Fri Oct  1 00:50:34 CDT 2021
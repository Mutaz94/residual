Wed Sep 29 23:57:24 CDT 2021
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
$DATA ../../../../data/spa1/A3/dat8.csv ignore=@
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
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       29 SEP 2021
Days until program expires : 200
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 RAW OUTPUT FILE (FILE): m8.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   518.242512782952        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.8211E+02  5.0343E+01  2.5846E+02 -7.7169E+00  1.5104E+02  2.6315E+01 -5.1166E+01 -4.1445E+02 -5.6153E+01 -1.0102E+02
            -4.5325E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1451.33781560200        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  9.9389E-01  9.9972E-01  8.9896E-01  1.1015E+00  9.3702E-01  9.3529E-01  1.0087E+00  1.0487E+00  9.9528E-01  9.8021E-01
             4.7315E+00
 PARAMETER:  9.3876E-02  9.9715E-02 -6.5134E-03  1.9669E-01  3.4947E-02  3.3098E-02  1.0863E-01  1.4758E-01  9.5265E-02  8.0015E-02
             1.6543E+00
 GRADIENT:  -2.8669E+01 -2.0582E+00 -1.5546E+01  1.4735E+01 -6.8679E+00 -1.2517E+01  7.3658E+00  7.6368E+00  1.2616E+01  2.2390E+01
             2.8141E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1470.66911169030        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  9.7662E-01  7.2727E-01  2.8490E-01  1.1758E+00  3.7942E-01  1.0191E+00  1.1733E+00  4.0384E-01  1.2768E+00  2.0705E-01
             4.2762E+00
 PARAMETER:  7.6341E-02 -2.1846E-01 -1.1556E+00  2.6196E-01 -8.6911E-01  1.1894E-01  2.5985E-01 -8.0673E-01  3.4438E-01 -1.4748E+00
             1.5531E+00
 GRADIENT:  -5.9524E+01  8.3413E+01  3.7891E+01  8.2114E+01 -9.0651E+01  2.6054E+00  8.3803E+00  1.0112E+00  2.9951E+01  6.1780E-01
             2.4123E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1514.44780964318        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      253
 NPARAMETR:  9.5184E-01  6.4328E-01  2.6540E-01  1.1370E+00  3.7151E-01  1.0466E+00  1.3304E+00  1.0593E-01  1.1985E+00  2.3600E-01
             3.0864E+00
 PARAMETER:  5.0641E-02 -3.4118E-01 -1.2265E+00  2.2837E-01 -8.9018E-01  1.4551E-01  3.8549E-01 -2.1450E+00  2.8104E-01 -1.3439E+00
             1.2270E+00
 GRADIENT:  -7.6081E+01  1.4048E+01 -1.6870E+01  5.6502E+01  6.2075E+00  6.2339E+00  2.6474E+00 -1.9776E-01  1.4450E+01 -3.0382E+00
            -2.1976E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1520.92826535375        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      428
 NPARAMETR:  9.9034E-01  5.7657E-01  2.9747E-01  1.1387E+00  3.7094E-01  1.0179E+00  1.3267E+00  2.7819E-02  1.0915E+00  4.6463E-01
             3.0996E+00
 PARAMETER:  9.0289E-02 -4.5066E-01 -1.1124E+00  2.2985E-01 -8.9172E-01  1.1778E-01  3.8272E-01 -3.4820E+00  1.8759E-01 -6.6651E-01
             1.2313E+00
 GRADIENT:  -1.0552E+00  7.5148E+00  5.6652E+00  8.6166E+00 -1.1389E+01  1.3294E+00  4.9042E-01 -4.6240E-03  1.6495E+00 -1.5636E+00
            -8.7546E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1521.08764983736        NO. OF FUNC. EVALS.: 174
 CUMULATIVE NO. OF FUNC. EVALS.:      602
 NPARAMETR:  9.9102E-01  5.5961E-01  2.9751E-01  1.1380E+00  3.6781E-01  1.0137E+00  1.3101E+00  2.0046E-02  1.0851E+00  4.9953E-01
             3.1199E+00
 PARAMETER:  9.0978E-02 -4.8052E-01 -1.1123E+00  2.2931E-01 -9.0020E-01  1.1359E-01  3.7011E-01 -3.8097E+00  1.8168E-01 -5.9408E-01
             1.2378E+00
 GRADIENT:   6.2333E-02  2.7018E-01 -1.1133E-01  4.7571E-02 -1.2134E-01  3.0563E-02  1.5264E-01 -1.2827E-03  1.5084E-01  1.6326E-01
             4.7047E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1521.08811335502        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      788
 NPARAMETR:  9.9103E-01  5.5917E-01  2.9755E-01  1.1380E+00  3.6788E-01  1.0136E+00  1.3076E+00  2.1684E-02  1.0843E+00  4.9728E-01
             3.1186E+00
 PARAMETER:  9.0989E-02 -4.8131E-01 -1.1122E+00  2.2926E-01 -9.0000E-01  1.1352E-01  3.6821E-01 -3.7312E+00  1.8097E-01 -5.9860E-01
             1.2374E+00
 GRADIENT:   1.7759E-01 -2.9210E-01 -3.4365E-01 -1.5952E-01  6.1377E-01  2.0973E-03 -1.1623E-01 -1.6211E-03 -3.5083E-02 -4.1949E-02
            -2.1960E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1521.29729021795        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:      972
 NPARAMETR:  9.9213E-01  5.5968E-01  2.9739E-01  1.1375E+00  3.6712E-01  1.0151E+00  1.3009E+00  5.1196E-01  1.0864E+00  4.4759E-01
             3.0987E+00
 PARAMETER:  9.2096E-02 -4.8038E-01 -1.1127E+00  2.2887E-01 -9.0208E-01  1.1502E-01  3.6303E-01 -5.6952E-01  1.8290E-01 -7.0388E-01
             1.2310E+00
 GRADIENT:   1.8785E+00 -8.2834E-01 -4.3938E-01  2.4179E-01  4.8888E+00  2.6646E-01  5.4825E-01  2.8879E-01  1.4011E+00  1.1511E+00
            -9.0282E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1521.38634773614        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1148
 NPARAMETR:  9.9142E-01  5.6154E-01  2.9078E-01  1.1325E+00  3.6281E-01  1.0149E+00  1.3113E+00  6.2247E-01  1.0790E+00  3.6552E-01
             3.0997E+00
 PARAMETER:  9.1383E-02 -4.7708E-01 -1.1352E+00  2.2443E-01 -9.1388E-01  1.1475E-01  3.7102E-01 -3.7406E-01  1.7607E-01 -9.0643E-01
             1.2313E+00
 GRADIENT:  -2.8300E-01  1.3981E-03  2.5419E-01  8.8447E-01  2.1783E+00 -1.0828E-01 -9.6690E-02  2.7197E-02 -4.4279E-01 -1.9614E-01
            -7.9724E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1521.42511455283        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1325
 NPARAMETR:  9.9160E-01  5.5410E-01  2.8211E-01  1.1288E+00  3.5446E-01  1.0165E+00  1.2864E+00  6.4723E-01  1.0932E+00  3.7425E-01
             3.0885E+00
 PARAMETER:  9.1568E-02 -4.9040E-01 -1.1654E+00  2.2114E-01 -9.3717E-01  1.1641E-01  3.5187E-01 -3.3505E-01  1.8914E-01 -8.8282E-01
             1.2277E+00
 GRADIENT:  -4.3189E-03  1.7208E-01 -4.8085E-02 -1.2398E-01  2.5504E-02  5.6520E-03  4.9488E-02  3.9982E-02  5.3671E-02  2.8421E-02
             1.5020E-01

0ITERATION NO.:   47    OBJECTIVE VALUE:  -1521.42534758702        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1382
 NPARAMETR:  9.9158E-01  5.5320E-01  2.8248E-01  1.1294E+00  3.5451E-01  1.0165E+00  1.2886E+00  6.4088E-01  1.0925E+00  3.7608E-01
             3.0888E+00
 PARAMETER:  9.1548E-02 -4.9204E-01 -1.1641E+00  2.2168E-01 -9.3701E-01  1.1633E-01  3.5358E-01 -3.4491E-01  1.8850E-01 -8.7797E-01
             1.2278E+00
 GRADIENT:   4.8012E-03  3.4591E-02 -3.1860E-02 -4.7010E-02  5.3073E-02  3.0359E-03 -1.7328E-03  8.3316E-04  1.9170E-02  3.8173E-03
             1.4999E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1382
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6286E-03  1.0002E-02 -7.0818E-03 -1.2433E-02  3.9218E-03
 SE:             2.9018E-02  1.8229E-02  1.1461E-02  2.5959E-02  1.1353E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5525E-01  5.8323E-01  5.3663E-01  6.3197E-01  7.2977E-01

 ETASHRINKSD(%)  2.7845E+00  3.8929E+01  6.1605E+01  1.3035E+01  6.1965E+01
 ETASHRINKVR(%)  5.4915E+00  6.2704E+01  8.5258E+01  2.4371E+01  8.5534E+01
 EBVSHRINKSD(%)  2.7368E+00  3.9642E+01  6.1347E+01  1.2200E+01  6.2066E+01
 EBVSHRINKVR(%)  5.3987E+00  6.3569E+01  8.5059E+01  2.2911E+01  8.5610E+01
 RELATIVEINF(%)  9.4397E+01  4.4044E+00  1.7926E+00  4.9036E+01  7.2269E-01
 EPSSHRINKSD(%)  2.5604E+01
 EPSSHRINKVR(%)  4.4652E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1521.4253475870230     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -602.48681438235030     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    28.20
 Elapsed covariance  time in seconds:     8.29
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1521.425       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  5.53E-01  2.82E-01  1.13E+00  3.55E-01  1.02E+00  1.29E+00  6.41E-01  1.09E+00  3.76E-01  3.09E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.32E-02  1.18E-01  1.44E-01  9.02E-02  1.26E-01  7.04E-02  7.21E-01  1.55E+00  2.64E-01  4.31E-01  4.38E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.10E-03
 
 TH 2
+       -8.35E-04  1.40E-02
 
 TH 3
+       -1.29E-03  9.06E-03  2.07E-02
 
 TH 4
+       -7.89E-04  2.77E-03  1.13E-02  8.13E-03
 
 TH 5
+       -1.13E-03  1.05E-02  1.76E-02  8.89E-03  1.59E-02
 
 TH 6
+        3.81E-04 -2.34E-03 -6.07E-03 -3.53E-03 -5.14E-03  4.96E-03
 
 TH 7
+       -6.40E-03  3.36E-02  9.22E-02  5.35E-02  7.69E-02 -3.08E-02  5.19E-01
 
 TH 8
+        1.29E-02 -8.65E-02 -2.16E-01 -1.17E-01 -1.82E-01  6.50E-02 -9.49E-01  2.40E+00
 
 TH 9
+        2.86E-03 -1.86E-02 -3.45E-02 -1.87E-02 -3.06E-02  1.29E-02 -1.66E-01  3.56E-01  6.96E-02
 
 TH10
+       -2.87E-03  1.31E-02  5.21E-02  2.87E-02  4.16E-02 -1.56E-02  2.08E-01 -6.08E-01 -7.64E-02  1.86E-01
 
 TH11
+        2.81E-03  2.67E-02  4.19E-02  1.99E-02  3.78E-02 -9.90E-03  1.43E-01 -4.45E-01 -6.23E-02  1.01E-01  1.92E-01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.32E-02
 
 TH 2
+       -2.12E-01  1.18E-01
 
 TH 3
+       -2.69E-01  5.32E-01  1.44E-01
 
 TH 4
+       -2.63E-01  2.60E-01  8.71E-01  9.02E-02
 
 TH 5
+       -2.69E-01  7.08E-01  9.70E-01  7.83E-01  1.26E-01
 
 TH 6
+        1.63E-01 -2.81E-01 -5.99E-01 -5.57E-01 -5.80E-01  7.04E-02
 
 TH 7
+       -2.67E-01  3.93E-01  8.89E-01  8.23E-01  8.47E-01 -6.08E-01  7.21E-01
 
 TH 8
+        2.51E-01 -4.72E-01 -9.67E-01 -8.36E-01 -9.33E-01  5.96E-01 -8.50E-01  1.55E+00
 
 TH 9
+        3.27E-01 -5.96E-01 -9.09E-01 -7.88E-01 -9.22E-01  6.95E-01 -8.73E-01  8.70E-01  2.64E-01
 
 TH10
+       -2.01E-01  2.56E-01  8.40E-01  7.38E-01  7.67E-01 -5.15E-01  6.70E-01 -9.11E-01 -6.73E-01  4.31E-01
 
 TH11
+        1.93E-01  5.14E-01  6.64E-01  5.04E-01  6.86E-01 -3.21E-01  4.54E-01 -6.55E-01 -5.40E-01  5.34E-01  4.38E-01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.59E+03
 
 TH 2
+        3.33E+02  1.12E+03
 
 TH 3
+        7.71E+02  1.95E+03  7.05E+03
 
 TH 4
+        4.01E+01 -2.43E+01 -1.03E+03  7.77E+02
 
 TH 5
+       -9.11E+02 -3.39E+03 -8.14E+03  8.01E+02  1.28E+04
 
 TH 6
+        7.35E+01  1.02E+01 -5.29E+01  8.83E+00 -1.38E+02  4.47E+02
 
 TH 7
+       -3.13E+01  2.08E+01 -6.68E+01 -2.92E+00 -1.13E+01  7.12E+00  1.72E+01
 
 TH 8
+       -2.69E+01 -2.71E+01 -2.27E+01  1.32E+00  1.18E+02  7.23E+00  5.52E+00  1.90E+01
 
 TH 9
+       -6.36E+01 -6.00E+01 -1.28E+02  4.94E+01  4.37E+02 -1.44E+02  5.21E+00 -1.23E+01  1.92E+02
 
 TH10
+       -3.67E+01  1.95E+01 -1.31E+02  2.12E+01  7.11E+01  3.68E+01  1.71E+01  2.92E+01 -3.98E+01  7.65E+01
 
 TH11
+       -9.86E+01 -2.10E+01 -8.70E+01  2.12E-01  3.92E+01  3.74E+00  7.66E+00  6.61E+00 -1.07E+01  1.37E+01  1.99E+01
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       30.613
Stop Time:
Wed Sep 29 23:58:02 CDT 2021

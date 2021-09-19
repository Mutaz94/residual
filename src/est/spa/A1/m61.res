Sat Sep 18 09:20:34 CDT 2021
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
$DATA ../../../../data/spa/A1/dat61.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m61.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1470.43337315951        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -7.6159E+00 -2.8287E+01  1.1477E+01 -5.5194E+01  4.2407E+01  1.0167E+01  1.8326E+00 -9.9665E-01 -5.9695E+00 -9.5415E+00
            -3.9599E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1560.67567882756        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0216E+00  9.9979E-01  9.9618E-01  1.0405E+00  9.5694E-01  9.6440E-01  9.4434E-01  9.6322E-01  9.5904E-01  9.1893E-01
             1.6266E+00
 PARAMETER:  1.2137E-01  9.9794E-02  9.6174E-02  1.3970E-01  5.5989E-02  6.3755E-02  4.2730E-02  6.2531E-02  5.8178E-02  1.5455E-02
             5.8648E-01
 GRADIENT:   4.4221E+00  4.4204E+00  1.1402E+01 -1.1975E+01 -6.0468E+00 -2.2026E+00  3.3338E+00  1.7845E+00 -2.9686E+00  3.9164E+00
            -1.9214E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1564.72993428544        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  1.0282E+00  9.4016E-01  5.9304E-01  1.0551E+00  7.1662E-01  1.0059E+00  1.1108E+00  4.6997E-01  8.8090E-01  6.5415E-01
             1.6263E+00
 PARAMETER:  1.2786E-01  3.8300E-02 -4.2249E-01  1.5360E-01 -2.3320E-01  1.0588E-01  2.0508E-01 -6.5510E-01 -2.6815E-02 -3.2442E-01
             5.8630E-01
 GRADIENT:   1.0269E+01 -1.2391E+00 -2.7890E+01  3.5843E+01  4.8865E+01  1.1861E+01  4.3312E+00  2.3441E+00 -6.4539E-01  3.0699E+00
            -9.1201E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1569.42301837451        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  1.0201E+00  7.5935E-01  3.1149E-01  1.0666E+00  4.3827E-01  9.3588E-01  1.2459E+00  1.4042E-01  7.8384E-01  3.5685E-01
             1.6903E+00
 PARAMETER:  1.1986E-01 -1.7530E-01 -1.0664E+00  1.6443E-01 -7.2492E-01  3.3730E-02  3.1984E-01 -1.8632E+00 -1.4355E-01 -9.3045E-01
             6.2492E-01
 GRADIENT:  -1.6069E+01  3.7701E+01 -1.1031E+01  8.0049E+01  3.5738E+00 -1.9041E+01  1.0063E+01  1.0100E-01 -2.0792E+00  2.6125E+00
             3.0980E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1572.86096201099        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      304
 NPARAMETR:  1.0180E+00  6.6326E-01  2.3767E-01  1.0187E+00  3.6180E-01  9.6962E-01  1.2124E+00  9.3836E-02  7.9340E-01  2.5370E-01
             1.5588E+00
 PARAMETER:  1.1782E-01 -3.1059E-01 -1.3369E+00  1.1854E-01 -9.1666E-01  6.9145E-02  2.9264E-01 -2.2662E+00 -1.3143E-01 -1.2716E+00
             5.4394E-01
 GRADIENT:  -4.8764E+00  1.5789E+01  9.4213E+00  1.2012E+01 -2.0121E+01 -6.9579E+00 -1.0698E+00 -1.6958E-01 -3.0843E+00 -1.8482E+00
             7.0398E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1572.90414885000        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:      397
 NPARAMETR:  1.0182E+00  6.5556E-01  2.3461E-01  1.0161E+00  3.5856E-01  9.7678E-01  1.2176E+00  9.0601E-02  7.9758E-01  2.5407E-01
             1.5436E+00
 PARAMETER:  1.1801E-01 -3.2226E-01 -1.3498E+00  1.1597E-01 -9.2567E-01  7.6510E-02  2.9685E-01 -2.3013E+00 -1.2617E-01 -1.2701E+00
             5.3414E-01
 GRADIENT:  -1.9877E+01  7.3170E+00  8.1121E-01  3.4438E+00 -2.3567E+01 -5.5968E+00 -9.8155E-01 -1.6800E-01 -2.4492E+00 -1.9385E+00
             3.3778E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1573.87427500967        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      574
 NPARAMETR:  1.0278E+00  6.8103E-01  2.6389E-01  1.0308E+00  3.8738E-01  9.8827E-01  1.2134E+00  1.1218E-01  7.9467E-01  3.1646E-01
             1.5387E+00
 PARAMETER:  1.2744E-01 -2.8414E-01 -1.2322E+00  1.3036E-01 -8.4834E-01  8.8205E-02  2.9341E-01 -2.0877E+00 -1.2983E-01 -1.0506E+00
             5.3096E-01
 GRADIENT:  -2.0800E+00 -6.4804E-01 -1.5662E+00  1.0960E+00  3.3875E+00  2.3778E-01  3.2129E-01 -9.5542E-02 -7.8580E-01  2.0307E-02
            -2.4425E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1574.14444466680        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      754
 NPARAMETR:  1.0327E+00  6.7794E-01  2.6640E-01  1.0309E+00  3.8736E-01  9.9094E-01  1.2232E+00  3.9530E-01  7.9526E-01  2.8327E-01
             1.5297E+00
 PARAMETER:  1.3216E-01 -2.8870E-01 -1.2228E+00  1.3044E-01 -8.4840E-01  9.0901E-02  3.0149E-01 -8.2811E-01 -1.2909E-01 -1.1614E+00
             5.2507E-01
 GRADIENT:   8.2852E+00 -1.9430E+00  5.7328E-01 -6.9581E+00  5.3198E+00  1.5674E+00  2.0318E+00  1.1922E-01  2.3061E+00  1.0468E+00
             9.5412E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1574.43643541225        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      931
 NPARAMETR:  1.0278E+00  6.7503E-01  2.4922E-01  1.0190E+00  3.7423E-01  9.8778E-01  1.2001E+00  5.3532E-01  7.9017E-01  1.9332E-01
             1.5111E+00
 PARAMETER:  1.2739E-01 -2.9300E-01 -1.2894E+00  1.1884E-01 -8.8288E-01  8.7704E-02  2.8244E-01 -5.2490E-01 -1.3550E-01 -1.5434E+00
             5.1283E-01
 GRADIENT:   6.7915E-01 -7.4584E-02 -5.5079E-01 -6.9022E-02  4.7519E-01  1.5715E-01  4.2485E-02  1.7728E-01 -2.4254E-01  2.0705E-01
            -4.6721E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1574.45026185979        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1106
 NPARAMETR:  1.0272E+00  6.8147E-01  2.4818E-01  1.0151E+00  3.7563E-01  9.8710E-01  1.1964E+00  5.5339E-01  7.9162E-01  1.5651E-01
             1.5134E+00
 PARAMETER:  1.2683E-01 -2.8350E-01 -1.2936E+00  1.1497E-01 -8.7915E-01  8.7015E-02  2.7933E-01 -4.9169E-01 -1.3367E-01 -1.7547E+00
             5.1436E-01
 GRADIENT:  -1.8341E-02 -3.7696E-02 -6.3462E-02  6.2900E-02  1.0382E-01  1.5321E-03 -5.8980E-04 -5.2785E-05 -5.6663E-03  1.1079E-03
            -7.0188E-04

0ITERATION NO.:   47    OBJECTIVE VALUE:  -1574.45026513338        NO. OF FUNC. EVALS.:  57
 CUMULATIVE NO. OF FUNC. EVALS.:     1163
 NPARAMETR:  1.0272E+00  6.8148E-01  2.4818E-01  1.0151E+00  3.7563E-01  9.8709E-01  1.1965E+00  5.5368E-01  7.9164E-01  1.5619E-01
             1.5134E+00
 PARAMETER:  1.2684E-01 -2.8348E-01 -1.2936E+00  1.1494E-01 -8.7916E-01  8.7009E-02  2.7936E-01 -4.9116E-01 -1.3365E-01 -1.7567E+00
             5.1437E-01
 GRADIENT:  -1.8554E-03 -2.9635E-03 -7.4752E-03  4.3844E-03  1.1199E-02 -2.3041E-04  3.9171E-03  8.0030E-04  2.0958E-03  4.6524E-04
             5.5580E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1163
 NO. OF SIG. DIGITS IN FINAL EST.:  3.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.4598E-04  1.1275E-02 -1.9261E-02 -1.0548E-02  4.3299E-03
 SE:             2.9697E-02  2.5074E-02  1.1792E-02  2.6631E-02  6.1258E-03
 N:                     100         100         100         100         100

 P VAL.:         9.9608E-01  6.5294E-01  1.0240E-01  6.9204E-01  4.7967E-01

 ETASHRINKSD(%)  5.1219E-01  1.5999E+01  6.0494E+01  1.0784E+01  7.9478E+01
 ETASHRINKVR(%)  1.0218E+00  2.9439E+01  8.4393E+01  2.0405E+01  9.5788E+01
 EBVSHRINKSD(%)  8.7213E-01  1.4722E+01  6.1704E+01  1.1093E+01  8.0023E+01
 EBVSHRINKVR(%)  1.7367E+00  2.7277E+01  8.5334E+01  2.0956E+01  9.6009E+01
 RELATIVEINF(%)  9.6907E+01  6.4684E+00  1.6427E+00  2.2691E+01  1.9962E-01
 EPSSHRINKSD(%)  4.1577E+01
 EPSSHRINKVR(%)  6.5868E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1574.4502651333828     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -839.29943856964462     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.87
 Elapsed covariance  time in seconds:     5.33
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1574.450       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  6.81E-01  2.48E-01  1.02E+00  3.76E-01  9.87E-01  1.20E+00  5.54E-01  7.92E-01  1.56E-01  1.51E+00
 


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
 
         3.11E-02  2.83E-01  7.60E-02  1.53E-01  8.59E-02  7.30E-02  3.40E-01  7.03E-01  6.49E-02  7.97E-01  1.22E-01
 


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
+        9.68E-04
 
 TH 2
+       -2.62E-03  8.00E-02
 
 TH 3
+        1.37E-04 -8.08E-03  5.77E-03
 
 TH 4
+        1.07E-03 -3.80E-02  8.64E-03  2.35E-02
 
 TH 5
+       -7.22E-04  2.00E-02  1.36E-03 -6.35E-03  7.39E-03
 
 TH 6
+        6.70E-05  9.38E-05 -1.93E-03 -1.99E-03 -1.27E-03  5.34E-03
 
 TH 7
+        2.39E-03 -8.40E-02  1.78E-02  4.84E-02 -1.44E-02 -2.58E-03  1.16E-01
 
 TH 8
+       -1.35E-03  1.01E-01 -4.85E-02 -8.45E-02 -1.83E-03  1.88E-02 -1.83E-01  4.94E-01
 
 TH 9
+        1.75E-04  1.21E-03 -1.14E-03 -1.07E-03 -4.83E-04  6.96E-04 -3.52E-03  1.10E-02  4.21E-03
 
 TH10
+        4.25E-03 -1.74E-01  4.85E-02  1.13E-01 -2.21E-02 -1.42E-02  2.39E-01 -5.09E-01 -7.93E-03  6.35E-01
 
 TH11
+        7.12E-04  1.25E-02  1.71E-03 -3.31E-03  5.34E-03 -2.05E-04 -6.23E-03 -1.04E-02  4.30E-04 -7.78E-03  1.49E-02
 
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
+        3.11E-02
 
 TH 2
+       -2.97E-01  2.83E-01
 
 TH 3
+        5.81E-02 -3.76E-01  7.60E-02
 
 TH 4
+        2.24E-01 -8.77E-01  7.43E-01  1.53E-01
 
 TH 5
+       -2.70E-01  8.22E-01  2.09E-01 -4.83E-01  8.59E-02
 
 TH 6
+        2.95E-02  4.54E-03 -3.47E-01 -1.78E-01 -2.03E-01  7.30E-02
 
 TH 7
+        2.26E-01 -8.72E-01  6.87E-01  9.29E-01 -4.94E-01 -1.04E-01  3.40E-01
 
 TH 8
+       -6.18E-02  5.10E-01 -9.08E-01 -7.85E-01 -3.03E-02  3.66E-01 -7.66E-01  7.03E-01
 
 TH 9
+        8.68E-02  6.62E-02 -2.31E-01 -1.07E-01 -8.67E-02  1.47E-01 -1.59E-01  2.41E-01  6.49E-02
 
 TH10
+        1.71E-01 -7.71E-01  8.00E-01  9.24E-01 -3.23E-01 -2.44E-01  8.83E-01 -9.09E-01 -1.53E-01  7.97E-01
 
 TH11
+        1.88E-01  3.63E-01  1.85E-01 -1.77E-01  5.09E-01 -2.31E-02 -1.50E-01 -1.21E-01  5.44E-02 -8.00E-02  1.22E-01
 
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
+        1.42E+03
 
 TH 2
+        2.56E+02  1.65E+03
 
 TH 3
+        1.24E+02  2.90E+03  1.49E+04
 
 TH 4
+        4.58E+01 -2.27E+02 -4.24E+03  2.09E+03
 
 TH 5
+       -4.53E+02 -5.04E+03 -1.57E+04  3.43E+03  2.09E+04
 
 TH 6
+        6.05E+01  6.49E+01  2.39E+02 -1.21E+01 -3.02E+02  2.56E+02
 
 TH 7
+        1.32E+01  1.10E+02 -2.91E+02  6.21E+01  1.04E+02 -3.85E+01  1.17E+02
 
 TH 8
+       -4.94E+01 -1.00E+02 -3.42E+02  7.03E+01  5.60E+02 -3.69E+01  2.56E+01  5.71E+01
 
 TH 9
+       -2.77E+01 -4.63E+01  3.75E+02 -2.17E+02 -1.85E+02 -5.28E+00 -7.29E+00 -2.50E+01  2.97E+02
 
 TH10
+       -1.82E+01 -2.84E+01 -2.94E+02  3.97E+01  3.41E+02 -1.90E+01  2.01E+01  4.11E+01 -2.31E+01  4.59E+01
 
 TH11
+       -1.62E+02 -1.04E+01  4.22E+00  1.39E+01 -5.48E+01 -2.77E+01 -5.74E+00  1.33E+01 -2.59E+01  6.88E+00  1.17E+02
 
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
 #CPUT: Total CPU Time in Seconds,       17.284
Stop Time:
Sat Sep 18 09:20:53 CDT 2021
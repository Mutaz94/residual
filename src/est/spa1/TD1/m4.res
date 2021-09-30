Thu Sep 30 01:06:27 CDT 2021
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
$DATA ../../../../data/spa1/TD1/dat4.csv ignore=@
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
Current Date:       30 SEP 2021
Days until program expires : 199
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
 RAW OUTPUT FILE (FILE): m4.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2083.24086492143        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.9024E+02  6.1675E+00 -2.2566E+01  7.9147E+01  8.7910E+01  2.4981E+01  1.7079E+00 -3.4140E+00  3.2731E+00 -2.1163E+01
             2.6644E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2086.83645383501        NO. OF FUNC. EVALS.: 164
 CUMULATIVE NO. OF FUNC. EVALS.:      177
 NPARAMETR:  9.7623E-01  1.0081E+00  9.7788E-01  9.9726E-01  9.1820E-01  1.1409E+00  1.0042E+00  1.0270E+00  1.0275E+00  1.0802E+00
             9.2349E-01
 PARAMETER:  7.5939E-02  1.0807E-01  7.7628E-02  9.7255E-02  1.4659E-02  2.3180E-01  1.0418E-01  1.2665E-01  1.2710E-01  1.7718E-01
             2.0402E-02
 GRADIENT:   3.6719E-02  2.2245E+00  1.2871E+01 -1.2769E+01 -3.2998E+01  2.1645E+01  2.2437E+00 -3.2080E-01  8.1546E-01  4.3197E+00
            -3.3115E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2087.43865349813        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      356
 NPARAMETR:  9.7739E-01  1.1168E+00  9.6598E-01  9.3177E-01  9.6123E-01  1.1261E+00  9.1840E-01  1.0765E+00  1.0969E+00  1.1549E+00
             9.2998E-01
 PARAMETER:  7.7128E-02  2.1051E-01  6.5392E-02  2.9330E-02  6.0455E-02  2.1878E-01  1.4876E-02  1.7372E-01  1.9246E-01  2.4402E-01
             2.7409E-02
 GRADIENT:   8.3836E-01  5.6034E+00  1.1732E+01 -1.0200E+01 -3.4091E+01  1.6491E+01  3.3803E+00  6.5640E-01  2.4114E+00  1.0055E+01
            -2.6116E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2089.05248021769        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  9.7821E-01  1.1769E+00  9.1704E-01  8.9919E-01  9.8829E-01  1.0799E+00  8.4541E-01  1.0441E+00  1.1307E+00  1.0980E+00
             9.6213E-01
 PARAMETER:  7.7966E-02  2.6288E-01  1.3397E-02 -6.2596E-03  8.8223E-02  1.7687E-01 -6.7929E-02  1.4319E-01  2.2281E-01  1.9350E-01
             6.1392E-02
 GRADIENT:   5.5798E-01  4.0189E+00  2.0637E+00  3.6693E+00 -3.2947E+00 -2.7644E-01 -8.1240E-02 -2.2364E-01 -5.3395E-02 -4.4656E-01
            -3.0240E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2089.10090172123        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      715
 NPARAMETR:  9.7868E-01  1.2176E+00  8.6366E-01  8.7231E-01  9.8574E-01  1.0829E+00  8.5297E-01  9.7779E-01  1.1466E+00  1.0899E+00
             9.6369E-01
 PARAMETER:  7.8450E-02  2.9692E-01 -4.6574E-02 -3.6607E-02  8.5641E-02  1.7966E-01 -5.9031E-02  7.7537E-02  2.3684E-01  1.8605E-01
             6.3013E-02
 GRADIENT:   6.4825E-01  4.4385E+00  7.2209E-01  5.1446E+00 -1.2707E+00  6.2128E-01  9.9268E-02 -7.5555E-02 -9.7224E-02 -3.7701E-01
             9.4128E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2089.11837950375        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      901
 NPARAMETR:  9.7912E-01  1.2204E+00  8.6259E-01  8.6687E-01  9.8834E-01  1.0827E+00  8.4847E-01  9.8109E-01  1.1510E+00  1.0914E+00
             9.6245E-01
 PARAMETER:  7.8895E-02  2.9915E-01 -4.7819E-02 -4.2871E-02  8.8269E-02  1.7949E-01 -6.4319E-02  8.0911E-02  2.4067E-01  1.8745E-01
             6.1729E-02
 GRADIENT:   1.5021E+00 -2.7363E-01  4.4269E-01  5.0097E-01 -5.9033E-02  5.4733E-01  6.2310E-02 -1.0518E-02 -6.9185E-02 -4.6056E-01
             9.2380E-03

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2089.12001850702        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1077
 NPARAMETR:  9.7922E-01  1.2219E+00  8.6093E-01  8.6619E-01  9.8856E-01  1.0821E+00  8.4615E-01  9.7874E-01  1.1526E+00  1.0945E+00
             9.6237E-01
 PARAMETER:  7.8998E-02  3.0041E-01 -4.9737E-02 -4.3656E-02  8.8490E-02  1.7894E-01 -6.7059E-02  7.8510E-02  2.4206E-01  1.9029E-01
             6.1648E-02
 GRADIENT:   1.6771E+00 -9.0186E-02  1.3147E-01  1.0965E+00 -3.7803E-02  3.2287E-01  9.7297E-03  2.5250E-02 -1.3756E-02 -4.0723E-02
            -1.6537E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2089.12159177278        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1252
 NPARAMETR:  9.7787E-01  1.2300E+00  8.5372E-01  8.6058E-01  9.8943E-01  1.0799E+00  8.4461E-01  9.6874E-01  1.1570E+00  1.0940E+00
             9.6237E-01
 PARAMETER:  7.7623E-02  3.0702E-01 -5.8149E-02 -5.0151E-02  8.9373E-02  1.7685E-01 -6.8876E-02  6.8242E-02  2.4585E-01  1.8986E-01
             6.1646E-02
 GRADIENT:  -1.0548E+00 -1.1386E-01  2.8240E-01  7.8625E-01  5.4457E-02 -5.6319E-01 -2.5488E-02 -5.7929E-02 -7.0526E-02 -1.7115E-01
            -5.5328E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2089.12711862021        NO. OF FUNC. EVALS.: 162
 CUMULATIVE NO. OF FUNC. EVALS.:     1414
 NPARAMETR:  9.7929E-01  1.2306E+00  8.5233E-01  8.5949E-01  9.8927E-01  1.0843E+00  8.4439E-01  9.6878E-01  1.1580E+00  1.0947E+00
             9.6240E-01
 PARAMETER:  7.9069E-02  3.0751E-01 -5.9782E-02 -5.1414E-02  8.9210E-02  1.8090E-01 -6.9137E-02  6.8284E-02  2.4669E-01  1.9044E-01
             6.1678E-02
 GRADIENT:   1.6770E+00 -1.0538E+00  1.2075E-01 -1.1717E-02  5.2305E-02  1.0738E+00  2.4994E-02  2.4812E-02  1.0397E-02  2.6021E-02
             1.3340E-02

0ITERATION NO.:   43    OBJECTIVE VALUE:  -2089.12742594960        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:     1507
 NPARAMETR:  9.7939E-01  1.2311E+00  8.5204E-01  8.5944E-01  9.8922E-01  1.0835E+00  8.4409E-01  9.6764E-01  1.1583E+00  1.0945E+00
             9.6239E-01
 PARAMETER:  7.9178E-02  3.0789E-01 -6.0122E-02 -5.1474E-02  8.9158E-02  1.8024E-01 -6.9493E-02  6.7104E-02  2.4696E-01  1.9032E-01
             6.1660E-02
 GRADIENT:   1.8738E+00 -6.5915E-01  2.1334E-01  3.0977E-01 -6.4475E-02  8.0405E-01  4.5042E-03 -8.8289E-03  2.0570E-02 -1.0275E-02
            -2.4388E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1507
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.5895E-04 -2.8337E-02 -2.7879E-02  1.4360E-02 -3.3821E-02
 SE:             2.9908E-02  1.8195E-02  1.2385E-02  2.5639E-02  2.3154E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8776E-01  1.1937E-01  2.4386E-02  5.7543E-01  1.4410E-01

 ETASHRINKSD(%)  1.0000E-10  3.9045E+01  5.8508E+01  1.4106E+01  2.2431E+01
 ETASHRINKVR(%)  1.0000E-10  6.2845E+01  8.2784E+01  2.6223E+01  3.9831E+01
 EBVSHRINKSD(%)  2.7531E-01  3.8809E+01  6.2290E+01  1.4732E+01  1.9697E+01
 EBVSHRINKVR(%)  5.4985E-01  6.2556E+01  8.5780E+01  2.7293E+01  3.5514E+01
 RELATIVEINF(%)  9.9170E+01  2.1783E+00  2.2739E+00  5.0895E+00  1.5245E+01
 EPSSHRINKSD(%)  3.4799E+01
 EPSSHRINKVR(%)  5.7488E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2089.1274259495954     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1170.1888927449227     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    24.32
 Elapsed covariance  time in seconds:     7.15
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2089.127       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.79E-01  1.23E+00  8.52E-01  8.59E-01  9.89E-01  1.08E+00  8.44E-01  9.68E-01  1.16E+00  1.09E+00  9.62E-01
 


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
 
         3.19E-02  2.58E-01  2.95E-01  1.74E-01  1.33E-01  8.30E-02  2.47E-01  4.87E-01  2.12E-01  1.92E-01  5.20E-02
 


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
+        1.02E-03
 
 TH 2
+       -3.69E-04  6.66E-02
 
 TH 3
+       -3.75E-04 -4.46E-02  8.69E-02
 
 TH 4
+        2.73E-04 -4.38E-02  3.29E-02  3.03E-02
 
 TH 5
+       -8.62E-05  1.34E-02  1.82E-02 -7.34E-03  1.76E-02
 
 TH 6
+        6.99E-05 -2.12E-03  4.68E-03  1.53E-03  1.29E-03  6.90E-03
 
 TH 7
+        1.39E-03 -1.37E-02 -2.19E-02  7.98E-03 -1.61E-02 -1.17E-03  6.10E-02
 
 TH 8
+       -1.31E-03 -3.50E-02  1.25E-01  2.87E-02  4.03E-02  6.36E-03 -5.57E-02  2.37E-01
 
 TH 9
+       -8.48E-04  4.16E-02 -1.67E-02 -2.70E-02  1.35E-02 -2.86E-04 -3.00E-02 -2.09E-03  4.51E-02
 
 TH10
+        2.97E-05  1.12E-02  2.58E-02 -5.78E-03  2.03E-02  1.30E-03 -2.37E-02  5.10E-02  1.43E-02  3.68E-02
 
 TH11
+        3.77E-04  7.87E-04 -3.88E-03 -6.24E-04 -1.29E-03 -2.38E-04  1.35E-03 -6.79E-03 -2.74E-04 -1.92E-03  2.71E-03
 
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
+        3.19E-02
 
 TH 2
+       -4.49E-02  2.58E-01
 
 TH 3
+       -3.99E-02 -5.86E-01  2.95E-01
 
 TH 4
+        4.92E-02 -9.75E-01  6.40E-01  1.74E-01
 
 TH 5
+       -2.04E-02  3.91E-01  4.65E-01 -3.18E-01  1.33E-01
 
 TH 6
+        2.64E-02 -9.89E-02  1.91E-01  1.06E-01  1.17E-01  8.30E-02
 
 TH 7
+        1.76E-01 -2.14E-01 -3.02E-01  1.86E-01 -4.92E-01 -5.69E-02  2.47E-01
 
 TH 8
+       -8.45E-02 -2.78E-01  8.70E-01  3.38E-01  6.23E-01  1.57E-01 -4.63E-01  4.87E-01
 
 TH 9
+       -1.25E-01  7.59E-01 -2.66E-01 -7.31E-01  4.79E-01 -1.62E-02 -5.73E-01 -2.02E-02  2.12E-01
 
 TH10
+        4.85E-03  2.27E-01  4.57E-01 -1.73E-01  7.99E-01  8.16E-02 -5.00E-01  5.46E-01  3.51E-01  1.92E-01
 
 TH11
+        2.27E-01  5.86E-02 -2.53E-01 -6.88E-02 -1.87E-01 -5.50E-02  1.05E-01 -2.68E-01 -2.48E-02 -1.92E-01  5.20E-02
 
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
+        1.12E+03
 
 TH 2
+        2.53E+01  4.46E+02
 
 TH 3
+        6.19E+01  1.27E+02  2.77E+02
 
 TH 4
+       -5.86E+01  4.28E+02 -1.46E+02  8.30E+02
 
 TH 5
+       -1.13E+02 -2.37E+02 -2.95E+02  1.09E+02  6.71E+02
 
 TH 6
+       -1.52E+01  1.03E+01 -8.39E+00  7.87E+00 -1.48E+01  1.52E+02
 
 TH 7
+       -1.91E+01 -7.31E+00  1.38E+01 -1.75E+01 -3.91E+01 -1.07E+00  4.31E+01
 
 TH 8
+        6.04E-01 -1.63E+01 -5.29E+01  1.36E+01  2.98E+00  1.96E+00  8.18E+00  2.83E+01
 
 TH 9
+        1.31E+01 -4.42E+01 -3.46E+00  1.60E+00 -2.43E+01 -5.20E+00  3.74E+01  7.69E+00  9.30E+01
 
 TH10
+       -2.45E+01  7.31E+00 -7.73E+00  9.51E+00 -9.54E+01  5.59E+00  1.41E+01  5.84E+00  7.59E+00  8.32E+01
 
 TH11
+       -1.47E+02 -1.15E+00  3.07E+01 -3.17E+01 -3.78E+01  4.10E+00  1.45E+01  5.54E+00  9.78E+00  1.48E+01  4.27E+02
 
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
 #CPUT: Total CPU Time in Seconds,       31.553
Stop Time:
Thu Sep 30 01:07:00 CDT 2021

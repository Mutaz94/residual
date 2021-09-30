Wed Sep 29 15:03:50 CDT 2021
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
$DATA ../../../../data/spa/SL1/dat42.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m42.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1709.53288890359        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.9995E+02  6.5285E+01 -2.9334E+01  1.5212E+02  7.3303E+01  5.1944E+01  1.1304E+01  3.6994E+00  1.0663E+01 -6.8037E-01
            -1.1962E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1715.82189128183        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0553E+00  8.2210E-01  9.3400E-01  1.0697E+00  8.4320E-01  9.6461E-01  7.4131E-01  9.1946E-01  9.4694E-01  8.2982E-01
             1.0443E+00
 PARAMETER:  1.5380E-01 -9.5897E-02  3.1720E-02  1.6734E-01 -7.0551E-02  6.3969E-02 -1.9933E-01  1.6032E-02  4.5483E-02 -8.6541E-02
             1.4339E-01
 GRADIENT:   1.1138E+01  7.9396E+00 -4.8076E-01  7.8770E+00 -2.2296E+00 -1.3689E+01 -3.2583E+00  1.3166E+00 -8.4390E+00 -6.6616E+00
             1.2586E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1716.42060971596        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0476E+00  7.4077E-01  1.0203E+00  1.1259E+00  8.6044E-01  9.9524E-01  5.6098E-01  8.1916E-01  9.7986E-01  9.6835E-01
             9.7808E-01
 PARAMETER:  1.4647E-01 -2.0006E-01  1.2010E-01  2.1859E-01 -5.0306E-02  9.5232E-02 -4.7808E-01 -9.9481E-02  7.9658E-02  6.7836E-02
             7.7835E-02
 GRADIENT:  -1.1083E+00  1.0402E+01  2.5533E+00  1.6986E+01 -7.7052E+00 -5.8198E-01 -8.3890E-01 -1.9094E+00  2.7638E+00  1.9312E+00
            -1.2830E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1717.14426181892        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      546
 NPARAMETR:  1.0476E+00  6.2445E-01  1.0758E+00  1.1954E+00  8.4407E-01  9.9316E-01  8.1215E-01  8.9880E-01  8.9392E-01  9.1969E-01
             1.0108E+00
 PARAMETER:  1.4647E-01 -3.7088E-01  1.7302E-01  2.7844E-01 -6.9523E-02  9.3140E-02 -1.0807E-01 -6.6934E-03 -1.2141E-02  1.6277E-02
             1.1069E-01
 GRADIENT:   1.8270E+00  2.7883E+00  7.3596E-01  3.7274E+00 -7.2125E-01 -5.8189E-01 -1.1535E-01 -1.3756E-01 -1.0125E+00 -8.7320E-01
             1.0393E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1717.15408622097        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      722
 NPARAMETR:  1.0455E+00  5.6230E-01  1.1043E+00  1.2351E+00  8.3596E-01  9.9490E-01  8.4596E-01  9.0765E-01  8.7213E-01  9.2977E-01
             1.0067E+00
 PARAMETER:  1.4454E-01 -4.7571E-01  1.9922E-01  3.1117E-01 -7.9169E-02  9.4882E-02 -6.7288E-02  3.1041E-03 -3.6814E-02  2.7186E-02
             1.0672E-01
 GRADIENT:  -3.0428E-01  3.1213E+00  1.5042E+00  5.0167E+00 -2.8780E+00  4.7323E-01  1.5270E-01 -1.9019E-01 -3.7255E-01  3.3865E-01
            -4.3494E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1717.18440057811        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      904
 NPARAMETR:  1.0458E+00  5.4890E-01  1.1079E+00  1.2393E+00  8.3565E-01  9.9361E-01  7.9267E-01  9.1497E-01  8.7201E-01  9.2945E-01
             1.0077E+00
 PARAMETER:  1.4477E-01 -4.9984E-01  2.0251E-01  3.1459E-01 -7.9541E-02  9.3589E-02 -1.3235E-01  1.1139E-02 -3.6955E-02  2.6836E-02
             1.0768E-01
 GRADIENT:   7.0589E-01  2.0084E-03 -1.1281E+00 -2.6958E+00  1.6452E+00  5.2228E-02  8.6524E-02  6.8836E-02 -2.1714E-01 -4.0076E-02
             8.5959E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1717.18617278344        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1080
 NPARAMETR:  1.0450E+00  5.4261E-01  1.1122E+00  1.2440E+00  8.3476E-01  9.9329E-01  7.4049E-01  9.1828E-01  8.7406E-01  9.3164E-01
             1.0077E+00
 PARAMETER:  1.4404E-01 -5.1137E-01  2.0632E-01  3.1836E-01 -8.0611E-02  9.3270E-02 -2.0045E-01  1.4743E-02 -3.4603E-02  2.9188E-02
             1.0764E-01
 GRADIENT:  -7.5013E-01  8.5428E-01 -5.0551E-01 -5.0903E-01 -1.2338E-01 -4.9308E-02  2.2552E-02  2.6071E-02  1.2784E-01  4.5235E-02
             8.4189E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1717.18816534385        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:     1241
 NPARAMETR:  1.0479E+00  5.3368E-01  1.1163E+00  1.2454E+00  8.3477E-01  9.9331E-01  7.1183E-01  9.2066E-01  8.7307E-01  9.3224E-01
             1.0074E+00
 PARAMETER:  1.4679E-01 -5.2796E-01  2.1003E-01  3.1945E-01 -8.0601E-02  9.3284E-02 -2.3991E-01  1.7339E-02 -3.5738E-02  2.9830E-02
             1.0740E-01
 GRADIENT:   7.3025E+02  7.7115E+01  4.1016E+00  4.4302E+02  1.0762E+01  4.5456E+01  1.5054E+00  2.0775E-01  1.1963E+01  5.5421E-01
             8.5313E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1717.19569743045        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1425
 NPARAMETR:  1.0471E+00  5.3530E-01  1.1175E+00  1.2469E+00  8.3456E-01  9.9357E-01  7.0628E-01  9.2153E-01  8.7313E-01  9.3308E-01
             1.0075E+00
 PARAMETER:  1.4606E-01 -5.2493E-01  2.1108E-01  3.2063E-01 -8.0850E-02  9.3545E-02 -2.4774E-01  1.8275E-02 -3.5669E-02  3.0738E-02
             1.0748E-01
 GRADIENT:   4.1987E+00  4.0476E-02 -5.1397E-04 -4.0564E+00 -4.9876E-01  1.1697E-01  7.0078E-04 -5.2374E-02 -2.9408E-02 -2.8131E-02
            -2.1232E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1717.19588962553        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1593
 NPARAMETR:  1.0471E+00  5.3521E-01  1.1179E+00  1.2470E+00  8.3478E-01  9.9356E-01  7.0485E-01  9.2239E-01  8.7319E-01  9.3314E-01
             1.0075E+00
 PARAMETER:  1.4605E-01 -5.2510E-01  2.1143E-01  3.2076E-01 -8.0584E-02  9.3536E-02 -2.4977E-01  1.9212E-02 -3.5598E-02  3.0801E-02
             1.0747E-01
 GRADIENT:   2.4768E-03  1.0017E-01 -1.1083E-01 -1.6460E-02 -3.1122E-01  3.5030E-05 -2.1678E-03 -2.0671E-02 -4.5567E-02 -3.8187E-02
            -1.7871E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1593
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.8778E-04 -1.3351E-02 -2.6650E-02 -1.1740E-03 -2.8085E-02
 SE:             2.9858E-02  7.2404E-03  1.5331E-02  2.8487E-02  2.2764E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9231E-01  6.5196E-02  8.2156E-02  9.6713E-01  2.1731E-01

 ETASHRINKSD(%)  1.0000E-10  7.5744E+01  4.8639E+01  4.5665E+00  2.3737E+01
 ETASHRINKVR(%)  1.0000E-10  9.4116E+01  7.3620E+01  8.9246E+00  4.1840E+01
 EBVSHRINKSD(%)  4.2969E-01  7.6676E+01  5.2201E+01  4.5855E+00  2.1324E+01
 EBVSHRINKVR(%)  8.5752E-01  9.4560E+01  7.7153E+01  8.9606E+00  3.8101E+01
 RELATIVEINF(%)  9.7613E+01  2.3818E-01  4.1973E+00  5.2308E+00  7.3558E+00
 EPSSHRINKSD(%)  4.4966E+01
 EPSSHRINKVR(%)  6.9712E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1717.1958896255312     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -982.04506306179303     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.16
 Elapsed covariance  time in seconds:     5.54
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1717.196       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  5.35E-01  1.12E+00  1.25E+00  8.35E-01  9.94E-01  7.05E-01  9.22E-01  8.73E-01  9.33E-01  1.01E+00
 


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
 
         3.17E-02  6.05E-01  4.80E-01  3.85E-01  8.04E-02  6.28E-02  1.97E+00  4.59E-01  1.49E-01  2.14E-01  6.73E-02
 


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
+        1.00E-03
 
 TH 2
+        4.17E-03  3.66E-01
 
 TH 3
+       -3.37E-03 -2.70E-01  2.31E-01
 
 TH 4
+       -2.75E-03 -2.32E-01  1.73E-01  1.48E-01
 
 TH 5
+       -2.51E-04 -8.42E-03  1.92E-02  5.94E-03  6.47E-03
 
 TH 6
+       -1.03E-04 -2.24E-04 -3.24E-03  1.55E-04 -1.29E-03  3.94E-03
 
 TH 7
+        1.35E-02  1.03E+00 -8.29E-01 -6.51E-01 -5.23E-02  1.29E-03  3.86E+00
 
 TH 8
+       -2.52E-03 -2.12E-01  1.86E-01  1.35E-01  1.54E-02 -5.52E-03 -6.25E-01  2.11E-01
 
 TH 9
+        1.00E-03  7.14E-02 -5.16E-02 -4.59E-02 -1.16E-03 -5.10E-04  1.49E-01 -4.43E-02  2.21E-02
 
 TH10
+       -1.59E-03 -8.88E-02  7.90E-02  5.66E-02  9.02E-03 -1.12E-03 -3.23E-01  4.61E-02 -1.46E-02  4.57E-02
 
 TH11
+       -2.44E-04  3.29E-04 -1.05E-03 -4.52E-04 -7.11E-04  4.94E-04 -1.06E-02 -1.98E-03 -3.62E-05 -5.12E-04  4.53E-03
 
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
+        3.17E-02
 
 TH 2
+        2.18E-01  6.05E-01
 
 TH 3
+       -2.22E-01 -9.30E-01  4.80E-01
 
 TH 4
+       -2.26E-01 -9.96E-01  9.33E-01  3.85E-01
 
 TH 5
+       -9.87E-02 -1.73E-01  4.96E-01  1.92E-01  8.04E-02
 
 TH 6
+       -5.16E-02 -5.90E-03 -1.07E-01  6.40E-03 -2.55E-01  6.28E-02
 
 TH 7
+        2.17E-01  8.69E-01 -8.78E-01 -8.60E-01 -3.31E-01  1.04E-02  1.97E+00
 
 TH 8
+       -1.73E-01 -7.64E-01  8.44E-01  7.63E-01  4.17E-01 -1.91E-01 -6.93E-01  4.59E-01
 
 TH 9
+        2.13E-01  7.94E-01 -7.23E-01 -8.01E-01 -9.74E-02 -5.46E-02  5.09E-01 -6.48E-01  1.49E-01
 
 TH10
+       -2.35E-01 -6.87E-01  7.69E-01  6.87E-01  5.24E-01 -8.38E-02 -7.70E-01  4.70E-01 -4.59E-01  2.14E-01
 
 TH11
+       -1.15E-01  8.07E-03 -3.24E-02 -1.74E-02 -1.31E-01  1.17E-01 -7.99E-02 -6.39E-02 -3.62E-03 -3.56E-02  6.73E-02
 
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
+        1.11E+03
 
 TH 2
+        6.28E+01  4.74E+02
 
 TH 3
+       -2.75E+01  1.16E+02  2.94E+02
 
 TH 4
+        1.08E+02  5.57E+02 -9.14E+01  9.49E+02
 
 TH 5
+        1.92E+01 -3.59E+02 -5.00E+02 -3.95E-01  1.27E+03
 
 TH 6
+        2.74E+01 -3.89E+00  3.27E+01 -2.99E+01 -3.51E+01  3.06E+02
 
 TH 7
+       -1.61E+00 -9.26E+00  2.39E+00 -4.12E+00 -4.87E-01  5.25E+00  2.69E+00
 
 TH 8
+        1.16E+01  3.77E+00 -3.81E+01  2.68E+01  1.13E+01  1.73E+01  1.43E+00  2.67E+01
 
 TH 9
+       -3.23E+01 -4.41E+01 -6.67E+00  5.34E+01  2.25E+01  4.47E+01  1.58E+01  1.68E+01  2.30E+02
 
 TH10
+        3.88E+01  2.17E+01 -1.82E+01  2.91E+01 -9.04E+01  2.23E+01  5.81E+00  2.73E+01  2.38E+01  1.01E+02
 
 TH11
+        6.49E+01 -2.25E+01 -4.62E+01  4.78E+01  1.09E+02 -9.91E+00  7.75E+00  1.23E+01  5.25E+01  1.96E+01  2.64E+02
 
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
 #CPUT: Total CPU Time in Seconds,       25.764
Stop Time:
Wed Sep 29 15:04:17 CDT 2021

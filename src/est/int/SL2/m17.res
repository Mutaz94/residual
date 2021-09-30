Wed Sep 29 02:50:39 CDT 2021
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
$DATA ../../../../data/int/SL2/dat17.csv ignore=@
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
 (2E4.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m17.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -844.949962277226        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.6361E+02  1.4711E+01  2.6742E+02  7.3390E+01  8.5653E+01  4.1350E+01 -9.8244E+01 -2.3645E+02 -8.2131E+01 -7.5144E+01
            -5.6243E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2811.86916348300        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.1185E+00  1.2876E+00  7.8852E-01  8.5677E-01  1.1215E+00  1.0048E+00  1.2661E+00  9.4903E-01  9.2747E-01  1.2974E+00
             2.4789E+00
 PARAMETER:  2.1199E-01  3.5280E-01 -1.3760E-01 -5.4590E-02  2.1463E-01  1.0482E-01  3.3590E-01  4.7687E-02  2.4700E-02  3.6038E-01
             1.0078E+00
 GRADIENT:   2.9230E+02  6.6869E+00 -1.0306E+01 -3.3668E+01 -1.9240E+01  4.1981E-01  3.0823E+01  6.1927E+00  3.7973E+00  3.2973E+00
            -6.2152E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2822.37733991003        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0965E+00  1.3335E+00  8.1513E-01  8.5369E-01  1.1796E+00  9.6287E-01  1.1397E+00  1.8026E-01  8.7416E-01  1.2936E+00
             2.5959E+00
 PARAMETER:  1.9211E-01  3.8783E-01 -1.0441E-01 -5.8191E-02  2.6520E-01  6.2162E-02  2.3081E-01 -1.6133E+00 -3.4492E-02  3.5741E-01
             1.0539E+00
 GRADIENT:   2.2459E+02  1.5333E+01  9.0684E-01 -1.1399E+01  5.7136E+00 -1.1566E+01  1.1014E+01  1.5592E-01 -3.8289E+00 -7.1603E-01
             3.2125E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2831.95181911118        NO. OF FUNC. EVALS.: 117
 CUMULATIVE NO. OF FUNC. EVALS.:      272
 NPARAMETR:  1.0638E+00  1.5451E+00  8.1859E-01  7.6454E-01  1.3319E+00  1.0093E+00  9.6140E-01  2.4940E-01  1.0073E+00  1.4389E+00
             2.5613E+00
 PARAMETER:  1.6181E-01  5.3508E-01 -1.0017E-01 -1.6848E-01  3.8658E-01  1.0921E-01  6.0632E-02 -1.2887E+00  1.0729E-01  4.6386E-01
             1.0405E+00
 GRADIENT:   2.1083E+01 -9.3657E+00  5.5721E+00  2.1934E+01 -1.0634E+01  2.1210E+00 -1.5225E+00  2.1318E-02 -1.6458E+00 -1.4472E+00
            -2.1594E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2845.93285803076        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      448
 NPARAMETR:  1.0476E+00  2.2874E+00  4.3563E-01  3.4137E-01  1.8958E+00  1.0118E+00  7.4543E-01  3.1528E-01  1.7682E+00  1.7981E+00
             2.4985E+00
 PARAMETER:  1.4655E-01  9.2741E-01 -7.3097E-01 -9.7478E-01  7.3963E-01  1.1171E-01 -1.9379E-01 -1.0543E+00  6.6995E-01  6.8675E-01
             1.0157E+00
 GRADIENT:  -1.0618E+01  1.2042E+02  4.9266E+00  3.1105E+01  3.2129E+00  1.6697E+00 -8.9004E+00 -2.1184E-02 -4.7676E+00  4.2732E+00
            -1.3026E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2851.15818319942        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      623
 NPARAMETR:  1.0514E+00  2.3839E+00  2.4751E-01  2.1018E-01  2.0277E+00  1.0044E+00  7.3349E-01  1.9209E-01  2.2819E+00  1.8504E+00
             2.4952E+00
 PARAMETER:  1.5013E-01  9.6876E-01 -1.2963E+00 -1.4598E+00  8.0693E-01  1.0442E-01 -2.0994E-01 -1.5498E+00  9.2500E-01  7.1539E-01
             1.0144E+00
 GRADIENT:  -8.7465E-01 -7.3927E+00 -2.4110E+00  3.2617E+00  5.5724E+00 -4.2642E-01  1.6024E+00  4.3246E-02 -7.6245E-01  3.4754E-01
            -8.6014E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2851.36151829021        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      798
 NPARAMETR:  1.0517E+00  2.4247E+00  2.5461E-01  1.8298E-01  2.0575E+00  1.0050E+00  7.2021E-01  2.1025E-01  2.5854E+00  1.8526E+00
             2.4973E+00
 PARAMETER:  1.5037E-01  9.8572E-01 -1.2680E+00 -1.5984E+00  8.2150E-01  1.0498E-01 -2.2821E-01 -1.4594E+00  1.0499E+00  7.1661E-01
             1.0152E+00
 GRADIENT:   9.5116E-03 -8.6024E-02  6.6204E-02  8.8649E-02  4.5782E-01 -2.1192E-02  2.2791E-01  5.3863E-02  1.0989E-01 -9.9228E-03
             7.7489E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2851.38521199065        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      976
 NPARAMETR:  1.0517E+00  2.4256E+00  2.5243E-01  1.8250E-01  2.0557E+00  1.0049E+00  7.1962E-01  6.2812E-02  2.5824E+00  1.8531E+00
             2.4962E+00
 PARAMETER:  1.5042E-01  9.8606E-01 -1.2766E+00 -1.6010E+00  8.2062E-01  1.0491E-01 -2.2904E-01 -2.6676E+00  1.0487E+00  7.1684E-01
             1.0148E+00
 GRADIENT:   1.3658E-01  3.3595E-01  3.3817E-02 -1.8308E-02 -5.4678E-02 -5.4938E-02 -2.6917E-02  4.8077E-03 -5.3252E-02 -1.7521E-02
            -2.8350E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2851.39380128119        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1154
 NPARAMETR:  1.0520E+00  2.4212E+00  2.5201E-01  1.8302E-01  2.0540E+00  1.0052E+00  7.1983E-01  1.0000E-02  2.5830E+00  1.8541E+00
             2.4964E+00
 PARAMETER:  1.5066E-01  9.8425E-01 -1.2783E+00 -1.5982E+00  8.1979E-01  1.0514E-01 -2.2874E-01 -5.0625E+00  1.0490E+00  7.1741E-01
             1.0149E+00
 GRADIENT:   7.1198E-01 -5.0792E+00 -1.2566E-01 -3.0041E-01 -8.4239E-03  4.8183E-02  6.7951E-02  0.0000E+00  2.4239E-01  2.1282E-01
             2.8891E-01

0ITERATION NO.:   41    OBJECTIVE VALUE:  -2851.39380128119        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1176
 NPARAMETR:  1.0520E+00  2.4212E+00  2.5201E-01  1.8302E-01  2.0540E+00  1.0052E+00  7.1983E-01  1.0000E-02  2.5830E+00  1.8541E+00
             2.4964E+00
 PARAMETER:  1.5066E-01  9.8425E-01 -1.2783E+00 -1.5982E+00  8.1979E-01  1.0514E-01 -2.2874E-01 -5.0625E+00  1.0490E+00  7.1741E-01
             1.0149E+00
 GRADIENT:   7.1198E-01 -5.0792E+00 -1.2566E-01 -3.0041E-01 -8.4239E-03  4.8183E-02  6.7951E-02  0.0000E+00  2.4239E-01  2.1282E-01
             2.8891E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1176
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5928E-03 -2.5380E-02 -4.1314E-05  3.6114E-02 -2.1791E-02
 SE:             2.9474E-02  2.6643E-02  3.0830E-05  1.7011E-02  2.6546E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5690E-01  3.4078E-01  1.8023E-01  3.3751E-02  4.1172E-01

 ETASHRINKSD(%)  1.2589E+00  1.0744E+01  9.9897E+01  4.3012E+01  1.1069E+01
 ETASHRINKVR(%)  2.5019E+00  2.0334E+01  1.0000E+02  6.7524E+01  2.0912E+01
 EBVSHRINKSD(%)  1.4372E+00  1.0934E+01  9.9890E+01  5.0434E+01  8.0942E+00
 EBVSHRINKVR(%)  2.8537E+00  2.0672E+01  1.0000E+02  7.5432E+01  1.5533E+01
 RELATIVEINF(%)  9.7105E+01  2.2969E+01  6.0700E-05  5.9613E+00  5.5734E+01
 EPSSHRINKSD(%)  1.6992E+01
 EPSSHRINKVR(%)  3.1097E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          898
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1650.4136056355921     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2851.3938012811868     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1200.9801956455947     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    29.80
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.57
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2851.394       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  2.42E+00  2.52E-01  1.83E-01  2.05E+00  1.01E+00  7.20E-01  1.00E-02  2.58E+00  1.85E+00  2.50E+00
 


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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        9.66E+02
 
 TH 2
+       -8.77E+00  2.98E+02
 
 TH 3
+        3.40E+00  3.77E+01  1.69E+02
 
 TH 4
+       -2.18E+01  3.37E+02 -2.20E+02  1.39E+03
 
 TH 5
+       -1.59E+00 -1.78E+01 -1.93E+01  8.14E+01  6.50E+01
 
 TH 6
+        4.98E+00 -2.77E+00  2.11E+00 -1.02E+01 -6.50E-01  1.84E+02
 
 TH 7
+        2.99E+00 -1.49E+00 -1.48E+00 -2.29E+01 -5.77E-01 -2.23E+00  2.55E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.55E-01 -3.69E+00 -1.62E+01  5.34E+01 -2.15E-01 -3.07E-01  5.49E+00  0.00E+00  6.08E+00
 
 TH10
+        1.25E-01 -2.14E+00  1.02E+01  7.09E+00 -5.56E+00  4.63E-02  5.02E+00  0.00E+00  6.67E-01  3.89E+01
 
 TH11
+       -1.36E+01 -1.50E+01 -6.45E+00  5.28E+00  2.78E-01  3.48E+00  6.15E+00  0.00E+00  2.08E+00  2.77E+00  1.86E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       43.486
Stop Time:
Wed Sep 29 02:51:27 CDT 2021

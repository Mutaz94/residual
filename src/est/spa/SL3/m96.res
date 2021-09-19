Sat Sep 18 13:09:47 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat96.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m96.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1598.92065631430        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.2496E+02 -1.5940E+01 -4.2304E+01  3.7460E+01  5.9826E+01 -1.0646E+01  8.6860E+00  7.8266E+00  2.3605E+01  4.9928E+00
            -1.0432E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1614.29445723906        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.7393E-01  1.0361E+00  1.1142E+00  9.6463E-01  1.0162E+00  1.0165E+00  9.2144E-01  9.3076E-01  8.5383E-01  9.0801E-01
             1.2518E+00
 PARAMETER:  7.3587E-02  1.3550E-01  2.0813E-01  6.3993E-02  1.1605E-01  1.1632E-01  1.8180E-02  2.8243E-02 -5.8020E-02  3.4987E-03
             3.2456E-01
 GRADIENT:   4.8890E+01 -3.8038E+00  2.6529E+00 -1.3458E+01  8.0100E+00 -2.6659E-01 -2.2571E+00  1.2349E+00 -9.4127E+00 -8.4415E+00
             2.1947E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1615.73484160557        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      159
 NPARAMETR:  9.6690E-01  9.5390E-01  1.0994E+00  1.0168E+00  9.8929E-01  1.0137E+00  9.4835E-01  4.6345E-01  8.8440E-01  1.0069E+00
             1.2520E+00
 PARAMETER:  6.6344E-02  5.2802E-02  1.9476E-01  1.1662E-01  8.9234E-02  1.1360E-01  4.6970E-02 -6.6907E-01 -2.2846E-02  1.0685E-01
             3.2478E-01
 GRADIENT:   3.4000E+01 -5.5022E+00 -6.3598E-01 -6.2902E+00  8.5327E+00 -1.2686E+00  1.2510E+00  1.2093E-01  8.6720E-01  1.8096E+00
             4.6542E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1615.97565599570        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  9.5553E-01  9.1300E-01  1.0148E+00  1.0417E+00  9.3047E-01  1.0137E+00  1.0153E+00  3.8873E-01  8.5244E-01  9.5406E-01
             1.2391E+00
 PARAMETER:  5.4511E-02  8.9794E-03  1.1466E-01  1.4086E-01  2.7934E-02  1.1360E-01  1.1523E-01 -8.4486E-01 -5.9648E-02  5.2971E-02
             3.1439E-01
 GRADIENT:   8.3360E+00 -1.9216E-01 -1.8786E+00  2.4229E+00  4.3768E+00 -1.5091E+00  1.1791E+00  2.7203E-01 -2.9872E-01  1.3714E+00
             1.6307E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1616.13461538220        NO. OF FUNC. EVALS.: 119
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.6019E-01  8.8720E-01  1.0077E+00  1.0602E+00  9.1335E-01  1.0236E+00  1.0020E+00  3.7479E-01  8.5147E-01  9.4168E-01
             1.2371E+00
 PARAMETER:  5.9372E-02 -1.9689E-02  1.0767E-01  1.5843E-01  9.3606E-03  1.2333E-01  1.0201E-01 -8.8138E-01 -6.0791E-02  3.9907E-02
             3.1278E-01
 GRADIENT:  -8.2881E+00  8.7559E-01 -1.1143E+00  1.3988E+00  5.9749E-01 -9.9605E-01 -6.0172E-01  2.3797E-01 -3.3487E-01  3.8769E-01
             4.2107E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1616.26038176332        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.6232E-01  7.7061E-01  1.0170E+00  1.1291E+00  8.7280E-01  1.0247E+00  1.1153E+00  1.9985E-01  8.1124E-01  9.3623E-01
             1.2382E+00
 PARAMETER:  6.1591E-02 -1.6057E-01  1.1682E-01  2.2144E-01 -3.6050E-02  1.2441E-01  2.0916E-01 -1.5102E+00 -1.0919E-01  3.4106E-02
             3.1362E-01
 GRADIENT:  -1.9941E+00 -1.3964E+00  1.6132E-02 -3.1807E+00  3.3098E-01 -3.2388E-01 -8.0586E-02  8.3476E-03  1.1533E-01  9.4726E-02
             2.2379E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1616.26577313251        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      704
 NPARAMETR:  9.6313E-01  7.5162E-01  1.0161E+00  1.1420E+00  8.6499E-01  1.0255E+00  1.1397E+00  1.7990E-01  8.0382E-01  9.3350E-01
             1.2377E+00
 PARAMETER:  6.2428E-02 -1.8552E-01  1.1595E-01  2.3281E-01 -4.5036E-02  1.2519E-01  2.3073E-01 -1.6154E+00 -1.1838E-01  3.1187E-02
             3.1328E-01
 GRADIENT:  -2.4676E-02 -3.3264E-02 -1.2747E-02 -3.9587E-02  1.0032E-02  2.7373E-03 -1.3483E-04  2.0922E-03  5.6476E-03  5.1708E-03
             1.8642E-03

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1616.26583582014        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      879
 NPARAMETR:  9.6317E-01  7.5170E-01  1.0158E+00  1.1420E+00  8.6498E-01  1.0255E+00  1.1396E+00  1.6860E-01  8.0381E-01  9.3399E-01
             1.2379E+00
 PARAMETER:  6.2472E-02 -1.8542E-01  1.1571E-01  2.3279E-01 -4.5048E-02  1.2521E-01  2.3066E-01 -1.6802E+00 -1.1840E-01  3.1707E-02
             3.1338E-01
 GRADIENT:   5.6949E-02 -3.0240E-03  1.8259E-02  5.3381E-02  4.5131E-02  6.8470E-03 -1.7880E-04 -4.0699E-05 -7.5202E-03  5.3665E-04
             1.9719E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1616.26588474214        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1055
 NPARAMETR:  9.6331E-01  7.5227E-01  1.0137E+00  1.1416E+00  8.6422E-01  1.0256E+00  1.1398E+00  1.5981E-01  8.0391E-01  9.3335E-01
             1.2378E+00
 PARAMETER:  6.2623E-02 -1.8467E-01  1.1365E-01  2.3240E-01 -4.5933E-02  1.2532E-01  2.3084E-01 -1.7338E+00 -1.1827E-01  3.1029E-02
             3.1337E-01
 GRADIENT:   3.2643E-01  2.9470E-02  1.5629E-03  1.5097E-01  9.3205E-03  4.3785E-02  2.5909E-03  1.5788E-04  9.3855E-03 -1.8122E-04
             5.3226E-03

0ITERATION NO.:   43    OBJECTIVE VALUE:  -1616.26591494396        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:     1149
 NPARAMETR:  9.6317E-01  7.5222E-01  1.0137E+00  1.1415E+00  8.6421E-01  1.0255E+00  1.1397E+00  1.5957E-01  8.0387E-01  9.3335E-01
             1.2378E+00
 PARAMETER:  6.2472E-02 -1.8472E-01  1.1365E-01  2.3234E-01 -4.5939E-02  1.2522E-01  2.3079E-01 -1.7353E+00 -1.1832E-01  3.1027E-02
             3.1336E-01
 GRADIENT:   1.3662E-02 -4.9956E-02  7.5611E-03 -4.8608E-02  1.6301E-02  2.7662E-03 -2.7981E-03  1.2792E-04 -3.3183E-03 -1.4386E-03
             2.0909E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1149
 NO. OF SIG. DIGITS IN FINAL EST.:  3.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -3.2451E-04 -3.2673E-03 -3.6243E-03 -6.0120E-03 -2.0480E-02
 SE:             2.9757E-02  1.6500E-02  2.5045E-03  2.4977E-02  2.3673E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9130E-01  8.4303E-01  1.4787E-01  8.0978E-01  3.8696E-01

 ETASHRINKSD(%)  3.0908E-01  4.4724E+01  9.1610E+01  1.6325E+01  2.0693E+01
 ETASHRINKVR(%)  6.1721E-01  6.9445E+01  9.9296E+01  2.9985E+01  3.7104E+01
 EBVSHRINKSD(%)  5.9538E-01  4.5195E+01  9.1791E+01  1.6235E+01  1.8969E+01
 EBVSHRINKVR(%)  1.1872E+00  6.9964E+01  9.9326E+01  2.9835E+01  3.4340E+01
 RELATIVEINF(%)  9.7641E+01  6.5881E-01  6.2743E-02  1.9314E+00  4.5427E+00
 EPSSHRINKSD(%)  4.0669E+01
 EPSSHRINKVR(%)  6.4799E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1616.2659149439648     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -881.11508838022667     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.20
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.83
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1616.266       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.63E-01  7.52E-01  1.01E+00  1.14E+00  8.64E-01  1.03E+00  1.14E+00  1.60E-01  8.04E-01  9.33E-01  1.24E+00
 


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
+        1.12E+03
 
 TH 2
+       -1.70E+01  4.66E+02
 
 TH 3
+        1.40E+01  1.53E+02  2.96E+02
 
 TH 4
+       -1.69E+01  5.11E+02 -1.09E+02  9.28E+02
 
 TH 5
+        2.61E+00 -3.64E+02 -5.21E+02  1.07E+02  1.12E+03
 
 TH 6
+        1.92E+00 -3.02E+00  2.36E+00 -4.20E+00 -2.54E+00  1.84E+02
 
 TH 7
+       -2.40E-01  1.34E+01  6.63E+00 -3.00E+00 -1.35E+01 -3.62E-01  1.85E+01
 
 TH 8
+        3.38E-01 -2.61E+00 -7.01E+00 -7.10E-01  2.19E+00 -1.50E+00  7.00E-01  3.68E-01
 
 TH 9
+        6.35E-01 -2.26E+01 -8.58E+00  1.31E+01  4.85E+00 -3.81E-01  2.44E+01 -3.20E-02  1.59E+02
 
 TH10
+       -4.46E-01  5.99E+00 -2.35E+01 -1.56E+01 -5.44E+01  1.03E+00  8.37E+00  5.03E+00  3.89E+00  9.67E+01
 
 TH11
+       -7.04E+00 -1.46E+01 -2.79E+01 -8.33E+00  1.09E+01  2.46E+00  3.56E+00  3.17E+00  1.10E+01  2.52E+01  1.52E+02
 
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
 #CPUT: Total CPU Time in Seconds,       19.090
Stop Time:
Sat Sep 18 13:10:08 CDT 2021
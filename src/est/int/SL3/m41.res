Wed Sep 29 04:17:03 CDT 2021
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
$DATA ../../../../data/int/SL3/dat41.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      975
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E19.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      875
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
 RAW OUTPUT FILE (FILE): m41.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -485.819802730076        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7185E+02 -2.1305E+01  1.3853E+02  1.3360E+02  2.5217E+02  5.2215E+01 -6.6438E+01 -2.5779E+02 -5.1156E+01 -4.6961E+01
            -6.2134E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2714.97574198904        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0923E+00  1.2159E+00  8.5407E-01  9.4955E-01  9.1960E-01  9.1618E-01  1.0271E+00  1.0569E+00  8.7255E-01  1.0618E+00
             2.7686E+00
 PARAMETER:  1.8824E-01  2.9546E-01 -5.7745E-02  4.8234E-02  1.6187E-02  1.2459E-02  1.2675E-01  1.5529E-01 -3.6333E-02  1.5994E-01
             1.1183E+00
 GRADIENT:   2.0743E+02  7.1207E+01  1.1076E+01  2.5122E+01 -4.8175E+01 -9.7897E+00  8.0720E+00  1.8237E+00  1.1350E+00 -3.9813E+00
             6.2170E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2717.60564657542        NO. OF FUNC. EVALS.: 158
 CUMULATIVE NO. OF FUNC. EVALS.:      243
 NPARAMETR:  1.0980E+00  1.3665E+00  9.3516E-01  8.8696E-01  1.0661E+00  9.8051E-01  9.1915E-01  1.0344E+00  9.1430E-01  1.2097E+00
             2.7824E+00
 PARAMETER:  1.9348E-01  4.1228E-01  3.2958E-02 -1.9955E-02  1.6399E-01  8.0320E-02  1.5698E-02  1.3386E-01  1.0405E-02  2.9038E-01
             1.1233E+00
 GRADIENT:   9.4626E+01  4.5732E+01  5.8020E+00  5.6256E+01 -1.6221E+01  9.8560E+00  4.7130E+00 -1.1525E+00  8.6171E-01  1.0140E+00
             5.3498E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2725.16992645267        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      419
 NPARAMETR:  1.0432E+00  1.5800E+00  1.0737E+00  7.3874E-01  1.2929E+00  9.5150E-01  7.5925E-01  1.9697E+00  1.0341E+00  1.3558E+00
             2.6686E+00
 PARAMETER:  1.4228E-01  5.5743E-01  1.7111E-01 -2.0281E-01  3.5687E-01  5.0287E-02 -1.7543E-01  7.7787E-01  1.3356E-01  4.0441E-01
             1.0816E+00
 GRADIENT:  -1.7757E+01  1.6143E+01 -1.7830E+00  3.3488E+01  1.0760E+01  1.8136E+00 -3.2766E+00 -1.3939E+00 -1.2850E-02  3.1147E+00
            -1.0161E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2727.61891111596        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      594
 NPARAMETR:  1.0518E+00  1.8174E+00  1.2094E+00  5.7385E-01  1.4801E+00  9.4617E-01  7.8276E-01  3.2975E+00  9.8018E-01  1.4475E+00
             2.6663E+00
 PARAMETER:  1.5048E-01  6.9741E-01  2.9010E-01 -4.5539E-01  4.9212E-01  4.4664E-02 -1.4492E-01  1.2932E+00  7.9977E-02  4.6984E-01
             1.0807E+00
 GRADIENT:   2.2487E+00  1.0446E+00  5.7373E-01  1.7044E+00 -5.7493E-01 -1.3199E-01  8.8127E-01  3.9532E-01  3.3519E-01 -2.1825E-01
             2.4094E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2727.82295347088        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      771
 NPARAMETR:  1.0501E+00  1.9834E+00  8.2731E-01  4.5982E-01  1.5258E+00  9.5009E-01  7.2212E-01  2.9073E+00  1.1530E+00  1.5211E+00
             2.6729E+00
 PARAMETER:  1.4890E-01  7.8480E-01 -8.9570E-02 -6.7692E-01  5.2252E-01  4.8802E-02 -2.2557E-01  1.1672E+00  2.4234E-01  5.1944E-01
             1.0832E+00
 GRADIENT:  -1.7531E+00  6.7921E-01  1.1985E-01 -5.1719E-01 -1.7016E+00  1.4243E+00 -1.4678E+00  4.0186E-01 -1.0340E+00  6.4332E-01
            -2.3546E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2727.89522918641        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      946
 NPARAMETR:  1.0510E+00  1.9937E+00  7.2586E-01  4.5112E-01  1.5112E+00  9.4619E-01  7.1290E-01  2.3870E+00  1.2480E+00  1.5170E+00
             2.6795E+00
 PARAMETER:  1.4974E-01  7.9001E-01 -2.2040E-01 -6.9602E-01  5.1291E-01  4.4686E-02 -2.3841E-01  9.7005E-01  3.2152E-01  5.1673E-01
             1.0856E+00
 GRADIENT:   9.9939E-02  4.8183E-01  1.8800E-01 -6.4766E-02 -1.7483E-02 -4.0550E-02 -1.9357E-02 -8.8537E-02 -5.4823E-02  2.7618E-03
            -4.7290E-02

0ITERATION NO.:   33    OBJECTIVE VALUE:  -2727.89590495320        NO. OF FUNC. EVALS.:  99
 CUMULATIVE NO. OF FUNC. EVALS.:     1045
 NPARAMETR:  1.0511E+00  1.9932E+00  7.2349E-01  4.5117E-01  1.5111E+00  9.4626E-01  7.1296E-01  2.3956E+00  1.2488E+00  1.5171E+00
             2.6795E+00
 PARAMETER:  1.4983E-01  7.8973E-01 -2.2367E-01 -6.9592E-01  5.1283E-01  4.4757E-02 -2.3833E-01  9.7362E-01  3.2215E-01  5.1680E-01
             1.0856E+00
 GRADIENT:  -2.1036E-01  6.2181E-01 -3.6103E-02 -2.8418E-02  4.1818E-01 -2.4895E-02  9.3609E-03  4.5487E-02  3.8032E-02 -3.8053E-03
             2.0754E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1045
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5781E-03 -2.1612E-02 -1.8696E-02  2.1417E-02 -2.1489E-02
 SE:             2.9366E-02  2.4155E-02  1.0760E-02  1.7779E-02  2.5586E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5714E-01  3.7093E-01  8.2278E-02  2.2834E-01  4.0099E-01

 ETASHRINKSD(%)  1.6206E+00  1.9077E+01  6.3954E+01  4.0439E+01  1.4282E+01
 ETASHRINKVR(%)  3.2149E+00  3.4514E+01  8.7007E+01  6.4525E+01  2.6524E+01
 EBVSHRINKSD(%)  1.7447E+00  1.8922E+01  6.7389E+01  4.5479E+01  1.2139E+01
 EBVSHRINKVR(%)  3.4591E+00  3.4264E+01  8.9365E+01  7.0275E+01  2.2804E+01
 RELATIVEINF(%)  9.6448E+01  5.4070E+00  4.4076E+00  2.2437E+00  2.5687E+01
 EPSSHRINKSD(%)  1.7042E+01
 EPSSHRINKVR(%)  3.1179E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          875
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1608.1424331081771     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2727.8959049532004     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1119.7534718450233     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    27.99
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.23
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2727.896       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  1.99E+00  7.23E-01  4.51E-01  1.51E+00  9.46E-01  7.13E-01  2.40E+00  1.25E+00  1.52E+00  2.68E+00
 


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
+        1.09E+03
 
 TH 2
+       -1.62E+01  3.73E+02
 
 TH 3
+        2.09E+00  1.95E+01  4.73E+01
 
 TH 4
+       -3.02E+01  4.72E+02 -9.07E+01  1.02E+03
 
 TH 5
+       -3.60E+00 -5.26E+01 -3.87E+01  1.12E+02  1.63E+02
 
 TH 6
+        5.33E+00 -4.78E+00  6.24E-01 -8.91E+00 -1.29E+00  2.06E+02
 
 TH 7
+        2.58E+00  8.20E-01  1.31E+00 -1.26E+01 -1.28E+00 -9.21E-01  1.77E+02
 
 TH 8
+       -1.46E-01 -3.24E+00 -5.85E+00  7.34E+00 -9.28E-01 -6.94E-02 -4.93E-02  1.40E+00
 
 TH 9
+        1.12E+00 -4.12E+00 -3.72E+00  1.98E+01  1.96E+00 -3.51E-01  2.60E+01  3.68E+00  1.51E+01
 
 TH10
+        2.21E-01 -4.23E+00  1.23E+00  1.97E+01 -8.92E+00  2.87E-01  2.05E+00  7.36E-02  2.23E+00  5.19E+01
 
 TH11
+       -1.55E+01 -1.59E+01 -3.39E+00 -6.11E+00 -4.83E-01  3.10E+00  7.77E+00 -2.15E+01  4.43E+00  4.49E+00  1.54E+02
 
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
 #CPUT: Total CPU Time in Seconds,       41.317
Stop Time:
Wed Sep 29 04:17:46 CDT 2021

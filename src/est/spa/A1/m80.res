Sat Sep 18 09:27:44 CDT 2021
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
$DATA ../../../../data/spa/A1/dat80.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m80.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1371.58347698349        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:  -1.1076E+01 -1.2596E+01  5.3042E+01 -6.1352E+01 -1.9586E+01  3.6987E+01  4.6047E+00 -2.1729E+01  2.6676E+01 -1.4497E+00
            -6.3765E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1552.58690971692        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0226E+00  1.0485E+00  9.9082E-01  1.0084E+00  1.0242E+00  8.4235E-01  9.1252E-01  1.0108E+00  7.7869E-01  8.6967E-01
             1.8542E+00
 PARAMETER:  1.2233E-01  1.4735E-01  9.0776E-02  1.0841E-01  1.2392E-01 -7.1562E-02  8.4559E-03  1.1076E-01 -1.5015E-01 -3.9647E-02
             7.1744E-01
 GRADIENT:  -9.9253E+00 -6.1176E+00  1.4469E+01 -3.0032E+01 -9.8138E+00 -2.1003E+01  6.4189E-01 -4.4653E+00 -2.6601E+00  6.3848E+00
            -4.5045E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1557.19681143335        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0400E+00  1.0353E+00  5.3074E-01  9.9002E-01  7.2699E-01  8.8990E-01  1.0802E+00  7.2516E-01  7.1128E-01  4.5548E-01
             1.8599E+00
 PARAMETER:  1.3921E-01  1.3470E-01 -5.3348E-01  8.9970E-02 -2.1884E-01 -1.6643E-02  1.7718E-01 -2.2136E-01 -2.4069E-01 -6.8639E-01
             7.2054E-01
 GRADIENT:   2.5273E+01  1.4390E+01 -6.0256E+00  2.2574E+01  1.2194E+01 -2.4835E+00  1.3688E+01  1.3446E+00 -1.5993E+00  2.9270E+00
            -3.1454E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1563.00515685027        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0287E+00  1.1092E+00  2.4562E-01  8.4498E-01  5.4182E-01  8.9710E-01  8.5470E-01  3.7147E-01  7.2804E-01  2.2817E-01
             2.0132E+00
 PARAMETER:  1.2829E-01  2.0361E-01 -1.3040E+00 -6.8444E-02 -5.1281E-01 -8.5922E-03 -5.7002E-02 -8.9028E-01 -2.1741E-01 -1.3777E+00
             7.9975E-01
 GRADIENT:   1.2171E+01  3.6708E+01  7.7243E+00  2.5238E+01 -3.0473E+01  5.3420E-01  2.4647E+00 -3.6300E-01  1.8286E+00  2.0181E+00
             2.6398E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1578.57651220014        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      302
 NPARAMETR:  1.0033E+00  1.5858E+00  1.8182E-01  6.0365E-01  7.2206E-01  8.8918E-01  6.7767E-01  1.5653E+00  9.0489E-01  2.8958E-02
             1.6771E+00
 PARAMETER:  1.0330E-01  5.6112E-01 -1.6048E+00 -4.0476E-01 -2.2564E-01 -1.7457E-02 -2.8909E-01  5.4810E-01  5.6004E-05 -3.4419E+00
             6.1706E-01
 GRADIENT:  -3.1811E+01  1.5253E+02  2.2448E+01  7.8894E+01 -3.8966E+01  1.3262E+00 -1.0880E+01 -2.5741E+01 -2.1391E-01  1.7930E-02
            -3.7112E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1589.01748954783        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      379
 NPARAMETR:  1.0112E+00  1.6227E+00  1.5561E-01  5.3440E-01  7.5278E-01  8.6999E-01  6.7147E-01  2.0804E+00  9.5267E-01  1.1748E-02
             1.5874E+00
 PARAMETER:  1.1112E-01  5.8407E-01 -1.7604E+00 -5.2661E-01 -1.8398E-01 -3.9271E-02 -2.9828E-01  8.3256E-01  5.1510E-02 -4.3441E+00
             5.6212E-01
 GRADIENT:   6.4285E+00  3.8449E+01  2.9452E+00  2.4268E+01 -2.1236E+01 -4.0944E+00 -5.6702E+00  1.5446E+00 -2.6670E+00  1.7716E-03
            -1.1305E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1589.13257553761        NO. OF FUNC. EVALS.: 131
 CUMULATIVE NO. OF FUNC. EVALS.:      510
 NPARAMETR:  1.0130E+00  1.6238E+00  1.5525E-01  5.3339E-01  7.5393E-01  8.8632E-01  6.7145E-01  2.0811E+00  9.5399E-01  1.0000E-02
             1.5880E+00
 PARAMETER:  1.1295E-01  5.8478E-01 -1.7627E+00 -5.2851E-01 -1.8246E-01 -2.0673E-02 -2.9832E-01  8.3288E-01  5.2896E-02 -4.5298E+00
             5.6246E-01
 GRADIENT:   1.2155E+01  3.5763E+01  2.5613E+00  2.3840E+01 -1.9598E+01  3.0459E+00 -5.4943E+00  1.5361E+00 -2.5807E+00  0.0000E+00
            -1.1255E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1589.33256874958        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      685
 NPARAMETR:  1.0148E+00  1.6230E+00  1.5520E-01  5.3310E-01  7.5398E-01  8.8364E-01  6.7148E-01  2.0809E+00  9.5399E-01  1.0000E-02
             1.5886E+00
 PARAMETER:  1.1465E-01  5.8478E-01 -1.7627E+00 -5.2851E-01 -1.8246E-01 -2.3705E-02 -2.9832E-01  8.3288E-01  5.2896E-02 -4.5296E+00
             5.6246E-01
 GRADIENT:  -1.0564E+00  1.5657E+01  1.1103E+00  1.9051E+01 -2.0782E+01  4.5904E-01 -6.0242E+00  9.9149E-01 -2.6287E+00  0.0000E+00
            -1.1796E+01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:      685
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.2138E-04 -1.5474E-02 -7.2364E-03  2.5394E-03 -4.4095E-04
 SE:             2.9537E-02  2.6735E-02  1.8656E-02  2.1396E-02  3.1218E-04
 N:                     100         100         100         100         100

 P VAL.:         9.8592E-01  5.6275E-01  6.9810E-01  9.0552E-01  1.5781E-01

 ETASHRINKSD(%)  1.0476E+00  1.0433E+01  3.7499E+01  2.8321E+01  9.8954E+01
 ETASHRINKVR(%)  2.0843E+00  1.9777E+01  6.0936E+01  4.8622E+01  9.9989E+01
 EBVSHRINKSD(%)  1.2039E+00  1.2153E+01  3.7075E+01  2.9699E+01  9.8934E+01
 EBVSHRINKVR(%)  2.3933E+00  2.2828E+01  6.0404E+01  5.0577E+01  9.9989E+01
 RELATIVEINF(%)  9.6150E+01  8.8670E+00  1.6083E+01  6.9549E+00  1.3748E-03
 EPSSHRINKSD(%)  3.9475E+01
 EPSSHRINKVR(%)  6.3367E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1589.3325687495808     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -854.18174218584261     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:     7.27
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.44
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1589.333       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  1.62E+00  1.55E-01  5.33E-01  7.54E-01  8.84E-01  6.71E-01  2.08E+00  9.54E-01  1.00E-02  1.59E+00
 


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
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.04E+10
 
 TH 2
+        7.39E+06  4.82E+05
 
 TH 3
+        4.26E+08  6.01E+05  1.51E+08
 
 TH 4
+        2.69E+08  5.76E+06  4.58E+07  1.23E+08
 
 TH 5
+        1.31E+09 -1.99E+07  3.64E+08  1.02E+08  3.12E+09
 
 TH 6
+       -6.77E+08  8.45E+05 -2.03E+08 -8.25E+07 -7.80E+08  3.15E+08
 
 TH 7
+       -4.10E+07 -1.83E+06 -1.56E+07 -3.86E+07 -2.98E+07  2.66E+07  1.23E+07
 
 TH 8
+       -2.03E+06  1.43E+03 -4.62E+05 -2.48E+05 -2.05E+06  7.66E+05  7.64E+04  1.94E+03
 
 TH 9
+        1.75E+08 -2.09E+06  1.03E+07 -3.74E+07  3.87E+07 -8.34E+06  1.25E+07 -6.37E+03  2.01E+07
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        2.20E+06 -7.20E+04 -8.45E+05 -1.92E+06 -3.54E+06  1.64E+06  6.33E+05  4.55E+03  7.03E+05  0.00E+00  3.66E+04
 
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
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.52E+06
 
 TH 2
+       -2.57E+01  5.35E+04
 
 TH 3
+       -7.87E+01  4.70E+02  6.40E+05
 
 TH 4
+       -7.04E+01  3.57E+02 -1.80E+03  6.01E+05
 
 TH 5
+       -6.96E+01 -8.51E+02 -1.66E+03  9.19E+02  2.52E+06
 
 TH 6
+       -1.74E+03 -5.08E+00  3.58E+00 -1.70E+01 -7.54E+00  6.10E+06
 
 TH 7
+        4.27E+01 -2.61E+00 -2.78E+01 -1.70E+01  3.55E+01  2.61E+01  1.19E+06
 
 TH 8
+        2.25E+00  1.40E+00 -6.10E+01 -3.25E+00 -4.96E+01  6.91E-01 -1.36E-01  1.59E+04
 
 TH 9
+        7.83E+01 -1.66E+01  3.57E+01  2.37E+01  4.41E+00 -4.42E+02  4.28E+01  1.27E-01  5.23E+06
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+       -1.48E+01 -1.87E+01  3.42E+01  2.59E+00 -1.94E+01  1.58E+00  1.80E+01  5.82E+00  2.14E+01  0.00E+00  5.98E+04
 
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
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.38E+03
 
 TH 2
+       -9.92E+01  7.50E+02
 
 TH 3
+       -5.32E+02  3.90E+02  4.19E+03
 
 TH 4
+       -2.04E+02  6.25E+02 -1.31E+03  2.18E+03
 
 TH 5
+       -1.42E+02 -6.14E+02 -1.47E+03  8.22E+02  2.19E+03
 
 TH 6
+        6.16E+01 -1.12E+01 -3.00E+02  4.66E+01  2.83E+01  2.06E+02
 
 TH 7
+        5.24E+01 -1.04E+02  1.40E+02 -2.87E+02 -1.02E+02 -1.25E+01  2.28E+02
 
 TH 8
+        3.23E+01 -1.57E+01 -1.13E+02 -3.79E+01 -7.70E+01  9.45E+00  1.28E+01  1.89E+01
 
 TH 9
+        1.57E+01 -6.77E+01  1.20E+02 -6.98E+01 -7.46E+01 -3.66E+00  7.11E+01  9.34E+00  9.06E+01
 
 TH10
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH11
+        9.26E+01 -1.57E+02  2.15E+02 -2.86E+02 -2.23E+02  9.57E+00  1.33E+02  2.14E+01  1.11E+02  0.00E+00  3.14E+02
 
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
 #CPUT: Total CPU Time in Seconds,       13.793
Stop Time:
Sat Sep 18 09:27:59 CDT 2021
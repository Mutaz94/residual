Wed Sep 29 17:26:37 CDT 2021
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
$DATA ../../../../data/spa/S2/dat49.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m49.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1587.35333180021        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2396E+02 -1.3188E+01 -1.3472E+01  2.4164E+01  2.0850E+01  3.9601E+01 -3.3889E+01  1.9613E+00 -2.0556E+01 -5.8703E+00
            -1.1266E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1598.80576378941        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.3174E-01  1.1280E+00  1.0597E+00  9.2035E-01  1.1164E+00  1.0486E+00  1.3986E+00  9.8561E-01  1.1291E+00  1.0318E+00
             1.0147E+00
 PARAMETER:  2.9295E-02  2.2042E-01  1.5797E-01  1.6996E-02  2.1008E-01  1.4741E-01  4.3544E-01  8.5507E-02  2.2142E-01  1.3128E-01
             1.1463E-01
 GRADIENT:  -4.3709E+01 -2.9066E+01 -2.0688E+00 -2.5154E+01  2.5912E+01 -1.8445E+00  5.4685E+00 -6.5679E-01  9.9139E+00 -5.2868E+00
            -4.6619E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1599.64978905521        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  9.4529E-01  1.2991E+00  9.5811E-01  8.4015E-01  1.1400E+00  1.0535E+00  1.3485E+00  9.4976E-01  1.1729E+00  1.1129E+00
             1.0039E+00
 PARAMETER:  4.3732E-02  3.6164E-01  5.7211E-02 -7.4179E-02  2.3101E-01  1.5210E-01  3.9899E-01  4.8451E-02  2.5952E-01  2.0699E-01
             1.0392E-01
 GRADIENT:  -1.6590E+01  1.8267E-01  1.6994E-01 -3.8485E+00  6.2798E+00  4.7865E-01  1.5344E+01  6.6595E-01  7.7850E+00  4.7703E+00
            -8.1486E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1601.48742158895        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.5636E-01  1.2403E+00  7.1491E-01  8.6933E-01  9.6774E-01  1.0563E+00  1.3158E+00  4.4353E-01  1.0657E+00  9.2857E-01
             1.0259E+00
 PARAMETER:  5.5379E-02  3.1532E-01 -2.3559E-01 -4.0038E-02  6.7208E-02  1.5474E-01  3.7444E-01 -7.1299E-01  1.6362E-01  2.5889E-02
             1.2561E-01
 GRADIENT:   2.5604E+00 -8.3274E-01 -1.1704E+01  1.4505E+01  8.3994E+00  9.3634E-01  1.0780E+00  1.2138E+00  2.4431E+00  3.6102E+00
             3.7951E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1601.97663370017        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  9.5524E-01  1.3913E+00  6.3431E-01  7.6697E-01  1.0017E+00  1.0504E+00  1.2028E+00  1.5696E-01  1.1373E+00  9.1429E-01
             1.0174E+00
 PARAMETER:  5.4208E-02  4.3025E-01 -3.5521E-01 -1.6531E-01  1.0166E-01  1.4916E-01  2.8469E-01 -1.7517E+00  2.2869E-01  1.0393E-02
             1.1725E-01
 GRADIENT:  -6.7816E-01  8.7251E-01 -3.3527E+00  3.9334E+00  2.5297E+00 -1.4581E+00 -1.3603E-01  1.2596E-01 -7.1911E-01 -2.7788E-01
            -1.2277E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1602.01984640957        NO. OF FUNC. EVALS.: 201
 CUMULATIVE NO. OF FUNC. EVALS.:      904             RESET HESSIAN, TYPE I
 NPARAMETR:  9.5661E-01  1.4318E+00  6.4041E-01  7.3821E-01  1.0338E+00  1.0584E+00  1.1751E+00  1.1910E-01  1.1779E+00  9.5051E-01
             1.0218E+00
 PARAMETER:  5.5639E-02  4.5890E-01 -3.4565E-01 -2.0353E-01  1.3322E-01  1.5678E-01  2.6135E-01 -2.0278E+00  2.6374E-01  4.9247E-02
             1.2160E-01
 GRADIENT:   4.0159E+02  3.0515E+02  4.6441E+00  8.0849E+01  9.4355E+00  1.1145E+02  2.2355E+01  8.6067E-02  1.4413E+01  1.1198E+00
             1.2037E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1602.02480712457        NO. OF FUNC. EVALS.: 193
 CUMULATIVE NO. OF FUNC. EVALS.:     1097             RESET HESSIAN, TYPE I
 NPARAMETR:  9.5615E-01  1.4324E+00  6.3982E-01  7.3949E-01  1.0335E+00  1.0563E+00  1.1752E+00  1.1736E-01  1.1811E+00  9.4763E-01
             1.0216E+00
 PARAMETER:  5.5164E-02  4.5937E-01 -3.4657E-01 -2.0179E-01  1.3292E-01  1.5475E-01  2.6142E-01 -2.0425E+00  2.6643E-01  4.6204E-02
             1.2136E-01
 GRADIENT:   4.0079E+02  3.0687E+02  4.0409E+00  8.2412E+01  1.0552E+01  1.0935E+02  2.2412E+01  8.4871E-02  1.5171E+01  8.0573E-01
             1.0647E+00

0ITERATION NO.:   32    OBJECTIVE VALUE:  -1602.02480712457        NO. OF FUNC. EVALS.:  63
 CUMULATIVE NO. OF FUNC. EVALS.:     1160
 NPARAMETR:  9.5622E-01  1.4323E+00  6.3927E-01  7.3946E-01  1.0329E+00  1.0565E+00  1.1751E+00  1.1796E-01  1.1811E+00  9.4668E-01
             1.0215E+00
 PARAMETER:  5.5164E-02  4.5937E-01 -3.4657E-01 -2.0179E-01  1.3292E-01  1.5475E-01  2.6142E-01 -2.0425E+00  2.6643E-01  4.6204E-02
             1.2136E-01
 GRADIENT:  -2.7387E-01  1.5652E-01  1.0643E+05  7.9810E-02  7.4072E-01 -1.4410E-01  4.2935E-02 -1.8548E+04  2.7216E-03  1.3093E-01
             9.4633E-02
 NUMSIGDIG:         2.9         3.5         2.3         3.4         2.1         2.6         3.1         2.3         4.2         1.7
                    2.7

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1160
 NO. OF SIG. DIGITS IN FINAL EST.:  1.7
 ADDITIONAL PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3611E-04 -1.4252E-02 -4.4347E-03  1.2040E-02 -2.7946E-02
 SE:             2.9848E-02  2.4862E-02  1.5667E-03  2.2593E-02  2.1509E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9636E-01  5.6649E-01  4.6473E-03  5.9410E-01  1.9385E-01

 ETASHRINKSD(%)  5.2176E-03  1.6709E+01  9.4751E+01  2.4311E+01  2.7943E+01
 ETASHRINKVR(%)  1.0435E-02  3.0626E+01  9.9725E+01  4.2712E+01  4.8079E+01
 EBVSHRINKSD(%)  4.1065E-01  1.6214E+01  9.5491E+01  2.5738E+01  2.6549E+01
 EBVSHRINKVR(%)  8.1962E-01  2.9800E+01  9.9797E+01  4.4851E+01  4.6050E+01
 RELATIVEINF(%)  9.9079E+01  6.3349E+00  2.6903E-02  4.4876E+00  9.1287E+00
 EPSSHRINKSD(%)  4.4272E+01
 EPSSHRINKVR(%)  6.8944E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1602.0248071245742     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -866.87398056083600     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.43
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     8.78
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1602.025       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.56E-01  1.43E+00  6.40E-01  7.39E-01  1.03E+00  1.06E+00  1.18E+00  1.17E-01  1.18E+00  9.48E-01  1.02E+00
 


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
+        1.08E+03
 
 TH 2
+       -3.57E+00  2.86E+02
 
 TH 3
+       -7.96E+05  2.54E+04  1.95E+07
 
 TH 4
+       -1.04E+01  2.24E+02  6.57E+05  8.24E+02
 
 TH 5
+       -3.43E+00 -1.71E+02 -9.92E+04  3.30E+02  6.27E+02
 
 TH 6
+        5.35E-01 -6.03E-01 -4.72E+05 -3.34E+00 -1.29E+00  1.76E+02
 
 TH 7
+        6.58E-01  1.84E+01  1.92E+05 -1.59E+01  4.59E+00 -2.93E-01  7.40E+01
 
 TH 8
+        3.00E+05 -1.47E+04 -1.81E+07 -1.95E+05 -3.17E+04  1.47E+05 -2.27E+04  1.67E+07
 
 TH 9
+        1.18E+00 -1.58E+01  1.36E+07  4.84E+01 -6.45E-01 -3.79E-01  1.23E+01 -6.96E+05  8.60E+06
 
 TH10
+       -4.79E-01 -1.14E+01  2.19E+05 -1.24E+01 -6.46E+01  7.27E-02  1.04E+01 -2.96E+04  1.04E+01  7.28E+01
 
 TH11
+       -7.11E+00 -1.32E+01 -1.27E+06  3.36E+00 -4.05E+00  2.40E+00  5.84E+00  5.78E+05  6.49E+00  1.63E+01  2.05E+02
 
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
 #CPUT: Total CPU Time in Seconds,       27.276
Stop Time:
Wed Sep 29 17:27:06 CDT 2021

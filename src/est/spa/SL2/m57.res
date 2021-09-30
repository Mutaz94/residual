Wed Sep 29 15:58:50 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat57.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m57.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1759.58975354196        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.5680E+02 -6.8264E+01 -6.0544E+01 -7.8752E+00  6.9538E+01  6.6563E+01  1.0443E+01  1.4278E+01  3.2420E+01  2.0978E+01
             5.0418E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1776.23137430020        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      192
 NPARAMETR:  1.0408E+00  1.1030E+00  1.1393E+00  1.0252E+00  1.0527E+00  9.1486E-01  9.3435E-01  9.3312E-01  8.8107E-01  9.1578E-01
             8.8625E-01
 PARAMETER:  1.3997E-01  1.9803E-01  2.3045E-01  1.2493E-01  1.5135E-01  1.1017E-02  3.2099E-02  3.0774E-02 -2.6616E-02  1.2026E-02
            -2.0760E-02
 GRADIENT:   1.8107E+01  1.2794E+01 -1.3141E+01  3.4280E+01  2.9007E+01 -4.5952E+00  1.6289E+00  1.7992E+00 -3.0626E+00 -8.7925E+00
            -7.2652E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1777.19523351988        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      368
 NPARAMETR:  1.0430E+00  9.8438E-01  1.3145E+00  1.1074E+00  1.0553E+00  8.9879E-01  6.3718E-01  9.2731E-01  9.6969E-01  1.0205E+00
             8.8645E-01
 PARAMETER:  1.4214E-01  8.4259E-02  3.7343E-01  2.0205E-01  1.5379E-01 -6.7051E-03 -3.5070E-01  2.4537E-02  6.9225E-02  1.2033E-01
            -2.0533E-02
 GRADIENT:   2.8459E+01  2.2139E+01 -1.1310E+00  4.2720E+01 -4.2304E+00 -1.1574E+01  1.6567E+00 -2.9706E+00  5.7245E+00 -3.7964E-01
            -6.2797E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1780.34120163560        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      544
 NPARAMETR:  1.0302E+00  1.2557E+00  1.5905E+00  8.8991E-01  1.2410E+00  9.3418E-01  2.8112E-01  1.4173E+00  1.1997E+00  1.1436E+00
             9.1451E-01
 PARAMETER:  1.2972E-01  3.2767E-01  5.6402E-01 -1.6638E-02  3.1595E-01  3.1911E-02 -1.1690E+00  4.4875E-01  2.8204E-01  2.3420E-01
             1.0629E-02
 GRADIENT:  -7.3868E+00 -2.1745E+01  2.8970E+00 -2.1551E+01  6.4097E-01  3.6434E+00  1.3324E+00 -2.6729E+00  6.4531E-01  5.7448E-01
             5.0934E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1780.96653519932        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  1.0337E+00  1.3795E+00  1.5983E+00  8.1295E-01  1.2884E+00  9.2704E-01  1.0439E-01  1.6596E+00  1.3430E+00  1.1646E+00
             9.0600E-01
 PARAMETER:  1.3317E-01  4.2170E-01  5.6891E-01 -1.0709E-01  3.5339E-01  2.4236E-02 -2.1596E+00  6.0659E-01  3.9493E-01  2.5238E-01
             1.2805E-03
 GRADIENT:   7.2291E+02  3.9381E+02  2.9003E+00  4.9101E+01  2.4483E+01  4.6384E+01  2.0246E+00  1.4894E+00  2.6498E+01  1.9709E+00
             7.1544E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1781.04198686897        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  1.0354E+00  1.3756E+00  1.5731E+00  8.1342E-01  1.2795E+00  9.2679E-01  5.6407E-02  1.6236E+00  1.3726E+00  1.1651E+00
             9.0574E-01
 PARAMETER:  1.3478E-01  4.1891E-01  5.5303E-01 -1.0650E-01  3.4649E-01  2.3969E-02 -2.7752E+00  5.8463E-01  4.1668E-01  2.5280E-01
             1.0010E-03
 GRADIENT:   4.0529E+00 -3.4773E+00 -2.2525E-02 -1.4192E+00  2.6343E-01  2.6217E-02  5.1190E-02  7.2552E-02  2.0187E+00  3.5087E-01
             4.7214E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1781.07915713079        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1057
 NPARAMETR:  1.0325E+00  1.3633E+00  1.5696E+00  8.2222E-01  1.2728E+00  9.2690E-01  1.0000E-02  1.6064E+00  1.3543E+00  1.1611E+00
             9.0427E-01
 PARAMETER:  1.3199E-01  4.0990E-01  5.5080E-01 -9.5742E-02  3.4119E-01  2.4094E-02 -4.6459E+00  5.7401E-01  4.0326E-01  2.4939E-01
            -6.2748E-04
 GRADIENT:  -3.1488E+00 -1.9828E-01 -8.2455E-03 -6.3093E-01 -1.1820E+00  6.6770E-02  0.0000E+00  1.3022E-01  2.5412E-01  2.2929E-01
            -2.5367E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1781.11966509338        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1242
 NPARAMETR:  1.0352E+00  1.3475E+00  1.5850E+00  8.3298E-01  1.2720E+00  9.2650E-01  1.0000E-02  1.5958E+00  1.3368E+00  1.1583E+00
             9.0533E-01
 PARAMETER:  1.3460E-01  3.9828E-01  5.6060E-01 -8.2751E-02  3.4060E-01  2.3663E-02 -6.1884E+00  5.6738E-01  3.9027E-01  2.4692E-01
             5.4097E-04
 GRADIENT:   3.8951E+00 -2.4683E+00  1.6913E-02 -1.5756E+00  6.1005E-01 -2.7670E-02  0.0000E+00 -1.2293E-01  6.1006E-01 -2.4618E-01
             2.4610E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1781.12358510546        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1426
 NPARAMETR:  1.0348E+00  1.3460E+00  1.5856E+00  8.3463E-01  1.2713E+00  9.2680E-01  1.0000E-02  1.5979E+00  1.3343E+00  1.1593E+00
             9.0478E-01
 PARAMETER:  1.3423E-01  3.9717E-01  5.6094E-01 -8.0769E-02  3.4008E-01  2.3985E-02 -6.1884E+00  5.6866E-01  3.8837E-01  2.4783E-01
            -6.0188E-05
 GRADIENT:   2.9606E+00 -1.3313E+00 -9.2505E-02 -7.2324E-01  1.7833E-01  9.7418E-02  0.0000E+00  1.7805E-02  3.9538E-01 -7.1486E-03
             2.1387E-02

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1781.12358510546        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1448
 NPARAMETR:  1.0348E+00  1.3460E+00  1.5856E+00  8.3463E-01  1.2713E+00  9.2680E-01  1.0000E-02  1.5979E+00  1.3343E+00  1.1593E+00
             9.0478E-01
 PARAMETER:  1.3423E-01  3.9717E-01  5.6094E-01 -8.0769E-02  3.4008E-01  2.3985E-02 -6.1884E+00  5.6866E-01  3.8837E-01  2.4783E-01
            -6.0188E-05
 GRADIENT:   2.9606E+00 -1.3313E+00 -9.2505E-02 -7.2324E-01  1.7833E-01  9.7418E-02  0.0000E+00  1.7805E-02  3.9538E-01 -7.1486E-03
             2.1387E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1448
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.1420E-03 -1.2346E-03 -3.0324E-02 -1.9086E-03 -3.3183E-02
 SE:             2.9887E-02  3.3850E-04  1.2952E-02  2.9177E-02  2.3394E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6952E-01  2.6501E-04  1.9221E-02  9.4784E-01  1.5607E-01

 ETASHRINKSD(%)  1.0000E-10  9.8866E+01  5.6608E+01  2.2548E+00  2.1626E+01
 ETASHRINKVR(%)  1.0000E-10  9.9987E+01  8.1172E+01  4.4587E+00  3.8575E+01
 EBVSHRINKSD(%)  3.9749E-01  9.9046E+01  6.0949E+01  2.6082E+00  1.8328E+01
 EBVSHRINKVR(%)  7.9341E-01  9.9991E+01  8.4750E+01  5.1483E+00  3.3296E+01
 RELATIVEINF(%)  9.9107E+01  1.2291E-03  6.6224E+00  1.4097E+01  2.9738E+01
 EPSSHRINKSD(%)  4.3856E+01
 EPSSHRINKVR(%)  6.8478E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1781.1235851054555     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1045.9727585417172     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.21
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.67
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1781.124       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.35E+00  1.59E+00  8.35E-01  1.27E+00  9.27E-01  1.00E-02  1.60E+00  1.33E+00  1.16E+00  9.05E-01
 


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
+        1.20E+03
 
 TH 2
+       -1.78E+01  6.35E+02
 
 TH 3
+        1.18E+00  3.62E+01  3.12E+01
 
 TH 4
+       -1.30E+01  6.01E+02 -5.79E+00  8.51E+02
 
 TH 5
+       -1.32E+00 -1.35E+02 -6.22E+01 -2.85E+01  3.51E+02
 
 TH 6
+        1.16E+00 -4.00E+00  4.06E-01 -3.03E+00 -5.11E-01  2.28E+02
 
 TH 7
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 8
+        8.65E-02 -1.58E+01 -1.24E+01 -6.48E-01 -7.48E-01 -5.28E-03  0.00E+00  1.19E+01
 
 TH 9
+        2.64E+00 -1.09E+02  1.30E+00  7.85E+00  2.26E+00  4.83E-01  0.00E+00 -1.59E-01  9.92E+01
 
 TH10
+        4.35E-01 -4.34E+00 -3.14E+00 -1.89E+00 -4.63E+01  1.73E-01  0.00E+00  3.76E+00  1.01E+00  7.15E+01
 
 TH11
+       -8.31E+00 -3.28E+01 -6.12E+00 -1.58E+01  3.91E+00  1.87E+00  0.00E+00  1.75E+00  9.46E+00  1.83E+01  2.65E+02
 
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
 #CPUT: Total CPU Time in Seconds,       23.930
Stop Time:
Wed Sep 29 15:59:15 CDT 2021

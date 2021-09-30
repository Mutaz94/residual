Wed Sep 29 15:40:50 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat23.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m23.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1679.73600467666        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1973E+02  3.7282E+01 -4.2570E+01  1.2736E+02  6.1024E+00  6.7402E+01  7.5232E+00  1.6209E+01  3.1213E+01  1.5020E+01
            -6.8795E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1694.64771394140        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0182E+00  1.1066E+00  1.2642E+00  9.2723E-01  1.1727E+00  9.5802E-01  9.7331E-01  8.8861E-01  8.6747E-01  9.2556E-01
             1.1561E+00
 PARAMETER:  1.1800E-01  2.0127E-01  3.3443E-01  2.4446E-02  2.5932E-01  5.7116E-02  7.2946E-02 -1.8097E-02 -4.2169E-02  2.2642E-02
             2.4502E-01
 GRADIENT:  -5.4972E+00 -5.3560E+00 -1.6297E+01  1.1884E+01  3.6985E+01 -3.1013E+00 -2.4086E+00  3.4844E+00 -5.6378E+00 -1.8503E+01
            -8.8122E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1697.35402512264        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0255E+00  9.3451E-01  1.7292E+00  1.0709E+00  1.2386E+00  9.6651E-01  7.5712E-01  6.1405E-01  9.4288E-01  1.2368E+00
             1.1416E+00
 PARAMETER:  1.2522E-01  3.2266E-02  6.4766E-01  1.6851E-01  3.1396E-01  6.5937E-02 -1.7824E-01 -3.8768E-01  4.1178E-02  3.1257E-01
             2.3242E-01
 GRADIENT:   1.6014E+01  2.7084E+01 -6.9101E+00  5.2676E+01  4.9261E+00  1.2743E+00  1.3485E+00  4.8441E-01 -2.0408E-01  1.0624E+01
            -8.4300E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1699.14171390525        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      545
 NPARAMETR:  1.0190E+00  1.0557E+00  1.7865E+00  9.5637E-01  1.2753E+00  9.6148E-01  4.7028E-01  6.0790E-01  1.0805E+00  1.1785E+00
             1.1723E+00
 PARAMETER:  1.1878E-01  1.5422E-01  6.8027E-01  5.5392E-02  3.4319E-01  6.0718E-02 -6.5443E-01 -3.9775E-01  1.7744E-01  2.6423E-01
             2.5901E-01
 GRADIENT:  -8.1862E-01 -3.1891E+00 -2.9241E-01 -9.3030E-01  9.0531E-01 -7.4040E-01  1.3367E-03  1.4987E-01  2.2739E+00 -2.0376E-01
             4.4844E-02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1699.29780286261        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      720
 NPARAMETR:  1.0210E+00  1.2290E+00  1.6114E+00  8.4929E-01  1.2968E+00  9.6587E-01  5.4069E-01  3.3420E-01  1.1577E+00  1.1813E+00
             1.1749E+00
 PARAMETER:  1.2080E-01  3.0618E-01  5.7708E-01 -6.3357E-02  3.5986E-01  6.5273E-02 -5.1491E-01 -9.9601E-01  2.4641E-01  2.6664E-01
             2.6119E-01
 GRADIENT:   1.1553E+00  1.0146E+01  9.4559E-01  9.6475E+00 -4.2042E+00  4.9948E-01  1.2865E-01  5.6598E-02 -1.1127E+00  8.7005E-01
            -1.6992E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1699.44027063895        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      897
 NPARAMETR:  1.0213E+00  1.4200E+00  1.4714E+00  7.1850E-01  1.3393E+00  9.6491E-01  5.0566E-01  9.4487E-02  1.3430E+00  1.1852E+00
             1.1774E+00
 PARAMETER:  1.2105E-01  4.5067E-01  4.8623E-01 -2.3059E-01  3.9218E-01  6.4275E-02 -5.8188E-01 -2.2593E+00  3.9492E-01  2.6994E-01
             2.6334E-01
 GRADIENT:  -6.3700E-01  8.5857E+00  1.1208E+00  7.6061E+00 -3.6432E+00 -3.7231E-01 -2.1503E-01  5.5758E-03  1.0110E+00 -1.9166E-02
            -2.1885E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1699.49225275274        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1078
 NPARAMETR:  1.0213E+00  1.4483E+00  1.4250E+00  6.9472E-01  1.3463E+00  9.6589E-01  5.1460E-01  2.9600E-02  1.3624E+00  1.1855E+00
             1.1768E+00
 PARAMETER:  1.2106E-01  4.7040E-01  4.5417E-01 -2.6424E-01  3.9734E-01  6.5298E-02 -5.6437E-01 -3.4200E+00  4.0924E-01  2.7017E-01
             2.6277E-01
 GRADIENT:  -8.3408E-01 -9.8131E-01  4.0570E-04  1.1397E+00  3.3529E-01 -4.9131E-02 -4.1239E-02  6.6734E-04  5.8533E-02  3.7387E-02
             7.2363E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1699.49458466100        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1255
 NPARAMETR:  1.0232E+00  1.4515E+00  1.4165E+00  6.9086E-01  1.3461E+00  9.6643E-01  5.1962E-01  1.0000E-02  1.3639E+00  1.1843E+00
             1.1766E+00
 PARAMETER:  1.2291E-01  4.7260E-01  4.4818E-01 -2.6981E-01  3.9719E-01  6.5856E-02 -5.5466E-01 -5.2294E+00  4.1034E-01  2.6918E-01
             2.6259E-01
 GRADIENT:   3.6094E+00 -4.5035E+00 -1.6117E-02 -1.2498E+00  5.3019E-01  1.6037E-01  2.1073E-01  0.0000E+00  8.9217E-02  3.8249E-02
             9.9593E-02

0ITERATION NO.:   39    OBJECTIVE VALUE:  -1699.49537155120        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:     1391
 NPARAMETR:  1.0231E+00  1.4510E+00  1.4127E+00  6.8935E-01  1.3459E+00  9.6658E-01  5.1710E-01  1.0000E-02  1.3647E+00  1.1835E+00
             1.1765E+00
 PARAMETER:  1.2197E-01  4.7394E-01  4.4750E-01 -2.6931E-01  3.9691E-01  6.5740E-02 -5.5610E-01 -5.2294E+00  4.1138E-01  2.6897E-01
             2.6265E-01
 GRADIENT:  -8.4823E-01  1.4357E+00  7.6448E-02  1.0291E+00 -7.2827E-02 -4.6205E-02  4.7891E-02  0.0000E+00  4.3204E-02  3.7205E-02
             2.8631E-02

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1391
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.8050E-04 -3.1946E-02 -6.1080E-05  8.1030E-03 -3.4817E-02
 SE:             2.9791E-02  1.4240E-02  5.6045E-05  2.5273E-02  2.3487E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9517E-01  2.4873E-02  2.7578E-01  7.4850E-01  1.3824E-01

 ETASHRINKSD(%)  1.9787E-01  5.2293E+01  9.9812E+01  1.5332E+01  2.1316E+01
 ETASHRINKVR(%)  3.9535E-01  7.7241E+01  1.0000E+02  2.8314E+01  3.8088E+01
 EBVSHRINKSD(%)  5.8669E-01  5.2418E+01  9.9801E+01  1.5073E+01  1.9357E+01
 EBVSHRINKVR(%)  1.1699E+00  7.7359E+01  1.0000E+02  2.7874E+01  3.4966E+01
 RELATIVEINF(%)  9.8652E+01  1.4628E+00  1.4464E-04  5.0876E+00  2.2023E+01
 EPSSHRINKSD(%)  3.9543E+01
 EPSSHRINKVR(%)  6.3449E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1699.4953715512045     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -964.34454498746629     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.91
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     5.95
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1699.495       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.45E+00  1.42E+00  6.91E-01  1.35E+00  9.66E-01  5.19E-01  1.00E-02  1.37E+00  1.18E+00  1.18E+00
 


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
+        1.13E+03
 
 TH 2
+       -1.63E+01  4.62E+02
 
 TH 3
+        2.53E+00  2.30E+01  2.19E+01
 
 TH 4
+       -1.89E+01  5.65E+02 -1.24E+01  9.08E+02
 
 TH 5
+       -4.51E+00 -1.13E+02 -5.68E+01 -3.15E+00  2.89E+02
 
 TH 6
+        4.39E-01 -1.74E+00  9.41E-01 -3.17E+00 -5.41E-01  2.09E+02
 
 TH 7
+        2.13E+00 -4.75E+01  7.65E+00 -3.09E+01 -8.99E+00 -2.72E-01  5.89E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.06E+00 -3.32E+01 -4.61E-01  3.79E+01  1.11E+00 -7.71E-01  3.47E+01  0.00E+00  5.83E+01
 
 TH10
+       -3.82E-01  2.24E+00 -1.71E+00 -4.66E+00 -4.08E+01  6.12E-02  6.46E+00  0.00E+00  4.62E-01  6.33E+01
 
 TH11
+       -9.00E+00 -2.74E+01 -1.03E+01 -1.49E+01  4.39E+00  2.80E+00  5.34E+00  0.00E+00  5.73E+00  2.24E+01  1.77E+02
 
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
 #CPUT: Total CPU Time in Seconds,       23.920
Stop Time:
Wed Sep 29 15:41:16 CDT 2021

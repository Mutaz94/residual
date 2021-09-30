Wed Sep 29 12:16:11 CDT 2021
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
$DATA ../../../../data/spa/A1/dat64.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m64.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1368.93372975137        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3444E+02 -2.1221E+01 -4.7635E+01  5.4665E+01  1.0640E+02  1.9144E+01 -4.3007E+00  4.7962E+00  1.4465E+01  6.0250E-01
            -5.8878E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1488.97258210838        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1343E+00  1.1151E+00  1.1794E+00  9.8657E-01  9.7698E-01  1.3126E+00  9.6869E-01  9.3700E-01  8.8133E-01  7.9587E-01
             2.7130E+00
 PARAMETER:  2.2599E-01  2.0895E-01  2.6505E-01  8.6481E-02  7.6710E-02  3.7201E-01  6.8193E-02  3.4929E-02 -2.6320E-02 -1.2832E-01
             1.0981E+00
 GRADIENT:   2.7144E+02  2.2684E+01  1.2903E+01 -5.8166E-01 -6.3331E+01  7.6355E+01  7.1523E+00  3.5183E+00  8.1660E+00  1.8677E+01
             1.5464E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1524.93145416323        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.0170E+00  8.2006E-01  1.4634E+00  1.1848E+00  9.5583E-01  1.0389E+00  8.5946E-01  6.2167E-01  7.8742E-01  5.4527E-01
             2.2188E+00
 PARAMETER:  1.1683E-01 -9.8375E-02  4.8076E-01  2.6957E-01  5.4821E-02  1.3815E-01 -5.1457E-02 -3.7534E-01 -1.3899E-01 -5.0647E-01
             8.9698E-01
 GRADIENT:   1.1327E+02  4.3946E+01  2.7383E+01  9.7284E+01 -8.0616E+01  8.1467E+00 -8.3123E+00 -3.1756E-01 -1.5501E+01 -2.0364E+00
             3.0809E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1529.55680986516        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      225
 NPARAMETR:  9.8518E-01  8.6585E-01  8.1177E-01  1.0996E+00  7.7807E-01  1.0169E+00  1.3167E+00  4.0158E-01  7.4911E-01  4.5055E-01
             2.0546E+00
 PARAMETER:  8.5070E-02 -4.4047E-02 -1.0854E-01  1.9492E-01 -1.5094E-01  1.1678E-01  3.7510E-01 -8.1236E-01 -1.8886E-01 -6.9728E-01
             8.2008E-01
 GRADIENT:   3.6973E+01  6.6023E+00 -5.8275E+00  5.4345E+01  7.6391E+00 -5.7871E+00  2.5825E+00  3.8987E-01 -8.0216E-01  3.8043E-01
             2.4686E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1531.87708393473        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      404
 NPARAMETR:  1.0163E+00  9.0708E-01  9.0160E-01  1.0840E+00  8.3592E-01  1.0683E+00  1.2234E+00  2.4278E-01  8.1073E-01  6.0913E-01
             1.9602E+00
 PARAMETER:  1.1615E-01  2.4757E-03 -3.5835E-03  1.8061E-01 -7.9227E-02  1.6606E-01  3.0161E-01 -1.3156E+00 -1.0981E-01 -3.9572E-01
             7.7303E-01
 GRADIENT:   2.3880E+00  8.6884E-01  1.4676E+00  2.3002E-01 -3.0980E+00  3.3495E-01 -3.7572E-01 -2.0405E-03 -3.7451E-01 -3.4989E-01
            -1.4365E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1531.89735990098        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      580
 NPARAMETR:  1.0150E+00  9.1278E-01  9.3791E-01  1.0835E+00  8.5719E-01  1.0667E+00  1.2096E+00  1.6951E-01  8.1848E-01  6.3755E-01
             1.9675E+00
 PARAMETER:  1.1488E-01  8.7416E-03  3.5895E-02  1.8021E-01 -5.4096E-02  1.6456E-01  2.9026E-01 -1.6749E+00 -1.0031E-01 -3.5012E-01
             7.7674E-01
 GRADIENT:   4.6471E-01 -2.2689E-01 -5.6808E-02 -1.3773E-01  2.2868E-01  8.3877E-02  4.6048E-02  5.1835E-03  6.6334E-03 -5.7029E-02
            -8.5715E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1531.90047762127        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      756
 NPARAMETR:  1.0151E+00  9.1327E-01  9.3775E-01  1.0837E+00  8.5735E-01  1.0667E+00  1.2067E+00  4.0808E-02  8.1944E-01  6.4378E-01
             1.9679E+00
 PARAMETER:  1.1503E-01  9.2796E-03  3.5726E-02  1.8034E-01 -5.3913E-02  1.6456E-01  2.8786E-01 -3.0989E+00 -9.9134E-02 -3.4040E-01
             7.7699E-01
 GRADIENT:   7.3348E-01  1.3917E-01 -3.2447E-02  3.7363E-01 -3.2305E-02  1.3342E-01 -1.9536E-02  5.3063E-04 -7.0759E-03  2.2808E-02
            -1.6530E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1531.90073638373        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      934             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0151E+00  9.1295E-01  9.3846E-01  1.0835E+00  8.5760E-01  1.0666E+00  1.2072E+00  1.0000E-02  8.1932E-01  6.4348E-01
             1.9683E+00
 PARAMETER:  1.1494E-01  8.9252E-03  3.6490E-02  1.8022E-01 -5.3613E-02  1.6444E-01  2.8827E-01 -6.0465E+00 -9.9275E-02 -3.4087E-01
             7.7719E-01
 GRADIENT:   1.3211E+02  7.3705E+00  6.0358E-01  4.2284E+01  2.2728E+00  2.2193E+01  2.6891E+00  0.0000E+00  1.5611E+00  2.9851E-01
             6.2094E+00

0ITERATION NO.:   37    OBJECTIVE VALUE:  -1531.90073638373        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:      992
 NPARAMETR:  1.0151E+00  9.1295E-01  9.3846E-01  1.0835E+00  8.5760E-01  1.0666E+00  1.2072E+00  1.0000E-02  8.1932E-01  6.4348E-01
             1.9683E+00
 PARAMETER:  1.1494E-01  8.9252E-03  3.6490E-02  1.8022E-01 -5.3613E-02  1.6444E-01  2.8827E-01 -6.0465E+00 -9.9275E-02 -3.4087E-01
             7.7719E-01
 GRADIENT:   5.9888E-01 -1.3545E-01  3.6943E-02 -2.2850E-01 -2.1371E-02  1.0663E-01  2.9413E-03  0.0000E+00 -7.1150E-03 -8.0715E-03
            -8.0776E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      992
 NO. OF SIG. DIGITS IN FINAL EST.:  2.6
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -3.7705E-06  7.4512E-03 -1.1011E-04 -1.5794E-02 -1.3632E-02
 SE:             2.9482E-02  2.0145E-02  1.3347E-04  2.1623E-02  1.6941E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9990E-01  7.1147E-01  4.0936E-01  4.6512E-01  4.2102E-01

 ETASHRINKSD(%)  1.2321E+00  3.2512E+01  9.9553E+01  2.7561E+01  4.3246E+01
 ETASHRINKVR(%)  2.4489E+00  5.4454E+01  9.9998E+01  4.7525E+01  6.7789E+01
 EBVSHRINKSD(%)  1.3440E+00  3.3556E+01  9.9542E+01  2.6883E+01  4.3391E+01
 EBVSHRINKVR(%)  2.6700E+00  5.5853E+01  9.9998E+01  4.6539E+01  6.7954E+01
 RELATIVEINF(%)  9.6305E+01  1.8084E+00  1.0669E-04  2.7617E+00  1.8142E+00
 EPSSHRINKSD(%)  3.3154E+01
 EPSSHRINKVR(%)  5.5316E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1531.9007363837320     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -796.74990981999383     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.56
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.02
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1531.901       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  9.13E-01  9.38E-01  1.08E+00  8.58E-01  1.07E+00  1.21E+00  1.00E-02  8.19E-01  6.43E-01  1.97E+00
 


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
+        9.23E+02
 
 TH 2
+       -2.11E+01  4.12E+02
 
 TH 3
+        1.68E+01  1.52E+02  2.73E+02
 
 TH 4
+       -3.52E+01  3.89E+02 -1.25E+02  7.66E+02
 
 TH 5
+       -7.77E+00 -3.74E+02 -5.33E+02  1.40E+02  1.14E+03
 
 TH 6
+        2.90E-02 -4.37E+00  6.64E+00 -1.10E+01 -5.62E+00  1.65E+02
 
 TH 7
+        1.57E+00  2.62E+01  7.76E+00 -9.58E+00 -8.94E+00  4.94E-01  3.34E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.99E+00 -1.24E+01 -1.09E+01 -2.78E+00  9.56E+00 -9.55E-01  2.19E+01  0.00E+00  9.29E+01
 
 TH10
+       -3.05E+00  2.37E-01 -1.24E+01 -1.59E+01 -2.20E+01 -1.80E-01  7.15E+00  0.00E+00  2.47E+00  4.65E+01
 
 TH11
+       -9.79E+00 -9.79E+00 -1.52E+01 -1.18E+01 -8.90E+00  2.68E+00  5.37E+00  0.00E+00  1.21E+01  2.94E+01  7.23E+01
 
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
 #CPUT: Total CPU Time in Seconds,       17.649
Stop Time:
Wed Sep 29 12:16:30 CDT 2021

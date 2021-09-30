Wed Sep 29 12:01:04 CDT 2021
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
$DATA ../../../../data/spa/A1/dat25.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m25.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1287.72107600999        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3399E+02  5.2443E+00 -1.3416E+01  6.7959E+00  5.0596E+01  6.0846E+01 -3.7249E+01  1.3301E+01 -6.2854E+01 -2.1683E+01
            -6.4195E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1454.90782233242        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0924E+00  9.7379E-01  1.1640E+00  1.0759E+00  9.9970E-01  1.0675E+00  1.2705E+00  8.3104E-01  1.3076E+00  1.1198E+00
             2.2192E+00
 PARAMETER:  1.8837E-01  7.3444E-02  2.5189E-01  1.7316E-01  9.9704E-02  1.6529E-01  3.3942E-01 -8.5079E-02  3.6820E-01  2.1319E-01
             8.9713E-01
 GRADIENT:   3.2997E+02  1.2729E+01  8.5784E+00  1.7562E+01 -3.0187E+01  4.9206E+01  9.3135E+00  6.0997E+00  3.6875E+01  4.5543E+00
             7.8915E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1470.39419112080        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      156
 NPARAMETR:  1.0534E+00  8.9527E-01  1.0855E+00  1.1158E+00  1.0243E+00  9.3088E-01  1.2095E+00  1.1375E-01  1.0858E+00  1.1299E+00
             2.1203E+00
 PARAMETER:  1.5203E-01 -1.0624E-02  1.8203E-01  2.0957E-01  1.2399E-01  2.8373E-02  2.9020E-01 -2.0738E+00  1.8232E-01  2.2212E-01
             8.5154E-01
 GRADIENT:   2.7063E+02 -9.3965E+00 -2.5298E+01  2.3312E+01  4.3233E+01  1.1743E+01 -4.0818E+00  1.2596E-01 -4.0596E+00  3.9165E+00
             5.4152E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1478.61449164523        NO. OF FUNC. EVALS.:  94
 CUMULATIVE NO. OF FUNC. EVALS.:      250
 NPARAMETR:  9.9708E-01  7.4667E-01  9.7599E-01  1.1953E+00  8.6390E-01  8.7031E-01  1.4298E+00  1.0956E-01  1.0447E+00  9.7626E-01
             1.9508E+00
 PARAMETER:  9.7073E-02 -1.9213E-01  7.5697E-02  2.7841E-01 -4.6301E-02 -3.8903E-02  4.5751E-01 -2.1113E+00  1.4375E-01  7.5974E-02
             7.6823E-01
 GRADIENT:   9.7557E-01  1.2883E+00 -1.4390E+01 -9.7650E+00  1.7652E+01 -1.3760E+01 -1.4307E+00  1.6654E-01 -9.2696E+00 -5.4695E+00
             9.8149E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1483.40185316114        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      427
 NPARAMETR:  9.9146E-01  3.5537E-01  9.8639E-01  1.4526E+00  7.2267E-01  8.9591E-01  2.0531E+00  7.3551E-02  9.4756E-01  9.1111E-01
             1.9154E+00
 PARAMETER:  9.1428E-02 -9.3460E-01  8.6297E-02  4.7336E-01 -2.2481E-01 -9.9164E-03  8.1936E-01 -2.5098E+00  4.6138E-02  6.9064E-03
             7.4994E-01
 GRADIENT:   1.5805E-02  1.0890E+01  9.6999E+00  3.0800E+01 -1.4674E+01 -1.7719E+00 -6.8839E-01  6.7287E-02 -1.0104E+01 -3.8815E+00
            -6.1378E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1486.27830704702        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      602
 NPARAMETR:  9.8475E-01  1.1766E-01  9.1427E-01  1.5502E+00  6.3582E-01  9.0031E-01  3.3805E+00  1.2269E-02  9.3207E-01  8.7940E-01
             1.9479E+00
 PARAMETER:  8.4634E-02 -2.0399E+00  1.0367E-02  5.3839E-01 -3.5284E-01 -5.0141E-03  1.3180E+00 -4.3006E+00  2.9654E-02 -2.8514E-02
             7.6676E-01
 GRADIENT:  -4.4770E+00  1.2631E+00  4.2997E+00 -1.7497E+00 -7.7724E+00  1.5054E+00 -2.6128E-01  2.2387E-03  1.3945E+00  2.5228E+00
             2.9062E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1487.03266590844        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      777
 NPARAMETR:  9.8348E-01  1.7903E-02  9.3416E-01  1.6138E+00  6.2896E-01  8.9675E-01  8.3362E+00  1.0000E-02  9.0612E-01  8.7635E-01
             1.9440E+00
 PARAMETER:  8.3342E-02 -3.9228E+00  3.1887E-02  5.7857E-01 -3.6368E-01 -8.9794E-03  2.2206E+00 -7.6086E+00  1.4137E-03 -3.1988E-02
             7.6474E-01
 GRADIENT:  -6.9516E-01  1.9579E-01 -1.1785E+00  7.8173E+00  6.8370E-01  6.2882E-01 -5.3261E-02  0.0000E+00  1.6807E-01  8.8377E-01
            -6.5206E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1487.14645919792        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      960
 NPARAMETR:  9.8355E-01  1.0000E-02  9.1138E-01  1.6055E+00  6.1510E-01  8.9494E-01  1.1919E+01  1.0000E-02  9.0413E-01  8.5662E-01
             1.9495E+00
 PARAMETER:  8.3414E-02 -4.6440E+00  7.2083E-03  5.7342E-01 -3.8597E-01 -1.0994E-02  2.5781E+00 -8.9882E+00 -7.8372E-04 -5.4758E-02
             7.6756E-01
 GRADIENT:   2.9684E-01  0.0000E+00  1.0033E+00 -4.6228E+00 -8.2776E-01  3.7456E-02  3.5087E-03  0.0000E+00  2.6930E-02  1.4135E-02
            -9.4957E-04

0ITERATION NO.:   38    OBJECTIVE VALUE:  -1487.14687817383        NO. OF FUNC. EVALS.: 100
 CUMULATIVE NO. OF FUNC. EVALS.:     1060
 NPARAMETR:  9.8356E-01  1.0000E-02  9.1047E-01  1.6054E+00  6.1527E-01  8.9491E-01  1.1928E+01  1.0000E-02  9.0414E-01  8.5658E-01
             1.9494E+00
 PARAMETER:  8.3424E-02 -4.6440E+00  6.2083E-03  5.7338E-01 -3.8569E-01 -1.1028E-02  2.5789E+00 -8.9882E+00 -7.6726E-04 -5.4806E-02
             7.6754E-01
 GRADIENT:   3.3764E-01  0.0000E+00 -1.9635E-01 -4.6464E+00  8.0066E-01  1.6317E-02  4.0180E-03  0.0000E+00  1.0032E-02 -2.7794E-03
             1.9283E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1060
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -2.1186E-04  1.5554E-04 -6.4050E-06 -8.5767E-03 -2.1126E-02
 SE:             2.9317E-02  1.7640E-03  1.7029E-04  2.8198E-02  2.1922E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9423E-01  9.2974E-01  9.7000E-01  7.6101E-01  3.3521E-01

 ETASHRINKSD(%)  1.7831E+00  9.4091E+01  9.9430E+01  5.5325E+00  2.6558E+01
 ETASHRINKVR(%)  3.5343E+00  9.9651E+01  9.9997E+01  1.0759E+01  4.6062E+01
 EBVSHRINKSD(%)  1.8065E+00  9.4401E+01  9.9373E+01  5.0413E+00  2.5403E+01
 EBVSHRINKVR(%)  3.5803E+00  9.9687E+01  9.9996E+01  9.8285E+00  4.4353E+01
 RELATIVEINF(%)  8.3983E+01  9.0850E-03  2.3947E-04  4.4875E+00  1.9145E+00
 EPSSHRINKSD(%)  3.5497E+01
 EPSSHRINKVR(%)  5.8394E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1487.1468781738265     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -751.99605161008833     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    13.61
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.54
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1487.147       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  1.00E-02  9.10E-01  1.61E+00  6.15E-01  8.95E-01  1.19E+01  1.00E-02  9.04E-01  8.57E-01  1.95E+00
 


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
+        1.38E+03
 
 TH 2
+        0.00E+00  0.00E+00
 
 TH 3
+       -8.41E-01  0.00E+00  5.36E+02
 
 TH 4
+       -2.67E+01  0.00E+00 -4.68E+01  4.77E+02
 
 TH 5
+        2.10E+01  0.00E+00 -1.03E+03 -7.87E+01  2.21E+03
 
 TH 6
+        1.90E-01  0.00E+00  5.00E+00 -6.98E+00 -3.34E+00  2.30E+02
 
 TH 7
+        1.07E-03  0.00E+00  3.36E-03 -1.16E-02 -1.57E-03  1.05E-03  2.87E-03
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        7.90E+00  0.00E+00  1.27E+01 -3.67E+00 -6.23E+00  1.80E-01  2.59E-02  0.00E+00  1.98E+02
 
 TH10
+       -4.56E+00  0.00E+00 -1.07E+01 -3.11E+00 -8.86E+01 -3.23E-01 -1.07E-03  0.00E+00 -1.32E+00  1.04E+02
 
 TH11
+       -1.44E+01  0.00E+00 -8.01E+00 -7.00E+00  7.84E+00  4.11E+00  1.26E-03  0.00E+00  8.53E+00  1.90E+01  7.26E+01
 
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
 #CPUT: Total CPU Time in Seconds,       20.204
Stop Time:
Wed Sep 29 12:01:26 CDT 2021

Sat Sep 18 12:18:42 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat50.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m50.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1685.48199570249        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2887E+01 -4.1849E+01 -4.6124E+01 -3.7486E+01  1.1729E+01  5.4195E+00  1.5018E+01  1.9022E+01 -1.5585E+00  4.4332E+01
            -2.3319E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1698.77733361586        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0090E+00  9.2722E-01  1.2512E+00  1.0530E+00  1.0353E+00  9.8231E-01  7.1859E-01  7.8302E-01  1.0755E+00  6.4571E-01
             1.1404E+00
 PARAMETER:  1.0897E-01  2.4435E-02  3.2408E-01  1.5162E-01  1.3471E-01  8.2152E-02 -2.3047E-01 -1.4459E-01  1.7279E-01 -3.3740E-01
             2.3135E-01
 GRADIENT:   7.0288E+01 -2.1425E+01  2.0543E+01 -3.4507E+01  1.0733E+01 -2.0143E+00  3.8465E+00 -5.5854E-01  1.1611E+01 -1.7476E+01
             1.0664E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1702.09193968885        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.0045E+00  1.0032E+00  1.0995E+00  1.0102E+00  1.0375E+00  9.8110E-01  5.6405E-01  3.9169E-01  1.0590E+00  7.8070E-01
             1.1642E+00
 PARAMETER:  1.0451E-01  1.0315E-01  1.9486E-01  1.1014E-01  1.3679E-01  8.0919E-02 -4.7261E-01 -8.3728E-01  1.5730E-01 -1.4757E-01
             2.5207E-01
 GRADIENT:   5.3642E+01 -2.9129E+01 -2.0438E+01 -2.3783E+01  4.5072E+01 -2.3396E+00 -8.9604E-01  1.0828E+00 -8.9754E+00 -1.5961E+00
             2.5043E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1703.81160330872        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  9.8293E-01  9.4719E-01  1.0656E+00  1.0528E+00  9.8335E-01  9.8845E-01  6.3522E-01  3.2255E-01  1.0516E+00  7.7794E-01
             1.0961E+00
 PARAMETER:  8.2780E-02  4.5746E-02  1.6355E-01  1.5150E-01  8.3211E-02  8.8388E-02 -3.5378E-01 -1.0315E+00  1.5028E-01 -1.5110E-01
             1.9174E-01
 GRADIENT:   8.0153E+00 -9.1679E+00 -8.3242E+00 -4.3144E+00  1.3971E+01  7.4242E-01  5.2328E-01  6.1028E-01 -6.9354E-02  8.1090E-01
             2.7123E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1703.83127226551        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      303
 NPARAMETR:  9.7970E-01  9.6461E-01  1.0675E+00  1.0439E+00  9.8704E-01  9.8724E-01  6.0763E-01  2.7558E-01  1.0651E+00  7.8673E-01
             1.0930E+00
 PARAMETER:  7.9495E-02  6.3967E-02  1.6535E-01  1.4298E-01  8.6957E-02  8.7156E-02 -3.9819E-01 -1.1889E+00  1.6307E-01 -1.3987E-01
             1.8894E-01
 GRADIENT:   6.6112E-01 -2.2547E+00 -2.5352E+00 -1.1230E+00  2.5267E+00  1.0206E-01  1.7800E-01  4.4063E-01  9.6996E-02  1.0540E+00
             4.8530E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1703.92682968701        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      377
 NPARAMETR:  9.7735E-01  9.6351E-01  1.0840E+00  1.0466E+00  9.9113E-01  9.8621E-01  5.7054E-01  9.3921E-02  1.0712E+00  8.0331E-01
             1.0945E+00
 PARAMETER:  7.7085E-02  6.2826E-02  1.8069E-01  1.4559E-01  9.1091E-02  8.6116E-02 -4.6118E-01 -2.2653E+00  1.6879E-01 -1.1902E-01
             1.9032E-01
 GRADIENT:  -4.6087E+00  3.6060E+00  2.7089E+00  2.2318E+00 -6.6366E+00 -3.3487E-01 -2.2075E-01  5.7728E-02  2.7025E-01  1.0689E+00
            -7.2261E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1704.05437183529        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      447
 NPARAMETR:  9.7957E-01  9.6652E-01  1.0794E+00  1.0436E+00  9.9315E-01  9.8691E-01  5.9077E-01  2.6407E-02  1.0688E+00  7.9560E-01
             1.0973E+00
 PARAMETER:  7.9363E-02  6.5944E-02  1.7639E-01  1.4264E-01  9.3123E-02  8.6821E-02 -4.2633E-01 -3.5341E+00  1.6651E-01 -1.2866E-01
             1.9288E-01
 GRADIENT:   3.0191E-01 -2.5753E-01 -7.7741E-02 -1.8963E-01  3.7212E-01  4.5744E-02  1.8947E-02  4.5824E-03  2.0681E-02 -1.2164E-01
             4.4538E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1704.46324769761        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      626
 NPARAMETR:  9.9525E-01  8.5550E-01  1.1006E+00  1.1236E+00  9.5578E-01  9.9460E-01  6.4211E-01  1.0000E-02  1.0055E+00  7.9007E-01
             1.0960E+00
 PARAMETER:  9.5239E-02 -5.6067E-02  1.9581E-01  2.1650E-01  5.4773E-02  9.4583E-02 -3.4299E-01 -5.0059E+00  1.0549E-01 -1.3563E-01
             1.9164E-01
 GRADIENT:   2.9134E+00  4.8222E+00  1.7269E+00  5.5627E+00 -3.6036E+00  2.0442E-01  2.6408E-03  0.0000E+00 -6.1185E-01  2.4263E-01
            -1.8065E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1704.54489838943        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      802
 NPARAMETR:  9.9314E-01  7.1138E-01  1.1142E+00  1.2101E+00  9.0888E-01  9.9257E-01  6.8427E-01  1.0000E-02  9.4136E-01  7.8395E-01
             1.0918E+00
 PARAMETER:  9.3121E-02 -2.4055E-01  2.0814E-01  2.9071E-01  4.4543E-03  9.2543E-02 -2.7940E-01 -6.2007E+00  3.9574E-02 -1.4341E-01
             1.8782E-01
 GRADIENT:   1.0819E+00  4.5268E-01  2.1944E-01  3.6599E-01 -6.6574E-01 -8.1123E-02 -4.9121E-02  0.0000E+00 -7.1858E-02  6.8207E-02
            -2.2739E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1704.55115934251        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      977
 NPARAMETR:  9.9201E-01  6.5107E-01  1.1170E+00  1.2470E+00  8.8925E-01  9.9216E-01  7.1880E-01  1.0000E-02  9.1549E-01  7.8075E-01
             1.0910E+00
 PARAMETER:  9.1981E-02 -3.2913E-01  2.1066E-01  3.2075E-01 -1.7377E-02  9.2133E-02 -2.3017E-01 -7.1386E+00  1.1702E-02 -1.4750E-01
             1.8711E-01
 GRADIENT:  -8.0293E-02  3.1727E-02  3.0785E-02  8.5528E-02 -1.0077E-02  5.0979E-03  5.5624E-03  0.0000E+00  1.4127E-02  2.9701E-03
             2.7418E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1704.55116135971        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1159
 NPARAMETR:  9.9204E-01  6.4970E-01  1.1167E+00  1.2478E+00  8.8866E-01  9.9214E-01  7.1937E-01  1.0000E-02  9.1490E-01  7.8060E-01
             1.0909E+00
 PARAMETER:  9.2006E-02 -3.3125E-01  2.1042E-01  3.2137E-01 -1.8046E-02  9.2111E-02 -2.2937E-01 -7.1562E+00  1.1059E-02 -1.4769E-01
             1.8701E-01
 GRADIENT:   5.1353E-03  1.2037E-04  2.1305E-03 -2.6738E-03  6.0123E-04  1.3954E-03  1.1195E-03  0.0000E+00 -3.8307E-04 -8.4793E-04
             2.1048E-03

0ITERATION NO.:   51    OBJECTIVE VALUE:  -1704.55116135971        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1181
 NPARAMETR:  9.9204E-01  6.4970E-01  1.1167E+00  1.2478E+00  8.8866E-01  9.9214E-01  7.1937E-01  1.0000E-02  9.1490E-01  7.8060E-01
             1.0909E+00
 PARAMETER:  9.2006E-02 -3.3125E-01  2.1042E-01  3.2137E-01 -1.8046E-02  9.2111E-02 -2.2937E-01 -7.1562E+00  1.1059E-02 -1.4769E-01
             1.8701E-01
 GRADIENT:   5.1353E-03  1.2037E-04  2.1305E-03 -2.6738E-03  6.0123E-04  1.3954E-03  1.1195E-03  0.0000E+00 -3.8307E-04 -8.4793E-04
             2.1048E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1181
 NO. OF SIG. DIGITS IN FINAL EST.:  3.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -1.8222E-04 -1.2685E-02 -1.7050E-04 -1.6654E-03 -2.1448E-02
 SE:             2.9800E-02  9.2089E-03  1.9098E-04  2.8068E-02  2.4054E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9512E-01  1.6835E-01  3.7201E-01  9.5269E-01  3.7258E-01

 ETASHRINKSD(%)  1.6644E-01  6.9149E+01  9.9360E+01  5.9682E+00  1.9414E+01
 ETASHRINKVR(%)  3.3260E-01  9.0482E+01  9.9996E+01  1.1580E+01  3.5060E+01
 EBVSHRINKSD(%)  5.0123E-01  6.9756E+01  9.9334E+01  5.8037E+00  1.8515E+01
 EBVSHRINKVR(%)  9.9995E-01  9.0853E+01  9.9996E+01  1.1271E+01  3.3602E+01
 RELATIVEINF(%)  9.8050E+01  3.0513E-01  6.4494E-04  4.7352E+00  3.8254E+00
 EPSSHRINKSD(%)  4.0596E+01
 EPSSHRINKVR(%)  6.4711E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1704.5511613597052     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -969.40033479596707     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.68
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     5.24
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1704.551       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  6.50E-01  1.12E+00  1.25E+00  8.89E-01  9.92E-01  7.19E-01  1.00E-02  9.15E-01  7.81E-01  1.09E+00
 


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
+        1.19E+03
 
 TH 2
+       -9.28E+00  4.94E+02
 
 TH 3
+        1.02E+02  2.21E+02  3.77E+02
 
 TH 4
+       -6.53E+01  4.80E+02 -5.40E+01  7.75E+02
 
 TH 5
+       -1.61E+02 -5.41E+02 -7.51E+02 -1.36E+01  1.59E+03
 
 TH 6
+        7.20E+01 -3.43E+01 -1.92E+01 -1.29E+01  3.92E+01  1.91E+02
 
 TH 7
+        4.78E+00 -5.98E+00  2.78E+00 -6.94E+00 -7.90E+00  3.89E+00  1.19E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        3.64E+01 -4.88E+01  1.13E+01 -1.68E+01 -2.79E+01  2.81E+01  1.14E+01  0.00E+00  1.27E+02
 
 TH10
+       -9.03E+00  2.85E+01  7.26E+00  1.72E+01 -8.40E+01  1.95E+01  4.25E+00  0.00E+00  2.00E+01  6.42E+01
 
 TH11
+       -4.50E+01  6.74E+00 -3.94E+01  2.05E+01 -1.14E+01 -2.27E+01  4.13E+00  0.00E+00  1.57E+01  7.79E+01  1.14E+02
 
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
+        1.14E+03
 
 TH 2
+       -1.90E+01  4.80E+02
 
 TH 3
+        1.04E+01  2.22E+02  4.00E+02
 
 TH 4
+       -1.29E+01  4.55E+02 -4.13E+01  7.57E+02
 
 TH 5
+       -3.85E+00 -5.25E+02 -7.13E+02 -4.98E+00  1.54E+03
 
 TH 6
+        1.25E+00 -3.02E+00  4.13E+00 -2.57E+00 -1.80E+00  1.99E+02
 
 TH 7
+        1.51E+00 -5.64E+00  4.77E+00 -5.65E+00 -3.83E+00  1.95E-01  6.38E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        3.18E+00 -6.00E+01  5.17E+00  1.25E+01 -6.91E+00 -1.73E+00  1.49E+01  0.00E+00  1.90E+02
 
 TH10
+       -7.17E-01  2.01E+01 -1.64E+01 -5.90E+00 -7.85E+01  1.25E+00  8.37E+00  0.00E+00  3.39E+00  1.45E+02
 
 TH11
+       -8.83E+00 -1.83E+01 -3.26E+01 -8.87E+00  1.09E+01  1.48E+00  2.56E+00  0.00E+00  9.81E+00  4.23E+01  1.96E+02
 
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
+        1.14E+03
 
 TH 2
+       -5.00E+01  4.75E+02
 
 TH 3
+       -8.50E+01  2.21E+02  3.69E+02
 
 TH 4
+        2.46E+01  4.33E+02 -3.00E+01  7.57E+02
 
 TH 5
+        1.59E+02 -5.32E+02 -6.86E+02  1.33E+01  1.55E+03
 
 TH 6
+       -5.42E+01  3.63E+01  1.86E+01 -5.18E+00 -5.46E+01  2.02E+02
 
 TH 7
+       -6.91E+00 -2.56E+01 -2.59E-01 -1.86E+01  1.23E+01 -2.32E+00  7.12E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -2.97E+01 -7.59E+01  1.61E+01  6.37E+01  3.36E+01 -5.40E+01  3.00E+01  0.00E+00  2.99E+02
 
 TH10
+       -2.11E+01 -3.63E-02 -2.87E+01 -3.74E+01 -8.36E+01  2.66E+01  7.53E+00  0.00E+00 -1.27E+01  1.63E+02
 
 TH11
+        6.48E+01 -5.04E+01 -7.91E+01 -4.52E+01  4.56E+01 -1.07E+01  3.18E-01  0.00E+00 -1.80E+01  7.81E+01  2.19E+02
 
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
 #CPUT: Total CPU Time in Seconds,       16.966
Stop Time:
Sat Sep 18 12:19:01 CDT 2021
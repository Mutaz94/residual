Sat Sep 18 09:22:52 CDT 2021
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
$DATA ../../../../data/spa/A1/dat68.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m68.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1462.00491107789        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   7.0765E+00  3.9465E+01 -7.2363E-01  7.5759E+01  7.2735E+01  5.6949E+00  1.0675E+01 -7.9828E+00  1.9672E+01 -3.3587E+01
            -3.9587E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1547.15746679889        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0292E+00  9.6684E-01  9.5434E-01  1.0140E+00  9.4847E-01  9.7097E-01  8.7761E-01  9.9377E-01  8.3070E-01  1.0113E+00
             1.4150E+00
 PARAMETER:  1.2875E-01  6.6279E-02  5.3263E-02  1.1390E-01  4.7097E-02  7.0539E-02 -3.0550E-02  9.3753E-02 -8.5481E-02  1.1125E-01
             4.4714E-01
 GRADIENT:   4.6902E+01  3.7503E+01 -9.2171E+00  6.5177E+01  3.4250E+01 -4.2931E+00  4.7465E-01  1.3923E-01 -8.5619E+00 -7.3714E+00
            -9.9519E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1554.52593935175        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0242E+00  8.6852E-01  6.1637E-01  1.0400E+00  7.3032E-01  9.9457E-01  7.5820E-01  3.1423E-01  8.6441E-01  8.7901E-01
             1.5037E+00
 PARAMETER:  1.2388E-01 -4.0969E-02 -3.8391E-01  1.3919E-01 -2.1428E-01  9.4553E-02 -1.7680E-01 -1.0576E+00 -4.5708E-02 -2.8961E-02
             5.0793E-01
 GRADIENT:   2.0301E+01 -4.7516E+00 -5.4975E+01  7.8784E+01  8.8033E+01  4.0366E+00 -3.2499E+00  8.0542E-01  2.4861E+00 -1.2303E+00
            -5.6282E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1562.79309986402        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0253E+00  7.3083E-01  3.3206E-01  1.0324E+00  4.4789E-01  9.8545E-01  9.7364E-01  1.7201E-01  7.2791E-01  5.1383E-01
             1.6949E+00
 PARAMETER:  1.2500E-01 -2.1357E-01 -1.0024E+00  1.3190E-01 -7.0320E-01  8.5343E-02  7.3288E-02 -1.6602E+00 -2.1758E-01 -5.6586E-01
             6.2764E-01
 GRADIENT:   8.0058E+00  5.4923E+01 -5.7325E+00  1.0674E+02 -9.3823E+00 -3.5628E-01  1.1040E+00  7.1469E-02 -6.6155E+00  1.2009E+00
             5.8461E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1565.69012371996        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  1.0424E+00  6.0872E-01  2.2154E-01  9.7557E-01  3.3623E-01  1.0040E+00  1.0674E+00  1.6272E-01  7.5825E-01  3.0800E-01
             1.6508E+00
 PARAMETER:  1.4151E-01 -3.9640E-01 -1.4072E+00  7.5271E-02 -9.8995E-01  1.0396E-01  1.6526E-01 -1.7157E+00 -1.7674E-01 -1.0777E+00
             6.0126E-01
 GRADIENT:   5.6031E+01  4.5689E+01  1.2838E+01  4.6167E+01 -4.2358E+01  3.4943E+00  1.9451E+00 -5.0503E-01 -4.1439E-01 -1.7308E+00
             2.3066E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1566.36551519022        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0328E+00  5.6995E-01  2.1152E-01  9.6471E-01  3.2162E-01  1.0009E+00  1.1146E+00  1.9795E-01  7.6445E-01  2.6843E-01
             1.6351E+00
 PARAMETER:  1.3228E-01 -4.6221E-01 -1.4534E+00  6.4071E-02 -1.0344E+00  1.0092E-01  2.0847E-01 -1.5197E+00 -1.6859E-01 -1.2152E+00
             5.9171E-01
 GRADIENT:   3.6604E+01  2.1730E+01  1.1221E+01  1.2437E+01 -2.1009E+01  2.2917E+00  1.7374E+00 -9.4365E-01  1.3974E+00 -1.8906E+00
             1.6295E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1566.51721932637        NO. OF FUNC. EVALS.:  75
 CUMULATIVE NO. OF FUNC. EVALS.:      446
 NPARAMETR:  1.0116E+00  5.0105E-01  1.9598E-01  9.5962E-01  2.9428E-01  9.9068E-01  1.2039E+00  5.1086E-01  7.5243E-01  1.9205E-01
             1.6059E+00
 PARAMETER:  1.1156E-01 -5.9105E-01 -1.5297E+00  5.8785E-02 -1.1232E+00  9.0637E-02  2.8553E-01 -5.7165E-01 -1.8445E-01 -1.5500E+00
             5.7371E-01
 GRADIENT:  -1.2422E+01  9.9979E-01 -6.4997E-01 -4.4010E+00  7.0152E-01 -2.8468E+00  2.6563E+00 -2.2833E+00  2.3757E+00  6.0801E-01
             2.3311E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1567.54064135163        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      625
 NPARAMETR:  1.0100E+00  4.9872E-01  2.2775E-01  9.9679E-01  3.1623E-01  9.8999E-01  1.2408E+00  5.1278E-01  7.0735E-01  2.2483E-01
             1.6079E+00
 PARAMETER:  1.0991E-01 -5.9572E-01 -1.3795E+00  9.6788E-02 -1.0513E+00  8.9939E-02  3.1578E-01 -5.6791E-01 -2.4623E-01 -1.3924E+00
             5.7490E-01
 GRADIENT:  -3.5804E+01 -1.4726E+01 -2.9133E+00 -1.0391E+01  1.0970E+01 -3.1068E+00 -1.4780E+00 -2.5701E+00 -2.6613E+00 -3.5772E-01
            -3.6865E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1567.89946408410        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      802
 NPARAMETR:  1.0164E+00  5.3361E-01  2.2935E-01  9.8857E-01  3.2542E-01  9.9177E-01  1.1441E+00  4.6653E-01  7.2202E-01  3.0066E-01
             1.6068E+00
 PARAMETER:  1.1628E-01 -5.2809E-01 -1.3725E+00  8.8502E-02 -1.0226E+00  9.1741E-02  2.3465E-01 -6.6244E-01 -2.2570E-01 -1.1018E+00
             5.7425E-01
 GRADIENT:  -1.9962E+01 -8.6452E+00 -1.7511E+00 -1.0069E+01  3.9672E+00 -1.8924E+00 -1.0454E+00 -1.1549E+00 -1.6452E+00  1.4146E+00
            -2.7200E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1568.39474639953        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      979
 NPARAMETR:  1.0261E+00  5.4504E-01  2.2852E-01  9.8728E-01  3.2701E-01  9.9536E-01  1.1552E+00  6.1179E-01  7.0996E-01  2.3805E-01
             1.6161E+00
 PARAMETER:  1.2580E-01 -5.0690E-01 -1.3761E+00  8.7197E-02 -1.0178E+00  9.5349E-02  2.4429E-01 -3.9136E-01 -2.4255E-01 -1.3353E+00
             5.8002E-01
 GRADIENT:   1.4891E+00 -8.5521E-01 -2.6840E+00  9.4357E-01  4.0363E+00  7.8959E-03  1.1579E+00  7.8475E-01 -1.2510E-01  5.9086E-01
             8.2653E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1568.42606621708        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1154
 NPARAMETR:  1.0253E+00  5.4206E-01  2.2581E-01  9.8490E-01  3.2427E-01  9.9563E-01  1.1563E+00  6.0639E-01  7.1230E-01  2.1547E-01
             1.6153E+00
 PARAMETER:  1.2501E-01 -5.1238E-01 -1.3881E+00  8.4790E-02 -1.0262E+00  9.5623E-02  2.4524E-01 -4.0023E-01 -2.3925E-01 -1.4349E+00
             5.7952E-01
 GRADIENT:   3.6885E-03 -3.2333E-03 -6.6114E-03  3.7564E-04  1.2078E-02 -1.3310E-04  4.8734E-03  5.4517E-04 -4.8113E-04  1.2114E-03
             2.3595E-03

0ITERATION NO.:   51    OBJECTIVE VALUE:  -1568.42606621708        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1176
 NPARAMETR:  1.0253E+00  5.4206E-01  2.2581E-01  9.8490E-01  3.2427E-01  9.9563E-01  1.1563E+00  6.0639E-01  7.1230E-01  2.1547E-01
             1.6153E+00
 PARAMETER:  1.2501E-01 -5.1238E-01 -1.3881E+00  8.4790E-02 -1.0262E+00  9.5623E-02  2.4524E-01 -4.0023E-01 -2.3925E-01 -1.4349E+00
             5.7952E-01
 GRADIENT:   3.6885E-03 -3.2333E-03 -6.6114E-03  3.7564E-04  1.2078E-02 -1.3310E-04  4.8734E-03  5.4517E-04 -4.8113E-04  1.2114E-03
             2.3595E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1176
 NO. OF SIG. DIGITS IN FINAL EST.:  3.6

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -5.7747E-05  1.5048E-02 -1.7358E-02 -1.2368E-02  7.1124E-03
 SE:             2.9669E-02  2.3013E-02  1.3552E-02  2.5991E-02  8.8262E-03
 N:                     100         100         100         100         100

 P VAL.:         9.9845E-01  5.1318E-01  2.0025E-01  6.3417E-01  4.2035E-01

 ETASHRINKSD(%)  6.0509E-01  2.2904E+01  5.4599E+01  1.2926E+01  7.0431E+01
 ETASHRINKVR(%)  1.2065E+00  4.0562E+01  7.9387E+01  2.4181E+01  9.1257E+01
 EBVSHRINKSD(%)  9.5398E-01  2.2246E+01  5.4934E+01  1.3083E+01  7.0621E+01
 EBVSHRINKVR(%)  1.8989E+00  3.9543E+01  7.9690E+01  2.4454E+01  9.1369E+01
 RELATIVEINF(%)  9.6782E+01  5.2823E+00  1.4420E+00  2.1329E+01  3.2959E-01
 EPSSHRINKSD(%)  4.0368E+01
 EPSSHRINKVR(%)  6.4440E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1568.4260662170802     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -833.27523965334206     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    11.58
 Elapsed covariance  time in seconds:     5.46
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1568.426       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  5.42E-01  2.26E-01  9.85E-01  3.24E-01  9.96E-01  1.16E+00  6.06E-01  7.12E-01  2.15E-01  1.62E+00
 


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
 ********************                            STANDARD ERROR OF ESTIMATE                          ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         3.08E-02  9.43E-02  5.24E-02  6.20E-02  4.86E-02  7.11E-02  1.73E-01  3.57E-01  1.06E-01  2.30E-01  1.38E-01
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+       .........
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+       .........
 
 ETA2
+       ......... .........
 
 ETA3
+       ......... ......... .........
 
 ETA4
+       ......... ......... ......... .........
 
 ETA5
+       ......... ......... ......... ......... .........
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+       .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                          COVARIANCE MATRIX OF ESTIMATE                         ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        9.47E-04
 
 TH 2
+       -8.14E-04  8.89E-03
 
 TH 3
+       -3.38E-04  1.26E-03  2.75E-03
 
 TH 4
+       -2.07E-04 -5.33E-04  2.86E-03  3.85E-03
 
 TH 5
+       -4.56E-04  3.21E-03  2.17E-03  1.75E-03  2.36E-03
 
 TH 6
+        3.19E-05 -1.95E-04 -3.80E-04 -2.99E-04 -3.25E-04  5.05E-03
 
 TH 7
+        3.38E-04 -1.08E-02  1.69E-03  4.58E-03 -1.42E-03  7.80E-05  2.99E-02
 
 TH 8
+        2.53E-03 -1.39E-02 -1.53E-02 -1.52E-02 -1.46E-02  3.74E-03 -6.82E-03  1.28E-01
 
 TH 9
+        1.88E-04 -1.17E-03 -1.39E-03 -1.70E-03 -1.62E-03  7.27E-04 -6.39E-03  1.79E-02  1.13E-02
 
 TH10
+       -1.88E-03  1.06E-02  1.09E-02  9.74E-03  1.00E-02 -2.52E-03 -3.41E-03 -6.52E-02 -2.53E-03  5.27E-02
 
 TH11
+        1.20E-03 -3.72E-03 -6.80E-04 -1.78E-04 -1.73E-03  8.86E-04 -1.24E-03  1.17E-02  3.29E-03 -2.51E-03  1.91E-02
 
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
 ********************                          CORRELATION MATRIX OF ESTIMATE                        ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        3.08E-02
 
 TH 2
+       -2.81E-01  9.43E-02
 
 TH 3
+       -2.09E-01  2.55E-01  5.24E-02
 
 TH 4
+       -1.08E-01 -9.11E-02  8.80E-01  6.20E-02
 
 TH 5
+       -3.05E-01  7.00E-01  8.52E-01  5.81E-01  4.86E-02
 
 TH 6
+        1.46E-02 -2.91E-02 -1.02E-01 -6.79E-02 -9.41E-02  7.11E-02
 
 TH 7
+        6.35E-02 -6.61E-01  1.86E-01  4.27E-01 -1.69E-01  6.34E-03  1.73E-01
 
 TH 8
+        2.30E-01 -4.12E-01 -8.20E-01 -6.85E-01 -8.43E-01  1.47E-01 -1.10E-01  3.57E-01
 
 TH 9
+        5.75E-02 -1.17E-01 -2.51E-01 -2.58E-01 -3.14E-01  9.64E-02 -3.48E-01  4.73E-01  1.06E-01
 
 TH10
+       -2.67E-01  4.92E-01  9.03E-01  6.84E-01  8.99E-01 -1.54E-01 -8.58E-02 -7.95E-01 -1.04E-01  2.30E-01
 
 TH11
+        2.82E-01 -2.86E-01 -9.38E-02 -2.07E-02 -2.57E-01  9.02E-02 -5.16E-02  2.36E-01  2.24E-01 -7.90E-02  1.38E-01
 
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
 ********************                      INVERSE COVARIANCE MATRIX OF ESTIMATE                     ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.25E+03
 
 TH 2
+        6.13E+01  2.20E+03
 
 TH 3
+       -1.54E+02  4.05E+03  1.89E+04
 
 TH 4
+        1.81E+01 -1.95E+01 -4.27E+03  2.53E+03
 
 TH 5
+        7.91E+01 -6.51E+03 -1.78E+04  2.15E+03  2.77E+04
 
 TH 6
+        2.00E+01 -3.91E+01 -9.18E+00 -5.07E+01 -2.00E+02  2.22E+02
 
 TH 7
+        2.57E+01  2.35E+02  1.02E+01 -9.81E+00 -1.49E+02 -2.01E+01  1.26E+02
 
 TH 8
+        7.82E+00 -5.26E+01 -1.76E+02  7.25E+01  3.19E+02 -4.79E+00  7.40E-01  4.52E+01
 
 TH 9
+        1.25E+01 -1.68E+01 -3.01E+02  5.72E+01  7.17E+02 -4.06E+01  6.45E+01 -3.41E+01  2.23E+02
 
 TH10
+        5.57E+01 -8.72E+01 -7.72E+02  9.96E+01 -2.64E+02  5.83E+01 -5.91E+00  2.68E+01 -1.09E+02  2.58E+02
 
 TH11
+       -6.40E+01  2.16E+01 -1.22E+02  2.19E+01  2.68E+02 -2.18E+01  2.77E+01 -5.36E+00  2.47E+01 -3.77E+01  7.76E+01
 
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
 #CPUT: Total CPU Time in Seconds,       17.121
Stop Time:
Sat Sep 18 09:23:11 CDT 2021
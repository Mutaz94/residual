Wed Sep 29 15:47:03 CDT 2021
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
$DATA ../../../../data/spa/SL2/dat37.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m37.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1621.06688245785        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3585E+02  1.4593E+01  4.3993E+00  5.5018E+01  2.8630E+01  6.0761E+01 -2.4416E+01 -6.0655E+00 -1.0321E+01 -1.9265E+01
            -4.0908E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1629.29056694319        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:      196
 NPARAMETR:  1.0152E+00  1.0931E+00  9.5231E-01  9.6344E-01  1.0390E+00  9.7878E-01  1.3407E+00  1.0308E+00  1.0491E+00  1.1005E+00
             1.0785E+00
 PARAMETER:  1.1509E-01  1.8900E-01  5.1131E-02  6.2750E-02  1.3821E-01  7.8551E-02  3.9321E-01  1.3037E-01  1.4791E-01  1.9576E-01
             1.7557E-01
 GRADIENT:   1.6718E+01 -2.0923E+00 -1.2414E+01  1.6941E+01  1.8900E+01 -2.9188E+00  1.2704E+00  2.4073E+00  1.4447E+01  2.1503E+00
            -1.5709E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1630.54842717888        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      376
 NPARAMETR:  1.0166E+00  8.3828E-01  1.0732E+00  1.1375E+00  9.7383E-01  1.0121E+00  1.6973E+00  1.0255E+00  8.5099E-01  1.1491E+00
             1.0768E+00
 PARAMETER:  1.1646E-01 -7.6403E-02  1.7067E-01  2.2887E-01  7.3482E-02  1.1206E-01  6.2903E-01  1.2520E-01 -6.1350E-02  2.3895E-01
             1.7398E-01
 GRADIENT:   2.3720E+01  1.3507E+01 -1.0421E+01  3.5014E+01  4.0257E+00  1.1024E+01 -5.2440E-01  1.5836E+00  3.8087E+00  1.0973E+01
            -2.1218E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1632.13821799108        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      553
 NPARAMETR:  1.0032E+00  7.4770E-01  1.0295E+00  1.1620E+00  9.0344E-01  9.7999E-01  1.8319E+00  9.4786E-01  7.9225E-01  9.9045E-01
             1.0844E+00
 PARAMETER:  1.0324E-01 -1.9075E-01  1.2904E-01  2.5018E-01 -1.5403E-03  7.9792E-02  7.0538E-01  4.6450E-02 -1.3288E-01  9.0402E-02
             1.8099E-01
 GRADIENT:  -4.5529E+00  3.2954E+00  4.1876E+00 -3.1218E+00 -5.6711E+00 -7.7936E-01 -2.2636E+00 -6.5261E-01 -2.5857E+00 -1.3473E+00
            -1.5500E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1632.46077174710        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      728
 NPARAMETR:  1.0013E+00  6.2297E-01  1.1531E+00  1.2486E+00  9.0862E-01  9.7887E-01  2.0904E+00  1.0715E+00  7.5179E-01  1.0175E+00
             1.0809E+00
 PARAMETER:  1.0126E-01 -3.7326E-01  2.4243E-01  3.2201E-01  4.1689E-03  7.8640E-02  8.3734E-01  1.6907E-01 -1.8529E-01  1.1735E-01
             1.7780E-01
 GRADIENT:  -4.2223E+00  6.4391E+00  7.7244E+00  7.6631E+00 -1.2930E+01 -3.4840E-01 -2.9627E+00 -1.0548E+00 -3.7478E+00 -7.9092E-01
            -3.0918E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1632.65556927249        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      914            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0038E+00  6.1896E-01  1.1338E+00  1.2410E+00  9.1254E-01  9.8018E-01  2.1356E+00  1.0626E+00  7.6778E-01  1.0198E+00
             1.0874E+00
 PARAMETER:  1.0381E-01 -3.7971E-01  2.2558E-01  3.1595E-01  8.4775E-03  7.9985E-02  8.5877E-01  1.6073E-01 -1.6426E-01  1.1960E-01
             1.8383E-01
 GRADIENT:   3.8976E+02  4.8424E+01  3.0657E+00  3.4526E+02  8.1722E+00  4.3447E+01  4.5266E+01  9.4263E-01  1.2883E+01  5.6359E-01
             1.8732E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1632.68595140124        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1090
 NPARAMETR:  9.9946E-01  5.9660E-01  1.1440E+00  1.2529E+00  9.1033E-01  9.7715E-01  2.1598E+00  1.0580E+00  7.6107E-01  1.0285E+00
             1.0869E+00
 PARAMETER:  9.9463E-02 -4.1651E-01  2.3450E-01  3.2548E-01  6.0490E-03  7.6888E-02  8.7001E-01  1.5636E-01 -1.7303E-01  1.2806E-01
             1.8333E-01
 GRADIENT:  -7.7143E+00 -1.0407E+00 -1.0152E+00 -7.5993E+00  1.1874E+00 -8.9525E-01 -1.0226E+00 -9.7091E-02  3.5397E-01  3.9244E-01
             2.2837E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1632.68844495133        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1265
 NPARAMETR:  9.9751E-01  5.8387E-01  1.1512E+00  1.2592E+00  9.0797E-01  9.7599E-01  2.1886E+00  1.0682E+00  7.5487E-01  1.0241E+00
             1.0864E+00
 PARAMETER:  9.7508E-02 -4.3807E-01  2.4082E-01  3.3048E-01  3.4613E-03  7.5702E-02  8.8328E-01  1.6596E-01 -1.8121E-01  1.2382E-01
             1.8285E-01
 GRADIENT:  -1.1786E+01 -1.4878E+00 -1.1157E-01 -1.0196E+01 -1.8244E-01 -1.3154E+00 -1.3096E+00 -4.6274E-02 -3.8245E-01  2.5257E-02
            -7.2332E-02

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1632.69169361034        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1440
 NPARAMETR:  9.9514E-01  5.5646E-01  1.1670E+00  1.2745E+00  9.0368E-01  9.7456E-01  2.2564E+00  1.0892E+00  7.4491E-01  1.0169E+00
             1.0859E+00
 PARAMETER:  9.5125E-02 -4.8616E-01  2.5440E-01  3.4258E-01 -1.2815E-03  7.4234E-02  9.1375E-01  1.8540E-01 -1.9449E-01  1.1672E-01
             1.8242E-01
 GRADIENT:  -1.6338E+01 -1.8370E+00  1.0255E+00 -1.2712E+01 -2.1189E+00 -1.7762E+00 -1.6561E+00  7.8409E-02 -1.3124E+00 -6.2657E-01
            -4.2670E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1632.69788528077        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1624
 NPARAMETR:  9.9409E-01  5.3941E-01  1.1765E+00  1.2839E+00  9.0163E-01  9.7595E-01  2.2987E+00  1.1007E+00  7.4290E-01  1.0169E+00
             1.0861E+00
 PARAMETER:  9.4076E-02 -5.1728E-01  2.6255E-01  3.4992E-01 -3.5500E-03  7.5657E-02  9.3233E-01  1.9592E-01 -1.9719E-01  1.1672E-01
             1.8261E-01
 GRADIENT:  -1.8069E+01 -2.3540E+00  1.2691E+00 -1.4623E+01 -2.9522E+00 -1.1347E+00 -1.8000E+00  2.3281E-01 -1.0116E+00 -5.2050E-01
            -2.6973E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1632.77632533266        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1801
 NPARAMETR:  1.0022E+00  5.3801E-01  1.1755E+00  1.2817E+00  9.0318E-01  9.7859E-01  2.3244E+00  1.0907E+00  7.4462E-01  1.0236E+00
             1.0864E+00
 PARAMETER:  1.0218E-01 -5.1987E-01  2.6173E-01  3.4817E-01 -1.8285E-03  7.8353E-02  9.4346E-01  1.8681E-01 -1.9488E-01  1.2336E-01
             1.8286E-01
 GRADIENT:   8.2771E-01 -3.2405E+00  1.0929E+00 -2.0517E+01 -1.3559E+00  1.0194E-01 -4.5077E-02 -1.0312E-01 -1.1591E-01 -5.8967E-03
            -7.6391E-02

0ITERATION NO.:   54    OBJECTIVE VALUE:  -1632.81624971419        NO. OF FUNC. EVALS.: 136
 CUMULATIVE NO. OF FUNC. EVALS.:     1937
 NPARAMETR:  1.0023E+00  5.4094E-01  1.1734E+00  1.2835E+00  9.0391E-01  9.7853E-01  2.3266E+00  1.0913E+00  7.4567E-01  1.0241E+00
             1.0866E+00
 PARAMETER:  1.0125E-01 -5.1319E-01  2.6057E-01  3.5044E-01 -1.2668E-03  7.7696E-02  9.4354E-01  1.8749E-01 -1.9491E-01  1.2335E-01
             1.8293E-01
 GRADIENT:  -2.3989E+00  4.1460E+04  8.1692E+04  6.0696E+04 -2.1278E+05 -2.4197E-01 -2.6563E-01  1.4673E-02 -2.4641E-01 -7.0003E-02
            -9.8141E-02
 NUMSIGDIG:         1.7         2.3         2.3         2.3         2.3         1.9         2.7         3.0         1.8         2.1
                    2.9

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1937
 NO. OF SIG. DIGITS IN FINAL EST.:  1.7

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.3518E-03  2.6331E-02 -3.7128E-02 -2.6649E-02 -2.4740E-02
 SE:             2.9858E-02  2.0609E-02  1.5843E-02  2.2245E-02  2.0572E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3722E-01  2.0137E-01  1.9104E-02  2.3092E-01  2.2914E-01

 ETASHRINKSD(%)  1.0000E-10  3.0958E+01  4.6925E+01  2.5477E+01  3.1080E+01
 ETASHRINKVR(%)  1.0000E-10  5.2332E+01  7.1830E+01  4.4463E+01  5.2501E+01
 EBVSHRINKSD(%)  5.5049E-01  3.2932E+01  5.0660E+01  2.3891E+01  2.7371E+01
 EBVSHRINKVR(%)  1.0979E+00  5.5019E+01  7.5656E+01  4.2074E+01  4.7251E+01
 RELATIVEINF(%)  9.8201E+01  6.3976E+00  4.9624E+00  8.5487E+00  1.0960E+01
 EPSSHRINKSD(%)  4.4619E+01
 EPSSHRINKVR(%)  6.9329E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1632.8162497141850     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -897.66542315044683     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.75
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0S MATRIX UNOBTAINABLE
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:     6.56
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1632.816       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  5.42E-01  1.17E+00  1.28E+00  9.04E-01  9.78E-01  2.32E+00  1.09E+00  7.45E-01  1.02E+00  1.09E+00
 


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
+        5.18E+07
 
 TH 2
+        2.73E+02  6.88E+06
 
 TH 3
+        2.69E+02  4.63E+03  5.69E+06
 
 TH 4
+        1.74E+02 -2.13E+02  2.73E+03  2.62E+06
 
 TH 5
+       -5.81E+07  1.51E+03 -1.92E+07  1.13E+03  6.51E+07
 
 TH 6
+        2.87E+00  3.63E+02  3.34E+02  2.25E+02 -1.13E+03  2.04E+02
 
 TH 7
+        2.39E+06  1.25E+02  8.45E+01  4.64E+01 -2.68E+06  1.52E-01  1.11E+05
 
 TH 8
+        2.56E+07 -1.58E+04 -1.44E+04 -9.75E+03  4.86E+04 -1.38E-01  1.18E+06  3.02E+01
 
 TH 9
+        2.41E+00 -5.66E+02 -5.06E+02 -3.55E+02  1.70E+03 -5.60E-01 -1.67E+06  3.61E+00  1.50E+02
 
 TH10
+        6.37E-01 -1.48E+02 -1.44E+02 -1.06E+02  3.86E+02  4.75E-01 -1.92E+06  1.22E+01  2.59E+00  6.41E+01
 
 TH11
+       -8.46E+00 -5.30E+04 -4.81E+04 -3.27E+04  1.63E+05  2.32E+00  1.12E+00  5.13E+00  9.73E+00  1.13E+01  1.80E+02
 
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
 #CPUT: Total CPU Time in Seconds,       33.358
Stop Time:
Wed Sep 29 15:47:38 CDT 2021

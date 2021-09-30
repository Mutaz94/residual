Wed Sep 29 04:30:20 CDT 2021
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
$DATA ../../../../data/int/SL3/dat58.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      982
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      882
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
 RAW OUTPUT FILE (FILE): m58.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -399.819070036282        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.2960E+02  1.0871E+02  8.4850E+01  1.5434E+02  8.6668E+01  5.9477E+01 -7.8295E+01 -2.0790E+02 -1.1299E+02 -5.8030E+01
            -6.1759E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2504.20812711909        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  9.7007E-01  1.1727E+00  1.0239E+00  9.3489E-01  1.0959E+00  8.1157E-01  1.0675E+00  9.8219E-01  9.4025E-01  1.1055E+00
             3.7813E+00
 PARAMETER:  6.9611E-02  2.5931E-01  1.2362E-01  3.2671E-02  1.9155E-01 -1.0878E-01  1.6532E-01  8.2029E-02  3.8393E-02  2.0032E-01
             1.4301E+00
 GRADIENT:   1.1677E+01 -3.2381E+00 -9.6228E+00 -9.8805E+00 -8.9236E+00 -3.5608E+01  1.3866E+01  7.4311E+00  1.3763E+01  1.2448E+00
             5.7557E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2551.79752079129        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  9.3068E-01  1.2157E+00  6.9099E+00  9.8095E-01  1.9580E+00  7.8828E-01  1.1903E+00  5.6357E-01  1.1263E+00  1.6763E+00
             3.4371E+00
 PARAMETER:  2.8158E-02  2.9532E-01  2.0330E+00  8.0765E-02  7.7190E-01 -1.3790E-01  2.7421E-01 -4.7346E-01  2.1890E-01  6.1659E-01
             1.3346E+00
 GRADIENT:  -9.9611E+01  2.4129E+01 -2.1985E+00  2.5868E+01  2.8481E+01 -5.5972E+01  2.9958E+01 -2.1759E-01  3.8408E+01 -1.7762E+01
             4.8826E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2635.71473705272        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      250
 NPARAMETR:  9.2175E-01  9.7465E-01  9.6107E+00  1.0967E+00  1.9405E+00  8.7642E-01  1.3364E+00  2.3822E+00  6.1808E-01  1.8220E+00
             2.6192E+00
 PARAMETER:  1.8520E-02  7.4327E-02  2.3629E+00  1.9231E-01  7.6297E-01 -3.1908E-02  3.9000E-01  9.6802E-01 -3.8113E-01  6.9994E-01
             1.0629E+00
 GRADIENT:  -1.0230E+02 -1.1619E+01 -5.0565E+00 -4.0979E+00 -6.3671E+00 -2.1854E+01 -5.6731E+00  8.3930E-01  2.2836E+00 -1.7307E+01
            -1.6337E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2642.90600359432        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      431
 NPARAMETR:  9.6039E-01  8.5664E-01  1.9931E+01  1.1788E+00  2.1522E+00  9.2593E-01  1.7050E+00  3.4706E+00  4.1920E-01  2.0766E+00
             2.6327E+00
 PARAMETER:  5.9586E-02 -5.4740E-02  3.0923E+00  2.6454E-01  8.6651E-01  2.3042E-02  6.3355E-01  1.3443E+00 -7.6942E-01  8.3075E-01
             1.0680E+00
 GRADIENT:   9.2143E+00  2.0903E-01 -2.9541E+00  5.8079E+00  9.1368E+00  3.0534E+00  1.6518E+00 -7.5048E-01  1.9234E+00  4.0665E+00
             3.4501E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2644.16264872935        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      611
 NPARAMETR:  9.5626E-01  7.7736E-01  3.7514E+01  1.2115E+00  2.1857E+00  9.0787E-01  1.9071E+00  5.3374E+00  2.8417E-01  2.0463E+00
             2.6281E+00
 PARAMETER:  5.5279E-02 -1.5185E-01  3.7247E+00  2.9185E-01  8.8193E-01  3.3446E-03  7.4559E-01  1.7747E+00 -1.1582E+00  8.1603E-01
             1.0662E+00
 GRADIENT:  -1.5168E+00 -9.8188E+00 -2.2762E+00 -7.1062E+00  5.8296E+00 -3.7995E+00 -5.7551E-01  1.3790E+00 -1.0220E+00  6.0221E-01
            -2.2542E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2644.95144671080        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      790
 NPARAMETR:  9.5569E-01  8.7553E-01  4.7409E+01  1.1655E+00  2.1750E+00  9.1486E-01  1.6928E+00  6.1844E+00  3.7018E-01  2.0011E+00
             2.6322E+00
 PARAMETER:  5.4681E-02 -3.2927E-02  3.9588E+00  2.5315E-01  8.7701E-01  1.1015E-02  6.2641E-01  1.9220E+00 -8.9376E-01  7.9369E-01
             1.0678E+00
 GRADIENT:  -3.8242E+00 -1.0459E+00 -2.5921E+00  4.6613E+00 -1.0042E+00 -1.4565E+00  2.8082E-02  4.2459E+00  6.2210E-01 -2.7674E+00
            -3.2194E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2646.84969919728        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      969
 NPARAMETR:  9.5457E-01  1.0705E+00  7.2771E+01  1.0252E+00  2.2682E+00  9.1200E-01  1.4971E+00  7.4139E+00  2.5246E-01  2.1269E+00
             2.6178E+00
 PARAMETER:  5.3503E-02  1.6816E-01  4.3873E+00  1.2490E-01  9.1900E-01  7.8802E-03  5.0354E-01  2.1034E+00 -1.2765E+00  8.5469E-01
             1.0623E+00
 GRADIENT:  -6.6999E+00 -4.8203E+00 -5.6908E-01 -8.5560E+00  8.9668E+00 -2.7328E+00  2.2196E+00 -3.7479E-01  9.4218E-01  2.7351E+00
            -2.8910E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2647.69461924589        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1144
 NPARAMETR:  9.5702E-01  1.2657E+00  2.7770E+02  8.9539E-01  2.2487E+00  9.1802E-01  1.3022E+00  1.2748E+01  8.8329E-02  2.1051E+00
             2.6220E+00
 PARAMETER:  5.6072E-02  3.3563E-01  5.7266E+00 -1.0497E-02  9.1035E-01  1.4465E-02  3.6405E-01  2.6454E+00 -2.3267E+00  8.4435E-01
             1.0639E+00
 GRADIENT:  -5.4700E-01 -2.8072E+00 -9.6190E-02 -4.4125E+00  1.2730E+00 -2.9004E-01 -5.6956E-01 -1.0311E-01  1.2337E-01 -1.0513E-01
             3.3666E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2647.97124741374        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1322
 NPARAMETR:  9.5695E-01  1.1732E+00  4.8106E+03  9.5862E-01  2.2501E+00  9.1802E-01  1.4108E+00  3.7042E+01  1.0256E-02  2.1084E+00
             2.6221E+00
 PARAMETER:  5.5994E-02  2.5975E-01  8.5786E+00  5.7743E-02  9.1096E-01  1.4468E-02  4.4417E-01  3.7121E+00 -4.4799E+00  8.4591E-01
             1.0640E+00
 GRADIENT:  -8.7167E-01  1.5147E+00 -9.0673E-03  2.1621E+00  2.4505E-01 -1.8351E-01 -1.9911E-01 -4.6869E-03  3.2947E-03  1.0147E-01
            -4.5971E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2647.98315997716        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1497
 NPARAMETR:  9.5729E-01  1.1697E+00  6.4161E+04  9.6004E-01  2.2485E+00  9.1793E-01  1.4140E+00  9.8925E+01  1.0000E-02  2.1072E+00
             2.6224E+00
 PARAMETER:  5.6352E-02  2.5675E-01  1.1169E+01  5.9222E-02  9.1029E-01  1.4361E-02  4.4642E-01  4.6944E+00 -6.4724E+00  8.4535E-01
             1.0641E+00
 GRADIENT:  -6.8954E+00  1.5144E+00 -7.4681E-04  1.9808E+00 -1.7482E-01 -2.9397E-01 -6.5255E-02 -2.7542E-04  0.0000E+00  1.3133E-02
             4.1547E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2647.98418197634        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1682
 NPARAMETR:  9.5735E-01  1.1706E+00  3.0124E+05  9.5882E-01  2.2470E+00  9.1876E-01  1.4130E+00  1.4631E+02  1.0000E-02  2.1090E+00
             2.6225E+00
 PARAMETER:  5.6415E-02  2.5754E-01  1.2716E+01  5.7948E-02  9.0959E-01  1.5268E-02  4.4570E-01  5.0857E+00 -7.1619E+00  8.4621E-01
             1.0641E+00
 GRADIENT:  -1.7060E+01  2.2807E+00 -1.8702E-04  3.0824E+00 -7.6500E-01  5.9178E-01 -1.5314E-01 -3.5043E-05  0.0000E+00  3.6847E-01
             5.7511E-01

0ITERATION NO.:   58    OBJECTIVE VALUE:  -2647.98425313236        NO. OF FUNC. EVALS.: 106
 CUMULATIVE NO. OF FUNC. EVALS.:     1788
 NPARAMETR:  9.5734E-01  1.1707E+00  2.6960E+05  9.5883E-01  2.2472E+00  9.1850E-01  1.4129E+00  1.3223E+02  1.0000E-02  2.1088E+00
             2.6224E+00
 PARAMETER:  5.6380E-02  2.5793E-01  1.2732E+01  5.8237E-02  9.0960E-01  1.5103E-02  4.4537E-01  5.0349E+00 -7.1619E+00  8.4614E-01
             1.0640E+00
 GRADIENT:  -5.2088E-02  3.6426E-01  2.3219E-04  5.6202E-01 -3.2244E-02  4.4223E-02 -7.8298E-02  1.5409E-03  0.0000E+00  7.6206E-03
            -1.2450E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1788
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.3685E-03 -2.6719E-03  1.8141E-05 -9.9566E-04 -1.4150E-02
 SE:             2.9343E-02  2.7953E-02  1.2971E-05  3.0588E-04  2.6690E-02
 N:                     100         100         100         100         100

 P VAL.:         9.3567E-01  9.2385E-01  1.6191E-01  1.1338E-03  5.9600E-01

 ETASHRINKSD(%)  1.6957E+00  6.3535E+00  9.9957E+01  9.8975E+01  1.0585E+01
 ETASHRINKVR(%)  3.3627E+00  1.2303E+01  1.0000E+02  9.9989E+01  2.0049E+01
 EBVSHRINKSD(%)  1.8480E+00  5.9100E+00  9.9971E+01  9.9110E+01  7.8076E+00
 EBVSHRINKVR(%)  3.6619E+00  1.1471E+01  1.0000E+02  9.9992E+01  1.5006E+01
 RELATIVEINF(%)  9.6203E+01  1.2027E+01  5.5752E-06  1.0693E-03  5.6844E+01
 EPSSHRINKSD(%)  1.5323E+01
 EPSSHRINKVR(%)  2.8298E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          882
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1621.0075725730426     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2647.9842531323570     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1026.9766805593144     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    47.54
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    13.61
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2647.984       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.57E-01  1.17E+00  3.06E+05  9.59E-01  2.25E+00  9.19E-01  1.41E+00  1.39E+02  1.00E-02  2.11E+00  2.62E+00
 


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
+        1.39E+03
 
 TH 2
+       -1.82E+01  3.63E+02
 
 TH 3
+        1.29E-07 -1.15E-07  7.60E-15
 
 TH 4
+       -6.34E+01  5.40E+02 -1.15E-08  1.07E+03
 
 TH 5
+       -1.19E+00 -7.35E+00  1.74E-08 -1.25E+01  4.26E+01
 
 TH 6
+        7.56E+00  4.99E-01  3.12E-07 -1.24E+01 -6.29E-01  2.12E+02
 
 TH 7
+        6.68E+00  9.79E+00 -3.84E-08 -1.21E+02  5.99E-01 -1.66E+00  7.67E+01
 
 TH 8
+        2.50E-03  5.06E-04 -4.52E-11 -2.51E-03  1.38E-04  2.23E-04 -9.81E-04  1.87E-07
 
 TH 9
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH10
+        1.34E-01 -2.07E-02 -1.51E-08  4.12E-01 -4.52E+00 -3.99E-01 -1.15E+00 -4.28E-05  0.00E+00  2.98E+01
 
 TH11
+       -1.81E+01 -1.66E+01 -6.46E-09 -4.14E+01  1.48E+00  3.28E+00  7.57E+00 -1.52E-04  0.00E+00  4.90E+00  1.70E+02
 
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
 #CPUT: Total CPU Time in Seconds,       61.288
Stop Time:
Wed Sep 29 04:31:23 CDT 2021

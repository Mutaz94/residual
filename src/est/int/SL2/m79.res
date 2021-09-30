Wed Sep 29 03:33:11 CDT 2021
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
$DATA ../../../../data/int/SL2/dat79.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
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

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m79.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2086.48940772697        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1254E+02  1.6098E+02  6.3459E+01  4.5413E+01  8.7303E+01  5.6882E+01 -8.9656E+01 -1.6127E+02 -4.8037E+01 -2.5490E+01
            -3.2833E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -3038.03114436045        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0536E+00  1.0217E+00  1.0386E+00  1.0514E+00  1.0034E+00  8.9287E-01  1.1052E+00  1.0664E+00  9.5174E-01  9.8798E-01
             2.3747E+00
 PARAMETER:  1.5225E-01  1.2149E-01  1.3792E-01  1.5012E-01  1.0343E-01 -1.3312E-02  2.0003E-01  1.6429E-01  5.0535E-02  8.7902E-02
             9.6486E-01
 GRADIENT:   1.7650E+02  2.5187E+01 -4.6346E+00  4.8344E+01 -1.2918E+01 -1.1190E+01  2.9966E+00  2.7176E+00  8.6033E+00  5.0571E+00
             2.5543E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -3043.72188594827        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0419E+00  1.0386E+00  1.2605E+00  1.0410E+00  1.0864E+00  9.3213E-01  1.0671E+00  1.8056E+00  8.7697E-01  8.2308E-01
             2.3039E+00
 PARAMETER:  1.4103E-01  1.3787E-01  3.3150E-01  1.4023E-01  1.8291E-01  2.9719E-02  1.6491E-01  6.9089E-01 -3.1278E-02 -9.4696E-02
             9.3462E-01
 GRADIENT:   1.4579E+02  2.2501E+01 -5.6908E+00  3.0768E+01 -8.9297E+00  6.4362E+00 -1.1909E+01  1.3627E+01 -5.5041E+00 -1.3910E+01
             2.0853E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -3055.87932583424        NO. OF FUNC. EVALS.:  93
 CUMULATIVE NO. OF FUNC. EVALS.:      250
 NPARAMETR:  1.0005E+00  1.0870E+00  1.3207E+00  9.9940E-01  1.1498E+00  9.2065E-01  1.0468E+00  1.8505E+00  9.8933E-01  1.0979E+00
             2.1059E+00
 PARAMETER:  1.0050E-01  1.8346E-01  3.7820E-01  9.9395E-02  2.3960E-01  1.7321E-02  1.4572E-01  7.1547E-01  8.9274E-02  1.9338E-01
             8.4472E-01
 GRADIENT:  -7.2617E+01 -1.7813E+01 -5.0310E+00 -5.5520E+00 -1.9432E+01 -8.6956E+00 -7.9907E-03  5.9969E+00  9.1653E+00  8.9414E+00
             3.7278E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -3066.06828702701        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      430
 NPARAMETR:  1.0504E+00  1.2927E+00  2.3272E+00  9.2826E-01  1.5577E+00  9.3938E-01  9.7745E-01  3.2714E+00  9.2015E-01  1.0968E+00
             2.0615E+00
 PARAMETER:  1.4917E-01  3.5670E-01  9.4466E-01  2.5557E-02  5.4321E-01  3.7462E-02  7.7196E-02  1.2852E+00  1.6777E-02  1.9241E-01
             8.2345E-01
 GRADIENT:   5.1029E+01  2.8159E+01 -2.2855E+01  2.2704E+01  2.7775E+01 -5.5801E-01 -1.7322E+00  4.1784E+00  2.0714E+00 -1.1356E+01
            -9.4594E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -3066.18370774937        NO. OF FUNC. EVALS.: 152
 CUMULATIVE NO. OF FUNC. EVALS.:      582
 NPARAMETR:  1.0501E+00  1.2929E+00  2.3218E+00  9.2801E-01  1.5542E+00  9.3656E-01  9.9191E-01  3.2567E+00  9.0267E-01  1.0988E+00
             2.0659E+00
 PARAMETER:  1.4890E-01  3.5687E-01  9.4235E-01  2.5291E-02  5.4095E-01  3.4457E-02  9.1874E-02  1.2807E+00 -2.3928E-03  1.9420E-01
             8.2558E-01
 GRADIENT:   2.1309E+02  1.0940E+02 -1.4592E+01  4.1292E+01  6.9984E+01  6.5902E+00  9.7666E-01  1.1899E+01  1.9470E+00 -8.6523E+00
             9.9835E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -3066.18636759662        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      652
 NPARAMETR:  1.0500E+00  1.2923E+00  2.3224E+00  9.2802E-01  1.5518E+00  9.2408E-01  9.8960E-01  3.2515E+00  8.9117E-01  1.0987E+00
             2.0658E+00
 PARAMETER:  1.4877E-01  3.5646E-01  9.4261E-01  2.5298E-02  5.3942E-01  2.1045E-02  8.9549E-02  1.2791E+00 -1.5224E-02  1.9417E-01
             8.2554E-01
 GRADIENT:   2.1373E+02  1.0991E+02 -1.4360E+01  4.0571E+01  6.8154E+01  1.4961E+00 -1.8766E-02  1.1627E+01  2.1202E-01 -8.6372E+00
             9.3630E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -3066.19418855032        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      722
 NPARAMETR:  1.0496E+00  1.2910E+00  2.3240E+00  9.2803E-01  1.5462E+00  9.1189E-01  9.8928E-01  3.2392E+00  8.8145E-01  1.0987E+00
             2.0655E+00
 PARAMETER:  1.4843E-01  3.5543E-01  9.4329E-01  2.5308E-02  5.3580E-01  7.7677E-03  8.9220E-02  1.2753E+00 -2.6192E-02  1.9411E-01
             8.2539E-01
 GRADIENT:   2.1373E+02  1.1022E+02 -1.3742E+01  3.8777E+01  6.4195E+01 -3.6347E+00 -7.2188E-01  1.1279E+01 -1.2211E+00 -8.3466E+00
             8.6525E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -3066.20499406521        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      793
 NPARAMETR:  1.0489E+00  1.2882E+00  2.3274E+00  9.2805E-01  1.5345E+00  8.9821E-01  9.8933E-01  3.2133E+00  8.7068E-01  1.0985E+00
             2.0649E+00
 PARAMETER:  1.4772E-01  3.5323E-01  9.4474E-01  2.5328E-02  5.2822E-01 -7.3519E-03  8.9268E-02  1.2673E+00 -3.8482E-02  1.9399E-01
             8.2507E-01
 GRADIENT:   2.1259E+02  1.1028E+02 -1.2389E+01  3.4932E+01  5.6092E+01 -9.5625E+00 -1.5399E+00  1.0681E+01 -2.8918E+00 -7.6778E+00
             7.5687E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -3066.21298336365        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      865
 NPARAMETR:  1.0478E+00  1.2843E+00  2.3319E+00  9.2807E-01  1.5190E+00  8.8798E-01  9.8978E-01  3.1784E+00  8.6341E-01  1.0984E+00
             2.0639E+00
 PARAMETER:  1.4673E-01  3.5020E-01  9.4669E-01  2.5354E-02  5.1804E-01 -1.8803E-02  8.9724E-02  1.2564E+00 -4.6869E-02  1.9383E-01
             8.2462E-01
 GRADIENT:   2.1016E+02  1.0990E+02 -1.0494E+01  2.9629E+01  4.5340E+01 -1.4078E+01 -2.1526E+00  9.9458E+00 -4.1651E+00 -6.7979E+00
             6.4081E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -3066.80851005061        NO. OF FUNC. EVALS.: 143
 CUMULATIVE NO. OF FUNC. EVALS.:     1008             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0479E+00  1.2842E+00  2.3276E+00  9.2834E-01  1.5117E+00  9.4219E-01  9.9336E-01  3.1557E+00  8.6085E-01  1.0977E+00
             2.0684E+00
 PARAMETER:  1.4679E-01  3.5011E-01  9.4484E-01  2.5640E-02  5.1325E-01  4.0456E-02  9.3338E-02  1.2492E+00 -4.9832E-02  1.9324E-01
             8.2676E-01
 GRADIENT:   2.0497E+02  1.1079E+02 -9.7756E+00  2.8390E+01  3.9866E+01  9.3315E+00 -2.0099E+00  9.4766E+00 -4.5873E+00 -6.3361E+00
             1.2014E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -3067.25017931731        NO. OF FUNC. EVALS.: 118
 CUMULATIVE NO. OF FUNC. EVALS.:     1126
 NPARAMETR:  1.0435E+00  1.2772E+00  2.3263E+00  9.2728E-01  1.5108E+00  9.3786E-01  9.9746E-01  3.1429E+00  8.6701E-01  1.1063E+00
             2.0684E+00
 PARAMETER:  1.4254E-01  3.4464E-01  9.4427E-01  2.4498E-02  5.1262E-01  3.5845E-02  9.7462E-02  1.2452E+00 -4.2700E-02  2.0103E-01
             8.2678E-01
 GRADIENT:   1.9040E+02  1.0130E+02 -9.8051E+00  2.1555E+01  4.0809E+01  8.0302E+00 -9.8820E-01  9.3013E+00 -3.3497E+00 -4.7403E+00
             1.3378E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -3068.04271169392        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:     1196
 NPARAMETR:  1.0179E+00  1.2131E+00  2.3265E+00  9.4997E-01  1.4597E+00  9.2556E-01  1.0133E+00  2.9711E+00  8.7283E-01  1.0926E+00
             2.0589E+00
 PARAMETER:  1.1778E-01  2.9319E-01  9.4436E-01  4.8680E-02  4.7826E-01  2.2642E-02  1.1322E-01  1.1889E+00 -3.6018E-02  1.8852E-01
             8.2218E-01
 GRADIENT:   1.0356E+02  6.5030E+01 -7.7985E+00 -3.4981E-01  2.8731E+01  3.9761E+00 -1.4039E+00  5.5049E+00 -1.2242E+00 -1.5235E+00
             7.9876E+00

0ITERATION NO.:   65    OBJECTIVE VALUE:  -3068.05381051980        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:     1269
 NPARAMETR:  1.0123E+00  1.1811E+00  2.3267E+00  9.6795E-01  1.4355E+00  9.2409E-01  1.0316E+00  2.9205E+00  8.6408E-01  1.0758E+00
             2.0560E+00
 PARAMETER:  1.1218E-01  2.6648E-01  9.4445E-01  6.7426E-02  4.6153E-01  2.1054E-02  1.3116E-01  1.1718E+00 -4.6095E-02  1.7309E-01
             8.2075E-01
 GRADIENT:   8.3720E+01  5.4532E+01 -7.8266E+00 -2.1230E+00  2.4251E+01  3.2356E+00 -1.3129E+00  4.4853E+00 -8.3543E-01 -1.0428E+00
             6.5778E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -3069.63679186610        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1447
 NPARAMETR:  1.0314E+00  1.0506E+00  2.3335E+00  1.0626E+00  1.3839E+00  9.3550E-01  1.1824E+00  3.0548E+00  7.9257E-01  1.0126E+00
             2.0526E+00
 PARAMETER:  1.3091E-01  1.4940E-01  9.4736E-01  1.6073E-01  4.2493E-01  3.3330E-02  2.6754E-01  1.2167E+00 -1.3247E-01  1.1248E-01
             8.1909E-01
 GRADIENT:   7.9195E+00  1.8411E+00 -3.0629E+01  1.1317E+00  6.5056E-01 -5.4839E-01  5.5177E-01  5.9696E-01 -6.1228E-01  2.5057E-01
            -1.7544E+00

0ITERATION NO.:   75    OBJECTIVE VALUE:  -3070.11603547933        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1624
 NPARAMETR:  1.0227E+00  9.8628E-01  2.3905E+00  1.0923E+00  1.3623E+00  9.3375E-01  1.2529E+00  3.1291E+00  7.6327E-01  1.0018E+00
             2.0437E+00
 PARAMETER:  1.2243E-01  8.6184E-02  9.7149E-01  1.8825E-01  4.0914E-01  3.1450E-02  3.2547E-01  1.2407E+00 -1.7015E-01  1.0175E-01
             8.1475E-01
 GRADIENT:  -1.2398E+01 -1.2118E+01 -3.1842E+01 -1.5080E+01  1.7742E+00 -1.2390E+00  1.8444E+00  2.3254E+00 -7.0736E-01  2.8875E+00
            -4.1475E+00

0ITERATION NO.:   77    OBJECTIVE VALUE:  -3070.36655199321        NO. OF FUNC. EVALS.:  65
 CUMULATIVE NO. OF FUNC. EVALS.:     1689
 NPARAMETR:  1.0222E+00  9.7746E-01  2.4188E+00  1.0960E+00  1.3625E+00  9.3357E-01  1.2691E+00  3.1550E+00  7.5534E-01  1.0019E+00
             2.0423E+00
 PARAMETER:  1.2185E-01  7.7144E-02  9.8380E-01  1.9156E-01  4.0956E-01  3.0259E-02  3.3807E-01  1.2497E+00 -1.8070E-01  1.0201E-01
             8.1359E-01
 GRADIENT:  -2.2622E+03 -2.7535E+03  5.2270E+02 -1.4483E+03  6.6688E+02 -1.6229E+00 -1.6185E+03  2.2264E+02 -1.5176E+03  2.6884E+03
            -6.9182E+02
 NUMSIGDIG:         2.3         2.3         2.3         2.3         2.3         1.1         2.3         2.3         2.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1689
 NO. OF SIG. DIGITS IN FINAL EST.:  1.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.3810E-03 -2.2025E-03  1.0820E-02  1.0130E-02 -3.9722E-02
 SE:             2.9695E-02  2.1704E-02  2.1292E-02  2.2445E-02  2.0278E-02
 N:                     100         100         100         100         100

 P VAL.:         8.0370E-01  9.1917E-01  6.1133E-01  6.5175E-01  5.0123E-02

 ETASHRINKSD(%)  5.1824E-01  2.7290E+01  2.8671E+01  2.4808E+01  3.2067E+01
 ETASHRINKVR(%)  1.0338E+00  4.7133E+01  4.9121E+01  4.3461E+01  5.3852E+01
 EBVSHRINKSD(%)  1.1697E+00  2.6676E+01  2.5905E+01  2.7509E+01  2.9738E+01
 EBVSHRINKVR(%)  2.3257E+00  4.6236E+01  4.5099E+01  4.7451E+01  5.0633E+01
 RELATIVEINF(%)  9.7644E+01  1.4515E+01  3.2611E+01  1.4897E+01  2.6767E+01
 EPSSHRINKSD(%)  1.8216E+01
 EPSSHRINKVR(%)  3.3115E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -3070.3665519932115     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1416.2771922248007     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    44.15
 Elapsed covariance  time in seconds:    14.98
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -3070.367       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  9.77E-01  2.42E+00  1.10E+00  1.36E+00  9.33E-01  1.27E+00  3.16E+00  7.55E-01  1.00E+00  2.04E+00
 


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
 
         2.65E-02  1.96E-03  4.67E-02  4.20E-03  1.16E-02  5.87E-02  9.12E-02  7.70E-02  2.73E-03  2.05E-03  3.20E-02
 


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
+        7.04E-04
 
 TH 2
+        3.67E-06  3.84E-06
 
 TH 3
+       -8.15E-05 -9.14E-05  2.18E-03
 
 TH 4
+        7.61E-06  8.22E-06 -1.96E-04  1.76E-05
 
 TH 5
+       -2.13E-05 -2.27E-05  5.40E-04 -4.86E-05  1.34E-04
 
 TH 6
+       -3.61E-04 -1.50E-05  3.38E-04 -3.07E-05  9.15E-05  3.45E-03
 
 TH 7
+       -2.41E-03  4.16E-06 -1.20E-04  9.79E-06 -2.59E-05  1.18E-03  8.31E-03
 
 TH 8
+       -1.43E-04 -1.51E-04  3.59E-03 -3.23E-04  8.92E-04  5.81E-04 -1.67E-04  5.94E-03
 
 TH 9
+        5.17E-06  5.34E-06 -1.27E-04  1.14E-05 -3.16E-05 -2.08E-05  5.58E-06 -2.10E-04  7.43E-06
 
 TH10
+       -3.89E-06 -4.02E-06  9.58E-05 -8.62E-06  2.38E-05  1.59E-05 -4.23E-06  1.58E-04 -5.60E-06  4.22E-06
 
 TH11
+        5.91E-05  5.97E-05 -1.41E-03  1.28E-04 -3.54E-04 -3.08E-04  5.78E-05 -2.33E-03  8.30E-05 -6.26E-05  1.03E-03
 
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
+        2.65E-02
 
 TH 2
+        7.07E-02  1.96E-03
 
 TH 3
+       -6.58E-02 -9.99E-01  4.67E-02
 
 TH 4
+        6.83E-02  1.00E+00 -9.99E-01  4.20E-03
 
 TH 5
+       -6.94E-02 -9.99E-01  9.98E-01 -9.99E-01  1.16E-02
 
 TH 6
+       -2.32E-01 -1.31E-01  1.23E-01 -1.25E-01  1.34E-01  5.87E-02
 
 TH 7
+       -9.96E-01  2.33E-02 -2.81E-02  2.56E-02 -2.45E-02  2.20E-01  9.12E-02
 
 TH 8
+       -7.01E-02 -9.99E-01  1.00E+00 -9.99E-01  9.98E-01  1.28E-01 -2.38E-02  7.70E-02
 
 TH 9
+        7.15E-02  1.00E+00 -9.99E-01  1.00E+00 -9.99E-01 -1.30E-01  2.24E-02 -9.99E-01  2.73E-03
 
 TH10
+       -7.14E-02 -1.00E+00  9.99E-01 -1.00E+00  9.99E-01  1.31E-01 -2.26E-02  9.99E-01 -1.00E+00  2.05E-03
 
 TH11
+        6.96E-02  9.51E-01 -9.43E-01  9.50E-01 -9.54E-01 -1.64E-01  1.98E-02 -9.44E-01  9.51E-01 -9.51E-01  3.20E-02
 
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
+        4.87E+09
 
 TH 2
+       -9.91E+09  4.42E+10
 
 TH 3
+        4.00E+07 -1.22E+08  1.52E+06
 
 TH 4
+        1.47E+09 -5.99E+09  1.97E+07  9.68E+08
 
 TH 5
+       -1.00E+08  5.09E+08 -3.21E+05 -6.83E+07  1.37E+07
 
 TH 6
+       -1.14E+05  4.22E+05 -7.67E+01 -1.03E+05  3.81E+03  3.49E+02
 
 TH 7
+        1.41E+09 -2.88E+09  1.16E+07  4.27E+08 -2.90E+07 -3.32E+04  4.10E+08
 
 TH 8
+        8.21E+06 -4.47E+07 -7.23E+04  6.74E+06 -5.82E+05 -6.80E+02  2.38E+06  3.26E+05
 
 TH 9
+       -3.01E+09  9.28E+09 -1.40E+07 -1.53E+09  1.19E+08  2.13E+04 -8.75E+08 -1.81E+07  5.83E+09
 
 TH10
+       -5.26E+09  3.20E+10 -7.77E+07 -4.33E+09  3.36E+08  9.06E+04 -1.53E+09 -5.08E+07  1.02E+10  3.07E+10
 
 TH11
+       -4.28E+06  1.32E+07 -1.16E+05 -2.19E+06  1.52E+05  2.46E+02 -1.24E+06 -3.77E+04  3.32E+06  1.09E+07  2.67E+04
 
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
 #CPUT: Total CPU Time in Seconds,       59.254
Stop Time:
Wed Sep 29 03:34:12 CDT 2021

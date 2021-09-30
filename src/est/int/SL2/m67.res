Wed Sep 29 03:25:43 CDT 2021
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
$DATA ../../../../data/int/SL2/dat67.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m67.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1659.57961376552        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4136E+02  1.6891E+01 -3.0785E+00  2.4324E+01  1.3366E+02  3.7231E+01 -1.0499E+02 -1.5967E+02 -1.2271E+02 -4.8492E+00
            -4.0756E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2954.47752152709        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:       85
 NPARAMETR:  1.0507E+00  1.2928E+00  1.2823E+00  9.8646E-01  1.1660E+00  1.0715E+00  1.2238E+00  9.3794E-01  1.1815E+00  9.1892E-01
             2.1319E+00
 PARAMETER:  1.4945E-01  3.5684E-01  3.4862E-01  8.6366E-02  2.5357E-01  1.6905E-01  3.0195E-01  3.5929E-02  2.6681E-01  1.5443E-02
             8.5701E-01
 GRADIENT:   2.3374E+02  1.2360E+02  8.0966E+00  7.3814E+01  1.3266E+01  2.8238E+01  2.1422E+01 -4.8151E+00  5.6306E+00 -1.9209E+01
            -1.2823E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2960.44367657614        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      267
 NPARAMETR:  1.0603E+00  1.4393E+00  1.3572E+00  9.1812E-01  1.2765E+00  1.0561E+00  9.4771E-01  9.6542E-01  1.2109E+00  1.1746E+00
             2.1538E+00
 PARAMETER:  1.5853E-01  4.6415E-01  4.0542E-01  1.4569E-02  3.4412E-01  1.5454E-01  4.6292E-02  6.4808E-02  2.9133E-01  2.6089E-01
             8.6723E-01
 GRADIENT:   1.1199E+02  6.3651E+01  7.9695E+00  7.4358E+01 -3.0662E+01  2.4170E+00 -3.1922E+00 -5.2086E+00 -7.3561E-01 -4.3454E+00
            -1.2265E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2975.75575782629        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      446
 NPARAMETR:  9.8799E-01  1.6087E+00  1.7355E+00  7.4738E-01  1.5450E+00  1.0302E+00  8.7679E-01  2.1694E+00  1.1873E+00  1.3063E+00
             2.2719E+00
 PARAMETER:  8.7918E-02  5.7542E-01  6.5131E-01 -1.9118E-01  5.3505E-01  1.2972E-01 -3.1490E-02  8.7446E-01  2.7172E-01  3.6716E-01
             9.2063E-01
 GRADIENT:  -3.0148E+01 -1.8557E+01 -8.0014E+00 -1.6760E-01 -4.7524E-01 -8.5706E-01 -4.2081E+00 -3.9718E-01 -3.2387E+00 -4.9259E+00
             3.6983E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2979.48919856943        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      623
 NPARAMETR:  9.7832E-01  1.7570E+00  2.2609E+00  6.8156E-01  1.7590E+00  1.0489E+00  8.9253E-01  3.2052E+00  1.1660E+00  1.4308E+00
             2.2498E+00
 PARAMETER:  7.8085E-02  6.6364E-01  9.1577E-01 -2.8338E-01  6.6474E-01  1.4772E-01 -1.3697E-02  1.2648E+00  2.5360E-01  4.5821E-01
             9.1086E-01
 GRADIENT:  -4.8638E+01  1.6959E+01 -6.9660E+00  1.4655E+01  2.1757E+01  4.3379E+00 -6.6533E-02 -3.9284E+00 -2.3260E-01 -3.5144E+00
             3.5064E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2980.20016079546        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      804
 NPARAMETR:  1.0026E+00  1.7541E+00  2.2664E+00  6.6656E-01  1.7618E+00  1.0362E+00  8.8564E-01  3.1951E+00  1.1820E+00  1.4325E+00
             2.2543E+00
 PARAMETER:  1.0262E-01  6.6198E-01  9.1820E-01 -3.0562E-01  6.6635E-01  1.3556E-01 -2.1446E-02  1.2616E+00  2.6723E-01  4.5940E-01
             9.1286E-01
 GRADIENT:  -4.0049E-02 -6.1280E+00 -5.2514E+00 -5.7629E-01  2.0306E+01  1.3590E+00 -1.5097E-01 -4.2132E+00  3.8855E-02 -3.8075E+00
             3.8539E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2980.67050092726        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      982
 NPARAMETR:  1.0025E+00  1.7564E+00  2.2911E+00  6.6536E-01  1.7544E+00  1.0324E+00  8.8760E-01  3.1955E+00  1.1919E+00  1.4370E+00
             2.2080E+00
 PARAMETER:  1.0246E-01  6.6326E-01  9.2904E-01 -3.0743E-01  6.6215E-01  1.3185E-01 -1.9234E-02  1.2617E+00  2.7558E-01  4.6256E-01
             8.9208E-01
 GRADIENT:   8.3898E-01 -1.7647E+00 -4.1029E+00 -1.2748E+00  1.5465E+01 -2.7754E-01  3.0577E-01 -5.1765E+00  2.7590E-01 -3.4652E+00
            -7.4478E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2980.92525147172        NO. OF FUNC. EVALS.: 138
 CUMULATIVE NO. OF FUNC. EVALS.:     1120
 NPARAMETR:  1.0001E+00  1.7464E+00  2.3241E+00  6.6710E-01  1.7395E+00  1.0311E+00  8.8696E-01  3.2649E+00  1.1854E+00  1.4403E+00
             2.2100E+00
 PARAMETER:  1.0006E-01  6.5755E-01  9.4334E-01 -3.0482E-01  6.5362E-01  1.3063E-01 -1.9952E-02  1.2832E+00  2.7008E-01  4.6484E-01
             8.9299E-01
 GRADIENT:  -3.9454E+00 -7.6438E+00 -3.6361E+00 -6.3495E+00  8.3510E+00 -6.6834E-01 -2.4026E-01 -4.0341E+00  2.3975E-01 -2.0317E+00
            -3.7709E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2981.11914508750        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     1218
 NPARAMETR:  9.9462E-01  1.7040E+00  2.4124E+00  6.9032E-01  1.7008E+00  1.0258E+00  8.9201E-01  3.2488E+00  1.1695E+00  1.4282E+00
             2.2087E+00
 PARAMETER:  9.4607E-02  6.3297E-01  9.8062E-01 -2.7060E-01  6.3112E-01  1.2544E-01 -1.4278E-02  1.2783E+00  2.5654E-01  4.5643E-01
             8.9239E-01
 GRADIENT:   7.3639E+01  1.8087E+02  8.7414E-01  1.2581E+01  4.0934E+01  1.2626E+01  1.3420E+00 -2.9553E-01  3.2837E+00  5.8716E+00
             1.3191E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2981.61351481747        NO. OF FUNC. EVALS.: 141
 CUMULATIVE NO. OF FUNC. EVALS.:     1359
 NPARAMETR:  9.9963E-01  1.6362E+00  2.5289E+00  7.4023E-01  1.6572E+00  1.0316E+00  9.2058E-01  3.2245E+00  1.1234E+00  1.3888E+00
             2.2081E+00
 PARAMETER:  9.9633E-02  5.9239E-01  1.0278E+00 -2.0079E-01  6.0511E-01  1.3108E-01  1.7245E-02  1.2708E+00  2.1640E-01  4.2846E-01
             8.9215E-01
 GRADIENT:  -4.5159E+00 -4.9490E+00 -3.5549E+00 -8.7792E+00 -6.8889E+00 -3.3638E-01 -2.8676E-02 -3.8621E+00  6.4224E-01 -6.8830E-01
            -1.3451E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2981.62681329542        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1539
 NPARAMETR:  1.0015E+00  1.6371E+00  2.5275E+00  7.4038E-01  1.6585E+00  1.0324E+00  9.2476E-01  3.2227E+00  1.1150E+00  1.3884E+00
             2.2097E+00
 PARAMETER:  1.0154E-01  5.9291E-01  1.0272E+00 -2.0059E-01  6.0589E-01  1.3189E-01  2.1779E-02  1.2702E+00  2.0887E-01  4.2813E-01
             8.9285E-01
 GRADIENT:  -6.8002E-01 -4.0140E+00 -3.6028E+00 -8.4456E+00 -6.4510E+00 -3.1066E-03  2.9257E-01 -4.0126E+00  2.0570E-01 -8.9048E-01
            -3.2860E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2981.75732853984        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1716            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0028E+00  1.6335E+00  2.5167E+00  7.4924E-01  1.6696E+00  1.0333E+00  9.2815E-01  3.3141E+00  1.1020E+00  1.3961E+00
             2.2117E+00
 PARAMETER:  1.0275E-01  5.9070E-01  1.0230E+00 -1.8869E-01  6.1255E-01  1.3272E-01  2.5433E-02  1.2982E+00  1.9711E-01  4.3366E-01
             8.9377E-01
 GRADIENT:   9.2378E+01  1.6453E+02 -2.4580E+00  1.9830E+01  4.2818E+01  1.6044E+01  2.3010E+00  2.4784E+00  2.8748E+00  5.8669E+00
             1.9065E+01

0ITERATION NO.:   57    OBJECTIVE VALUE:  -2981.75732853984        NO. OF FUNC. EVALS.:  69
 CUMULATIVE NO. OF FUNC. EVALS.:     1785
 NPARAMETR:  1.0026E+00  1.6344E+00  2.5189E+00  7.4924E-01  1.6705E+00  1.0332E+00  9.2813E-01  3.3099E+00  1.0998E+00  1.3967E+00
             2.2136E+00
 PARAMETER:  1.0275E-01  5.9070E-01  1.0230E+00 -1.8869E-01  6.1255E-01  1.3272E-01  2.5433E-02  1.2982E+00  1.9711E-01  4.3366E-01
             8.9377E-01
 GRADIENT:   6.6386E-01 -3.8936E+03 -2.0874E+03 -2.7912E-03 -3.7488E+03  1.7646E-01  1.0522E-02  1.8552E+03  4.6499E-01 -5.2956E+03
            -2.7611E+03
 NUMSIGDIG:         2.2         2.3         2.4         4.7         2.3         2.5         3.2         2.3         1.3         2.3
                    2.3

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1785
 NO. OF SIG. DIGITS IN FINAL EST.:  1.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         8.4963E-04 -2.5079E-02 -1.9732E-02  2.1006E-02 -3.1521E-02
 SE:             2.9549E-02  2.2781E-02  1.6708E-02  2.1052E-02  2.3982E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7706E-01  2.7094E-01  2.3759E-01  3.1837E-01  1.8873E-01

 ETASHRINKSD(%)  1.0068E+00  2.3682E+01  4.4028E+01  2.9473E+01  1.9656E+01
 ETASHRINKVR(%)  2.0036E+00  4.1756E+01  6.8671E+01  5.0259E+01  3.5448E+01
 EBVSHRINKSD(%)  1.1572E+00  2.3708E+01  4.7403E+01  3.3985E+01  1.5517E+01
 EBVSHRINKVR(%)  2.3011E+00  4.1795E+01  7.2335E+01  5.6420E+01  2.8627E+01
 RELATIVEINF(%)  9.7675E+01  7.6041E+00  1.2845E+01  5.5797E+00  3.6996E+01
 EPSSHRINKSD(%)  1.8007E+01
 EPSSHRINKVR(%)  3.2772E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2981.7573285398412     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1327.6679687714304     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    56.07
0R MATRIX ALGORITHMICALLY SINGULAR
 AND ALGORITHMICALLY NON-POSITIVE-SEMIDEFINITE
0R MATRIX IS OUTPUT
0COVARIANCE STEP ABORTED
 Elapsed covariance  time in seconds:    16.08
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2981.757       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.63E+00  2.52E+00  7.49E-01  1.67E+00  1.03E+00  9.28E-01  3.31E+00  1.10E+00  1.40E+00  2.21E+00
 


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
+        1.01E+03
 
 TH 2
+       -2.23E+01  6.22E+04
 
 TH 3
+        2.16E+05 -1.35E+02  9.22E+03
 
 TH 4
+       -1.05E+01  7.49E+02 -1.57E+05  6.80E+02
 
 TH 5
+       -1.71E+01 -2.90E+01 -1.62E+02  4.23E+02  5.51E+04
 
 TH 6
+        3.10E+00 -2.13E+01  5.76E-01 -4.12E+00 -1.87E+01  1.77E+02
 
 TH 7
+        1.48E+00 -7.86E+01 -4.52E+01 -1.17E+01 -8.60E+01 -4.89E-01  9.10E+01
 
 TH 8
+        9.34E+03 -1.05E+03  3.28E+01 -6.87E+03 -9.56E+02  8.60E+00  1.36E+01  3.19E+03
 
 TH 9
+        1.06E+00  2.53E+01  1.72E+01  1.87E+01  3.43E+01 -3.53E-01  2.72E+01 -4.57E-01  3.78E+01
 
 TH10
+       -2.47E+01 -7.09E+00 -2.11E+02  6.39E+02  9.27E+04 -2.94E+01 -1.44E+02  1.59E+03  5.28E+01  1.57E+05
 
 TH11
+       -2.83E+01  3.02E+04 -1.14E+02  1.53E+04  4.76E+01 -1.64E+01 -2.39E+01 -5.26E+02  1.14E+01 -3.53E+03  1.61E+04
 
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
 #CPUT: Total CPU Time in Seconds,       72.280
Stop Time:
Wed Sep 29 03:26:57 CDT 2021

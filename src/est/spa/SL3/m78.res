Wed Sep 29 16:51:09 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat78.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m78.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1606.36932860959        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4924E+02 -9.2145E+01 -6.6784E+01 -4.1232E+01  6.5671E+01  2.6779E+01 -1.7387E+01  1.5592E+01 -3.3481E+00  1.1936E+01
            -9.3958E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1619.54297579457        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  9.8422E-01  1.1116E+00  1.3151E+00  9.6831E-01  1.1296E+00  8.9357E-01  1.0850E+00  8.6704E-01  1.0029E+00  8.6390E-01
             1.4654E+00
 PARAMETER:  8.4095E-02  2.0584E-01  3.7393E-01  6.7796E-02  2.2187E-01 -1.2532E-02  1.8154E-01 -4.2670E-02  1.0286E-01 -4.6297E-02
             4.8211E-01
 GRADIENT:   2.0160E+02 -3.0080E+01 -1.4238E+01 -4.2025E+01  3.3672E+01 -3.4092E+01 -7.1247E-01  4.1804E+00 -3.9494E-01 -1.1094E+01
             7.4366E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1631.15779987249        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  9.6484E-01  1.1317E+00  1.7339E+00  1.0305E+00  1.1692E+00  9.3417E-01  6.7879E-01  2.2455E-01  1.1318E+00  1.1424E+00
             1.2799E+00
 PARAMETER:  6.4208E-02  2.2368E-01  6.5037E-01  1.3008E-01  2.5630E-01  3.1908E-02 -2.8744E-01 -1.3936E+00  2.2383E-01  2.3316E-01
             3.4681E-01
 GRADIENT:   2.1409E+02  9.3513E+01  2.2850E+01  6.3596E+01 -5.3489E+01 -9.1455E+00  1.2314E+00 -2.5855E-01 -4.5718E-01  2.3893E+00
             1.8256E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1635.55080932107        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      316
 NPARAMETR:  9.7113E-01  1.1711E+00  1.5508E+00  9.8523E-01  1.2135E+00  1.0154E+00  8.1451E-01  2.2675E-01  1.1564E+00  1.1422E+00
             1.2138E+00
 PARAMETER:  7.0702E-02  2.5795E-01  5.3880E-01  8.5116E-02  2.9347E-01  1.1526E-01 -1.0516E-01 -1.3839E+00  2.4533E-01  2.3297E-01
             2.9376E-01
 GRADIENT:  -1.3396E+01 -8.0766E+00  3.8661E+00 -7.7726E+00 -1.1847E+00  2.1878E+00 -3.9126E-01 -2.5195E-01 -7.4340E-01 -8.4056E-01
            -6.8891E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1636.25571215395        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      493
 NPARAMETR:  9.7551E-01  1.3483E+00  1.3270E+00  8.8259E-01  1.2211E+00  1.0123E+00  8.8186E-01  2.3606E-01  1.1685E+00  1.1068E+00
             1.2112E+00
 PARAMETER:  7.5204E-02  3.9887E-01  3.8295E-01 -2.4896E-02  2.9977E-01  1.1219E-01 -2.5724E-02 -1.3437E+00  2.5576E-01  2.0151E-01
             2.9157E-01
 GRADIENT:  -6.4064E+00  7.6349E+00  1.2761E+00  7.3168E+00 -3.6238E+00  6.5324E-01 -2.1284E+00  1.1144E-02 -5.4859E+00 -1.2080E+00
             6.4918E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1637.12896206432        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      669
 NPARAMETR:  9.7922E-01  1.6979E+00  1.1742E+00  6.5927E-01  1.3381E+00  1.0115E+00  7.4161E-01  1.4480E-01  1.5547E+00  1.1771E+00
             1.2074E+00
 PARAMETER:  7.8997E-02  6.2940E-01  2.6060E-01 -3.1663E-01  3.9123E-01  1.1139E-01 -1.9893E-01 -1.8324E+00  5.4129E-01  2.6308E-01
             2.8849E-01
 GRADIENT:  -7.8850E-01  1.8796E+01 -6.7311E-02  1.6441E+01 -1.8104E+00 -1.3705E-01 -3.5430E-01  2.7374E-02  2.1942E+00  5.4380E-01
            -1.1995E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1637.48526572150        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      845
 NPARAMETR:  9.8146E-01  1.9260E+00  1.0450E+00  5.0424E-01  1.4145E+00  1.0129E+00  7.0920E-01  8.5742E-02  1.8562E+00  1.2103E+00
             1.2083E+00
 PARAMETER:  8.1283E-02  7.5546E-01  1.4401E-01 -5.8470E-01  4.4680E-01  1.1283E-01 -2.4362E-01 -2.3564E+00  7.1855E-01  2.9090E-01
             2.8925E-01
 GRADIENT:   2.7998E+00  1.8290E+01  2.3988E-02  1.1862E+01 -5.4653E-01  2.6307E-01 -1.9936E-01  1.7383E-02  2.1166E+00  1.7238E-01
            -2.3716E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1637.63807059004        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1024             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8103E-01  1.9988E+00  9.8497E-01  4.2876E-01  1.4439E+00  1.0125E+00  7.0525E-01  3.9014E-02  1.9857E+00  1.2217E+00
             1.2159E+00
 PARAMETER:  8.0848E-02  7.9253E-01  8.4856E-02 -7.4685E-01  4.6733E-01  1.1242E-01 -2.4920E-01 -3.1438E+00  7.8596E-01  3.0025E-01
             2.9547E-01
 GRADIENT:   2.7916E+02  6.3331E+02  1.3882E-01  5.2705E+01  1.5393E+01  2.7937E+01  1.0060E+01  4.6207E-03  1.8394E+01  2.1426E+00
             2.9271E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1637.68770270314        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1203
 NPARAMETR:  9.8078E-01  2.0076E+00  9.7822E-01  4.3191E-01  1.4431E+00  1.0120E+00  7.0229E-01  1.2678E-02  1.9974E+00  1.2199E+00
             1.2155E+00
 PARAMETER:  8.0589E-02  7.9692E-01  7.7978E-02 -7.3953E-01  4.6682E-01  1.1196E-01 -2.5341E-01 -4.2679E+00  7.9184E-01  2.9876E-01
             2.9515E-01
 GRADIENT:   1.0548E+00 -9.7764E+00 -3.8546E-01  3.3882E-01  9.5204E-01  5.1758E-02  2.1827E-01  4.5148E-04  4.8095E-01  1.1662E-01
             8.0226E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1637.68971429508        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1385
 NPARAMETR:  9.8076E-01  2.0060E+00  9.7946E-01  4.3257E-01  1.4422E+00  1.0120E+00  7.0054E-01  1.0000E-02  1.9972E+00  1.2189E+00
             1.2156E+00
 PARAMETER:  8.0570E-02  7.9613E-01  7.9243E-02 -7.3802E-01  4.6619E-01  1.1195E-01 -2.5591E-01 -5.1337E+00  7.9174E-01  2.9793E-01
             2.9525E-01
 GRADIENT:   1.0269E+00 -1.0158E+01 -3.8723E-01  1.8346E-01  8.3672E-01  5.4498E-02 -3.2771E-03  0.0000E+00  4.2890E-01  4.9223E-02
             9.4441E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1637.69063695951        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1572
 NPARAMETR:  9.8075E-01  2.0046E+00  9.8002E-01  4.3328E-01  1.4418E+00  1.0120E+00  7.0013E-01  1.0000E-02  1.9962E+00  1.2185E+00
             1.2157E+00
 PARAMETER:  8.0566E-02  7.9542E-01  7.9819E-02 -7.3636E-01  4.6590E-01  1.1195E-01 -2.5649E-01 -5.1337E+00  7.9126E-01  2.9763E-01
             2.9529E-01
 GRADIENT:   1.0288E+00 -1.0559E+01 -4.3661E-01  1.1811E-01  9.3664E-01  5.5104E-02 -4.6124E-02  0.0000E+00  4.7102E-01  3.6545E-02
             1.3443E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1637.69210790402        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1758             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8074E-01  2.0043E+00  9.8335E-01  4.3322E-01  1.4412E+00  1.0120E+00  7.0053E-01  1.0000E-02  1.9939E+00  1.2184E+00
             1.2156E+00
 PARAMETER:  8.0548E-02  7.9531E-01  8.3210E-02 -7.3651E-01  4.6549E-01  1.1196E-01 -2.5592E-01 -5.1337E+00  7.9007E-01  2.9753E-01
             2.9525E-01
 GRADIENT:   2.7833E+02  6.4998E+02  3.3304E-02  5.6848E+01  1.4052E+01  2.7621E+01  9.5329E+00  0.0000E+00  1.9198E+01  1.8022E+00
             2.4098E+00

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1637.69336946030        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     1946
 NPARAMETR:  9.8075E-01  2.0022E+00  9.8302E-01  4.3456E-01  1.4409E+00  1.0120E+00  7.0022E-01  1.0000E-02  1.9921E+00  1.2181E+00
             1.2156E+00
 PARAMETER:  8.0564E-02  7.9426E-01  8.2877E-02 -7.3343E-01  4.6524E-01  1.1195E-01 -2.5636E-01 -5.1337E+00  7.8919E-01  2.9728E-01
             2.9524E-01
 GRADIENT:   1.0505E+00 -1.0751E+01 -2.8377E-01 -1.0794E-01  6.2269E-01  6.4799E-02 -1.7863E-02  0.0000E+00  3.8425E-01  2.9318E-02
             1.0634E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1637.69517531387        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2138             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8075E-01  2.0005E+00  9.8952E-01  4.3583E-01  1.4393E+00  1.0120E+00  7.0060E-01  1.0000E-02  1.9864E+00  1.2177E+00
             1.2153E+00
 PARAMETER:  8.0566E-02  7.9338E-01  8.9462E-02 -7.3050E-01  4.6418E-01  1.1197E-01 -2.5582E-01 -5.1337E+00  7.8630E-01  2.9696E-01
             2.9499E-01
 GRADIENT:   2.7856E+02  6.4710E+02  3.8238E-01  5.6908E+01  1.3246E+01  2.7643E+01  9.5271E+00  0.0000E+00  1.9043E+01  1.7785E+00
             2.2425E+00

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1637.69675593925        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2326
 NPARAMETR:  9.8075E-01  1.9989E+00  9.8929E-01  4.3684E-01  1.4390E+00  1.0120E+00  7.0071E-01  1.0000E-02  1.9840E+00  1.2175E+00
             1.2153E+00
 PARAMETER:  8.0561E-02  7.9261E-01  8.9235E-02 -7.2818E-01  4.6395E-01  1.1196E-01 -2.5566E-01 -5.1337E+00  7.8510E-01  2.9676E-01
             2.9501E-01
 GRADIENT:   1.0807E+00 -9.8278E+00  1.4673E-01 -2.8162E-01 -3.6207E-01  7.6744E-02  5.1238E-02  0.0000E+00  1.4526E-01  1.5944E-02
            -6.8414E-02

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1637.69809024672        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2518             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8074E-01  1.9973E+00  9.8804E-01  4.3788E-01  1.4389E+00  1.0120E+00  7.0072E-01  1.0000E-02  1.9822E+00  1.2173E+00
             1.2154E+00
 PARAMETER:  8.0554E-02  7.9181E-01  8.7969E-02 -7.2582E-01  4.6389E-01  1.1196E-01 -2.5564E-01 -5.1337E+00  7.8419E-01  2.9662E-01
             2.9506E-01
 GRADIENT:   2.7847E+02  6.4328E+02  4.2976E-02  5.7103E+01  1.4015E+01  2.7625E+01  9.4375E+00  0.0000E+00  1.9213E+01  1.7931E+00
             2.3907E+00

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1637.69888930583        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     2706
 NPARAMETR:  9.8073E-01  1.9955E+00  9.8701E-01  4.3905E-01  1.4387E+00  1.0120E+00  7.0083E-01  1.0000E-02  1.9798E+00  1.2170E+00
             1.2154E+00
 PARAMETER:  8.0547E-02  7.9090E-01  8.6923E-02 -7.2314E-01  4.6372E-01  1.1195E-01 -2.5549E-01 -5.1337E+00  7.8298E-01  2.9638E-01
             2.9510E-01
 GRADIENT:   1.0530E+00 -1.0733E+01 -2.9546E-01 -9.3766E-02  6.4829E-01  6.4760E-02 -1.5472E-02  0.0000E+00  3.8842E-01  2.9157E-02
             1.1576E-01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -1637.70111322365        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2898             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8073E-01  1.9935E+00  9.9192E-01  4.4047E-01  1.4375E+00  1.0120E+00  7.0107E-01  1.0000E-02  1.9748E+00  1.2167E+00
             1.2152E+00
 PARAMETER:  8.0545E-02  7.8989E-01  9.1885E-02 -7.1991E-01  4.6293E-01  1.1195E-01 -2.5515E-01 -5.1337E+00  7.8046E-01  2.9614E-01
             2.9495E-01
 GRADIENT:   2.7853E+02  6.3987E+02  1.8095E-01  5.7213E+01  1.3748E+01  2.7631E+01  9.4111E+00  0.0000E+00  1.9123E+01  1.7817E+00
             2.3452E+00

0ITERATION NO.:   90    OBJECTIVE VALUE:  -1637.70177443376        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     3086
 NPARAMETR:  9.8073E-01  1.9919E+00  9.9513E-01  4.4158E-01  1.4365E+00  1.0120E+00  7.0135E-01  1.0000E-02  1.9706E+00  1.2164E+00
             1.2151E+00
 PARAMETER:  8.0543E-02  7.8911E-01  9.5119E-02 -7.1739E-01  4.6224E-01  1.1196E-01 -2.5475E-01 -5.1337E+00  7.7836E-01  2.9586E-01
             2.9481E-01
 GRADIENT:   1.0884E+00 -9.4346E+00  2.9433E-01 -3.0489E-01 -6.5351E-01  7.9766E-02  6.9682E-02  0.0000E+00  7.0487E-02  1.1048E-02
            -1.2272E-01

0ITERATION NO.:   95    OBJECTIVE VALUE:  -1637.70315724481        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     3278             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8072E-01  1.9898E+00  9.9060E-01  4.4288E-01  1.4367E+00  1.0120E+00  7.0139E-01  1.0000E-02  1.9691E+00  1.2160E+00
             1.2153E+00
 PARAMETER:  8.0531E-02  7.8805E-01  9.0557E-02 -7.1445E-01  4.6238E-01  1.1194E-01 -2.5469E-01 -5.1337E+00  7.7758E-01  2.9559E-01
             2.9497E-01
 GRADIENT:   2.7847E+02  6.3562E+02 -1.4779E-01  5.7416E+01  1.4424E+01  2.7616E+01  9.3176E+00  0.0000E+00  1.9251E+01  1.7873E+00
             2.4675E+00

0ITERATION NO.:  100    OBJECTIVE VALUE:  -1637.70431942053        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     3466
 NPARAMETR:  9.8071E-01  1.9877E+00  9.9177E-01  4.4431E-01  1.4363E+00  1.0120E+00  7.0147E-01  1.0000E-02  1.9658E+00  1.2158E+00
             1.2153E+00
 PARAMETER:  8.0525E-02  7.8697E-01  9.1736E-02 -7.1124E-01  4.6208E-01  1.1194E-01 -2.5458E-01 -5.1337E+00  7.7592E-01  2.9540E-01
             2.9497E-01
 GRADIENT:   1.0484E+00 -1.0717E+01 -3.2164E-01 -5.0717E-02  7.8537E-01  6.2999E-02 -2.2805E-02  0.0000E+00  4.0490E-01  2.4146E-02
             1.4591E-01

0ITERATION NO.:  105    OBJECTIVE VALUE:  -1637.70489493579        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     3650
 NPARAMETR:  9.8071E-01  1.9876E+00  9.9235E-01  4.4486E-01  1.4359E+00  1.0120E+00  7.0160E-01  1.0000E-02  1.9643E+00  1.2156E+00
             1.2151E+00
 PARAMETER:  8.0519E-02  7.8691E-01  9.2320E-02 -7.1000E-01  4.6177E-01  1.1193E-01 -2.5439E-01 -5.1337E+00  7.7513E-01  2.9525E-01
             2.9485E-01
 GRADIENT:   1.0329E+00 -9.7792E+00 -2.5495E-01  1.7478E-01  5.2314E-01  5.6894E-02 -3.4796E-02  0.0000E+00  3.7335E-01  1.8579E-02
             6.0364E-02

0ITERATION NO.:  110    OBJECTIVE VALUE:  -1637.70572853820        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     3834
 NPARAMETR:  9.8071E-01  1.9869E+00  9.9398E-01  4.4523E-01  1.4354E+00  1.0120E+00  7.0174E-01  1.0000E-02  1.9623E+00  1.2154E+00
             1.2151E+00
 PARAMETER:  8.0520E-02  7.8656E-01  9.3959E-02 -7.0915E-01  4.6147E-01  1.1193E-01 -2.5419E-01 -5.1337E+00  7.7413E-01  2.9508E-01
             2.9481E-01
 GRADIENT:   1.0447E+00 -9.7056E+00 -1.2188E-01  4.2923E-02  2.4549E-01  6.2696E-02 -1.4155E-02  0.0000E+00  2.8089E-01  5.3022E-03
             1.4667E-02

0ITERATION NO.:  115    OBJECTIVE VALUE:  -1637.70637438140        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     4026             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8072E-01  1.9854E+00  9.9786E-01  4.4582E-01  1.4345E+00  1.0120E+00  7.0207E-01  1.0000E-02  1.9588E+00  1.2153E+00
             1.2150E+00
 PARAMETER:  8.0527E-02  7.8583E-01  9.7854E-02 -7.0784E-01  4.6082E-01  1.1196E-01 -2.5372E-01 -5.1337E+00  7.7235E-01  2.9496E-01
             2.9471E-01
 GRADIENT:   2.7866E+02  6.3223E+02  3.3052E-01  5.7383E+01  1.3341E+01  2.7647E+01  9.3391E+00  0.0000E+00  1.8928E+01  1.7696E+00
             2.2851E+00

0ITERATION NO.:  120    OBJECTIVE VALUE:  -1637.70707625738        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     4214
 NPARAMETR:  9.8071E-01  1.9848E+00  9.9686E-01  4.4639E-01  1.4345E+00  1.0120E+00  7.0204E-01  1.0000E-02  1.9583E+00  1.2151E+00
             1.2150E+00
 PARAMETER:  8.0521E-02  7.8550E-01  9.6859E-02 -7.0656E-01  4.6083E-01  1.1195E-01 -2.5376E-01 -5.1337E+00  7.7207E-01  2.9486E-01
             2.9474E-01
 GRADIENT:   1.0728E+00 -9.8079E+00  5.1339E-02 -1.8078E-01 -1.3223E-01  7.3013E-02  3.6920E-02  0.0000E+00  1.8705E-01  1.4349E-02
            -2.3878E-02

0ITERATION NO.:  125    OBJECTIVE VALUE:  -1637.70781980353        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     4406             RESET HESSIAN, TYPE I
 NPARAMETR:  9.8070E-01  1.9832E+00  9.9594E-01  4.4737E-01  1.4344E+00  1.0120E+00  7.0210E-01  1.0000E-02  1.9564E+00  1.2149E+00
             1.2150E+00
 PARAMETER:  8.0515E-02  7.8471E-01  9.5931E-02 -7.0437E-01  4.6072E-01  1.1194E-01 -2.5368E-01 -5.1337E+00  7.7111E-01  2.9468E-01
             2.9478E-01
 GRADIENT:   2.7856E+02  6.2953E+02 -1.1953E-02  5.7610E+01  1.4117E+01  2.7625E+01  9.2563E+00  0.0000E+00  1.9118E+01  1.7731E+00
             2.4156E+00

0ITERATION NO.:  130    OBJECTIVE VALUE:  -1637.70806859427        NO. OF FUNC. EVALS.: 188
 CUMULATIVE NO. OF FUNC. EVALS.:     4594
 NPARAMETR:  9.8070E-01  1.9823E+00  9.9551E-01  4.4795E-01  1.4342E+00  1.0120E+00  7.0215E-01  1.0000E-02  1.9551E+00  1.2148E+00
             1.2151E+00
 PARAMETER:  8.0512E-02  7.8427E-01  9.5501E-02 -7.0307E-01  4.6061E-01  1.1194E-01 -2.5361E-01 -5.1337E+00  7.7046E-01  2.9458E-01
             2.9479E-01
 GRADIENT:   1.0565E+00 -1.0430E+01 -2.3681E-01 -7.9783E-02  5.1404E-01  6.6209E-02 -8.2895E-03  0.0000E+00  3.3353E-01  2.4797E-02
             9.4689E-02

0ITERATION NO.:  133    OBJECTIVE VALUE:  -1637.70852942377        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     4692
 NPARAMETR:  9.8070E-01  1.9823E+00  9.9816E-01  4.4803E-01  1.4337E+00  1.0120E+00  7.0227E-01  1.0000E-02  1.9539E+00  1.2147E+00
             1.2149E+00
 PARAMETER:  8.0514E-02  7.8427E-01  9.8155E-02 -7.0290E-01  4.6028E-01  1.1194E-01 -2.5343E-01 -5.1337E+00  7.6984E-01  2.9453E-01
             2.9469E-01
 GRADIENT:   1.0725E+00 -9.8244E+00  3.5150E-02 -1.7243E-01 -9.8300E-02  7.2901E-02  3.3956E-02  0.0000E+00  1.9197E-01  1.5403E-02
            -1.6424E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     4692
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -3.0990E-04 -3.7191E-02 -8.7604E-05  2.4320E-02 -4.2221E-02
 SE:             2.9704E-02  2.0410E-02  4.8177E-05  2.1722E-02  2.2786E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9168E-01  6.8424E-02  6.9007E-02  2.6288E-01  6.3897E-02

 ETASHRINKSD(%)  4.8773E-01  3.1625E+01  9.9839E+01  2.7230E+01  2.3663E+01
 ETASHRINKVR(%)  9.7308E-01  5.3248E+01  1.0000E+02  4.7045E+01  4.1727E+01
 EBVSHRINKSD(%)  6.3997E-01  2.8103E+01  9.9829E+01  3.0750E+01  2.2013E+01
 EBVSHRINKVR(%)  1.2758E+00  4.8308E+01  1.0000E+02  5.2045E+01  3.9181E+01
 RELATIVEINF(%)  9.8641E+01  4.5663E+00  1.2517E-04  4.5503E+00  2.9132E+01
 EPSSHRINKSD(%)  4.0069E+01
 EPSSHRINKVR(%)  6.4083E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1637.7085294237702     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -902.55770286003201     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    71.54
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     6.80
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1637.709       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.81E-01  1.98E+00  9.98E-01  4.48E-01  1.43E+00  1.01E+00  7.02E-01  1.00E-02  1.95E+00  1.21E+00  1.21E+00
 


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
+        1.30E+03
 
 TH 2
+        3.57E+01  2.96E+02
 
 TH 3
+       -5.85E-02  1.48E+01  1.40E+01
 
 TH 4
+        4.61E+01  4.15E+02 -2.53E+01  7.41E+02
 
 TH 5
+        3.57E+01 -9.88E+01 -5.23E+01  2.40E+01  2.22E+02
 
 TH 6
+        1.93E+02  1.69E-01 -5.92E+00  6.95E+00  3.82E+01  2.11E+02
 
 TH 7
+       -4.43E+01  3.63E-01  6.82E+00 -2.08E+01 -3.50E+01 -3.28E+01  1.13E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -9.95E+00  1.22E+01 -3.19E+00  3.08E+01  6.32E+00 -7.22E+00  3.84E-01  0.00E+00  2.27E+00
 
 TH10
+       -2.47E+01  1.60E+01  7.23E+00  1.16E+00 -4.05E+01 -1.32E+01  9.67E+00  0.00E+00  7.06E-01  1.13E+01
 
 TH11
+       -6.63E+01  1.52E+00 -1.50E+01  5.68E+01  5.18E+00 -5.83E+00  1.41E+01  0.00E+00  1.08E+01  2.15E+01  1.33E+02
 
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
+        1.11E+03
 
 TH 2
+       -9.64E+00  3.12E+02
 
 TH 3
+        1.44E+00  2.93E+01  4.09E+01
 
 TH 4
+       -1.16E+01  3.72E+02 -3.45E+01  7.17E+02
 
 TH 5
+       -4.06E+00 -7.00E+01 -4.03E+01  4.40E+01  2.25E+02
 
 TH 6
+        1.23E+00 -2.33E+00  5.06E-01 -5.10E+00 -2.43E+00  1.89E+02
 
 TH 7
+        3.06E+00 -2.42E+01  1.33E+01 -1.47E+01 -1.89E+01 -9.06E-02  1.17E+02
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        9.39E-01 -9.21E+00 -6.84E+00  3.89E+01  3.11E+00 -2.21E-01  2.18E+01  0.00E+00  1.78E+01
 
 TH10
+       -6.21E-01 -4.84E+00 -5.61E+00 -3.22E+00 -3.84E+01  6.27E-01  2.95E+00  0.00E+00  1.25E+00  5.85E+01
 
 TH11
+       -1.07E+01 -1.80E+01 -7.92E+00 -1.90E+00  2.96E+00  2.11E+00  6.64E+00  0.00E+00  2.35E+00  1.80E+01  1.67E+02
 
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
+        1.11E+03
 
 TH 2
+       -3.33E+01  3.07E+02
 
 TH 3
+        5.82E+00  1.81E+01  2.02E+01
 
 TH 4
+       -9.81E+01  3.72E+02 -3.95E+01  7.07E+02
 
 TH 5
+       -1.42E+01 -4.27E+01 -3.68E+01  7.23E+01  2.31E+02
 
 TH 6
+       -1.80E+02  8.53E+00  8.17E+00 -1.77E+01 -4.16E+01  1.96E+02
 
 TH 7
+       -3.30E+01 -5.14E+00  1.29E+01 -1.34E+01 -2.58E+01  1.33E+00  8.20E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+       -1.53E+01 -1.31E+01 -1.07E+01  3.29E+01  2.48E+00 -2.97E+00  1.14E+01  0.00E+00  1.56E+01
 
 TH10
+       -1.34E+01 -2.29E+01 -2.18E+00 -2.94E+01 -4.85E+01  9.88E+00  3.11E+00  0.00E+00  2.59E+00  6.41E+01
 
 TH11
+        7.17E+01 -6.40E+01 -5.43E+00 -6.62E+01 -1.12E+01  5.95E+00  3.76E+00  0.00E+00  6.10E+00  1.48E+01  2.13E+02
 
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
 
 Elapsed finaloutput time in seconds:     0.39
 #CPUT: Total CPU Time in Seconds,       78.273
Stop Time:
Wed Sep 29 16:52:31 CDT 2021

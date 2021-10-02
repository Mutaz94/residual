Sat Oct  2 01:03:32 CDT 2021
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
$DATA ../../../../data/SD4/A3/dat37.csv ignore=@
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

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        2 OCT 2021
Days until program expires : 197
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -24.3478917263228        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.6924E+02  1.4012E+02  1.4499E+02  4.0857E+01  2.0563E+02  5.2620E+01 -1.1185E+02 -7.0280E+01 -2.0412E+02 -2.2344E+02
            -2.6236E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1208.85063907755        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:       87
 NPARAMETR:  1.0128E+00  9.0530E-01  8.8169E-01  1.0886E+00  9.3648E-01  8.6941E-01  1.0556E+00  1.0003E+00  1.1862E+00  9.9821E-01
             3.8339E+00
 PARAMETER:  1.1274E-01  5.1218E-04 -2.5912E-02  1.8489E-01  3.4376E-02 -3.9942E-02  1.5407E-01  1.0029E-01  2.7077E-01  9.8204E-02
             1.4439E+00
 GRADIENT:   1.9569E+01 -2.8392E+01 -2.1207E+01 -2.7497E+01  3.4161E+01 -1.2292E+01  2.9717E+00  4.7522E+00  6.6924E-01  1.3741E+01
            -2.3226E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1219.62144930695        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.0128E+00  5.9973E-01  4.8350E-01  1.2889E+00  4.8459E-01  9.3236E-01  8.5726E-01  5.8929E-01  1.3183E+00  4.0710E-01
             3.8422E+00
 PARAMETER:  1.1271E-01 -4.1128E-01 -6.2671E-01  3.5376E-01 -6.2444E-01  2.9959E-02 -5.4017E-02 -4.2883E-01  3.7636E-01 -7.9869E-01
             1.4460E+00
 GRADIENT:  -5.2145E+00  4.4321E+01  3.8234E+01  7.9544E+01 -4.4142E+01  2.6426E+00 -1.5346E+00  7.4760E-01  2.0804E+01 -7.1972E-01
             2.6336E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1224.01306159510        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      343
 NPARAMETR:  1.0303E+00  6.0556E-01  4.9796E-01  1.2359E+00  5.1366E-01  9.2866E-01  1.1321E+00  1.7948E-01  1.1253E+00  3.9489E-01
             4.0189E+00
 PARAMETER:  1.2989E-01 -4.0159E-01 -5.9724E-01  3.1179E-01 -5.6620E-01  2.5986E-02  2.2405E-01 -1.6177E+00  2.1806E-01 -8.2915E-01
             1.4910E+00
 GRADIENT:   6.8644E+00  1.3695E+01  9.4995E+00  5.9939E+00 -1.2043E+01  2.2671E+00  7.2981E-01  1.0041E-01 -1.4810E+00  1.1547E+00
             4.6818E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1234.10184349270        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      519
 NPARAMETR:  1.0120E+00  2.2348E-01  2.5497E-01  1.1651E+00  2.5998E-01  9.8240E-01  1.0189E+00  1.0000E-02  1.2780E+00  4.8136E-01
             3.6591E+00
 PARAMETER:  1.1190E-01 -1.3984E+00 -1.2666E+00  2.5281E-01 -1.2471E+00  8.2238E-02  1.1868E-01 -1.2041E+01  3.4531E-01 -6.3113E-01
             1.3972E+00
 GRADIENT:  -2.2525E+01  5.3572E+00  4.4156E+01 -2.7076E+01 -6.3150E+01  1.0654E+01 -6.4215E-01  0.0000E+00 -7.9854E+00 -1.1297E+01
             1.0358E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1238.34224175728        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      694
 NPARAMETR:  1.0210E+00  2.1067E-01  2.6239E-01  1.2058E+00  2.6655E-01  9.5192E-01  1.4245E+00  1.0000E-02  1.2965E+00  6.8274E-01
             3.4090E+00
 PARAMETER:  1.2083E-01 -1.4575E+00 -1.2379E+00  2.8711E-01 -1.2222E+00  5.0722E-02  4.5380E-01 -1.3036E+01  3.5964E-01 -2.8164E-01
             1.3264E+00
 GRADIENT:   2.1341E+00  1.6890E-01 -2.1260E+00 -2.6507E+00  3.6444E+00 -6.7037E-02 -6.1124E-02  0.0000E+00 -1.0764E+00 -8.2402E-01
             7.8389E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1238.59593396338        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      872
 NPARAMETR:  1.0117E+00  1.1718E-01  2.8629E-01  1.2684E+00  2.7332E-01  9.4717E-01  1.7806E+00  1.0000E-02  1.2519E+00  7.1875E-01
             3.4029E+00
 PARAMETER:  1.1161E-01 -2.0441E+00 -1.1508E+00  3.3778E-01 -1.1971E+00  4.5725E-02  6.7695E-01 -1.8813E+01  3.2465E-01 -2.3024E-01
             1.3246E+00
 GRADIENT:  -2.8720E+00  4.3356E-01  2.0863E+00  2.2228E+00 -2.7989E+00  2.0567E-01  2.0840E-02  0.0000E+00  8.1726E-01  4.6640E-01
            -1.5188E+00

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1238.65587405997        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1052             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0100E+00  7.6147E-02  2.8712E-01  1.2796E+00  2.7168E-01  9.4479E-01  9.0199E-01  1.0000E-02  1.2323E+00  7.1252E-01
             3.4263E+00
 PARAMETER:  1.0999E-01 -2.4751E+00 -1.1478E+00  3.4656E-01 -1.2031E+00  4.3205E-02 -3.1536E-03 -2.3192E+01  3.0891E-01 -2.3895E-01
             1.3315E+00
 GRADIENT:   3.1441E+01  4.8197E-01  1.4277E+01  3.5091E+01  5.8211E+01  2.6263E+00  3.6478E-03  0.0000E+00  7.6943E+00  4.5536E-01
             1.0505E+01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1238.65699702335        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1228
 NPARAMETR:  1.0097E+00  7.5714E-02  2.8733E-01  1.2809E+00  2.7156E-01  9.4495E-01  6.6553E-01  1.0000E-02  1.2326E+00  7.1397E-01
             3.4261E+00
 PARAMETER:  1.0968E-01 -2.4808E+00 -1.1471E+00  3.4753E-01 -1.2036E+00  4.3381E-02 -3.0716E-01 -2.3192E+01  3.0914E-01 -2.3691E-01
             1.3314E+00
 GRADIENT:  -5.6727E-02  1.2899E-02  6.9530E-02  3.6406E-02 -2.7847E-01  1.5179E-02  9.6541E-04  0.0000E+00  5.5808E-02 -5.9849E-04
            -1.0323E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -1238.65743046909        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     1417             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0098E+00  7.6116E-02  2.8736E-01  1.2803E+00  2.7160E-01  9.4493E-01  3.8984E-01  1.0000E-02  1.2330E+00  7.1407E-01
             3.4255E+00
 PARAMETER:  1.0973E-01 -2.4755E+00 -1.1470E+00  3.4711E-01 -1.2034E+00  4.3351E-02 -8.4202E-01 -2.3192E+01  3.0941E-01 -2.3677E-01
             1.3313E+00
 GRADIENT:   3.0649E+01  5.0536E-01  1.5368E+01  3.5733E+01  5.6437E+01  2.6586E+00  2.9502E-03  0.0000E+00  7.8028E+00  5.2046E-01
             1.0583E+01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -1238.65757914805        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1599
 NPARAMETR:  1.0098E+00  7.6409E-02  2.8736E-01  1.2803E+00  2.7162E-01  9.4497E-01  2.1823E-01  1.0000E-02  1.2331E+00  7.1410E-01
             3.4254E+00
 PARAMETER:  1.0976E-01 -2.4716E+00 -1.1470E+00  3.4706E-01 -1.2033E+00  4.3397E-02 -1.4222E+00 -2.3192E+01  3.0957E-01 -2.3673E-01
             1.3312E+00
 GRADIENT:   5.0614E-02  7.8157E-03  1.7996E-01 -3.2553E-01 -2.6298E-01  4.5927E-03  1.0808E-04  0.0000E+00  7.8406E-02 -1.5087E-02
            -7.1669E-02

0ITERATION NO.:   55    OBJECTIVE VALUE:  -1238.65763651988        NO. OF FUNC. EVALS.: 185
 CUMULATIVE NO. OF FUNC. EVALS.:     1784
 NPARAMETR:  1.0098E+00  7.6726E-02  2.8735E-01  1.2802E+00  2.7164E-01  9.4498E-01  1.5395E-01  1.0000E-02  1.2333E+00  7.1413E-01
             3.4253E+00
 PARAMETER:  1.0978E-01 -2.4675E+00 -1.1471E+00  3.4698E-01 -1.2033E+00  4.3409E-02 -1.7711E+00 -2.3192E+01  3.0967E-01 -2.3669E-01
             1.3312E+00
 GRADIENT:   3.7335E-02  9.4893E-03  1.6624E-01 -3.1191E-01 -2.4487E-01  2.3817E-03  5.8769E-05  0.0000E+00  7.3951E-02 -1.1387E-02
            -7.2525E-02

0ITERATION NO.:   60    OBJECTIVE VALUE:  -1238.65766289697        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     1968
 NPARAMETR:  1.0098E+00  7.7045E-02  2.8734E-01  1.2801E+00  2.7165E-01  9.4499E-01  1.3888E-01  1.0000E-02  1.2334E+00  7.1415E-01
             3.4252E+00
 PARAMETER:  1.0979E-01 -2.4634E+00 -1.1471E+00  3.4692E-01 -1.2032E+00  4.3416E-02 -1.8741E+00 -2.3192E+01  3.0976E-01 -2.3666E-01
             1.3312E+00
 GRADIENT:   6.2527E-03  1.2619E-02  1.7422E-01 -2.7591E-01 -2.6793E-01 -1.0545E-03  4.9061E-05  0.0000E+00  6.5592E-02 -8.9954E-03
            -7.4097E-02

0ITERATION NO.:   65    OBJECTIVE VALUE:  -1238.65768414702        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2152
 NPARAMETR:  1.0099E+00  7.7207E-02  2.8732E-01  1.2800E+00  2.7167E-01  9.4500E-01  1.2109E-01  1.0000E-02  1.2334E+00  7.1415E-01
             3.4252E+00
 PARAMETER:  1.0981E-01 -2.4613E+00 -1.1471E+00  3.4689E-01 -1.2032E+00  4.3428E-02 -2.0112E+00 -2.3192E+01  3.0980E-01 -2.3666E-01
             1.3312E+00
 GRADIENT:   1.4225E-02  1.2320E-02  1.0651E-01 -2.5017E-01 -1.8069E-01 -3.2424E-04  3.8865E-05  0.0000E+00  6.0161E-02 -4.0522E-03
            -6.8068E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -1238.65771613942        NO. OF FUNC. EVALS.: 194
 CUMULATIVE NO. OF FUNC. EVALS.:     2346             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0099E+00  7.7417E-02  2.8730E-01  1.2798E+00  2.7169E-01  9.4502E-01  9.9780E-02  1.0000E-02  1.2337E+00  7.1418E-01
             3.4251E+00
 PARAMETER:  1.0984E-01 -2.4586E+00 -1.1472E+00  3.4674E-01 -1.2031E+00  4.3447E-02 -2.2048E+00 -2.3192E+01  3.0999E-01 -2.3661E-01
             1.3311E+00
 GRADIENT:   3.0752E+01  5.1224E-01  1.5152E+01  3.5667E+01  5.6768E+01  2.6677E+00  4.9977E-04  0.0000E+00  7.8342E+00  5.4126E-01
             1.0581E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -1238.65772522042        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     2527
 NPARAMETR:  1.0099E+00  7.7555E-02  2.8729E-01  1.2798E+00  2.7170E-01  9.4503E-01  7.9369E-02  1.0000E-02  1.2337E+00  7.1419E-01
             3.4251E+00
 PARAMETER:  1.0986E-01 -2.4568E+00 -1.1473E+00  3.4669E-01 -1.2031E+00  4.3459E-02 -2.4336E+00 -2.3192E+01  3.1005E-01 -2.3661E-01
             1.3311E+00
 GRADIENT:   9.8258E-02  5.3047E-03 -2.7798E-02 -3.7165E-01  7.6160E-02  5.9101E-03  1.9571E-05  0.0000E+00  9.2536E-02  5.8311E-03
            -6.8301E-02

0ITERATION NO.:   80    OBJECTIVE VALUE:  -1238.65773522504        NO. OF FUNC. EVALS.: 189
 CUMULATIVE NO. OF FUNC. EVALS.:     2716
 NPARAMETR:  1.0099E+00  7.7648E-02  2.8729E-01  1.2798E+00  2.7170E-01  9.4503E-01  3.5957E-02  1.0000E-02  1.2338E+00  7.1416E-01
             3.4251E+00
 PARAMETER:  1.0986E-01 -2.4556E+00 -1.1473E+00  3.4668E-01 -1.2031E+00  4.3463E-02 -3.2254E+00 -2.3192E+01  3.1007E-01 -2.3664E-01
             1.3311E+00
 GRADIENT:   8.1921E-02  7.6862E-03  1.0639E-02 -3.4962E-01  1.1872E-02  5.2095E-03  5.2576E-06  0.0000E+00  8.6729E-02  2.3568E-03
            -6.8885E-02

0ITERATION NO.:   83    OBJECTIVE VALUE:  -1238.65773903184        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:     2814
 NPARAMETR:  1.0099E+00  7.7814E-02  2.8729E-01  1.2797E+00  2.7169E-01  9.4503E-01  3.3711E-02  1.0000E-02  1.2338E+00  7.1414E-01
             3.4250E+00
 PARAMETER:  1.0987E-01 -2.4534E+00 -1.1473E+00  3.4663E-01 -1.2031E+00  4.3464E-02 -3.2899E+00 -2.3192E+01  3.1012E-01 -2.3668E-01
             1.3311E+00
 GRADIENT:   5.5587E-02  1.1342E-02  1.0351E-01 -3.4633E-01 -1.1981E-01  2.8306E-03  4.6951E-06  0.0000E+00  8.5396E-02 -4.1966E-03
            -7.5565E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     2814
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -7.0061E-04 -4.1407E-05  9.8038E-05 -1.1815E-02  1.9951E-03
 SE:             2.8455E-02  3.1724E-05  2.0999E-04  2.6562E-02  2.0368E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8036E-01  1.9181E-01  6.4060E-01  6.5647E-01  9.2197E-01

 ETASHRINKSD(%)  4.6712E+00  9.9894E+01  9.9296E+01  1.1013E+01  3.1764E+01
 ETASHRINKVR(%)  9.1241E+00  1.0000E+02  9.9995E+01  2.0813E+01  5.3438E+01
 EBVSHRINKSD(%)  4.3825E+00  9.9899E+01  9.9305E+01  9.2480E+00  3.1290E+01
 EBVSHRINKVR(%)  8.5729E+00  1.0000E+02  9.9995E+01  1.7641E+01  5.2789E+01
 RELATIVEINF(%)  7.2841E+01  1.6671E-05  1.8832E-04  2.3726E+01  1.4012E+00
 EPSSHRINKSD(%)  2.9783E+01
 EPSSHRINKVR(%)  5.0696E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1238.6577390318375     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -503.50691246809936     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    43.59
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1238.658       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  7.78E-02  2.87E-01  1.28E+00  2.72E-01  9.45E-01  3.37E-02  1.00E-02  1.23E+00  7.14E-01  3.43E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       43.616
Stop Time:
Sat Oct  2 01:04:18 CDT 2021

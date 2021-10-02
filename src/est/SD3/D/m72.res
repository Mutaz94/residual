Fri Oct  1 22:27:03 CDT 2021
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
$DATA ../../../../data/SD3/D/dat72.csv ignore=@
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
Current Date:        1 OCT 2021
Days until program expires : 198
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
 NO. OF DATA RECS IN DATA SET:      700
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

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m72.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   18667.1768106724        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   2.3665E+02  3.8577E+02  3.6337E+01  8.6645E+01  2.8385E+02 -2.5798E+03 -9.2872E+02 -8.9402E+01 -1.7101E+03 -8.6940E+02
            -3.5696E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -678.540814365714        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.3615E+00  1.0973E+00  8.0088E-01  2.1831E+00  1.0909E+00  3.2197E+00  2.0599E+00  9.5859E-01  2.6569E+00  1.3390E+00
             1.1864E+01
 PARAMETER:  4.0861E-01  1.9283E-01 -1.2205E-01  8.8074E-01  1.8697E-01  1.2693E+00  8.2267E-01  5.7705E-02  1.0772E+00  3.9194E-01
             2.5735E+00
 GRADIENT:  -3.5394E+00 -1.0778E+01 -7.4501E+01  9.0565E+01  5.2897E+01  9.9454E+01  1.3372E+00  3.4315E+00  6.4436E+00  1.5564E+01
             1.7117E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -744.605720611428        NO. OF FUNC. EVALS.:  77
 CUMULATIVE NO. OF FUNC. EVALS.:      161
 NPARAMETR:  1.3381E+00  1.7184E+00  5.5205E+00  2.2634E+00  2.6905E+00  3.6405E+00  7.4430E+00  6.5530E-01  8.3664E+00  2.0473E+00
             9.7586E+00
 PARAMETER:  3.9124E-01  6.4142E-01  1.8085E+00  9.1685E-01  1.0897E+00  1.3921E+00  2.1073E+00 -3.2265E-01  2.2242E+00  8.1653E-01
             2.3781E+00
 GRADIENT:   1.6090E+01  1.2204E+01 -1.9477E+01  4.9891E+01 -1.4638E+01  1.5155E+02  1.6758E+02  1.8929E-01  1.1695E+02  2.8762E+01
             1.7887E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -814.710954138470        NO. OF FUNC. EVALS.:  72
 CUMULATIVE NO. OF FUNC. EVALS.:      233
 NPARAMETR:  1.2332E+00  1.5091E+00  3.6574E+00  1.4033E+00  2.0632E+00  3.0238E+00  4.4647E+00  2.8942E-01  2.9190E+00  1.7244E+00
             1.0598E+01
 PARAMETER:  3.0961E-01  5.1151E-01  1.3968E+00  4.3883E-01  8.2425E-01  1.2065E+00  1.5962E+00 -1.1399E+00  1.1712E+00  6.4488E-01
             2.4606E+00
 GRADIENT:  -2.0700E+01 -5.8444E+00 -1.1191E+01  1.7395E+01 -1.0372E+01  8.2005E+01  1.9860E+01  3.5998E-02  4.0116E+01  2.4897E+01
             2.4558E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -824.043278698387        NO. OF FUNC. EVALS.: 103
 CUMULATIVE NO. OF FUNC. EVALS.:      336
 NPARAMETR:  1.2469E+00  1.4095E+00  4.0183E+00  1.3658E+00  2.1286E+00  2.8923E+00  4.4364E+00  4.5876E-01  2.6701E+00  1.6395E+00
             1.0358E+01
 PARAMETER:  3.2062E-01  4.4321E-01  1.4909E+00  4.1174E-01  8.5548E-01  1.1620E+00  1.5898E+00 -6.7923E-01  1.0821E+00  5.9437E-01
             2.4377E+00
 GRADIENT:  -3.7500E+01 -1.5538E+01 -8.8048E+00  4.0142E+00 -8.5984E+00 -7.0785E+00 -3.6081E+01  7.1782E-02  2.9182E+01  2.2040E+01
             2.0673E+02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -872.292610338587        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      517
 NPARAMETR:  1.3764E+00  7.5230E-01  1.0448E+01  1.4323E+00  2.3195E+00  3.2910E+00  7.1460E+00  1.3681E+00  1.3566E+00  7.3556E-01
             8.1384E+00
 PARAMETER:  4.1945E-01 -1.8462E-01  2.4464E+00  4.5931E-01  9.4134E-01  1.2912E+00  2.0665E+00  4.1341E-01  4.0500E-01 -2.0713E-01
             2.1966E+00
 GRADIENT:   6.9279E+00 -1.5710E+00 -6.3277E-01 -3.2575E+00 -3.7647E-01  3.5078E+01  6.7263E+00  1.2583E-01 -3.5118E+00  4.4211E+00
            -3.4161E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -876.465985622723        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      692
 NPARAMETR:  1.3205E+00  8.6727E-01  9.9019E+00  1.4181E+00  2.3363E+00  2.9410E+00  6.5942E+00  1.0742E-01  1.3878E+00  3.0106E-01
             8.3883E+00
 PARAMETER:  3.7802E-01 -4.2404E-02  2.3927E+00  4.4931E-01  9.4856E-01  1.1788E+00  1.9862E+00 -2.1310E+00  4.2773E-01 -1.1004E+00
             2.2268E+00
 GRADIENT:  -4.4856E+00 -1.0628E+00 -7.3405E-01  2.0145E+00  2.9514E+00 -3.5484E+00  9.0581E-01  8.1147E-04 -1.7900E+00  7.0569E-01
             6.5694E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -877.342810156245        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      867
 NPARAMETR:  1.3440E+00  1.0493E+00  1.1541E+01  1.3232E+00  2.3246E+00  2.9725E+00  6.1397E+00  1.0000E-02  1.3646E+00  5.7445E-02
             8.3767E+00
 PARAMETER:  3.9567E-01  1.4816E-01  2.5459E+00  3.8004E-01  9.4355E-01  1.1894E+00  1.9148E+00 -5.6430E+00  4.1086E-01 -2.7569E+00
             2.2255E+00
 GRADIENT:   1.2664E-03  2.2902E-01  1.9651E-02  1.0871E-01  1.5126E-03  3.6272E-01  1.8202E-01  0.0000E+00 -5.8984E-02  2.6776E-02
            -5.1935E-03

0ITERATION NO.:   40    OBJECTIVE VALUE:  -877.420528462968        NO. OF FUNC. EVALS.: 140
 CUMULATIVE NO. OF FUNC. EVALS.:     1007
 NPARAMETR:  1.3433E+00  1.0541E+00  1.1307E+01  1.3175E+00  2.3240E+00  3.0119E+00  6.0477E+00  1.0000E-02  1.3700E+00  2.0657E-02
             8.3720E+00
 PARAMETER:  3.9514E-01  1.5269E-01  2.5254E+00  3.7576E-01  9.4329E-01  1.2026E+00  1.8997E+00 -5.6430E+00  4.1484E-01 -3.7797E+00
             2.2249E+00
 GRADIENT:  -3.4365E-02 -4.0531E-01  2.4691E-03  6.4491E-01  1.4032E-01  5.4020E+00 -2.4811E+00  0.0000E+00 -1.3851E-03  3.4717E-03
            -2.1299E-02

0ITERATION NO.:   45    OBJECTIVE VALUE:  -877.430532628229        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:     1193
 NPARAMETR:  1.3461E+00  1.0608E+00  1.1104E+01  1.3107E+00  2.3227E+00  3.0199E+00  6.0469E+00  1.0000E-02  1.3626E+00  1.0000E-02
             8.3711E+00
 PARAMETER:  3.9723E-01  1.5902E-01  2.5073E+00  3.7059E-01  9.4273E-01  1.2052E+00  1.8995E+00 -5.6430E+00  4.0937E-01 -4.7652E+00
             2.2248E+00
 GRADIENT:   4.8902E-01 -4.1128E-01  1.2792E-03  2.5474E-02  2.7047E-01  6.3505E+00 -1.8911E+00  0.0000E+00  1.1667E-01  0.0000E+00
             1.1359E-02

0ITERATION NO.:   50    OBJECTIVE VALUE:  -877.436134622962        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     1388             RESET HESSIAN, TYPE I
 NPARAMETR:  1.3463E+00  1.0757E+00  1.0923E+01  1.3064E+00  2.3178E+00  3.0258E+00  6.0350E+00  1.0000E-02  1.3549E+00  1.0000E-02
             8.3701E+00
 PARAMETER:  3.9739E-01  1.7299E-01  2.4909E+00  3.6731E-01  9.4063E-01  1.2072E+00  1.8976E+00 -5.6430E+00  4.0371E-01 -4.7652E+00
             2.2247E+00
 GRADIENT:   3.5151E+01  2.4208E+00  4.8633E-02  1.0794E+01  1.0466E+00  9.8864E+01  1.0810E+02  0.0000E+00  1.1541E+00  0.0000E+00
             2.6205E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -877.438886845008        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     1580
 NPARAMETR:  1.3463E+00  1.0816E+00  1.0752E+01  1.3025E+00  2.3154E+00  3.0258E+00  6.0230E+00  1.0000E-02  1.3493E+00  1.0000E-02
             8.3703E+00
 PARAMETER:  3.9736E-01  1.7844E-01  2.4751E+00  3.6425E-01  9.3959E-01  1.2072E+00  1.8956E+00 -5.6430E+00  3.9962E-01 -4.7652E+00
             2.2247E+00
 GRADIENT:   5.3040E-01  3.2014E-02  2.4790E-02  7.6710E-01 -3.7711E-02  7.0695E+00 -1.6096E+00  0.0000E+00 -8.8106E-02  0.0000E+00
            -5.3721E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -877.442102498448        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     1778             RESET HESSIAN, TYPE I
 NPARAMETR:  1.3463E+00  1.0859E+00  1.0401E+01  1.2939E+00  2.3134E+00  3.0258E+00  6.0072E+00  1.0000E-02  1.3472E+00  1.0000E-02
             8.3729E+00
 PARAMETER:  3.9733E-01  1.8240E-01  2.4419E+00  3.5767E-01  9.3873E-01  1.2072E+00  1.8930E+00 -5.6430E+00  3.9800E-01 -4.7652E+00
             2.2250E+00
 GRADIENT:   3.5129E+01  2.2730E+00  2.3685E-02  9.1971E+00  1.4265E+00  9.8826E+01  1.0780E+02  0.0000E+00  1.5006E+00  0.0000E+00
             2.7094E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -877.444359160741        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     1970
 NPARAMETR:  1.3462E+00  1.0909E+00  1.0237E+01  1.2902E+00  2.3109E+00  3.0258E+00  5.9966E+00  1.0000E-02  1.3428E+00  1.0000E-02
             8.3731E+00
 PARAMETER:  3.9732E-01  1.8700E-01  2.4261E+00  3.5482E-01  9.3763E-01  1.2072E+00  1.8912E+00 -5.6430E+00  3.9478E-01 -4.7652E+00
             2.2250E+00
 GRADIENT:   5.2971E-01 -2.9353E-01 -5.5828E-03 -5.2141E-01  3.6793E-01  7.0415E+00 -1.3344E+00  0.0000E+00  3.4697E-01  0.0000E+00
             4.2992E-01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -877.448299993685        NO. OF FUNC. EVALS.: 198
 CUMULATIVE NO. OF FUNC. EVALS.:     2168             RESET HESSIAN, TYPE I
 NPARAMETR:  1.3462E+00  1.1019E+00  1.0099E+01  1.2878E+00  2.3053E+00  3.0259E+00  5.9804E+00  1.0000E-02  1.3306E+00  1.0000E-02
             8.3712E+00
 PARAMETER:  3.9729E-01  1.9704E-01  2.4124E+00  3.5294E-01  9.3523E-01  1.2072E+00  1.8885E+00 -5.6430E+00  3.8561E-01 -4.7652E+00
             2.2248E+00
 GRADIENT:   3.5133E+01  2.8402E+00  5.5595E-02  1.0212E+01  1.0254E+00  9.8889E+01  1.0635E+02  0.0000E+00  9.7773E-01  0.0000E+00
             2.6138E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -877.450189945347        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2360
 NPARAMETR:  1.3462E+00  1.1066E+00  9.9535E+00  1.2846E+00  2.3029E+00  3.0259E+00  5.9708E+00  1.0000E-02  1.3262E+00  1.0000E-02
             8.3714E+00
 PARAMETER:  3.9728E-01  2.0127E-01  2.3979E+00  3.5043E-01  9.3415E-01  1.2072E+00  1.8869E+00 -5.6430E+00  3.8234E-01 -4.7652E+00
             2.2248E+00
 GRADIENT:   5.3078E-01  6.3329E-02  2.7007E-02  7.7272E-01 -5.7193E-02  7.0764E+00 -1.6374E+00  0.0000E+00 -1.3354E-01  0.0000E+00
            -5.9508E-01

0ITERATION NO.:   76    OBJECTIVE VALUE:  -877.450189945347        NO. OF FUNC. EVALS.:  30
 CUMULATIVE NO. OF FUNC. EVALS.:     2390
 NPARAMETR:  1.3462E+00  1.1045E+00  9.8043E+00  1.2801E+00  2.3036E+00  3.0259E+00  5.9681E+00  1.0000E-02  1.3308E+00  1.0000E-02
             8.3738E+00
 PARAMETER:  3.9728E-01  2.0127E-01  2.3979E+00  3.5043E-01  9.3415E-01  1.2072E+00  1.8869E+00 -5.6430E+00  3.8234E-01 -4.7652E+00
             2.2248E+00
 GRADIENT:   2.6923E-03  4.6871E-02  1.5507E-02  5.5400E-01 -4.9492E-02  9.3028E-03  1.0468E-01  0.0000E+00 -9.0784E-02  0.0000E+00
            -3.8941E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2390
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.9791E-03  3.3863E-02  2.7122E-06 -7.4616E-02 -6.9357E-06
 SE:             2.9158E-02  2.4246E-02  3.3565E-06  1.3632E-02  5.2844E-05
 N:                     100         100         100         100         100

 P VAL.:         8.1083E-01  1.6252E-01  4.1906E-01  4.4213E-08  8.9558E-01

 ETASHRINKSD(%)  2.3182E+00  1.8772E+01  9.9989E+01  5.4331E+01  9.9823E+01
 ETASHRINKVR(%)  4.5826E+00  3.4021E+01  1.0000E+02  7.9143E+01  1.0000E+02
 EBVSHRINKSD(%)  1.9983E+00  1.3985E+01  9.9979E+01  5.7651E+01  9.9733E+01
 EBVSHRINKVR(%)  3.9566E+00  2.6015E+01  1.0000E+02  8.2066E+01  9.9999E+01
 RELATIVEINF(%)  9.5397E+01  3.5609E+01  6.3550E-07  8.4223E+00  1.0124E-04
 EPSSHRINKSD(%)  1.0776E+01
 EPSSHRINKVR(%)  2.0390E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -877.45018994534655     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       225.27604990026055     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    57.27
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -877.450       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.35E+00  1.11E+00  9.95E+00  1.28E+00  2.30E+00  3.03E+00  5.97E+00  1.00E-02  1.33E+00  1.00E-02  8.37E+00
 


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
 #CPUT: Total CPU Time in Seconds,       57.310
Stop Time:
Fri Oct  1 22:28:02 CDT 2021

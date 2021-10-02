Fri Oct  1 15:04:50 CDT 2021
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
$DATA ../../../../data/SD2/TD2/dat92.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m92.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2119.88991279248        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.4886E+02 -3.8385E+01 -3.7711E+01  7.9057E+00  2.6781E+01  5.7552E+01 -2.2415E+01  8.3275E+00 -1.4534E+01  1.5465E+01
             4.0898E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2128.47652171044        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.8544E-01  1.1249E+00  1.1849E+00  9.6327E-01  1.1251E+00  9.0014E-01  1.2078E+00  9.5816E-01  1.1418E+00  9.0128E-01
             9.0394E-01
 PARAMETER:  8.5330E-02  2.1774E-01  2.6962E-01  6.2576E-02  2.1786E-01 -5.2091E-03  2.8884E-01  5.7258E-02  2.3259E-01 -3.9349E-03
            -9.8864E-04
 GRADIENT:   7.8061E+00 -1.9448E+01  7.9928E+00 -9.1926E+00  2.5517E+01 -2.2413E+01 -4.9530E+00 -8.7736E+00  1.1387E+01 -1.3771E+01
            -5.0116E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2129.54158317905        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      347
 NPARAMETR:  9.8667E-01  1.2421E+00  1.1476E+00  9.0041E-01  1.1453E+00  9.0237E-01  1.2447E+00  1.0614E+00  1.1352E+00  8.8416E-01
             9.0568E-01
 PARAMETER:  8.6578E-02  3.1677E-01  2.3768E-01 -4.9002E-03  2.3566E-01 -2.7263E-03  3.1890E-01  1.5961E-01  2.2683E-01 -2.3123E-02
             9.3152E-04
 GRADIENT:   8.9882E+00  3.7341E+00  1.4117E+01 -6.0749E+00  7.7646E+00 -2.1712E+01  5.0248E+00 -6.1632E+00  4.9885E+00 -1.3502E+01
            -4.8263E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2130.72691514831        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      525
 NPARAMETR:  9.8695E-01  1.3149E+00  1.1748E+00  8.7010E-01  1.1822E+00  9.1530E-01  1.1436E+00  1.2265E+00  1.2029E+00  9.3460E-01
             9.1900E-01
 PARAMETER:  8.6867E-02  3.7377E-01  2.6111E-01 -3.9143E-02  2.6734E-01  1.1498E-02  2.3414E-01  3.0417E-01  2.8473E-01  3.2359E-02
             1.5526E-02
 GRADIENT:   8.3183E+00  1.2868E+01  9.2106E+00  8.0401E+00  1.9366E+00 -1.5661E+01  1.8130E+00 -3.2521E+00  7.3096E+00 -7.7991E+00
            -3.4743E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2132.52153562639        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      703
 NPARAMETR:  9.8424E-01  1.3559E+00  9.5016E-01  8.2532E-01  1.1236E+00  9.5292E-01  1.1397E+00  9.5131E-01  1.1500E+00  9.3076E-01
             9.5624E-01
 PARAMETER:  8.4117E-02  4.0447E-01  4.8874E-02 -9.1985E-02  2.1655E-01  5.1776E-02  2.3076E-01  5.0083E-02  2.3972E-01  2.8246E-02
             5.5249E-02
 GRADIENT:  -1.4260E+00  1.5830E+00  2.0275E+00 -8.8358E-01 -4.8019E+00  6.3245E-01  1.1531E-01 -5.4515E-02 -1.5982E-01  2.8539E-01
             1.3207E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2132.52191119374        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  9.8440E-01  1.3861E+00  9.1955E-01  8.0588E-01  1.1258E+00  9.5297E-01  1.1229E+00  9.1786E-01  1.1674E+00  9.3025E-01
             9.5613E-01
 PARAMETER:  8.4282E-02  4.2650E-01  1.6126E-02 -1.1582E-01  2.1846E-01  5.1830E-02  2.1595E-01  1.4289E-02  2.5477E-01  2.7697E-02
             5.5138E-02
 GRADIENT:  -1.5568E+00  2.7515E+00  2.2150E+00 -2.3617E-01 -5.5170E+00  5.6306E-01 -1.8459E-02 -5.4550E-02 -2.5244E-01  2.7395E-01
             1.1344E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2132.52214053678        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1058
 NPARAMETR:  9.8452E-01  1.4020E+00  9.0318E-01  7.9556E-01  1.1271E+00  9.5294E-01  1.1144E+00  8.9857E-01  1.1769E+00  9.3006E-01
             9.5601E-01
 PARAMETER:  8.4398E-02  4.3792E-01 -1.8331E-03 -1.2871E-01  2.1963E-01  5.1792E-02  2.0835E-01 -6.9543E-03  2.6290E-01  2.7492E-02
             5.5018E-02
 GRADIENT:  -1.5474E+00  3.2258E+00  2.1997E+00  1.2375E-01 -5.6223E+00  5.0070E-01 -8.4825E-02 -4.8906E-02 -2.8787E-01  2.5738E-01
             9.8540E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2132.52227716943        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1237
 NPARAMETR:  9.8463E-01  1.4155E+00  8.8933E-01  7.8676E-01  1.1283E+00  9.5289E-01  1.1074E+00  8.8147E-01  1.1852E+00  9.2997E-01
             9.5591E-01
 PARAMETER:  8.4508E-02  4.4749E-01 -1.7290E-02 -1.3983E-01  2.2073E-01  5.1748E-02  2.0203E-01 -2.6163E-02  2.6992E-01  2.7400E-02
             5.4910E-02
 GRADIENT:  -1.5093E+00  3.5424E+00  2.1451E+00  4.0991E-01 -5.6032E+00  4.4367E-01 -1.3400E-01 -4.2245E-02 -3.1019E-01  2.4085E-01
             8.5293E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2132.52234523134        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1417
 NPARAMETR:  9.8471E-01  1.4253E+00  8.7929E-01  7.8033E-01  1.1293E+00  9.5286E-01  1.1024E+00  8.6861E-01  1.1914E+00  9.2996E-01
             9.5584E-01
 PARAMETER:  8.4591E-02  4.5438E-01 -2.8636E-02 -1.4804E-01  2.2160E-01  5.1713E-02  1.9751E-01 -4.0855E-02  2.7510E-01  2.7388E-02
             5.4834E-02
 GRADIENT:  -1.4690E+00  3.7169E+00  2.0875E+00  5.9644E-01 -5.5362E+00  4.0206E-01 -1.6496E-01 -3.6955E-02 -3.2192E-01  2.2799E-01
             7.5769E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2132.52238730034        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1597
 NPARAMETR:  9.8478E-01  1.4335E+00  8.7091E-01  7.7491E-01  1.1302E+00  9.5284E-01  1.0983E+00  8.5754E-01  1.1966E+00  9.2999E-01
             9.5578E-01
 PARAMETER:  8.4663E-02  4.6013E-01 -3.8216E-02 -1.5501E-01  2.2239E-01  5.1687E-02  1.9377E-01 -5.3682E-02  2.7951E-01  2.7423E-02
             5.4776E-02
 GRADIENT:  -1.4298E+00  3.8229E+00  2.0306E+00  7.3236E-01 -5.4509E+00  3.6851E-01 -1.8660E-01 -3.2499E-02 -3.2844E-01  2.1722E-01
             6.8243E-01

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2132.52240993296        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1777
 NPARAMETR:  9.8484E-01  1.4402E+00  8.6410E-01  7.7046E-01  1.1310E+00  9.5282E-01  1.0950E+00  8.4832E-01  1.2010E+00  9.3005E-01
             9.5574E-01
 PARAMETER:  8.4722E-02  4.6479E-01 -4.6068E-02 -1.6077E-01  2.2307E-01  5.1671E-02  1.9074E-01 -6.4499E-02  2.8316E-01  2.7484E-02
             5.4735E-02
 GRADIENT:  -1.3954E+00  3.8802E+00  1.9806E+00  8.2593E-01 -5.3649E+00  3.4289E-01 -2.0101E-01 -2.9037E-02 -3.3157E-01  2.0870E-01
             6.2625E-01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -2132.52241930180        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1958
 NPARAMETR:  9.8489E-01  1.4458E+00  8.5846E-01  7.6674E-01  1.1316E+00  9.5281E-01  1.0922E+00  8.4051E-01  1.2047E+00  9.3012E-01
             9.5572E-01
 PARAMETER:  8.4771E-02  4.6866E-01 -5.2619E-02 -1.6561E-01  2.2366E-01  5.1663E-02  1.8824E-01 -7.3744E-02  2.8624E-01  2.7560E-02
             5.4708E-02
 GRADIENT:  -1.3658E+00  3.9072E+00  1.9380E+00  8.8955E-01 -5.2851E+00  3.2375E-01 -2.1024E-01 -2.6349E-02 -3.3254E-01  2.0202E-01
             5.8437E-01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -2132.52242556687        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     2141
 NPARAMETR:  9.8493E-01  1.4503E+00  8.5387E-01  7.6369E-01  1.1322E+00  9.5281E-01  1.0900E+00  8.3405E-01  1.2078E+00  9.3020E-01
             9.5570E-01
 PARAMETER:  8.4811E-02  4.7180E-01 -5.7974E-02 -1.6959E-01  2.2416E-01  5.1658E-02  1.8621E-01 -8.1467E-02  2.8877E-01  2.7641E-02
             5.4691E-02
 GRADIENT:  -1.3418E+00  3.9128E+00  1.9031E+00  9.2962E-01 -5.2148E+00  3.0971E-01 -2.1585E-01 -2.4421E-02 -3.3217E-01  1.9699E-01
             5.5463E-01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -2132.54104362665        NO. OF FUNC. EVALS.: 184
 CUMULATIVE NO. OF FUNC. EVALS.:     2325
 NPARAMETR:  9.8558E-01  1.4477E+00  8.5037E-01  7.6249E-01  1.1350E+00  9.5231E-01  1.0918E+00  8.2611E-01  1.2094E+00  9.3015E-01
             9.5506E-01
 PARAMETER:  8.5477E-02  4.7000E-01 -6.2085E-02 -1.7116E-01  2.2665E-01  5.1134E-02  1.8783E-01 -9.1027E-02  2.9014E-01  2.7590E-02
             5.4018E-02
 GRADIENT:   3.0183E-01 -1.0945E+00 -2.7079E-01  5.1287E-01  4.6704E-01  1.0145E-01 -1.4969E-02  8.1004E-02  3.1894E-02 -6.6258E-02
             8.8680E-02

0ITERATION NO.:   70    OBJECTIVE VALUE:  -2132.54202620804        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     2503
 NPARAMETR:  9.8616E-01  1.4470E+00  8.4973E-01  7.6221E-01  1.1349E+00  9.5234E-01  1.0924E+00  8.2051E-01  1.2103E+00  9.3098E-01
             9.5498E-01
 PARAMETER:  8.6058E-02  4.6950E-01 -6.2839E-02 -1.7153E-01  2.2651E-01  5.1169E-02  1.8840E-01 -9.7828E-02  2.9087E-01  2.8479E-02
             5.3939E-02
 GRADIENT:   1.7290E+00 -1.8862E+00 -2.4267E-01 -1.8386E-02  5.5657E-01  1.1850E-01  6.3815E-02  5.2881E-02  1.6243E-01  4.4607E-02
             4.7714E-02

0ITERATION NO.:   74    OBJECTIVE VALUE:  -2132.54219281236        NO. OF FUNC. EVALS.: 129
 CUMULATIVE NO. OF FUNC. EVALS.:     2632
 NPARAMETR:  9.8616E-01  1.4471E+00  8.4990E-01  7.6202E-01  1.1346E+00  9.5235E-01  1.0923E+00  8.1837E-01  1.2099E+00  9.3079E-01
             9.5495E-01
 PARAMETER:  8.6061E-02  4.6959E-01 -6.2637E-02 -1.7178E-01  2.2627E-01  5.1174E-02  1.8830E-01 -1.0044E-01  2.9057E-01  2.8278E-02
             5.3908E-02
 GRADIENT:   1.7378E+00 -1.6731E+00  1.4649E-01 -3.7937E-01 -2.1823E-02  1.2166E-01  2.1586E-02 -3.8098E-04  5.0908E-02  7.9244E-03
            -5.1097E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     2632
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.7239E-04 -1.6292E-02 -2.5146E-02  1.4765E-02 -3.3149E-02
 SE:             2.9883E-02  2.3583E-02  9.8705E-03  2.2925E-02  2.1461E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9006E-01  4.8966E-01  1.0848E-02  5.1953E-01  1.2245E-01

 ETASHRINKSD(%)  1.0000E-10  2.0994E+01  6.6933E+01  2.3197E+01  2.8101E+01
 ETASHRINKVR(%)  1.0000E-10  3.7580E+01  8.9065E+01  4.1013E+01  4.8306E+01
 EBVSHRINKSD(%)  3.3937E-01  2.0613E+01  7.0573E+01  2.4534E+01  2.6068E+01
 EBVSHRINKVR(%)  6.7758E-01  3.6976E+01  9.1340E+01  4.3049E+01  4.5341E+01
 RELATIVEINF(%)  9.9076E+01  4.6986E+00  1.2077E+00  4.1129E+00  1.2012E+01
 EPSSHRINKSD(%)  3.4030E+01
 EPSSHRINKVR(%)  5.6479E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2132.5421928123596     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1213.6036596076870     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    40.49
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2132.542       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.86E-01  1.45E+00  8.50E-01  7.62E-01  1.13E+00  9.52E-01  1.09E+00  8.18E-01  1.21E+00  9.31E-01  9.55E-01
 


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
 #CPUT: Total CPU Time in Seconds,       40.538
Stop Time:
Fri Oct  1 15:05:32 CDT 2021